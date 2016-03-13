Antenna/OmniAntenna set Gt_ 1              ;
Antenna/OmniAntenna set Gr_ 1              ;
Phy/WirelessPhy set L_ 1.0                 ;
Phy/WirelessPhy set freq_ 2.472e9          ;
Phy/WirelessPhy set bandwidth_ 11Mb        ;
Phy/WirelessPhy set Pt_ 20        	   ;
Phy/WirelessPhy set CPThresh_ 100.0        ;
Phy/WirelessPhy set CSThresh_ 5.011872e-12 ;
Phy/WirelessPhy set RXThresh_ 5.82587e-09  ;
Mac/802_11 set dataRate_ 11Mb              ;
Mac/802_11 set basicRate_ 1Mb   	   ;
set val(chan)   Channel/WirelessChannel    ;
set val(prop)   Propagation/TwoRayGround   ;
set val(netif)  Phy/WirelessPhy            ;
set val(mac)    Mac/802_11                 ;
set val(ifq)    Queue/DropTail/PriQueue    ;			
set val(ll)     LL                         ;
set val(ant)    Antenna/OmniAntenna        ;
set val(ifqlen) 50                         ;
set val(nn)     50                         ;
set val(rp)     DORP			   ;
set val(x)      1200                       ;
set val(y)      750                        ;
set val(stop)   140                         ;
set ns [new Simulator]
set topo [new Topography]
$topo load_flatgrid $val(x) $val(y)
create-god $val(nn)
set tracefile [open pro_trace w]
$ns trace-all $tracefile
set namfile [open pro_nam w]
$ns namtrace-all $namfile
$ns namtrace-all-wireless $namfile $val(x) $val(y)
set chan [new $val(chan)];
$ns node-config -adhocRouting  $val(rp) \
                -llType        $val(ll) \
                -macType       $val(mac) \
                -ifqType       $val(ifq) \
                -ifqLen        $val(ifqlen) \
                -antType       $val(ant) \
                -propType      $val(prop) \
                -phyType       $val(netif) \
                -channel       $chan \
                -topoInstance  $topo \
                -agentTrace    ON \
                -routerTrace   ON \
                -macTrace      ON \
                -movementTrace ON
set n0 [$ns node]
$n0 set X_ 327.691
$n0 set Y_ 436.305
$n0 set Z_ 0.0
$ns color 0 blue

#$ns color 23 green
#$ns color 25 green
#$ns color 28 green
#$ns color 27 green
#$ns color 26 green



$n0 color orange
$ns at 0.0 "$n0 color blue"
$ns at 20.0 "$n0 color orange"
$ns initial_node_pos $n0 28
set n1 [$ns node]
$n1 set X_ 266.04
$n1 set Y_ 380.728
$n1 set Z_ 0.0
$n1 color orange
$ns at 0.0 "$n1 color orange"
$ns initial_node_pos $n1 28
set n2 [$ns node]
$n2 set X_ 377.269
$n2 set Y_ 339.824
$n2 set Z_ 0.0
$n2 color orange
$ns at 0.0 "$n2 color orange"
$ns initial_node_pos $n2 28
set n3 [$ns node]
$n3 set X_ 440.963
$n3 set Y_ 404.297
$n3 set Z_ 0.0
$n3 color orange
$ns at 0.0 "$n3 color orange"
$ns initial_node_pos $n3 28
set n4 [$ns node]
$n4 set X_ 427.528
$n4 set Y_ 473.471
$n4 set Z_ 0.0
$n4 color orange
$ns at 0.0 "$n4 color orange"
$ns initial_node_pos $n4 28
set n5 [$ns node]
$n5 set X_ 124.865
$n5 set Y_ 650.814
$n5 set Z_ 0.0
$n5 color orange
$ns at 0.0 "$n5 color orange"
$ns initial_node_pos $n5 28
set n6 [$ns node]
$n6 set X_ 92.656
$n6 set Y_ 571.87
$n6 set Z_ 0.0
$n6 color orange
$ns at 0.0 "$n6 color orange"
$ns initial_node_pos $n6 28
set n7 [$ns node]
$n7 set X_ 171.843
$n7 set Y_ 537.264
$n7 set Z_ 0.0
$n7 color orange
$ns at 0.0 "$n7 color blue"
$ns at 20.0 "$n7 color orange"
$ns initial_node_pos $n7 28
set n8 [$ns node]
$n8 set X_ 260.92
$n8 set Y_ 529.56
$n8 set Z_ 0.0
$n8 color orange
$ns at 0.0 "$n8 color orange"
$ns initial_node_pos $n8 28
set n9 [$ns node]
$n9 set X_ 318.515
$n9 set Y_ 651.42
$n9 set Z_ 0.0
$n9 color orange
$ns at 0.0 "$n9 color orange"
$ns initial_node_pos $n9 28
set n10 [$ns node]
$n10 set X_ 226.019
$n10 set Y_ 673.605
$n10 set Z_ 0.0
$n10 color orange
$ns at 0.0 "$n10 color orange"
$ns initial_node_pos $n10 28
set n11 [$ns node]
$n11 set X_ 493
$n11 set Y_ 266
$n11 set Z_ 0.0
$n11 color orange
$ns at 0.0 "$n11 color orange"
$ns initial_node_pos $n11 28
set n12 [$ns node]
$n12 set X_ 483
$n12 set Y_ 340
$n12 set Z_ 0.0
$n12 color orange
$ns at 0.0 "$n12 color orange"
$ns initial_node_pos $n12 28
set n13 [$ns node]
$n13 set X_ 536
$n13 set Y_ 390
$n13 set Z_ 0.0
$n13 color orange
$ns at 0.0 "$n13 color orange"
$ns initial_node_pos $n13 28
set n14 [$ns node]
$n14 set X_ 609.55
$n14 set Y_ 347.735
$n14 set Z_ 0.0
$n14 color orange
$ns at 0.0 "$n14 color orange"
$ns initial_node_pos $n14 28
set n15 [$ns node]
$n15 set X_ 641.209
$n15 set Y_ 273.527
$n15 set Z_ 0.0
$n15 color orange
$ns at 0.0 "$n15 color orange"
$ns initial_node_pos $n15 28
set n16 [$ns node]
$n16 set X_ 574.341
$n16 set Y_ 235.264
$n16 set Z_ 0.0
$n16 color orange
$ns at 0.0 "$n16 color orange"
$ns initial_node_pos $n16 28
set n17 [$ns node]
$n17 set X_ 686.891
$n17 set Y_ 410.473
$n17 set Z_ 0.0
$n17 color orange
$ns at 0.0 "$n17 color orange"
$ns initial_node_pos $n17 28
set n18 [$ns node]
$n18 set X_ 722.627
$n18 set Y_ 487.969
$n18 set Z_ 0.0
$n18 color orange
$ns at 0.0 "$n18 color orange"
$ns initial_node_pos $n18 28
set n19 [$ns node]
$n19 set X_ 815.254
$n19 set Y_ 459.682
$n19 set Z_ 0.0
$n19 color orange
$ns at 0.0 "$n19 color orange"
$ns initial_node_pos $n19 28
set n20 [$ns node]
$n20 set X_ 722.627
$n20 set Y_ 349.736
$n20 set Z_ 0.0
$n20 color orange
$ns at 0.0 "$n20 color orange"

$ns initial_node_pos $n20 28
set n21 [$ns node]
$n21 set X_ 806.519
$n21 set Y_ 330.264
$n21 set Z_ 0.0
$n21 color orange
$ns at 0.0 "$n21 color orange"

$ns initial_node_pos $n21 28
set n22 [$ns node]
$n22 set X_ 865.728
$n22 set Y_ 380.264
$n22 set Z_ 0.0
$n22 color orange
$ns at 0.0 "$n22 color orange"

$ns initial_node_pos $n22 28
set n23 [$ns node]
$n23 set X_ 468.373
$n23 set Y_ 571.464
$n23 set Z_ 0.0
$n23 color orange
$ns at 0.0 "$n23 color orange"

$ns initial_node_pos $n23 28
set n24 [$ns node]
$n24 set X_ 355.469
$n24 set Y_ 572.606
$n24 set Z_ 0.0
$n24 color orange
$ns at 0.0 "$n24 color orange"

$ns initial_node_pos $n24 28
set n25 [$ns node]
$n25 set X_ 522.219
$n25 set Y_ 633.287
$n25 set Z_ 0.0
$n25 color orange
$ns at 0.0 "$n25 color orange"

$ns initial_node_pos $n25 28
set n26 [$ns node]
$n26 set X_ 547.692
$n26 set Y_ 517.627
$n26 set Z_ 0.0
$n26 color orange
$ns at 0.0 "$n26 color orange"

$ns initial_node_pos $n26 28
set n27 [$ns node]
$n27 set X_ 629.714
$n27 set Y_ 551.418
$n27 set Z_ 0.0
$n27 color orange
$ns at 0.0 "$n27 color blue"
$ns at 20.0 "$n27 color orange"

$ns initial_node_pos $n27 28
set n28 [$ns node]
$n28 set X_ 615.296
$n28 set Y_ 623.496
$n28 set Z_ 0.0
$n28 color orange
$ns at 0.0 "$n28 color orange"

$ns initial_node_pos $n28 28
set n29 [$ns node]
$n29 set X_ 858.978
$n29 set Y_ 720.2
$n29 set Z_ 0.0
$n29 color orange
$ns at 0.0 "$n29 color orange"

$ns initial_node_pos $n29 28
set n30 [$ns node]
$n30 set X_ 742.637
$n30 set Y_ 707.496
$n30 set Z_ 0.0
$n30 color orange
$ns at 0.0 "$n30 color orange"

$ns initial_node_pos $n30 29
set n31 [$ns node]
$n31 set X_ 757.451
$n31 set Y_ 622.364
$n31 set Z_ 0.0
$n31 color orange
$ns at 0.0 "$n31 color orange"

$ns initial_node_pos $n31 28
set n32 [$ns node]
$n32 set X_ 789.07
$n32 set Y_ 544.934
$n32 set Z_ 0.0
$n32 color orange
$ns at 0.0 "$n32 color orange"

$ns initial_node_pos $n32 28
set n33 [$ns node]
$n33 set X_ 905.001
$n33 set Y_ 632.255
$n33 set Z_ 0.0
$n33 color orange
$ns at 0.0 "$n33 color blue"
$ns at 20.0 "$n33 color orange"


$ns initial_node_pos $n33 28
set n34 [$ns node]
$n34 set X_ 618.05
$n34 set Y_ 462.734
$n34 set Z_ 0.0
$ns initial_node_pos $n34 28
$n34 color orange
$ns at 0.0 "$n34 color orange"

set n35 [$ns node]
$n35 set X_ 157.175
$n35 set Y_ 443.765
$n35 set Z_ 0.0
$ns initial_node_pos $n35 28
$n35 color orange
$ns at 0.0 "$n35 color orange"

set n36 [$ns node]
$n36 set X_ 296.513
$n36 set Y_ 269.602
$n36 set Z_ 0.0
$ns initial_node_pos $n36 28
$n36 color orange
$ns at 0.0 "$n36 color blue"
$ns at 20.0 "$n36 color orange"

set n37 [$ns node]
$n37 set X_ 241.514
$n37 set Y_ 227.437
$n37 set Z_ 0.0
$ns initial_node_pos $n37 28
$n37 color orange
$ns at 0.0 "$n37 color orange"

set n38 [$ns node]
$n38 set X_ 692.519
$n38 set Y_ 201.774
$n38 set Z_ 0.0
$ns initial_node_pos $n38 28
$n38 color orange
$ns at 0.0 "$n38 color orange"

set n39 [$ns node]
$n39 set X_ 166.347
$n39 set Y_ 308.104
$n39 set Z_ 0.0
$ns initial_node_pos $n39 28
$n39 color orange
$ns at 0.0 "$n39 color orange"

set n40 [$ns node]
$n40 set X_ 424.189
$n40 set Y_ 695.912
$n40 set Z_ 0.0
$ns initial_node_pos $n40 28
$n40 color orange
$ns at 0.0 "$n40 color orange"


set n41 [$ns node]
$n41 set X_ 572.274
$n41 set Y_ 731.544
$n41 set Z_ 0.0
$ns initial_node_pos $n41 28
$n41 color orange
$ns at 0.0 "$n41 color orange"

set n42 [$ns node]
$n42 set X_ 916.99
$n42 set Y_ 509.709
$n42 set Z_ 0.0
$ns initial_node_pos $n42 28
$n42 color orange
$ns at 0.0 "$n42 color orange"


set n43 [$ns node]
$n43 set X_ 856.574
$n43 set Y_ 230.151
$n43 set Z_ 0.0
$ns initial_node_pos $n43 28
$n43 color orange
$ns at 0.0 "$n43 color orange"


set n44 [$ns node]
$n44 set X_ 487.438
$n44 set Y_ 189.989
$n44 set Z_ 0.0
$ns initial_node_pos $n44 28
$n44 color orange
$ns at 0.0 "$n44 color orange"


set n45 [$ns node]
$n45 set X_ 368.786
$n45 set Y_ 189.989
$n45 set Z_ 0.0
$ns initial_node_pos $n45 28
$n45 color orange
$ns at 0.0 "$n45 color orange"

set n46 [$ns node]
$n46 set X_ 102.469
$n46 set Y_ 197.774
$n46 set Z_ 0.0
$ns initial_node_pos $n46 28
$n46 color orange
$ns at 0.0 "$n46 color orange"

set n47 [$ns node]
$n47 set X_ 71.8941
$n47 set Y_ 377.023
$n47 set Z_ 0.0
$ns initial_node_pos $n47 28
$n47 color orange
$ns at 0.0 "$n47 color orange"

set n48 [$ns node]
$n48 set X_ 53.1913
$n48 set Y_ 487.207
$n48 set Z_ 0.0
$ns initial_node_pos $n48 28
$n48 color orange
$ns at 0.0 "$n48 color orange"

set n49 [$ns node]
$n49 set X_ 7.37511
$n49 set Y_ 627.487
$n49 set Z_ 0.0
$ns initial_node_pos $n49 28
$n49 color orange
$ns at 0.0 "$n49 color blue"



$ns at 1.0 "$n49 label Source1"
$ns at 1.0 "$n7 label Dest1"

$ns at 1.0 "$n33 label Source2"
$ns at 1.0 "$n27 label Dest2"

$ns at 1.0 "$n0 label Source3"
$ns at 1.0 "$n36 label Dest3"


$ns at 20.0 "$n49 label ."
$ns at 20.0 "$n7 label ."

$ns at 20.0 "$n33 label ."
$ns at 20.0 "$n27 label ."

$ns at 20.0 "$n0 label ."
$ns at 20.0 "$n36 label ."

#$ns at 16.0 "$n33 label ."
#$ns at 16.0 "$n20 label ."


#$ns at 16.0 "$n10 label ."
#$ns at 16.0 "$n11 label ."

#$ns at 16.0 "$n39 label ."
#$ns at 16.0 "$n28 label ."


set tcp [new Agent/TCP]
set sink [new Agent/TCPSink]
$ns attach-agent $n49 $tcp
$ns attach-agent $n5 $sink
$ns connect $tcp $sink
set ftp [new Application/FTP]
$ftp attach-agent $tcp
#$ftp set packetSize_ 150
$ns at 0.0 "$ftp start" 
$ns at 2.0 "$ftp stop"


set tcp1 [new Agent/TCP]
set sink1 [new Agent/TCPSink]
$ns attach-agent $n49 $tcp1
$ns attach-agent $n6 $sink1
$ns connect $tcp1 $sink1
set ftp1 [new Application/FTP]
$ftp1 attach-agent $tcp1
$ns at 0.0 "$ftp1 start" 
$ns at 2.0 "$ftp1 stop"

set tcp2 [new Agent/TCP]
set sink2 [new Agent/TCPSink]
$ns attach-agent $n5 $tcp2
$ns attach-agent $n7 $sink2
$ns connect $tcp2 $sink2
set ftp2 [new Application/FTP]
$ftp2 attach-agent $tcp2
$ftp2 set packetSize_ 20
$ns at 2.0 "$ftp2 start" 
$ns at 4.0 "$ftp2 stop"
$ns at 3.0 "$n5 label dropper"
$ns at 19.0 "$n5 label ."


set tcp3 [new Agent/TCP]
set sink3 [new Agent/TCPSink]
$ns attach-agent $n6 $tcp3
$ns attach-agent $n7 $sink3
$ns connect $tcp3 $sink3
set ftp3 [new Application/FTP]
$ftp3 attach-agent $tcp3
$ns at 2.0 "$ftp3 start" 
$ns at 4.0 "$ftp3 stop"


set tcp4 [new Agent/TCP]
set sink4 [new Agent/TCPSink]
$ns attach-agent $n6 $tcp4
$ns attach-agent $n7 $sink4
$ns connect $tcp4 $sink4
set ftp4 [new Application/FTP]
$ftp4 attach-agent $tcp4
$ns at 4.0 "$ftp4 start" 
$ns at 6.0 "$ftp4 stop"



#------

set tcp5 [new Agent/TCP]
set sink5 [new Agent/TCPSink]
$ns attach-agent $n33 $tcp5
$ns attach-agent $n31 $sink5
$ns connect $tcp5 $sink5
set ftp5 [new Application/FTP]
$ftp5 attach-agent $tcp5
$ns at 6.0 "$ftp5 start" 
$ns at 8.0 "$ftp5 stop"


set tcp6 [new Agent/TCP]
set sink6 [new Agent/TCPSink]
$ns attach-agent $n33 $tcp6
$ns attach-agent $n32 $sink6
$ns connect $tcp6 $sink6
set ftp6 [new Application/FTP]
$ftp6 attach-agent $tcp6
$ns at 6.0 "$ftp6 start" 
$ns at 8.0 "$ftp6 stop"


set tcp7 [new Agent/TCP]
set sink7 [new Agent/TCPSink]
$ns attach-agent $n31 $tcp7
$ns attach-agent $n27 $sink7
$ns connect $tcp7 $sink7
set ftp7 [new Application/FTP]
$ftp7 attach-agent $tcp7
$ns at 8.0 "$ftp7 start" 
$ns at 10.0 "$ftp7 stop"


set tcp8 [new Agent/TCP]
set sink8 [new Agent/TCPSink]
$ns attach-agent $n32 $tcp8
$ns attach-agent $n18 $sink8
$ns connect $tcp8 $sink8
set ftp8 [new Application/FTP]
$ftp8 attach-agent $tcp8
$ns at 8.0 "$ftp8 start" 
$ns at 10.0 "$ftp8 stop"


set tcp9 [new Agent/TCP]
set sink9 [new Agent/TCPSink]
$ns attach-agent $n18 $tcp9
$ns attach-agent $n27 $sink9
$ns connect $tcp9 $sink9
set ftp9 [new Application/FTP]
$ftp9 attach-agent $tcp9
$ftp9 set packetSize_ 80
$ns at 8.0 "$ftp9 start" 
$ns at 10.0 "$ftp9 stop"


set tcp10 [new Agent/TCP]
set sink10 [new Agent/TCPSink]
$ns attach-agent $n31 $tcp10
$ns attach-agent $n27 $sink10
$ns connect $tcp10 $sink10
set ftp10 [new Application/FTP]
$ftp10 attach-agent $tcp10
$ns at 10.0 "$ftp10 start" 
$ns at 11.0 "$ftp10 stop"
#-----------

set tcp_6 [new Agent/TCP]
set sink_6 [new Agent/TCPSink]
$ns attach-agent $n33 $tcp_6
$ns attach-agent $n42 $sink_6
$ns connect $tcp_6 $sink_6
set ftp_6 [new Application/FTP]
$ftp_6 attach-agent $tcp_6
$ns at 6.0 "$ftp_6 start" 
$ns at 8.0 "$ftp_6 stop"
$ns at 7.0 "$n42 label dropper"
$ns at 19.0 "$n42 label ."


set tcp_7 [new Agent/TCP]
set sink_7 [new Agent/TCPSink]
$ns attach-agent $n42 $tcp_7
$ns attach-agent $n19 $sink_7
$ns connect $tcp_7 $sink_7
set ftp_7 [new Application/FTP]
$ftp_7 attach-agent $tcp_7
$ns at 8.0 "$ftp_7 start" 
$ns at 10.0 "$ftp_7 stop"


set tcp_8 [new Agent/TCP]
set sink_8 [new Agent/TCPSink]
$ns attach-agent $n19 $tcp_8
$ns attach-agent $n18 $sink_8
$ns connect $tcp_8 $sink_8
set ftp_8 [new Application/FTP]
$ftp_8 attach-agent $tcp_8
$ns at 10.0 "$ftp_8 start" 
$ns at 12.0 "$ftp_8 stop"


set tcp_9 [new Agent/TCP]
set sink_9 [new Agent/TCPSink]
$ns attach-agent $n18 $tcp_9
$ns attach-agent $n27 $sink_9
$ns connect $tcp_9 $sink_9
set ftp_9 [new Application/FTP]
$ftp_9 attach-agent $tcp_9
$ns at 12.0 "$ftp_9 start" 
$ns at 14.0 "$ftp_9 stop"



#testing

set tcp_ [new Agent/TCP]
set sink_ [new Agent/TCPSink]
$ns attach-agent $n0 $tcp_
$ns attach-agent $n1 $sink_
$ns connect $tcp_ $sink_
set ftp_ [new Application/FTP]
$ftp_ attach-agent $tcp_
$ftp_ set packetSize_ 15
$ns at 11.0 "$ftp_ start" 
$ns at 12.0 "$ftp_ stop"
$ns at 11.5 "$n5 label dropper"
$ns at 19.0 "$n5 label ."


set tcp1_ [new Agent/TCP]
set sink1_ [new Agent/TCPSink]
$ns attach-agent $n0 $tcp1_
$ns attach-agent $n2 $sink1_
$ns connect $tcp1_ $sink1_
set ftp1_ [new Application/FTP]
$ftp1_ attach-agent $tcp1_
$ftp1_ set packetSize_ 15
$ns at 11.0 "$ftp1_ start" 
$ns at 12.0 "$ftp1_ stop"
$ns at 11.5 "$n5 label dropper"
$ns at 19.0 "$n5 label ."

set tcp2_ [new Agent/TCP]
set sink2_ [new Agent/TCPSink]
$ns attach-agent $n0 $tcp2_
$ns attach-agent $n3 $sink2_
$ns connect $tcp2_ $sink2_
set ftp2_ [new Application/FTP]
$ftp2_ attach-agent $tcp2_
$ftp2_ set packetSize_ 20
$ns at 12.0 "$ftp2_ start" 
$ns at 13.0 "$ftp2_ stop"


set tcp3_ [new Agent/TCP]
set sink3_ [new Agent/TCPSink]
$ns attach-agent $n0 $tcp3_
$ns attach-agent $n35 $sink3_
$ns connect $tcp3_ $sink3_
set ftp3_ [new Application/FTP]
$ftp3_ attach-agent $tcp3_
$ns at 12.0 "$ftp3_ start" 
$ns at 13.0 "$ftp3_ stop"


set tcp4_ [new Agent/TCP]
set sink4_ [new Agent/TCPSink]
$ns attach-agent $n35 $tcp4_
$ns attach-agent $n39 $sink4_
$ns connect $tcp4_ $sink4_
set ftp4_ [new Application/FTP]
$ftp4_ attach-agent $tcp4_
$ns at 13.0 "$ftp4_ start" 
$ns at 14.0 "$ftp4_ stop"


set tcp_4_ [new Agent/TCP]
set sink_4_ [new Agent/TCPSink]
$ns attach-agent $n39 $tcp_4_
$ns attach-agent $n36 $sink_4_
$ns connect $tcp_4_ $sink_4_
set ftp_4_ [new Application/FTP]
$ftp_4_ attach-agent $tcp_4_
$ns at 14.0 "$ftp_4_ start" 
$ns at 15.0 "$ftp_4_ stop"



set tcp5_ [new Agent/TCP]
set sink5_ [new Agent/TCPSink]
$ns attach-agent $n3 $tcp5_
$ns attach-agent $n12 $sink5_
$ns connect $tcp5_ $sink5_
set ftp5_ [new Application/FTP]
$ftp5_ attach-agent $tcp5_
$ns at 13.0 "$ftp5_ start" 
$ns at 14.0 "$ftp5_ stop"


set tcp6_ [new Agent/TCP]
set sink6_ [new Agent/TCPSink]
$ns attach-agent $n12 $tcp6_
$ns attach-agent $n11 $sink6_
$ns connect $tcp6_ $sink6_
set ftp6_ [new Application/FTP]
$ftp6_ attach-agent $tcp6_
$ns at 14.0 "$ftp6_ start" 
$ns at 15.0 "$ftp6_ stop"

#set tcp_6_ [new Agent/TCP]
#set sink_6_ [new Agent/TCPSink]
#$ns attach-agent $n45 $tcp_6_
#$ns attach-agent $n36 $sink_6_
#$ns connect $tcp_6_ $sink_6_
#set ftp_6_ [new Application/FTP]
#$ftp_6_ attach-agent $tcp_6_
#$ns at 14.0 "$ftp_6_ start" 
#$ns at 15.0 "$ftp_6_ stop"


set tcp6__ [new Agent/TCP]
set sink6__ [new Agent/TCPSink]
$ns attach-agent $n11 $tcp6__
$ns attach-agent $n45 $sink6__
$ns connect $tcp6__ $sink6__
set ftp6__ [new Application/FTP]
$ftp6__ attach-agent $tcp6__
$ns at 15.0 "$ftp6__ start" 
$ns at 16.0 "$ftp6__ stop"


set tcp_10 [new Agent/TCP]
set sink_10 [new Agent/TCPSink]
$ns attach-agent $n45 $tcp_10
$ns attach-agent $n36 $sink_10
$ns connect $tcp_10 $sink_10
set ftp_10 [new Application/FTP]
$ftp_10 attach-agent $tcp_10
$ns at 16.0 "$ftp_10 start" 
$ns at 17.0 "$ftp_10 stop"




#---------

set tcp11 [new Agent/TCP]
set sink11 [new Agent/TCPSink]
$ns attach-agent $n40 $tcp11
$ns attach-agent $n26 $sink11
$ns connect $tcp11 $sink11
set ftp11 [new Application/FTP]
$ftp11 attach-agent $tcp11
puts "\nnode 26 got message form 40\n"
$ns at 22.0 "$ftp11 start" 
$ns at 24.0 "$ftp11 stop"


set tcp12 [new Agent/TCP]
set sink12 [new Agent/TCPSink]
$ns attach-agent $n40 $tcp12
$ns attach-agent $n4 $sink12
$ns connect $tcp12 $sink12
set ftp12 [new Application/FTP]
$ftp12 attach-agent $tcp12
puts "\nnode 4 got message form 40\n"
$ns at 24.0 "$ftp12 start" 
$ns at 26.0 "$ftp12 stop"

set tcp13 [new Agent/TCP]
set sink13 [new Agent/TCPSink]
$ns attach-agent $n40 $tcp13
$ns attach-agent $n18 $sink13
$ns connect $tcp13 $sink13
set ftp13 [new Application/FTP]
$ftp13 attach-agent $tcp13
puts "\nnode 18 got message form 40\n"
$ns at 26.5 "$ftp13 start" 
$ns at 28.0 "$ftp13 stop"

set tcp14 [new Agent/TCP]
set sink14 [new Agent/TCPSink]
$ns attach-agent $n40 $tcp14
$ns attach-agent $n12 $sink14
$ns connect $tcp14 $sink14
set ftp14 [new Application/FTP]
$ftp14 attach-agent $tcp14
puts "\nnode 12 got message form 40\n"
$ns at 28.0 "$ftp14 start" 
$ns at 30.0 "$ftp14 stop"

set tcp15 [new Agent/TCP]
set sink15 [new Agent/TCPSink]
$ns attach-agent $n40 $tcp15
$ns attach-agent $n30 $sink15
$ns connect $tcp15 $sink15
set ftp15 [new Application/FTP]
$ftp15 attach-agent $tcp15
puts "\nnode 30 got message form 40\n"
$ns at 30.0 "$ftp15 start" 
$ns at 32.0 "$ftp15 stop"

set tcp_15 [new Agent/TCP]
set sink_15 [new Agent/TCPSink]
$ns attach-agent $n40 $tcp_15
$ns attach-agent $n8 $sink_15
$ns connect $tcp_15 $sink_15
set ftp_15 [new Application/FTP]
$ftp_15 attach-agent $tcp_15
puts "\nnode 8 got message form 40\n"
$ns at 32.0 "$ftp_15 start" 
$ns at 34.0 "$ftp_15 stop"

#set tcp17 [new Agent/TCP]
#set sink17 [new Agent/TCPSink]
#$ns attach-agent $n40 $tcp17
#$ns attach-agent $n18  $sink17
#$ns connect $tcp17 $sink17
#set ftp17 [new Application/FTP]
#$ftp17 attach-agent $tcp17
#$ns at 34.0 "$ftp17 start" 
#$ns at 36.0 "$ftp17 stop"

#----
#set tcp18 [new Agent/TCP]
#set sink18 [new Agent/TCPSink]
#$ns attach-agent $n26 $tcp18
#$ns attach-agent $n23 $sink18
#$ns connect $tcp18 $sink18
#set ftp18 [new Application/FTP]
#$ftp18 attach-agent $tcp18
#$ns at 29.0 "$ftp18 start" 
#$ns at 31.0 "$ftp18 stop"

#set tcp19 [new Agent/TCP]
#set sink19 [new Agent/TCPSink]
#$ns attach-agent $n26 $tcp19
#$ns attach-agent $n27 $sink19
#$ns connect $tcp19 $sink19
#set ftp19 [new Application/FTP]
#$ftp19 attach-agent $tcp19
#$ns at 29.0 "$ftp19 start" 
#$ns at 31.0 "$ftp19 stop"


#---

set tcp_16 [new Agent/TCP]
set sink_16 [new Agent/TCPSink]
$ns attach-agent $n26 $tcp_16
$ns attach-agent $n27 $sink_16
$ns connect $tcp_16 $sink_16
set ftp_16 [new Application/FTP]
$ftp_16 attach-agent $tcp_16
puts "\nnode 27 got message form 26\n"
$ns at 39.0 "$ftp_16 start" 
$ns at 40.5 "$ftp_16 stop"


set tcp16 [new Agent/TCP]
set sink16 [new Agent/TCPSink]
$ns attach-agent $n27 $tcp16
$ns attach-agent $n28 $sink16
$ns connect $tcp16 $sink16
set ftp16 [new Application/FTP]
$ftp16 attach-agent $tcp16
puts "\nnode 28 got message form 27\n"
$ns at 40.6 "$ftp16 start" 
$ns at 42.0 "$ftp16 stop"


set tcp18 [new Agent/TCP]
set sink18 [new Agent/TCPSink]
$ns attach-agent $n27 $tcp18
$ns attach-agent $n23 $sink18
$ns connect $tcp18 $sink18
set ftp18 [new Application/FTP]
$ftp18 attach-agent $tcp18
puts "\nnode 23 got message form 27\n"
$ns at 40.6 "$ftp18 start" 
$ns at 42.0 "$ftp18 stop"

#----
set tcp19 [new Agent/TCP]
set sink19 [new Agent/TCPSink]
$ns attach-agent $n4 $tcp19
$ns attach-agent $n0 $sink19
$ns connect $tcp19 $sink19
set ftp19 [new Application/FTP]
$ftp19 attach-agent $tcp19
puts "\nnode 0 got message form 4\n"
$ns at 42.1 "$ftp19 start" 
$ns at 43.5 "$ftp19 stop"


set tcp20 [new Agent/TCP]
set sink20 [new Agent/TCPSink]
$ns attach-agent $n0 $tcp20
$ns attach-agent $n1 $sink20
$ns connect $tcp20 $sink20
set ftp20 [new Application/FTP]
$ftp20 attach-agent $tcp20
puts "\nnode 1 got message form 0\n"
$ns at 43.6 "$ftp20 start" 
$ns at 45.0 "$ftp20 stop"


set tcp21 [new Agent/TCP]
set sink21 [new Agent/TCPSink]
$ns attach-agent $n0 $tcp21
$ns attach-agent $n3 $sink21
$ns connect $tcp21 $sink21
set ftp21 [new Application/FTP]
$ftp21 attach-agent $tcp21
puts "\nnode 3 got message form 0\n"
$ns at 43.6 "$ftp21 start" 
$ns at 45.0 "$ftp21 stop"

#-----
#---
set tcp22 [new Agent/TCP]
set sink22 [new Agent/TCPSink]
$ns attach-agent $n8 $tcp22
$ns attach-agent $n7 $sink22
$ns connect $tcp22 $sink22
set ftp22 [new Application/FTP]
$ftp22 attach-agent $tcp22
puts "\nnode 7 got message form 8\n"
$ns at 44.9 "$ftp22 start" 
$ns at 46.6 "$ftp22 stop"


set tcp23 [new Agent/TCP]
set sink23 [new Agent/TCPSink]
$ns attach-agent $n8 $tcp23
$ns attach-agent $n5 $sink23
$ns connect $tcp23 $sink23
set ftp23 [new Application/FTP]
$ftp23 attach-agent $tcp23
puts "\nnode 5 got message form 8\n"
$ns at 46.6 "$ftp23 start" 
$ns at 48.0 "$ftp23 stop"

set tcp24 [new Agent/TCP]
set sink24 [new Agent/TCPSink]
$ns attach-agent $n7 $tcp24
$ns attach-agent $n6 $sink24
$ns connect $tcp24 $sink24
set ftp24 [new Application/FTP]
$ftp24 attach-agent $tcp24
puts "\nnode 6 got message form 7\n"
$ns at 48.2 "$ftp24 start" 
$ns at 50.0 "$ftp24 stop"



set tcp25 [new Agent/TCP]
set sink25 [new Agent/TCPSink]
$ns attach-agent $n7 $tcp25
$ns attach-agent $n24 $sink25
$ns connect $tcp25 $sink25
set ftp25 [new Application/FTP]
$ftp25 attach-agent $tcp25
puts "\nnode 24 got message form 7\n"
$ns at 48.2 "$ftp25 start" 
$ns at 50.0 "$ftp25 stop"


set tcp26 [new Agent/TCP]
set sink26 [new Agent/TCPSink]
$ns  attach-agent $n5 $tcp26
$ns attach-agent $n10 $sink26
$ns  connect $tcp26 $sink26
set ftp26 [new Application/FTP]
$ftp26 attach-agent $tcp26
puts "\nnode 5 got message form 49\n"
$ns at 50.2 "$ftp26 start" 
$ns at 52.0 "$ftp26 stop"

#--------

set tcp27 [new Agent/TCP]
set sink27 [new Agent/TCPSink]
$ns  attach-agent $n12 $tcp27
$ns attach-agent $n13 $sink27
$ns  connect $tcp27 $sink27
set ftp27 [new Application/FTP]
$ftp27 attach-agent $tcp27
puts "\nnode 13 got message form 12\n"
$ns at 52.2 "$ftp27 start" 
$ns at 54.0 "$ftp27 stop"

set tcp28 [new Agent/TCP]
set sink28 [new Agent/TCPSink]
$ns  attach-agent $n13 $tcp28
$ns attach-agent $n16 $sink28
$ns  connect $tcp28 $sink28
set ftp28 [new Application/FTP]
$ftp28 attach-agent $tcp28
puts "\nnode 16 got message form 13\n"
$ns at 54.1 "$ftp28 start" 
$ns at 56.0 "$ftp28 stop"

set tcp29 [new Agent/TCP]
set sink29 [new Agent/TCPSink]
$ns  attach-agent $n13 $tcp29
$ns attach-agent $n14 $sink29
$ns  connect $tcp29 $sink29
set ftp29 [new Application/FTP]
$ftp29 attach-agent $tcp29
puts "\nnode 14 got message form 13\n"
$ns at 54.1 "$ftp29 start" 
$ns at 56.0 "$ftp29 stop"


#---
set tcp30 [new Agent/TCP]
set sink30 [new Agent/TCPSink]
$ns  attach-agent $n30 $tcp30
$ns attach-agent $n32 $sink30
$ns  connect $tcp30 $sink30
set ftp30 [new Application/FTP]
$ftp30 attach-agent $tcp30
puts "\nnode 32 got message form 30\n"
$ns at 56.1 "$ftp30 start" 
$ns at 57.6 "$ftp30 stop"



set tcp31 [new Agent/TCP]
set sink31 [new Agent/TCPSink]
$ns  attach-agent $n32 $tcp31
$ns attach-agent $n31 $sink31
$ns  connect $tcp31 $sink31
set ftp31 [new Application/FTP]
$ftp31 attach-agent $tcp31
puts "\nnode 31 got message form 32\n"
$ns at 57.7 "$ftp31 start" 
$ns at 58.9 "$ftp31 stop"

set tcp32 [new Agent/TCP]
set sink32 [new Agent/TCPSink]
$ns  attach-agent $n32 $tcp32
$ns attach-agent $n33 $sink32
$ns  connect $tcp32 $sink32
set ftp32 [new Application/FTP]
$ftp32 attach-agent $tcp32
puts "\nnode 33 got message form 32\n"
$ns at 57.7 "$ftp32 start" 
$ns at 58.9 "$ftp32 stop"


set tcp33 [new Agent/TCP]
set sink33 [new Agent/TCPSink]
$ns  attach-agent $n32 $tcp33
$ns attach-agent $n29 $sink33
$ns  connect $tcp33 $sink33
set ftp33 [new Application/FTP]
$ftp33 attach-agent $tcp33
puts "\nnode 29 got message form 32\n"
$ns at 58.9 "$ftp33 start" 
$ns at 59.9 "$ftp33 stop"

#transmission

set tcp34 [new Agent/TCP]
set sink34 [new Agent/TCPSink]
$ns  attach-agent $n35 $tcp34
$ns attach-agent $n15 $sink34
$ns  connect $tcp34 $sink34
set ftp34 [new Application/FTP]
$ftp34 attach-agent $tcp34
puts "\nnode 15 got message form 15\n"
$ns at 69.0 "$ftp34 start" 
$ns at 71.0 "$ftp34 stop"

set tcp35 [new Agent/TCP]
set sink35 [new Agent/TCPSink]
$ns  attach-agent $n15 $tcp35
$ns attach-agent $n12 $sink35
$ns  connect $tcp35 $sink35
set ftp35 [new Application/FTP]
$ftp35 attach-agent $tcp35
puts "\nnode 12 got message form 15\n"
$ns at 71.1 "$ftp35 start" 
$ns at 73.1 "$ftp35 stop"

set tcp36 [new Agent/TCP]
set sink36 [new Agent/TCPSink]
$ns  attach-agent $n12 $tcp36
$ns attach-agent $n4 $sink36
$ns  connect $tcp36 $sink36
set ftp36 [new Application/FTP]
$ftp36 attach-agent $tcp36
puts "\nnode 4 got message form 12\n"
$ns at 73.2 "$ftp36 start" 
$ns at 75.2 "$ftp36 stop"



set tcp37 [new Agent/TCP]
set sink37 [new Agent/TCPSink]
$ns  attach-agent $n4 $tcp37
$ns attach-agent $n8 $sink37
$ns  connect $tcp37 $sink37
set ftp37 [new Application/FTP]
$ftp37 attach-agent $tcp37
puts "\nnode 8 got message form 4\n"
$ns at 75.3 "$ftp37 start" 
$ns at 77.3 "$ftp37 stop"

set tcp38 [new Agent/TCP]
set sink38 [new Agent/TCPSink]
$ns  attach-agent $n8 $tcp38
$ns attach-agent $n5 $sink38
$ns  connect $tcp38 $sink38
set ftp38 [new Application/FTP]
$ftp38 attach-agent $tcp38
puts "\nnode 5 got message form 8\n"
$ns at 77.4 "$ftp38 start" 
$ns at 79.4 "$ftp38 stop"


set tcp39 [new Agent/TCP]
set sink39 [new Agent/TCPSink]
$ns  attach-agent $n5 $tcp39
$ns attach-agent $n46 $sink39
$ns  connect $tcp39 $sink39
set ftp39 [new Application/FTP]
$ftp39 attach-agent $tcp39
puts "\nnode 46 got message form 5\n"
$ns at 79.5 "$ftp39 start" 
$ns at 81.5 "$ftp39 stop"


#set tcp40 [new Agent/TCP]
#set sink40 [new Agent/TCPSink]
#$ns  attach-agent $n5 $tcp40
#$ns attach-agent $n46 $sink40
#$ns  connect $tcp40 $sink40
#set ftp40 [new Application/FTP]
#$ftp40 attach-agent $tcp40
#$ns at 81.6 "$ftp40 start" 
#$ns at 83.6 "$ftp40 stop"

#transmission2

set tcp41 [new Agent/TCP]
set sink41 [new Agent/TCPSink]
$ns  attach-agent $n34 $tcp41
$ns attach-agent $n33 $sink41
$ns  connect $tcp41 $sink41
set ftp41 [new Application/FTP]
$ftp41 attach-agent $tcp41
puts "\nnode 33 got message form 34\n"
$ns at 86.0 "$ftp41 start" 
$ns at 88.0 "$ftp41 stop"

#set tcp42 [new Agent/TCP]
#set sink42 [new Agent/TCPSink]
#$ns  attach-agent $n29 $tcp42
#$ns attach-agent $n32 $sink42
#$ns  connect $tcp42 $sink42
#set ftp42 [new Application/FTP]
#$ftp42 attach-agent $tcp42
#$ns at 86.0 "$ftp42 start" 
#$ns at 88.0 "$ftp42 stop"

set tcp43 [new Agent/TCP]
set sink43 [new Agent/TCPSink]
$ns  attach-agent $n33 $tcp43
$ns attach-agent $n30 $sink43
$ns  connect $tcp43 $sink43
set ftp43 [new Application/FTP]
$ftp43 attach-agent $tcp43
puts "\nnode 30 got message form 33\n"
$ns at 88.0 "$ftp43 start" 
$ns at 90.0 "$ftp43 stop"

set tcp44 [new Agent/TCP]
set sink44 [new Agent/TCPSink]
$ns  attach-agent $n30 $tcp44
$ns attach-agent $n26 $sink44
$ns  connect $tcp44 $sink44
set ftp44 [new Application/FTP]
$ftp44 attach-agent $tcp44
puts "\nnode 26 got message form 30\n"
$ns at 90.0 "$ftp44 start" 
$ns at 92.0 "$ftp44 stop"

set tcp45 [new Agent/TCP]
set sink45 [new Agent/TCPSink]
$ns  attach-agent $n26 $tcp45
$ns attach-agent $n8 $sink45
$ns  connect $tcp45 $sink45
set ftp45 [new Application/FTP]
$ftp45 attach-agent $tcp45
puts "\nnode 8 got message form 26\n"
$ns at 92.0 "$ftp45 start" 
$ns at 94.0 "$ftp45 stop"

set tcp46 [new Agent/TCP]
set sink46 [new Agent/TCPSink]
$ns  attach-agent $n8 $tcp46
$ns attach-agent $n5 $sink46
$ns  connect $tcp46 $sink46
set ftp46 [new Application/FTP]
$ftp46 attach-agent $tcp46
puts "\nnode 5 got message form 8\n"
$ns at 94.0 "$ftp46 start" 
$ns at 96.0 "$ftp46 stop"


set tcp47 [new Agent/TCP]
set sink47 [new Agent/TCPSink]
$ns  attach-agent $n5 $tcp47
$ns attach-agent $n49 $sink47
$ns  connect $tcp47 $sink47
set ftp47 [new Application/FTP]
$ftp47 attach-agent $tcp47
puts "\nnode 49 got message form 5\n"
$ns at 96.0 "$ftp47 start" 
$ns at 98.0 "$ftp47 stop"


#transmission3

set tcp48 [new Agent/TCP]
set sink48 [new Agent/TCPSink]
$ns  attach-agent $n35 $tcp48
$ns attach-agent $n15 $sink48
$ns  connect $tcp48 $sink48
set ftp48 [new Application/FTP]
$ftp48 attach-agent $tcp48
puts "\nnode 15 got message form 35\n"
$ns at 110.0 "$ftp48 start" 
$ns at 112.0 "$ftp48 stop"

set tcp49 [new Agent/TCP]
set sink49 [new Agent/TCPSink]
$ns  attach-agent $n15 $tcp49
$ns attach-agent $n12 $sink49
$ns  connect $tcp49 $sink49
set ftp49 [new Application/FTP]
$ftp49 attach-agent $tcp49
puts "\nnode 12 got message form 15\n"
$ns at 112.1 "$ftp49 start" 
$ns at 114.0 "$ftp49 stop"


set tcp50 [new Agent/TCP]
set sink50 [new Agent/TCPSink]
$ns  attach-agent $n12 $tcp50
$ns attach-agent $n4 $sink50
$ns  connect $tcp50 $sink50
set ftp50 [new Application/FTP]
$ftp50 attach-agent $tcp50
puts "\nnode 4 got message form 12\n"
$ns at 114.1 "$ftp50 start" 
$ns at 116.0 "$ftp50 stop"


set tcp51 [new Agent/TCP]
set sink51 [new Agent/TCPSink]
$ns  attach-agent $n4 $tcp51
$ns attach-agent $n8 $sink51
$ns  connect $tcp51 $sink51
set ftp51 [new Application/FTP]
$ftp51 attach-agent $tcp51
puts "\nnode 8 got message form 4\n"
$ns at 116.0 "$ftp51 start" 
$ns at 118.0 "$ftp51 stop"


set tcp52 [new Agent/TCP]
set sink52 [new Agent/TCPSink]
$ns  attach-agent $n8 $tcp52
$ns attach-agent $n5 $sink52
$ns  connect $tcp52 $sink52
set ftp52 [new Application/FTP]
$ftp52 attach-agent $tcp52
puts "\nnode 5 got message form 8\n"
$ns at 118.0 "$ftp52 start" 
$ns at 120.0 "$ftp52 stop"


set tcp53 [new Agent/TCP]
set sink53 [new Agent/TCPSink]
$ns  attach-agent $n5 $tcp53
$ns attach-agent $n46 $sink53
$ns  connect $tcp53 $sink53
set ftp53 [new Application/FTP]
$ftp53 attach-agent $tcp53
puts "\nnode 46 got message form 5\n"
$ns at 120.0 "$ftp53 start" 
$ns at 122.0 "$ftp53 stop"

#transmision4

set tcp54 [new Agent/TCP]
set sink54 [new Agent/TCPSink]
$ns  attach-agent $n34 $tcp54
$ns attach-agent $n33 $sink54
$ns  connect $tcp54 $sink54
set ftp54 [new Application/FTP]
$ftp54 attach-agent $tcp54
puts "\nnode 33 got message form 34\n"
$ns at 124.0 "$ftp54 start" 
$ns at 126.0 "$ftp54 stop"


set tcp55 [new Agent/TCP]
set sink55 [new Agent/TCPSink]
$ns  attach-agent $n33 $tcp55
$ns attach-agent $n30 $sink55
$ns  connect $tcp55 $sink55
set ftp55 [new Application/FTP]
$ftp55 attach-agent $tcp55
puts "\nnode 30 got message form 33\n"
$ns at 126.1 "$ftp55 start" 
$ns at 128.0 "$ftp55 stop"


set tcp56 [new Agent/TCP]
set sink56 [new Agent/TCPSink]
$ns  attach-agent $n30 $tcp56
$ns attach-agent $n26 $sink56
$ns  connect $tcp56 $sink56
set ftp56 [new Application/FTP]
$ftp56 attach-agent $tcp56
puts "\nnode 26 got message form 30\n"
$ns at 128.1 "$ftp56 start" 
$ns at 130.0 "$ftp56 stop"



$ns at 130.2 "$n40 delete-mark N2"
$ns at 130.3 "$n40 add-mark N2 steelblue circle"
$ns at 130.6 "$n40 delete-mark N2"
$ns at 130.7 "$n40 add-mark N2 chocolate hexagon"

$ns at 130.2 "$n31 delete-mark N2"
$ns at 130.3 "$n31 add-mark N2 steelblue circle"
$ns at 130.6 "$n31 delete-mark N2"
$ns at 130.7 "$n31 add-mark N2 yellow circle"

$ns at 130.2 "$n7 delete-mark N2"
$ns at 130.3 "$n7 add-mark N2 steelblue circle"

$ns at 134.0 "$n9 delete-mark N2"
$ns at 134.1 "$n9 add-mark N2 steelblue circle"


set tcp57 [new Agent/TCP]
set sink57 [new Agent/TCPSink]
$ns  attach-agent $n26 $tcp57
$ns attach-agent $n7 $sink57
$ns  connect $tcp57 $sink57
set ftp57 [new Application/FTP]
$ftp57 attach-agent $tcp57
puts "\nnode 7 got message form 26\n"
$ns at 132.0 "$ftp57 start" 
$ns at 134.0 "$ftp57 stop"

set tcp58 [new Agent/TCP]
set sink58 [new Agent/TCPSink]
$ns  attach-agent $n7 $tcp58
$ns attach-agent $n9 $sink58
$ns  connect $tcp58 $sink58
set ftp58 [new Application/FTP]
$ftp58 attach-agent $tcp58
puts "\nnode 9 got message form 7\n"
$ns at 134.6 "$ftp58 start" 
$ns at 136.6 "$ftp58 stop"


set tcp59 [new Agent/TCP]
set sink59 [new Agent/TCPSink]
$ns  attach-agent $n9 $tcp59
$ns attach-agent $n49 $sink59
$ns  connect $tcp59 $sink59
set ftp59 [new Application/FTP]
$ftp59 attach-agent $tcp59
puts "\nnode 49 got message form 9\n"
$ns at 136.7 "$ftp59 start" 
$ns at 138.7 "$ftp59 stop"




$ns at 20.0 "$n0 setdest 313.391 341.247 300"

$ns at 20.0 "$n1 setdest 237.118 282.862 300"

$ns at 20.0 "$n2 setdest 307.862 198.952 300"

$ns at 20.0 "$n3 setdest 382.874 258.66 300"

$ns at 20.0 "$n4 setdest 420.589 363.175 300"

$ns at 20.0 "$n5 setdest 201.53 496.156 300"

$ns at 20.0 "$n6 setdest 272.027 541.416 300"

$ns at 20.0 "$n7 setdest 354.525 595.063 300"

$ns at 20.0 "$n8 setdest 351.897 495.54 300"

$ns at 20.0 "$n9 setdest 222.506 631.005 300"

$ns at 20.0 "$n10 setdest 158.039 574.447 300"

$ns at 20.0 "$n11 setdest 542.862 224.143 320"

$ns at 20.0 "$n12 setdest 587.266 315.705 320"

$ns at 20.0 "$n13 setdest 671.914 239.485 320"

$ns at 20.0 "$n14 setdest 749.769 155.56 320"

$ns at 20.0 "$n15 setdest 685.724 92.0947 320"

$ns at 20.0 "$n16 setdest 617.216 154.757 320"

$ns at 20.0 "$n17 setdest 807.892 305.298 320"

$ns at 20.0 "$n18 setdest 723.703 385.447 320"

$ns at 20.0 "$n19 setdest 940.137 319.698 320"

$ns at 20.0 "$n20 setdest 910.397 224.787 320"

$ns at 20.0 "$n21 setdest 866.219 394.235 320"

$ns at 20.0 "$n22 setdest 1021.59 237.348 300"

$ns at 20.0 "$n23 setdest 495.137 656.329 300"

$ns at 20.0 "$n24 setdest 309.967 683.154 300"

$ns at 20.0 "$n25 setdest 549.849 735.658 300"

$ns at 20.0 "$n26 setdest 573.534 583.099 300"

$ns at 20.0 "$n27 setdest 662.963 630.522 300"

$ns at 20.0 "$n28 setdest 648.942 717.65 300"

$ns at 20.0 "$n29 setdest 822.825 684.273 300"

$ns at 20.0 "$n30 setdest 741.963 564.435 320"

$ns at 20.0 "$n31 setdest 857.43 587.138 320"

$ns at 20.0 "$n32 setdest 835.721 499.189 320"

$ns at 20.0 "$n33 setdest 955.461 586.836 320"

$ns at 20.0 "$n34 setdest 1123.33 669.975 620"

$ns at 20.0 "$n35 setdest 523.949 18.018 600"

$ns at 20.0 "$n36 setdest 9.24351 302.646 600"

$ns at 20.0 "$n37 setdest 10.5559 492.468 600"

$ns at 20.0 "$n38 setdest 1175.99 149.032 600"

$ns at 20.0 "$n39 setdest 220.263 59.7928 600"

$ns at 20.0 "$n40 setdest 560.653 449.526 500"

$ns at 20.0 "$n41 setdest 1073.65 484.567 500"

$ns at 20.0 "$n42 setdest 1178.31 338.312 500"

$ns at 20.0 "$n43 setdest 988.42 83.3699 500"

$ns at 20.0 "$n44 setdest 852.4 25.3666 500"

$ns at 20.0 "$n45 setdest 432.341 124.591 500"

$ns at 20.0 "$n46 setdest 101.302 409.818 500"

$ns at 20.0 "$n47 setdest 89.8121 199.194 500"

$ns at 20.0 "$n48 setdest 136.755 730.469 500"

$ns at 20.0 "$n49 setdest 40.8004 612.63 500"





$ns at 102.0 "$n0 setdest 332.08 322.962 50"

$ns at 102.0 "$n1 setdest 233.473 314.824 50"

$ns at 102.0 "$n2 setdest 306.622 216.991 50"

$ns at 102.0 "$n3 setdest 422.442 250.423 50"

$ns at 102.0 "$n4 setdest 420.763 365.939 50"

$ns at 102.0 "$n5 setdest 203.03 420.512 50"

$ns at 102.0 "$n6 setdest 329.333 543.675 50"

$ns at 102.0 "$n7 setdest 423.421 580.135 50"

$ns at 102.0 "$n8 setdest 325.767 448.832 50"

$ns at 102.0 "$n9 setdest 288.201 663.183 50"

$ns at 102.0 "$n10 setdest 199.326 567.411 50"

$ns at 102.0 "$n11 setdest 519.538 325.586 50"

$ns at 102.0 "$n12 setdest 614.174 307.499 50"

$ns at 102.0 "$n13 setdest 705.924 272.917 50"

$ns at 102.0 "$n14 setdest 780.477 196.032 50"

$ns at 102.0 "$n15 setdest 651.784 190.61 50"

$ns at 102.0 "$n16 setdest 543.676 221.595 50"

$ns at 102.0 "$n17 setdest 807.363 305.758 50"

$ns at 102.0 "$n18 setdest 723.699 385.817 50"

$ns at 102.0 "$n19 setdest 944.108 461.287 50"

$ns at 102.0 "$n20 setdest 950.89 326.121 50"

#$ns at 102.0 "$n21 setdest  50"

$ns at 102.0 "$n22 setdest 906.832 234.53 50"

$ns at 102.0 "$n23 setdest 500.516 521.159 50"

$ns at 102.0 "$n24 setdest 398.001 710.57 50"

$ns at 102.0 "$n25 setdest 618.238 719.529 50"

$ns at 102.0 "$n26 setdest 617.43 544.975 50"

$ns at 102.0 "$n27 setdest 715.541 656.631 50"

$ns at 102.0 "$n28 setdest 560.973 623.458 50"

$ns at 102.0 "$n29 setdest 983.844 688.405 50"

$ns at 102.0 "$n30 setdest 710.055 500.97 50"

$ns at 102.0 "$n31 setdest 772.735 572.201 50"

$ns at 102.0 "$n32 setdest 870.539 638.922 50"

$ns at 102.0 "$n33 setdest 851.321 512.377 50"

$ns at 102.0 "$n34 setdest 1022.08 590.413 50"

$ns at 102.0 "$n35 setdest 702.818 102.661 50"

$ns at 102.0 "$n36 setdest 136.292 304.987 50"

$ns at 102.0 "$n37 setdest  132.556 377.023 50"

$ns at 102.0 "$n38 setdest 1060.2 317.946 50"

$ns at 102.0 "$n39 setdest 213.029 202.868 50"

$ns at 102.0 "$n40 setdest 560.653 449.526 500"

$ns at 102.0 "$n41 setdest 1009.78 405.402 50"

$ns at 102.0 "$n42 setdest 1071.7 501.8 50"

$ns at 102.0 "$n43 setdest 1017.68 224.583 50"

$ns at 102.0 "$n44 setdest 942.877 131.899 50"

$ns at 102.0 "$n45 setdest 535.208 98.4584 50"

$ns at 102.0 "$n46 setdest 31.7154 350.5 50"

$ns at 102.0 "$n47 setdest 360.033 107.851 50"

$ns at 102.0 "$n48 setdest  138.244 510.44 50"

$ns at 102.0 "$n49 setdest 130.195 678.437 50"


$n40 color darkpink
$ns at 21.3 "$n40 color darkpink"
$ns at 21.3 "$n40 add-mark N2 chocolate hexagon"




$ns at 21.5 "$n8 add-mark N2 red circle"
$ns at 21.5 "$n7 add-mark N2 red circle"
$ns at 21.5 "$n6 add-mark N2 red circle"
$ns at 21.5 "$n5 add-mark N2 red circle"
$ns at 21.5 "$n24 add-mark N2 red circle"
$ns at 21.5 "$n9 add-mark N2 red circle"
$ns at 21.5 "$n10 add-mark N2 red circle"

$ns at 20.0 "$n49 color orange"
#$ns at 21.5 "$n49 add-mark N2 orange circle"

$ns at 21.5 "$n26 add-mark N2 green circle"
$ns at 21.5 "$n27 add-mark N2 green circle"
$ns at 21.5 "$n28 add-mark N2 green circle"
$ns at 21.5 "$n25 add-mark N2 green circle"
$ns at 21.5 "$n23 add-mark N2 green circle"


$ns at 21.5 "$n30 add-mark N2 yellow circle"
$ns at 21.5 "$n32 add-mark N2 yellow circle"
$ns at 21.5 "$n31 add-mark N2 yellow circle"
$ns at 21.5 "$n33 add-mark N2 yellow circle"
$ns at 21.5 "$n29 add-mark N2 yellow circle"


$ns at 21.5 "$n4 add-mark N2 violet circle"
$ns at 21.5 "$n0 add-mark N2 violet circle"
$ns at 21.5 "$n3 add-mark N2 violet circle"
$ns at 21.5 "$n2 add-mark N2 violet circle"
$ns at 21.5 "$n1 add-mark N2 violet circle"


$ns at 21.5 "$n12 add-mark N2 blue circle"
$ns at 21.5 "$n11 add-mark N2 blue circle"
$ns at 21.5 "$n16 add-mark N2 blue circle"
$ns at 21.5 "$n13 add-mark N2 blue circle"
$ns at 21.5 "$n15 add-mark N2 blue circle"
$ns at 21.5 "$n14 add-mark N2 blue circle"


$ns at 21.5 "$n18 add-mark N2 darkgreen circle"
$ns at 21.5 "$n17 add-mark N2 darkgreen circle"
$ns at 21.5 "$n21 add-mark N2 darkgreen circle"
$ns at 21.5 "$n20 add-mark N2 darkgreen circle"
$ns at 21.5 "$n19 add-mark N2 darkgreen circle"
$ns at 21.5 "$n22 add-mark N2 darkgreen circle"


$ns at 21.5 "$n48 add-mark N2 white circle"
$ns at 21.5 "$n49 add-mark N2 white circle"
$ns at 21.5 "$n37 add-mark N2 white circle"
$ns at 21.5 "$n34 add-mark N2 white circle"
$ns at 21.5 "$n46 add-mark N2 white circle"
$ns at 21.5 "$n36 add-mark N2 white circle"
$ns at 21.5 "$n47 add-mark N2 white circle"
$ns at 21.5 "$n39 add-mark N2 white circle"
$ns at 21.5 "$n45 add-mark N2 white circle"
$ns at 21.5 "$n35 add-mark N2 white circle"
$ns at 21.5 "$n44 add-mark N2 white circle"
$ns at 21.5 "$n43 add-mark N2 white circle"
$ns at 21.5 "$n38 add-mark N2 white circle"
$ns at 21.5 "$n42 add-mark N2 white circle"
$ns at 21.5 "$n41 add-mark N2 white circle"

$ns at 60.1 "$n46 delete-mark N2"
#$ns at 60.1 "$n35 delete-mark N2"
$ns at 60.2 "$n46 add-mark N2 coral circle"
#$ns at 60.2 "$n35 add-mark N2 coral circle"

$ns at 60.1 "$n49 delete-mark N2"
#$ns at 60.1 "$n34 delete-mark N2"
$ns at 60.2 "$n49 add-mark N2 coral circle"
#$ns at 60.2 "$n34 add-mark N2 coral circle"


$ns at 61.1 "$n15 delete-mark N2"
$ns at 61.2 "$n15 add-mark N2 RoyalBlue4 circle"

$ns at 61.4 "$n12 delete-mark N2"
$ns at 61.5 "$n12 add-mark N2 RoyalBlue4 circle"

$ns at 61.7 "$n4 delete-mark N2"
$ns at 61.9 "$n4 add-mark N2 RoyalBlue4 circle"

$ns at 62.0 "$n8 delete-mark N2"
$ns at 62.2 "$n8 add-mark N2 RoyalBlue4 circle"

$ns at 62.3 "$n5 delete-mark N2"
$ns at 62.5 "$n5 add-mark N2 RoyalBlue4 circle"

#finding sensor node

$ns at 81.6 "$n33 delete-mark N2"
$ns at 81.8 "$n33 add-mark N2 steelblue circle"

$ns at 81.6 "$n41 delete-mark N2"
$ns at 81.8 "$n41 add-mark N2 steelblue circle"
$ns at 81.9 "$n41 delete-mark N2"
$ns at 82.0 "$n41 add-mark N2 white circle"


$ns at 82.1 "$n30 delete-mark N2"
$ns at 82.3 "$n30 add-mark N2 steelblue circle"

$ns at 82.4 "$n26 delete-mark N2"
$ns at 82.6 "$n26 add-mark N2 steelblue circle"

$ns at 82.7 "$n8 delete-mark N2"
$ns at 82.9 "$n8 add-mark N2 steelblue circle"


$ns at 83.0 "$n5 delete-mark N2"
$ns at 83.2 "$n5 add-mark N2 steelblue circle"

$ns at 83.3 "$n49 delete-mark N2"
$ns at 83.5 "$n49 add-mark N2 steelblue circle"



$ns at 60.2 "$n35 delete-mark N2"
$n35 color darkpink
$ns at 60.2 "$n35 color darkpink"
$ns at 60.2 "$n35 add-mark N2 olivedrab hexagon"

$ns at 60.2 "$n46 delete-mark N2"
$n46 color darkpink
$ns at 60.2 "$n46 color darkpink"
$ns at 60.2 "$n46 add-mark N2 olivedrab box"

$ns at 60.2 "$n49 delete-mark N2"
$n49 color darkpink
$ns at 60.2 "$n49 color darkpink"
$ns at 60.2 "$n49 add-mark N2 yellow3 box"

$ns at 60.2 "$n34 delete-mark N2"
$n35 color darkpink
$ns at 60.2 "$n34 color darkpink"
$ns at 60.2 "$n34 add-mark N2 yellow3 hexagon"


$ns at 60.2 "$n46 label idle_DES"
$ns at 60.2 "$n35 label idle_SOURCE"

$ns at 60.2 "$n49 label idle_DES"
$ns at 60.2 "$n34 label idle_SOURCE"

$ns at 35.0 "$n40 label SOURCE"

$ns at 38.0 "$n6 label Dest"
$ns at 38.0 "$n24 label Dest"
$ns at 38.0 "$n10 label Dest"

$ns at 38.0 "$n23 label Dest"
$ns at 38.0 "$n28 label Dest"
$ns at 38.0 "$n30 label CS&Dest"
$ns at 37.9 "$n30 delete-mark N2"
$ns at 38.0 "$n30 add-mark N2 YELLOW box"
$ns at 38.8 "$n30 delete-mark N2"
$ns at 39.0 "$n30 add-mark N2 YELLOW circle"

$ns at 38.0 "$n31 label Dest"
$ns at 38.0 "$n29 label Dest"
$ns at 38.0 "$n33 label Dest"

$ns at 38.0 "$n21 label Dest"
$ns at 38.0 "$n19 label Dest"
$ns at 38.0 "$n23 label Dest"


$ns at 38.0 "$n16 label Dest"
$ns at 38.0 "$n14 label Dest"

$ns at 38.0 "$n1 label Dest"
$ns at 38.0 "$n3 label Dest"


$ns at 38.0 "$n5 label For"
$ns at 38.0 "$n8 label CS"
$ns at 37.9 "$n8 delete-mark N2"
$ns at 38.3 "$n8 add-mark N2 YELLOW box"
$ns at 38.8 "$n8 delete-mark N2"
$ns at 39.0 "$n8 add-mark N2 red circle"


$ns at 38.0 "$n7 label For"
$ns at 38.0 "$n9 label CS"
$ns at 37.9 "$n9 delete-mark N2"
$ns at 38.3 "$n9 add-mark N2 YELLOW box"
$ns at 38.8 "$n9 delete-mark N2"
$ns at 39.0 "$n9 add-mark N2 red circle"


$ns at 38.0 "$n26 label CS"
$ns at 37.9 "$n26 delete-mark N2"
$ns at 38.3 "$n26 add-mark N2 YELLOW box"
$ns at 38.8 "$n26 delete-mark N2"
$ns at 39.0 "$n26 add-mark N2 green circle"


$ns at 38.0 "$n27 label For"
$ns at 38.0 "$n25 label CS"
$ns at 37.9 "$n25 delete-mark N2"
$ns at 38.3 "$n25 add-mark N2 YELLOW box"
$ns at 38.8 "$n25 delete-mark N2"
$ns at 39.0 "$n25 add-mark N2 green circle"

$ns at 38.0 "$n32 label For"


$ns at 38.0 "$n18 label CS"
$ns at 37.9 "$n18 delete-mark N2"
$ns at 38.3 "$n18 add-mark N2 YELLOW box"
$ns at 38.8 "$n18 delete-mark N2"
$ns at 39.0 "$n18 add-mark N2 darkgreen circle"

$ns at 38.0 "$n17 label For"
$ns at 38.0 "$n20 label CS"
$ns at 37.9 "$n20 delete-mark N2"
$ns at 38.3 "$n20 add-mark N2 YELLOW box"
$ns at 38.8 "$n20 delete-mark N2"
$ns at 39.0 "$n20 add-mark N2 darkgreen circle"

$ns at 38.0 "$n22 label CS"
$ns at 37.9 "$n22 delete-mark N2"
$ns at 38.3 "$n22 add-mark N2 YELLOW box"
$ns at 38.8 "$n22 delete-mark N2"
$ns at 39.0 "$n22 add-mark N2 darkgreen circle"

$ns at 38.0 "$n12 label CS"
$ns at 37.9 "$n12 delete-mark N2"
$ns at 38.3 "$n12 add-mark N2 YELLOW box"
$ns at 38.8 "$n12 delete-mark N2"
$ns at 39.0 "$n12 add-mark N2 blue circle"


$ns at 38.0 "$n11 label CS"
$ns at 37.9 "$n11 delete-mark N2"
$ns at 38.3 "$n11 add-mark N2 YELLOW box"
$ns at 38.8 "$n11 delete-mark N2"
$ns at 39.0 "$n11 add-mark N2 blue circle"


$ns at 38.0 "$n13 label For"
$ns at 38.0 "$n15 label CS"
$ns at 37.9 "$n15 delete-mark N2"
$ns at 38.3 "$n15 add-mark N2 YELLOW box"
$ns at 38.8 "$n15 delete-mark N2"
$ns at 39.0 "$n15 add-mark N2 blue circle"


$ns at 38.0 "$n4 label CS"
$ns at 37.9 "$n4 delete-mark N2"
$ns at 38.3 "$n4 add-mark N2 YELLOW box"
$ns at 38.8 "$n4 delete-mark N2"
$ns at 39.0 "$n4 add-mark N2 violet circle"

$ns at 38.0 "$n0 label For"
$ns at 38.0 "$n2 label CS"
$ns at 37.9 "$n2 delete-mark N2"
$ns at 38.3 "$n2 add-mark N2 YELLOW box"
$ns at 38.8 "$n2 delete-mark N2"
$ns at 39.0 "$n2 add-mark N2 violet circle"


$ns at 38.0 "$n48 label idle"
$ns at 38.0 "$n49 label idle"
$ns at 38.0 "$n37 label idle"
$ns at 38.0 "$n46 label idle"

$ns at 38.0 "$n36 label idle"
$ns at 38.0 "$n47 label idle"
$ns at 38.0 "$n39 label idle"
$ns at 38.0 "$n45 label idle"
$ns at 38.0 "$n35 label idle"

$ns at 38.0 "$n44 label idle"
$ns at 38.0 "$n43 label idle"
$ns at 38.0 "$n38 label idle"
$ns at 38.0 "$n42 label idle"
$ns at 38.0 "$n41 label idle"
$ns at 38.0 "$n34 label idle"


#$ns at 1.7 "$n24 label virtual_source_node"
#$ns at 1.7 "$n29 label Virtual_destination_node"

#$ns at 1.7 "$n8 label Region_1"
#$ns at 1.7 "$n10 label Header"

#$ns at 1.7 "$n4 label Region_2"
#$ns at 1.7 "$n3 label Header"

#$ns at 1.7 "$n12 label Region_3"
#$ns at 1.7 "$n15 label Header"

#$ns at 1.7 "$n18 label Region_4"
#$ns at 1.7 "$n19 label Header"

#$ns at 1.7 "$n31 label Region_5"
#$ns at 1.7 "$n32 label Header"

#$ns at 1.7 "$n26 label Region_6"
#$ns at 1.7 "$n23 label Header"

#$ns at 1.7 "$n34 label Region_7"

#$n10 color darkred
#$ns at 1.7 "$n10 color darkred"

#$n0 color darkred
#$ns at 1.7 "$n3 color darkred"

#$n15 color darkred
#$ns at 1.7 "$n15 color darkred"

#$n19 color darkred
#$ns at 1.7 "$n19 color darkred"

#$n32 color darkred
#$ns at 1.7 "$n32 color darkred"

#$n23 color darkred
#$ns at 1.7 "$n23 color darkred"

#$n8 color violet
#$ns at 1.7 "$n8 color violet"
#$ns at 1.7 "$n8 add-mark N2 red circle"

#$n4 color violet
#$ns at 1.7 "$n4 color violet"
#$ns at 1.7 "$n4 add-mark N2 red circle"

#$n12 color violet
#$ns at 1.7 "$n12 color violet"
#$ns at 1.7 "$n12 add-mark N2 red circle"

#$n18 color violet
#$ns at 1.7 "$n18 color violet"
#$ns at 1.7 "$n18 add-mark N2 red circle"

#$n31 color violet
#$ns at 1.7 "$n31 color violet"
#$ns at 1.7 "$n31 add-mark N2 red circle"

#$n34 color darkgreen
#$ns at 1.7 "$n34 color darkgreen"
#$ns at 1.7 "$n34 add-mark N2 white circle"
#$ns at 12.6 "$n34 add-mark N2 orange circle"

#$n35 color darkgreen
#$ns at 1.7 "$n35 color darkgreen"
#$ns at 1.7 "$n35 add-mark N2 white circle"
#$ns at 12.6 "$n35 add-mark N2 orange circle"

#$n36 color darkgreen
#$ns at 1.7 "$n36 color darkgreen"
#$ns at 1.7 "$n36 add-mark N2 white circle"
#$ns at 12.6 "$n36 add-mark N2 orange circle"

#$n37 color darkgreen
#$ns at 1.7 "$n37 color darkgreen"
#$ns at 1.7 "$n37 add-mark N2 white circle"
#$ns at 12.6 "$n37 add-mark N2 orange circle"

#$n38 color darkgreen
#$ns at 1.7 "$n38 color darkgreen"
#$ns at 1.7 "$n38 add-mark N2 white circle"
#$ns at 12.6 "$n38 add-mark N2 orange circle"

#$n39 color darkgreen
#$ns at 1.7 "$n39 color darkgreen"
#$ns at 1.7 "$n39 add-mark N2 white circle"
#$ns at 12.6 "$n39 add-mark N2 orange circle"

#$n26 color violet
#$ns at 1.7 "$n26 color violet"
#$ns at 1.7 "$n26 add-mark N2 red circle"

#$n24 color DARKORANGE
#$ns at 1.7 "$n24 color DARKORANGE"

#$n29 color DARKORANGE
#$ns at 1.7 "$n29 color DARKORANGE"



#$ns at 23.9 "$n29 add-mark N2 Green circle"
#$ns at 24.5 "$n29 add-mark N2 yellow circle"
#$ns at 24.6 "$n29 add-mark N2 Red circle"

#$ns at 23.9 "$n24 add-mark N2 Green circle"
#$ns at 24.5 "$n24 add-mark N2 yellow circle"
#$ns at 24.6 "$n24 add-mark N2 Red circle"

$ns at 0.0 "$ns trace-annotate \" Delay optimal broadcast in multihop wireless Mesh networks\""

proc finish {} {
    global ns tracefile namfile
    $ns flush-trace
    close $tracefile
    close $namfile
    exec nam pro_nam &
#exec cat pro_trace &
   # exec cat proposed.tr &	
    exit 0
}
for {set i 0} {$i < $val(nn) } { incr i } {
    $ns at $val(stop) "\$n$i reset"
}
$ns at $val(stop) "$ns nam-end-wireless $val(stop)"
$ns at $val(stop) "finish"
$ns at $val(stop) "puts \"done\" ; $ns halt"
$ns run
