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
Mac/802_11 set basicRate_ 1Mb              ;

set val(chan)   Channel/WirelessChannel    ;
set val(prop)   Propagation/TwoRayGround   ;
set val(netif)  Phy/WirelessPhy            ;
set val(mac)    Mac/802_11                 ;
set val(ifq)    Queue/DropTail/PriQueue    ;
set val(ll)     LL                         ;
set val(ant)    Antenna/OmniAntenna        ;
set val(ifqlen) 50                         ;
set val(nn)     42                         ;
set val(rp)     DSDV				;
set val(x)      100                       ;
set val(y)      100                        ;
set val(stop)   140.0                       ;

set ns [new Simulator]

set topo [new Topography]
$topo load_flatgrid $val(x) $val(y)
create-god $val(nn)
set tracefile [open Exist_trace w]
$ns trace-all $tracefile
set namfile [open Exist_nam w]
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


  puts "\n\nNode Configuration Started here...\n\n \
                   -channel $val(chan) \n\n \
                   -adhocRouting $val(rp) \n\n \
                   -llType $val(ll) \n\n \
                   -macType $val(mac) \n\n \
                   -ifqType $val(ifq) \n\n \
                   -ifqLen $val(ifqlen) \n\n \
                   -antType $val(ant) \n\n \
                   -propType $val(prop) \n\n \
                   -phyType $val(netif) \n\n"


set n0 [$ns node]
$n0 set X_ 348.616
$n0 set Y_ 368.451
$n0 set Z_ 0.0
$ns color 0 blue
$n0 color blue
$ns at 0.0 "$n0 color blue"
$ns initial_node_pos $n0 28
set n1 [$ns node]
$n1 set X_ 277.139
$n1 set Y_ 305.047
$n1 set Z_ 0.0
$n1 color blue
$ns at 0.0 "$n1 color blue"
$ns initial_node_pos $n1 28
set n2 [$ns node]
$n2 set X_ 187.143
$n2 set Y_ 229.744
$n2 set Z_ 0.0
$n2 color blue
$ns at 0.0 "$n2 color blue"
$ns initial_node_pos $n2 28
set n3 [$ns node]
$n3 set X_ 431.233
$n3 set Y_ 14.3825
$n3 set Z_ 0.0
$n3 color blue
$ns at 0.0 "$n3 color blue"
$ns initial_node_pos $n3 28
set n4 [$ns node]
$n4 set X_ 439.13
$n4 set Y_ 356.987
$n4 set Z_ 0.0
$n4 color blue
$ns at 0.0 "$n4 color blue"
$ns initial_node_pos $n4 28
set n5 [$ns node]
$n5 set X_ 214.096
$n5 set Y_ 515.804
$n5 set Z_ 0.0
$n5 color blue
$ns at 0.0 "$n5 color blue"
$ns initial_node_pos $n5 28
set n6 [$ns node]
$n6 set X_ 287.774
$n6 set Y_ 581.659
$n6 set Z_ 0.0
$n6 color blue
$ns at 0.0 "$n6 color blue"
$ns initial_node_pos $n6 28
set n7 [$ns node]
$n7 set X_ 322.135
$n7 set Y_ 472.401
$n7 set Z_ 0.0
$n7 color blue
$ns at 0.0 "$n7 color blue"
$ns initial_node_pos $n7 28
set n8 [$ns node]
$n8 set X_ 440.944
$n8 set Y_ 487.306
$n8 set Z_ 0.0
$n8 color blue
$ns at 0.0 "$n8 color blue"
$ns initial_node_pos $n8 28
set n9 [$ns node]
$n9 set X_ 337.627  
$n9 set Y_ 664.282
$n9 set Z_ 0.0
$n9 color blue
$ns at 0.0 "$n9 color blue"
$ns initial_node_pos $n9 28
set n10 [$ns node]
$n10 set X_ 168.787 
$n10 set Y_ 634.381
$n10 set Z_ 0.0
$n10 color blue
$ns at 0.0 "$n10 color blue"
$ns initial_node_pos $n10 28
set n11 [$ns node]
$n11 set X_ 503.598
$n11 set Y_ 226.327
$n11 set Z_ 0.0
$n11 color blue
$ns at 0.0 "$n11 color blue"
$ns initial_node_pos $n11 28
set n12 [$ns node]
$n12 set X_ 554.745 
$n12 set Y_ 312.149
$n12 set Z_ 0.0
$n12 color blue
$ns at 0.0 "$n12 color blue"
$ns initial_node_pos $n12 28
set n13 [$ns node]
$n13 set X_ 654.533 
$n13 set Y_ 267.84
$n13 set Z_ 0.0
$n13 color blue
$ns at 0.0 "$n13 color blue"
$ns initial_node_pos $n13 28
set n14 [$ns node]
$n14 set X_ 713.857
$n14 set Y_ 153.132
$n14 set Z_ 0.0
$n14 color blue
$ns at 0.0 "$n14 color blue"

$ns initial_node_pos $n14 28
set n15 [$ns node]
$n15 set X_ 636.614
$n15 set Y_ 52.7309
$n15 set Z_ 0.0
$n15 color blue
$ns at 0.0 "$n15 color blue"
$ns initial_node_pos $n15 28
set n16 [$ns node]
$n16 set X_ 615.12
$n16 set Y_ 154.424
$n16 set Z_ 0.0
$n16 color blue
$ns at 0.0 "$n16 color blue"

$ns initial_node_pos $n16 28
set n17 [$ns node]
$n17 set X_ 764.974
$n17 set Y_ 334.123
$n17 set Z_ 0.0
$n17 color blue
$ns at 0.0 "$n17 color blue"

$ns initial_node_pos $n17 28
set n18 [$ns node]
$n18 set X_ 672.814
$n18 set Y_ 389.137
$n18 set Z_ 0.0
$n18 color blue
$ns at 0.0 "$n18 color blue"

$ns initial_node_pos $n18 28
set n19 [$ns node]
$n19 set X_ 895.07
$n19 set Y_ 514.065
$n19 set Z_ 0.0
$n19 color blue
$ns at 0.0 "$n19 color blue"

$ns initial_node_pos $n19 28
set n20 [$ns node]
$n20 set X_ 877.385 
$n20 set Y_ 322.894
$n20 set Z_ 0.0
$n20 color blue
$ns at 0.0 "$n20 color blue"

$ns initial_node_pos $n20 28
set n21 [$ns node]
$n21 set X_ 819.794
$n21 set Y_ 436.534
$n21 set Z_ 0.0
$n21 color blue
$ns at 0.0 "$n21 color blue"

$ns initial_node_pos $n21 28
set n22 [$ns node]
$n22 set X_ 953.768
$n22 set Y_ 418.624
$n22 set Z_ 0.0
$n22 color blue
$ns at 0.0 "$n22 color blue"

$ns initial_node_pos $n22 28
set n23 [$ns node]
$n23 set X_ 495.137 
$n23 set Y_ 656.329
$n23 set Z_ 0.0
$n23 color blue
$ns at 0.0 "$n23 color blue"

$ns initial_node_pos $n23 28
set n24 [$ns node]
$n24 set X_ 407.663
$n24 set Y_ 592.828
$n24 set Z_ 0.0
$n24 color blue
$ns at 0.0 "$n24 color blue"

$ns initial_node_pos $n24 28
set n25 [$ns node]
$n25 set X_ 559.342
$n25 set Y_ 754.644
$n25 set Z_ 0.0
$n25 color blue
$ns at 0.0 "$n25 color blue"

$ns initial_node_pos $n25 28
set n26 [$ns node]
$n26 set X_ 573.534 
$n26 set Y_ 583.099
$n26 set Z_ 0.0
$n26 color blue
$ns at 0.0 "$n26 color blue"

$ns initial_node_pos $n26 28
set n27 [$ns node]
$n27 set X_  662.963 
$n27 set Y_ 630.522
$n27 set Z_ 0.0
$n27 color blue
$ns at 0.0 "$n27 color blue"

$ns initial_node_pos $n27 28
set n28 [$ns node]
$n28 set X_ 670.156
$n28 set Y_ 756.402 
$n28 set Z_ 0.0
$n28 color blue
$ns at 0.0 "$n28 color blue"

$ns initial_node_pos $n28 28
set n29 [$ns node]
$n29 set X_ 801.404
$n29 set Y_ 706.689 
$n29 set Z_ 0.0
$n29 color blue
$ns at 0.0 "$n29 color blue"

$ns initial_node_pos $n29 28
set n30 [$ns node]
$n30 set X_  843.424
$n30 set Y_  606.023
$n30 set Z_ 0.0
$n30 color blue
$ns at 0.0 "$n30 color blue"

$ns initial_node_pos $n30 29
set n31 [$ns node]
$n31 set X_ 691.892
$n31 set Y_ 490.577
$n31 set Z_ 0.0
$n31 color blue
$ns at 0.0 "$n31 color blue"

$ns initial_node_pos $n31 28
set n32 [$ns node]
$n32 set X_ 764.171
$n32 set Y_ 546.06
$n32 set Z_ 0.0
$n32 color blue
$ns at 0.0 "$n32 color blue"

$ns initial_node_pos $n32 28
set n33 [$ns node]
$n33 set X_ 949.054
$n33 set Y_ 661.374
$n33 set Z_ 0.0
$n33 color blue
$ns at 0.0 "$n33 color blue"

$ns initial_node_pos $n33 28
set n34 [$ns node]
$n34 set X_ 1002.85 
$n34 set Y_ 550.163
$n34 set Z_ 0.0
$ns initial_node_pos $n34 28
$n34 color blue
$ns at 0.0 "$n34 color blue"

set n35 [$ns node]
$n35 set X_ 403.629
$n35 set Y_ 238.194
$n35 set Z_ 0.0
$ns initial_node_pos $n35 28
$n35 color blue
$ns at 0.0 "$n35 color blue"

set n36 [$ns node]
$n36 set X_ 252.147
$n36 set Y_ 100.686
$n36 set Z_ 0.0
$ns initial_node_pos $n36 28
$n36 color blue
$ns at 0.0 "$n36 color blue"

set n37 [$ns node]
$n37 set X_ 422.244
$n37 set Y_ 757.489 
$n37 set Z_ 0.0
$ns initial_node_pos $n37 28
$n37 color blue
$ns at 0.0 "$n37 color blue"

set n38 [$ns node]
$n38 set X_ 799.438  
$n38 set Y_ 230.86 
$n38 set Z_ 0.0
$ns initial_node_pos $n38 28
$n38 color blue
$ns at 0.0 "$n38 color blue"

set n39 [$ns node]
$n39 set X_ 360.138
$n39 set Y_ 127.407
$n39 set Z_ 0.0
$ns initial_node_pos $n39 28
$n39 color blue
$ns at 0.0 "$n39 color blue"

set n40 [$ns node]
$n40 set X_ 558
$n40 set Y_ 454.887
$n40 set Z_ 0.0
#$ns initial_node_pos $n40 28
#$n40 color blue
#$ns at 0.0 "$n40 color blue"
$n40 color darkpink
$ns at 0.0 "$n40 color darkpink"
$ns initial_node_pos $n40 60
$ns at 0.0 "$n40 add-mark N1 chocolate hexagon"
$n40 color darkpink
$ns at 0.0 "$n40 color darkpink"
$ns at 0.0 "$n40 label BN"


set n41 [$ns node]
$n41 set X_ 172.504
$n41 set Y_ 395.329
$n41 set Z_ 0.0
$ns initial_node_pos $n41 28
$n41 color blue
$ns at 0.0 "$n41 color blue"

#set n42 [$ns node]
#$n42 set X_ 502.674 
#$n42 set Y_ 134.614
#$n42 set Z_ 0.0
#$ns initial_node_pos $n42 28
#$n42 color blue
#$ns at 0.0 "$n42 color blue"

#set n43 [$ns node]
#$n43 set X_ 963.697
#$n43 set Y_ 495.757
#$n43 set Z_ 0.0
#$ns initial_node_pos $n43 28
#$n43 color blue
#$ns at 0.0 "$n43 color blue"

#set n44 [$ns node]
#$n44 set X_ 1085.69 
#$n44 set Y_ 336.911 
#$n44 set Z_ 0.0
#$ns initial_node_pos $n44 28
#$n44 color blue
#$ns at 0.0 "$n44 color blue"

#set n45 [$ns node]
#$n45 set X_ 937.183
#$n45 set Y_ 146.175
#$n45 set Z_ 0.0
#$ns initial_node_pos $n45 28
#$n45 color blue
#$ns at 0.0 "$n45 color blue"

#set n46 [$ns node]
#$n46 set X_ 802.28
#$n46 set Y_ 82.9045
#$n46 set Z_ 0.0
#$ns initial_node_pos $n46 28
#$n46 color blue
#$ns at 0.0 "$n46 color blue"

#set n47 [$ns node]
#$n47 set X_ 769.026
#$n47 set Y_ 718.727
#$n47 set Z_ 0.0
#$ns initial_node_pos $n47 28
#$n47 color blue
#$ns at 0.0 "$n47 color blue"

#set n48 [$ns node]
#$n48 set X_ 410.035 
#$n48 set Y_ 752.7
#$n48 set Z_ 0.0
#$ns initial_node_pos $n48 28
#$n48 color blue
#$ns at 0.0 "$n48 color blue"

#set n49 [$ns node]
#$n49 set X_ 251.812
#$n49 set Y_ 144.212
#$n49 set Z_ 0.0
#$ns initial_node_pos $n49 28
#$n49 color blue
#$ns at 0.0 "$n49 color blue"



#$ns at 12.3 "$n0 setdest 280.013 383.503 500"

#$ns at 12.3 "$n1 setdest 193.249 245.426 500"

#$ns at 12.3 "$n2 setdest 255.533 189.254 500"

#$ns at 12.3 "$n3 setdest 345.28 50.3274 500"

#$ns at 12.3 "$n4 setdest 370.048 332.474 500"

#$ns at 12.3 "$n5 setdest 153.928 560.373 500"

#$ns at 12.3 "$n6 setdest 202.751 503.595 500"

#$ns at 12.3 "$n7 setdest 284.251 485.772 500"

#$ns at 12.3 "$n8 setdest 391.918 529.647 500"

#$ns at 12.3 "$n9 setdest 277.459 664.282 500"

#$ns at 12.3 "$n10 setdest 195.528 638.838 500"

#$ns at 12.3 "$n11 setdest 503.598 226.327 520"

#$ns at 12.3 "$n12 setdest 592.629 283.179 520"

#$ns at 12.3 "$n13 setdest 685.731 234.413 520"

#$ns at 12.3 "$n14 setdest 713.857 153.132 520"

#$ns at 12.3 "$n15 setdest 670.041 72.787 520"

#$ns at 12.3 "$n16 setdest 563.866 74.1999 520"

#$ns at 12.3 "$n17 setdest 789.487 269.498 520"

#$ns at 12.3 "$n18 setdest 746.353 364.624 520"

#$ns at 12.3 "$n19 setdest 950.668 360.108 520"

#$ns at 12.3 "$n20 setdest 888.527 235.984 520"

#$ns at 12.3 "$n21 setdest 858.841 394.193 520"

#$ns at 12.3 "$n22 setdest 971.228 278.948 500"

#$ns at 12.3 "$n23 setdest 495.137 656.329 500"

#$ns at 12.3 "$n24 setdest 358.637 624.026 500"

#$ns at 12.3 "$n25 setdest 549.849 735.658 500"

#$ns at 12.3 "$n26 setdest 573.534 583.099 500"

#$ns at 12.3 "$n27 setdest 662.963 630.522 500"

#$ns at 12.3 "$n28 setdest 648.942 717.65 500"

#$ns at 12.3 "$n29 setdest 916.462 642.054 500"

#$ns at 12.3 "$n30 setdest 794.838 622.649 520"

#$ns at 12.3 "$n31 setdest 749.832 519.547 520"

#$ns at 12.3 "$n32 setdest 861.372 494.219 520"

#$ns at 12.3 "$n33 setdest 991.953 602.255 520"

#$ns at 12.3 "$n34 setdest 1066.87 458.986 600"

#$ns at 12.3 "$n35 setdest 343.461 211.453 600"

#$ns at 12.3 "$n36 setdest 267.998 108.596 600"

#$ns at 12.3 "$n37 setdest 107.063 862.226 680"

#$ns at 12.3 "$n38 setdest 857.378 132.808 600"

#$ns at 12.3 "$n39 setdest 263.043 3.19316  600"


#$ns at 12.3 "$n34 setdest 1197.56 465.608 620"

#$ns at 12.3 "$n35 setdest 366.972 38.8937 600"

#$ns at 12.3 "$n36 setdest 2.06127 372.66 600"

#$ns at 12.3 "$n37 setdest 2.27199 562.374 600"

#$ns at 12.3 "$n38 setdest 1029.29 85.8336 600"

#$ns at 12.3 "$n39 setdest 94.5744 149.836 600"

#$ns at 12.3 "$n41 setdest 195.785 338.895 600"


#$ns at 12.3 "$n42 setdest 502.674 134.614 600"

#$ns at 12.3 "$n43 setdest 961.537 510.877 600"

#$ns at 12.3 "$n44 setdest 1139.7 381.118 600"

#$ns at 12.3 "$n45 setdest 1047.66 88.5675 600"

#$ns at 12.3 "$n46 setdest 869.993 38.6811 600"

#$ns at 12.3 "$n47 setdest 1210.26 540.451 680"

#$ns at 12.3 "$n48 setdest 216.096 750.461 600"

#$ns at 12.3 "$n49 setdest 103.48 34.9553 600"


#$ns at 12.3 "$n44 setdest 1255.05 319.083 600"

#$ns at 12.3 "$n45 setdest 1215.74 143.947 600"

#$ns at 12.3 "$n46 setdest 857.991 62.8484 600"

#$ns at 12.3 "$n47 setdest  1117.08 542.758 600"

#$ns at 12.3 "$n48 setdest 133.916 734.872 600"

#$ns at 12.3 "$n49 setdest 126.263 59.7323 600"

#$ns at 12.3 "$n50 setdest 55.007 777.762 600"

#$ns at 12.3 "$n51 setdest 217.47 835.367 600"

#$ns at 12.3 "$n52 setdest 226.539 757.964 600"

#$ns at 12.3 "$n53 setdest 213.332 61.8187 600"

#$ns at 12.3 "$n54 setdest 181.782 2.96956 600"

#$ns at 12.3 "$n55 setdest 178.954 118.969 600"

#$ns at 12.3 "$n56 setdest 1244.71 414.712 600"

#$ns at 12.3 "$n57 setdest 977.487 13.2158 600"

#$ns at 12.3 "$n58 setdest 972.95 169.307 600"

#$ns at 12.3 "$n59 setdest 1117.21 539.776 600"


#$ns at 12.5 "$n24 label virtual_source_node"
#$ns at 12.5 "$n29 label Virtual_destination_node"

#$ns at 12.5 "$n8 label Region_1"
#$ns at 12.5 "$n10 label Header"

#$ns at 12.5 "$n4 label Region_2"
#$ns at 12.5 "$n3 label Header"

#$ns at 12.5 "$n12 label Region_3"
#$ns at 12.5 "$n15 label Header"

#$ns at 12.5 "$n18 label Region_4"
#$ns at 12.5 "$n19 label Header"

#$ns at 12.5 "$n31 label Region_5"
#$ns at 12.5 "$n32 label Header"

#$ns at 12.5 "$n26 label Region_6"
#$ns at 12.5 "$n23 label Header"

#$ns at 12.5 "$n34 label Region_7"

#$n10 color darkred
#$ns at 12.5 "$n10 color darkred"

#$n0 color darkred
#$ns at 12.5 "$n3 color darkred"

#$n15 color darkred
#$ns at 12.5 "$n15 color darkred"

#$n19 color darkred
#$ns at 12.5 "$n19 color darkred"

#$n32 color darkred
#$ns at 12.5 "$n32 color darkred"

#$n23 color darkred
#$ns at 12.5 "$n23 color darkred"

#$n8 color violet
#$ns at 13.6 "$n8 color violet"
#$ns at 13.6 "$n8 add-mark N2 red circle"
#$n8 color darkpink
#$ns at 17.9 "$n8 color darkpink"
#$ns at 17.9 "$n8 add-mark N2 darkpink circle"
#$ns at 17.9 "$n8 add-mark N1 greenyellow square"
#$ns at 17.9 "$n8 label RHEAD"
#$ns at 15.9 "$n8 add-mark N2 green circle"


#$n4 color violet
#$ns at 13.6 "$n4 color violet"
#$ns at 13.6 "$n4 add-mark N2 red circle"
#$ns at 16.0 "$n4 add-mark N2 green circle"
#$n4 color darkpink
#$ns at 17.9 "$n4 color darkpink"
#$ns at 17.9 "$n4 add-mark N2 darkpink circle"
#$ns at 17.9 "$n4 add-mark N1 greenyellow square"
#$ns at 17.9 "$n4 label RHEAD"


#$n12 color violet
#$ns at 13.6 "$n12 color violet"
#$ns at 13.6 "$n12 add-mark N2 red circle"

#$n18 color violet
#$ns at 13.6 "$n18 color violet"
#$ns at 13.6 "$n18 add-mark N2 red circle"


#$n31 color violet
#$ns at 13.6 "$n31 color violet"
#$ns at 13.6 "$n31 add-mark N2 red circle"
#$ns at 15.8 "$n31 add-mark N2 green circle"
#$n31 color darkpink
#$ns at 23.0 "$n31 color darkpink"
#$ns at 23.0 "$n31 add-mark N2 darkpink circle"
#$ns at 23.0 "$n31 add-mark N1 greenyellow square"
#$ns at 23.0 "$n31 label RHEAD"


#$n48 color violet
#$ns at 13.6 "$n48 color violet"
#$ns at 13.6 "$n48 add-mark N2 red circle"

#$n36 color violet
#$ns at 13.6 "$n36 color violet"
#$ns at 13.6 "$n36 add-mark N2 red circle"

#$n38 color violet
#$ns at 13.6 "$n38 color violet"
#$ns at 13.6 "$n38 add-mark N2 red circle"


#$n34 color violet
#$ns at 13.6 "$n34 color violet"
#$ns at 13.6 "$n34 add-mark N2 red circle"

#$n34 color darkgreen
#$ns at 12.5 "$n34 color darkgreen"
#$ns at 12.5 "$n34 add-mark N2 white circle"
#$ns at 12.6 "$n34 add-mark N2 orange circle"

#$n35 color darkgreen
#$ns at 12.5 "$n35 color darkgreen"
#$ns at 12.5 "$n35 add-mark N2 white circle"
#$ns at 12.6 "$n35 add-mark N2 orange circle"

#$n36 color darkgreen
#$ns at 12.5 "$n36 color darkgreen"
#$ns at 12.5 "$n36 add-mark N2 white circle"
#$ns at 12.6 "$n36 add-mark N2 orange circle"

#$n37 color darkgreen
#$ns at 12.5 "$n37 color darkgreen"
#$ns at 12.5 "$n37 add-mark N2 white circle"
#$ns at 12.6 "$n37 add-mark N2 orange circle"

#$n38 color darkgreen
#$ns at 12.5 "$n38 color darkgreen"
#$ns at 12.5 "$n38 add-mark N2 white circle"
#$ns at 12.6 "$n38 add-mark N2 orange circle"

#$n39 color darkgreen
#$ns at 12.5 "$n39 color darkgreen"
#$ns at 12.5 "$n39 add-mark N2 white circle"
#$ns at 12.6 "$n39 add-mark N2 orange circle"

#$n41 color darkgreen
#$ns at 12.5 "$n41 color darkgreen"
#$ns at 12.5 "$n41 add-mark N2 white circle"
#$ns at 12.6 "$n41 add-mark N2 orange circle"


#$n42 color darkgreen
#$ns at 12.5 "$n42 color darkgreen"
#$ns at 12.5 "$n42 add-mark N2 white circle"
#$ns at 12.6 "$n42 add-mark N2 orange circle"


#$n43 color darkgreen
#$ns at 12.5 "$n43 color darkgreen"
#$ns at 12.5 "$n43 add-mark N2 white circle"
#$ns at 12.6 "$n43 add-mark N2 orange circle"

#$n44 color darkgreen
#$ns at 12.5 "$n44 color darkgreen"
#$ns at 12.5 "$n44 add-mark N2 white circle"
#$ns at 12.6 "$n44 add-mark N2 orange circle"

#$n45 color darkgreen
#$ns at 12.5 "$n45 color darkgreen"
#$ns at 12.5 "$n45 add-mark N2 white circle"
#$ns at 12.6 "$n45 add-mark N2 orange circle"

#$n46 color darkgreen
#$ns at 12.5 "$n46 color darkgreen"
#$ns at 12.5 "$n46 add-mark N2 white circle"
#$ns at 12.6 "$n46 add-mark N2 orange circle"


#$n47 color darkgreen
#$ns at 12.5 "$n47 color darkgreen"
#$ns at 12.5 "$n47 add-mark N2 white circle"
#$ns at 12.6 "$n47 add-mark N2 orange circle"



#$n48 color darkgreen
#$ns at 12.5 "$n48 color darkgreen"
#$ns at 12.5 "$n48 add-mark N2 white circle"
#$ns at 12.6 "$n48 add-mark N2 orange circle"


#$n49 color darkgreen
#$ns at 12.5 "$n49 color darkgreen"
#$ns at 12.5 "$n49 add-mark N2 white circle"
#$ns at 12.6 "$n49 add-mark N2 orange circle"


#$n26 color violet
#$ns at 13.6 "$n26 color violet"
#$ns at 13.6 "$n26 add-mark N2 red circle"

#$n24 color DARKORANGE
#$ns at 12.5 "$n24 color DARKORANGE"

#$n29 color DARKORANGE
#$ns at 12.5 "$n29 color DARKORANGE"

#$ns at 23.9 "$n29 add-mark N2 Green circle"
#$ns at 24.5 "$n29 add-mark N2 yellow circle"
#$ns at 24.6 "$n29 add-mark N2 Red circle"

#$ns at 23.9 "$n24 add-mark N2 Green circle"
#$ns at 24.5 "$n24 add-mark N2 yellow circle"
#$ns at 24.6 "$n24 add-mark N2 Red circle"

set tcp [new Agent/TCP]
set sink [new Agent/TCPSink]
$ns  attach-agent $n7 $tcp
$ns attach-agent $n0 $sink
$ns  connect $tcp $sink
set ftp [new Application/FTP]
$ftp attach-agent $tcp
$ns  at 2.0 "$ftp start" 
$ns  at 6.0 "$ftp stop"

set tcp1 [new Agent/TCP]
set sink1 [new Agent/TCPSink]
$ns  attach-agent $n0 $tcp1
$ns attach-agent $n8 $sink1
$ns  connect $tcp1 $sink1
set ftp1 [new Application/FTP]
$ftp1 attach-agent $tcp1
$ns  at 8.1 "$ftp1 start" 
$ns  at 10.0 "$ftp1 stop"

set tcp2 [new Agent/TCP]
set sink2 [new Agent/TCPSink]
$ns  attach-agent $n4 $tcp2
$ns attach-agent $n0 $sink2
$ns  connect $tcp2 $sink2
set ftp2 [new Application/FTP]
$ftp2 attach-agent $tcp2
$ns  at 2.0 "$ftp2 start" 
$ns  at 6.0 "$ftp2 stop"

set tcp3 [new Agent/TCP]
set sink3 [new Agent/TCPSink]
$ns  attach-agent $n41 $tcp3
$ns attach-agent $n1 $sink3
$ns  connect $tcp3 $sink3
set ftp3 [new Application/FTP]
$ftp3 attach-agent $tcp3
$ns  at 6.2 "$ftp3 start" 
$ns  at 8.0 "$ftp3 stop"

set tcp4 [new Agent/TCP]
set sink4 [new Agent/TCPSink]
$ns  attach-agent $n2 $tcp4
$ns attach-agent $n1 $sink4
$ns  connect $tcp4 $sink4
set ftp4 [new Application/FTP]
$ftp4 attach-agent $tcp4
$ns  at 6.0 "$ftp4 start" 
$ns  at 8.0 "$ftp4 stop"

set tcp5 [new Agent/TCP]
set sink5 [new Agent/TCPSink]
$ns  attach-agent $n1 $tcp5
$ns attach-agent $n0 $sink5
$ns  connect $tcp5 $sink5
set ftp5 [new Application/FTP]
$ftp5 attach-agent $tcp5
$ns  at 8.1 "$ftp5 start" 
$ns  at 9.5 "$ftp5 stop"


$ns at 5.0 "$n4 add-mark N1 orange circle"
$ns at 5.0 "$n7 add-mark N1 orange circle"
$ns at 8.0 "$n8 add-mark N1 orange circle"
$ns at 5.0 "$n0 add-mark N1 orange circle"
$ns at 7.0 "$n41 add-mark N1 orange circle"
$ns at 7.0 "$n2 add-mark N1 orange circle"
$ns at 7.0 "$n1 add-mark N1 orange circle"

$ns at 8.2 "$n0 label HEAD"

$ns at 100.0 "$n0 label ."
$ns at 101.0 "$n1 label HEAD"

$ns at 68.5 "$n0 delete-mark N1"
$ns at 68.6 "$n0 add-mark N1 yellow circle"

set tcp6 [new Agent/TCP]
set sink6 [new Agent/TCPSink]
$ns  attach-agent $n0 $tcp6
$ns attach-agent $n40 $sink6
$ns  connect $tcp6 $sink6
set ftp6 [new Application/FTP]
$ftp6 attach-agent $tcp6
$ns  at 9.5 "$ftp6 start" 
$ns  at 12.0 "$ftp6 stop"

#---
set tcp7 [new Agent/TCP]
set sink7 [new Agent/TCPSink]
$ns  attach-agent $n12 $tcp7
$ns attach-agent $n13 $sink7
$ns  connect $tcp7 $sink7
set ftp7 [new Application/FTP]
$ftp7 attach-agent $tcp7
$ns  at 10.1 "$ftp7 start" 
$ns  at 12.0 "$ftp7 stop"

set tcp8 [new Agent/TCP]
set sink8 [new Agent/TCPSink]
$ns  attach-agent $n18 $tcp8
$ns attach-agent $n13 $sink8
$ns  connect $tcp8 $sink8
set ftp8 [new Application/FTP]
$ftp8 attach-agent $tcp8
$ns  at 10.0 "$ftp8 start" 
$ns  at 12.0 "$ftp8 stop"


set tcp9 [new Agent/TCP]
set sink9 [new Agent/TCPSink]
$ns  attach-agent $n16 $tcp9
$ns attach-agent $n13 $sink9
$ns  connect $tcp9 $sink9
set ftp9 [new Application/FTP]
$ftp9 attach-agent $tcp9
$ns  at 12.0 "$ftp9 start" 
$ns  at 14.0 "$ftp9 stop"

set tcp10 [new Agent/TCP]
set sink10 [new Agent/TCPSink]
$ns  attach-agent $n14 $tcp10
$ns attach-agent $n13 $sink10
$ns  connect $tcp10 $sink10
set ftp10 [new Application/FTP]
$ftp10 attach-agent $tcp10
$ns  at 12.1 "$ftp10 start" 
$ns  at 14.0 "$ftp10 stop"

set tcp11 [new Agent/TCP]
set sink11 [new Agent/TCPSink]
$ns  attach-agent $n17 $tcp11
$ns attach-agent $n13 $sink11
$ns  connect $tcp11 $sink11
set ftp11 [new Application/FTP]
$ftp11 attach-agent $tcp11
$ns  at 14.1 "$ftp11 start" 
$ns  at 16.0 "$ftp11 stop"

set tcp12 [new Agent/TCP]
set sink12 [new Agent/TCPSink]
$ns  attach-agent $n38 $tcp12
$ns attach-agent $n13 $sink12
$ns  connect $tcp12 $sink12
set ftp12 [new Application/FTP]
$ftp12 attach-agent $tcp12
$ns  at 14.0 "$ftp12 start" 
$ns  at 16.0 "$ftp12 stop"

set tcp13 [new Agent/TCP]
set sink13 [new Agent/TCPSink]
$ns  attach-agent $n11 $tcp13
$ns attach-agent $n13 $sink13
$ns  connect $tcp13 $sink13
set ftp13 [new Application/FTP]
$ftp13 attach-agent $tcp13
$ns  at 15.0 "$ftp13 start" 
$ns  at 17.0 "$ftp13 stop"

set tcp14 [new Agent/TCP]
set sink14 [new Agent/TCPSink]
$ns  attach-agent $n15 $tcp14
$ns attach-agent $n16 $sink14
$ns  connect $tcp14 $sink14
set ftp14 [new Application/FTP]
$ftp14 attach-agent $tcp14
$ns  at 10.1 "$ftp14 start" 
$ns  at 12.0 "$ftp14 stop"

$ns at 10.5 "$n13 add-mark N1 tomato circle"
$ns at 10.5 "$n12 add-mark N1 tomato circle"
$ns at 10.5 "$n18 add-mark N1 tomato circle"
$ns at 14.0 "$n17 add-mark N1 tomato circle"
$ns at 14.0 "$n38 add-mark N1 tomato circle"
$ns at 13.0 "$n14 add-mark N1 tomato circle"
$ns at 12.5 "$n16 add-mark N1 tomato circle"
$ns at 16.0 "$n11 add-mark N1 tomato circle"
$ns at 12.5 "$n15 add-mark N1 tomato circle"

$ns at 13.0 "$n13 label HEAD"
$ns at 100.0 "$n13 label ."
$ns at 101.0 "$n17 label HEAD"

$ns at 68.5 "$n13 delete-mark N1"
$ns at 68.6 "$n13 add-mark N1 yellow circle"


set tcp15 [new Agent/TCP]
set sink15 [new Agent/TCPSink]
$ns  attach-agent $n13 $tcp15
$ns attach-agent $n40 $sink15
$ns  connect $tcp15 $sink15
set ftp15 [new Application/FTP]
$ftp15 attach-agent $tcp15
$ns  at 17.0 "$ftp15 start" 
$ns  at 20.0 "$ftp15 stop"
#----------



set tcp16 [new Agent/TCP]
set sink16 [new Agent/TCPSink]
$ns  attach-agent $n3 $tcp16
$ns attach-agent $n39 $sink16
$ns  connect $tcp16 $sink16
set ftp16 [new Application/FTP]
$ftp16 attach-agent $tcp16
$ns  at 20.0 "$ftp16 start" 
$ns  at 22.0 "$ftp16 stop"

set tcp17 [new Agent/TCP]
set sink17 [new Agent/TCPSink]
$ns  attach-agent $n36 $tcp17
$ns attach-agent $n39 $sink17
$ns  connect $tcp17 $sink17
set ftp17 [new Application/FTP]
$ftp17 attach-agent $tcp17
$ns  at 20.0 "$ftp17 start" 
$ns  at 22.0 "$ftp17 stop"

set tcp18 [new Agent/TCP]
set sink18 [new Agent/TCPSink]
$ns  attach-agent $n39 $tcp18
$ns attach-agent $n35 $sink18
$ns  connect $tcp18 $sink18
set ftp18 [new Application/FTP]
$ftp18 attach-agent $tcp18
$ns  at 22.0 "$ftp18 start" 
$ns  at 26.0 "$ftp18 stop"


set tcp19 [new Agent/TCP]
set sink19 [new Agent/TCPSink]
$ns  attach-agent $n35 $tcp19
$ns attach-agent $n0 $sink19
$ns  connect $tcp19 $sink19
set ftp19 [new Application/FTP]
$ftp19 attach-agent $tcp19
$ns  at 26.0 "$ftp19 start" 
$ns  at 30.0 "$ftp19 stop"


set tcp20 [new Agent/TCP]
set sink20 [new Agent/TCPSink]
$ns  attach-agent $n0 $tcp20
$ns attach-agent $n40 $sink20
$ns  connect $tcp20 $sink20
set ftp20 [new Application/FTP]
$ftp20 attach-agent $tcp20
$ns  at 26.0 "$ftp20 start" 
$ns  at 30.0 "$ftp20 stop"

$ns at 26.0 "$n35 add-mark N1 green circle"
$ns at 22.0 "$n39 add-mark N1 green circle"
$ns at 20.2 "$n36 add-mark N1 green circle"
$ns at 20.2 "$n3 add-mark N1 green circle"

$ns at 26.0 "$n35 label HEAD"
$ns at 100.0 "$n35 label ."
$ns at 101.0 "$n11 label HEAD"

$ns at 68.5 "$n35 delete-mark N1"
$ns at 68.6 "$n35 add-mark N1 yellow circle"


#---


set tcp21 [new Agent/TCP]
set sink21 [new Agent/TCPSink]
$ns  attach-agent $n33 $tcp21
$ns attach-agent $n30 $sink21
$ns  connect $tcp21 $sink21
set ftp21 [new Application/FTP]
$ftp21 attach-agent $tcp21
$ns  at 30.0 "$ftp21 start" 
$ns  at 34.0 "$ftp21 stop"


set tcp22 [new Agent/TCP]
set sink22 [new Agent/TCPSink]
$ns  attach-agent $n30 $tcp22
$ns attach-agent $n19 $sink22
$ns  connect $tcp22 $sink22
set ftp22 [new Application/FTP]
$ftp22 attach-agent $tcp22
$ns  at 30.0 "$ftp22 start" 
$ns  at 34.0 "$ftp22 stop"


set tcp23 [new Agent/TCP]
set sink23 [new Agent/TCPSink]
$ns  attach-agent $n19 $tcp23
$ns attach-agent $n21 $sink23
$ns  connect $tcp23 $sink23
set ftp23 [new Application/FTP]
$ftp23 attach-agent $tcp23
$ns  at 30.0 "$ftp23 start" 
$ns  at 34.0 "$ftp23 stop"


set tcp24 [new Agent/TCP]
set sink24 [new Agent/TCPSink]
$ns  attach-agent $n34 $tcp24
$ns attach-agent $n19 $sink24
$ns  connect $tcp24 $sink24
set ftp24 [new Application/FTP]
$ftp24 attach-agent $tcp24
$ns  at 34.0 "$ftp24 start" 
$ns  at 38.0 "$ftp24 stop"

set tcp25 [new Agent/TCP]
set sink25 [new Agent/TCPSink]
$ns  attach-agent $n19 $tcp25
$ns attach-agent $n21 $sink25
$ns  connect $tcp25 $sink25
set ftp25 [new Application/FTP]
$ftp25 attach-agent $tcp25
$ns  at 34.0 "$ftp25 start" 
$ns  at 38.0 "$ftp25 stop"

set tcp26 [new Agent/TCP]
set sink26 [new Agent/TCPSink]
$ns  attach-agent $n31 $tcp26
$ns attach-agent $n21 $sink26
$ns  connect $tcp26 $sink26
set ftp26 [new Application/FTP]
$ftp26 attach-agent $tcp26
$ns  at 38.0 "$ftp26 start" 
$ns  at 42.0 "$ftp26 stop"

set tcp27 [new Agent/TCP]
set sink27 [new Agent/TCPSink]
$ns  attach-agent $n32 $tcp27
$ns attach-agent $n21 $sink27
$ns  connect $tcp27 $sink27
set ftp27 [new Application/FTP]
$ftp27 attach-agent $tcp27
$ns  at 38.0 "$ftp27 start" 
$ns  at 42.0 "$ftp27 stop"

set tcp28 [new Agent/TCP]
set sink28 [new Agent/TCPSink]
$ns  attach-agent $n20 $tcp28
$ns attach-agent $n21 $sink28
$ns  connect $tcp28 $sink28
set ftp28 [new Application/FTP]
$ftp28 attach-agent $tcp28
$ns  at 42.0 "$ftp28 start" 
$ns  at 44.0 "$ftp28 stop"


set tcp29 [new Agent/TCP]
set sink29 [new Agent/TCPSink]
$ns  attach-agent $n22 $tcp29
$ns attach-agent $n21 $sink29
$ns  connect $tcp29 $sink29
set ftp29 [new Application/FTP]
$ftp29 attach-agent $tcp29
$ns  at 42.0 "$ftp29 start" 
$ns  at 44.0 "$ftp29 stop"

$ns at 33.0 "$n21 add-mark N1 cyan circle"
$ns at 38.0 "$n32 add-mark N1 cyan circle"
$ns at 38.0 "$n31 add-mark N1 cyan circle"
$ns at 33.2 "$n19 add-mark N1 cyan circle"
$ns at 33.0 "$n34 add-mark N1 cyan circle"
$ns at 33.0 "$n30 add-mark N1 cyan circle"
$ns at 33.2 "$n33 add-mark N1 cyan circle"
$ns at 42.2 "$n20 add-mark N1 cyan circle"
$ns at 42.2 "$n22 add-mark N1 cyan circle"


$ns at 40.0 "$n21 label HEAD"
$ns at 100.0 "$n21 label ."
$ns at 101.0 "$n30 label HEAD"

$ns at 68.5 "$n21 delete-mark N1"
$ns at 68.6 "$n21 add-mark N1 yellow circle"


set tcp30 [new Agent/TCP]
set sink30 [new Agent/TCPSink]
$ns  attach-agent $n21 $tcp30
$ns attach-agent $n40 $sink30
$ns  connect $tcp30 $sink30
set ftp30 [new Application/FTP]
$ftp30 attach-agent $tcp30
$ns  at 44.0 "$ftp30 start" 
$ns  at 46.0 "$ftp30 stop"

#-----------

set tcp31 [new Agent/TCP]
set sink31 [new Agent/TCPSink]
$ns  attach-agent $n28 $tcp31
$ns attach-agent $n27 $sink31
$ns  connect $tcp31 $sink31
set ftp31 [new Application/FTP]
$ftp31 attach-agent $tcp31
$ns  at 46.0 "$ftp31 start" 
$ns  at 50.0 "$ftp31 stop"

set tcp32 [new Agent/TCP]
set sink32 [new Agent/TCPSink]
$ns  attach-agent $n29 $tcp32
$ns attach-agent $n27 $sink32
$ns  connect $tcp32 $sink32
set ftp32 [new Application/FTP]
$ftp32 attach-agent $tcp32
$ns  at 46.0 "$ftp32 start" 
$ns  at 50.0 "$ftp32 stop"

set tcp33 [new Agent/TCP]
set sink33 [new Agent/TCPSink]
$ns  attach-agent $n27 $tcp33
$ns attach-agent $n26 $sink33
$ns  connect $tcp33 $sink33
set ftp33 [new Application/FTP]
$ftp33 attach-agent $tcp33
$ns  at 50.0 "$ftp33 start" 
$ns  at 52.0 "$ftp33 stop"

set tcp34 [new Agent/TCP]
set sink34 [new Agent/TCPSink]
$ns  attach-agent $n37 $tcp34
$ns attach-agent $n23 $sink34
$ns  connect $tcp34 $sink34
set ftp34 [new Application/FTP]
$ftp34 attach-agent $tcp34
$ns  at 52.0 "$ftp34 start" 
$ns  at 56.0 "$ftp34 stop"

set tcp35 [new Agent/TCP]
set sink35 [new Agent/TCPSink]
$ns  attach-agent $n25 $tcp35
$ns attach-agent $n23 $sink35
$ns  connect $tcp35 $sink35
set ftp35 [new Application/FTP]
$ftp35 attach-agent $tcp35
$ns  at 52.0 "$ftp35 start" 
$ns  at 56.0 "$ftp35 stop"

set tcp36 [new Agent/TCP]
set sink36 [new Agent/TCPSink]
$ns  attach-agent $n23 $tcp36
$ns attach-agent $n26 $sink36
$ns  connect $tcp36 $sink36
set ftp36 [new Application/FTP]
$ftp36 attach-agent $tcp36
$ns  at 56.0 "$ftp36 start" 
$ns  at 58.0 "$ftp36 stop"

set tcp37 [new Agent/TCP]
set sink37 [new Agent/TCPSink]
$ns  attach-agent $n26 $tcp37
$ns attach-agent $n40 $sink37
$ns  connect $tcp37 $sink37
set ftp37 [new Application/FTP]
$ftp37 attach-agent $tcp37
$ns  at 58.0 "$ftp37 start" 
$ns  at 60.0 "$ftp37 stop"

$ns at 46.5 "$n27 add-mark N1 purple3 circle"
$ns at 46.5 "$n28 add-mark N1 purple3 circle"
$ns at 46.5 "$n29 add-mark N1 purple3 circle"
$ns at 50.5 "$n26 add-mark N1 purple3 circle"
$ns at 52.5 "$n23 add-mark N1 purple3 circle"
$ns at 52.5 "$n25 add-mark N1 purple3 circle"
$ns at 58.5 "$n37 add-mark N1 purple3 circle"

$ns at 50.0 "$n26 label HEAD"
$ns at 100.0 "$n26 label ."
$ns at 101.0 "$n31 label HEAD"

$ns at 68.5 "$n26 delete-mark N1"
$ns at 68.6 "$n26 add-mark N1 yellow circle"


#--------------


set tcp38 [new Agent/TCP]
set sink38 [new Agent/TCPSink]
$ns  attach-agent $n9 $tcp38
$ns attach-agent $n6 $sink38
$ns  connect $tcp38 $sink38
set ftp38 [new Application/FTP]
$ftp38 attach-agent $tcp38
$ns  at 60.0 "$ftp38 start" 
$ns  at 64.0 "$ftp38 stop"

set tcp39 [new Agent/TCP]
set sink39 [new Agent/TCPSink]
$ns  attach-agent $n24 $tcp39
$ns attach-agent $n6 $sink39
$ns  connect $tcp39 $sink39
set ftp39 [new Application/FTP]
$ftp39 attach-agent $tcp39
$ns  at 60.0 "$ftp39 start" 
$ns  at 64.0 "$ftp39 stop"


set tcp40 [new Agent/TCP]
set sink40 [new Agent/TCPSink]
$ns  attach-agent $n6 $tcp40
$ns attach-agent $n5 $sink40
$ns  connect $tcp40 $sink40
set ftp40 [new Application/FTP]
$ftp40 attach-agent $tcp40
$ns  at 64.0 "$ftp40 start" 
$ns  at 66.0 "$ftp40 stop"


set tcp41 [new Agent/TCP]
set sink41 [new Agent/TCPSink]
$ns  attach-agent $n10 $tcp41
$ns attach-agent $n5 $sink41
$ns  connect $tcp41 $sink41
set ftp41 [new Application/FTP]
$ftp41 attach-agent $tcp41
$ns  at 64.0 "$ftp41 start" 
$ns  at 66.0 "$ftp41 stop"


set tcp42 [new Agent/TCP]
set sink42 [new Agent/TCPSink]
$ns  attach-agent $n5 $tcp42
$ns attach-agent $n0 $sink42
$ns  connect $tcp42 $sink42
set ftp42 [new Application/FTP]
$ftp42 attach-agent $tcp42
$ns  at 66.0 "$ftp42 start" 
$ns  at 68.0 "$ftp42 stop"

set tcp43 [new Agent/TCP]
set sink43 [new Agent/TCPSink]
$ns  attach-agent $n0 $tcp43
$ns attach-agent $n40 $sink43
$ns  connect $tcp43 $sink43
set ftp43 [new Application/FTP]
$ftp43 attach-agent $tcp43
$ns  at 66.2 "$ftp43 start" 
$ns  at 68.5 "$ftp43 stop"

$ns at 61.0 "$n9 add-mark N1 sienna circle"
$ns at 61.0 "$n24 add-mark N1 sienna circle"
$ns at 61.0 "$n6 add-mark N1 sienna circle"
$ns at 65.0 "$n5 add-mark N1 sienna circle"
$ns at 67.0 "$n10 add-mark N1 sienna circle"

$ns at 65.0 "$n5 label HEAD"
$ns at 100.0 "$n5 label ."
$ns at 101.0 "$n24 label HEAD"

$ns at 68.5 "$n5 delete-mark N1"
$ns at 68.6 "$n5 add-mark N1 yellow circle"

#node joint request

#cluster Head 26 send joint Request to 31
#cluster Head 35 send joint Request to 11

set tcp44 [new Agent/TCP]
set sink44 [new Agent/TCPSink]
$ns  attach-agent $n11 $tcp44
$ns attach-agent $n35 $sink44
$ns  connect $tcp44 $sink44
set ftp44 [new Application/FTP]
$ftp44 attach-agent $tcp44
$ns  at 71.0 "$ftp44 start" 
$ns  at 73.0 "$ftp44 stop"

$ns at 71.0 "$n35 delete-mark N1"
$ns at 71.2 "$n35 add-mark N1 green circle"

$ns at 72.0 "$n11 delete-mark N1"
$ns at 72.2 "$n11 add-mark N1 green circle"

set tcp45 [new Agent/TCP]
set sink45 [new Agent/TCPSink]
$ns  attach-agent $n31 $tcp45
$ns attach-agent $n26 $sink45
$ns  connect $tcp45 $sink45
set ftp45 [new Application/FTP]
$ftp45 attach-agent $tcp45
$ns  at 71.0 "$ftp45 start" 
$ns  at 73.0 "$ftp45 stop"

$ns at 71.0 "$n26 delete-mark N1"
$ns at 71.2 "$n26 add-mark N1 purple3 circle"

$ns at 72.0 "$n31 delete-mark N1"
$ns at 72.2 "$n31 add-mark N1 purple3 circle"

set tcp46 [new Agent/TCP]
set sink46 [new Agent/TCPSink]
$ns  attach-agent $n26 $tcp46
$ns attach-agent $n40 $sink46
$ns  connect $tcp46 $sink46
set ftp46 [new Application/FTP]
$ftp46 attach-agent $tcp46
$ns  at 73.0 "$ftp46 start" 
$ns  at 75.0 "$ftp46 stop"

set tcp47 [new Agent/TCP]
set sink47 [new Agent/TCPSink]
$ns  attach-agent $n35 $tcp47
$ns attach-agent $n0 $sink47
$ns  connect $tcp47 $sink47
set ftp47 [new Application/FTP]
$ftp47 attach-agent $tcp47
$ns  at 73.0 "$ftp47 start" 
$ns  at 75.0 "$ftp47 stop"

set tcp48 [new Agent/TCP]
set sink48 [new Agent/TCPSink]
$ns  attach-agent $n0 $tcp48
$ns attach-agent $n40 $sink48
$ns  connect $tcp48 $sink48
set ftp48 [new Application/FTP]
$ftp48 attach-agent $tcp48
$ns  at 73.2 "$ftp48 start" 
$ns  at 75.0 "$ftp48 stop"


$ns at 75.0 "$n5 delete-mark N1"
$ns at 75.0 "$n5 add-mark N1 sienna circle"

$ns at 75.0 "$n0 delete-mark N1"
$ns at 75.0 "$n0 add-mark N1 orange circle"

$ns at 75.0 "$n13 delete-mark N1"
$ns at 75.0 "$n13 add-mark N1 tomato circle"

$ns at 75.0 "$n21 delete-mark N1"
$ns at 75.0 "$n21 add-mark N1 cyan circle"


#--------


$ns at 75.7 "$n37 delete-mark N1"
$ns at 75.7 "$n37 add-mark N1 red circle"
$ns at 76.9 "$n37 delete-mark N1"
$ns at 77.0 "$n37 add-mark N1 red circle"

$ns at 77.0 "$n37 label HEAD"
$ns at 100.0 "$n37 label ."
$ns at 101.0 "$n25 label HEAD"

set tcp_49 [new Agent/TCP]
set sink_49 [new Agent/TCPSink]
$ns  attach-agent $n37 $tcp_49
$ns attach-agent $n9 $sink_49
$ns  connect $tcp_49 $sink_49
set ftp_49 [new Application/FTP]
$ftp_49 attach-agent $tcp_49
$ns  at 75.0 "$ftp_49 start" 
$ns  at 77.0 "$ftp_49 stop"



set tcp49 [new Agent/TCP]
set sink49 [new Agent/TCPSink]
$ns  attach-agent $n9 $tcp49
$ns attach-agent $n6 $sink49
$ns  connect $tcp49 $sink49
set ftp49 [new Application/FTP]
$ftp49 attach-agent $tcp49
$ns  at 75.1 "$ftp49 start" 
$ns  at 77.0 "$ftp49 stop"

set tcp50 [new Agent/TCP]
set sink50 [new Agent/TCPSink]
$ns  attach-agent $n6 $tcp50
$ns attach-agent $n5 $sink50
$ns  connect $tcp50 $sink50
set ftp50 [new Application/FTP]
$ftp50 attach-agent $tcp50
$ns  at 75.5 "$ftp50 start" 
$ns  at 77.0 "$ftp50 stop"

#----


$ns at 79.0 "$n23 delete-mark N1"
$ns at 79.0 "$n23 add-mark N1 red circle"

set tcp51 [new Agent/TCP]
set sink51 [new Agent/TCPSink]
$ns  attach-agent $n37 $tcp51
$ns attach-agent $n23 $sink51
$ns  connect $tcp51 $sink51
set ftp51 [new Application/FTP]
$ftp51 attach-agent $tcp51
$ns  at 78.0 "$ftp51 start" 
$ns  at 80.0 "$ftp51 stop"

$ns at 79.0 "$n25 delete-mark N1"
$ns at 79.0 "$n25 add-mark N1 red circle"


set tcp52 [new Agent/TCP]
set sink52 [new Agent/TCPSink]
$ns  attach-agent $n37 $tcp52
$ns attach-agent $n25 $sink52
$ns  connect $tcp52 $sink52
set ftp52 [new Application/FTP]
$ftp52 attach-agent $tcp52
$ns  at 78.0 "$ftp52 start" 
$ns  at 80.0 "$ftp52 stop"

$ns at 81.0 "$n9 delete-mark N1"
$ns at 81.0 "$n9 add-mark N1 red circle"


set tcp53 [new Agent/TCP]
set sink53 [new Agent/TCPSink]
$ns  attach-agent $n37 $tcp53
$ns attach-agent $n9 $sink53
$ns  connect $tcp53 $sink53
set ftp53 [new Application/FTP]
$ftp53 attach-agent $tcp53
$ns  at 80.0 "$ftp53 start" 
$ns  at 82.0 "$ftp53 stop"


#-----------

set tcp54 [new Agent/TCP]
set sink54 [new Agent/TCPSink]
$ns  attach-agent $n37 $tcp54
$ns attach-agent $n23 $sink54
$ns  connect $tcp54 $sink54
set ftp54 [new Application/FTP]
$ftp54 attach-agent $tcp54
$ns  at 82.1 "$ftp54 start" 
$ns  at 85.0 "$ftp54 stop"


set tcp55 [new Agent/TCP]
set sink55 [new Agent/TCPSink]
$ns  attach-agent $n23 $tcp55
$ns attach-agent $n26 $sink55
$ns  connect $tcp55 $sink55
set ftp55 [new Application/FTP]
$ftp55 attach-agent $tcp55
$ns  at 82.2 "$ftp55 start" 
$ns  at 85.2 "$ftp55 stop"


set tcp56 [new Agent/TCP]
set sink56 [new Agent/TCPSink]
$ns  attach-agent $n26 $tcp56
$ns attach-agent $n40 $sink56
$ns  connect $tcp56 $sink56
set ftp56 [new Application/FTP]
$ftp56 attach-agent $tcp56
$ns  at 82.3 "$ftp56 start" 
$ns  at 85.3 "$ftp56 stop"

#------------

#source(25) 

$ns at 85.4 "$n25 label Source"
$ns at 100.0 "$n25 label ."

set tcp57 [new Agent/TCP]
set sink57 [new Agent/TCPSink]
$ns  attach-agent $n25 $tcp57
$ns attach-agent $n37 $sink57
$ns  connect $tcp57 $sink57
set ftp57 [new Application/FTP]
$ftp57 attach-agent $tcp57
$ns  at 85.4 "$ftp57 start" 
$ns  at 88.4 "$ftp57 stop"

set tcp58 [new Agent/TCP]
set sink58 [new Agent/TCPSink]
$ns  attach-agent $n37 $tcp58
$ns attach-agent $n23 $sink58
$ns  connect $tcp58 $sink58
set ftp58 [new Application/FTP]
$ftp58 attach-agent $tcp58
$ns  at 88.5 "$ftp58 start" 
$ns  at 90.5 "$ftp58 stop"

set tcp59 [new Agent/TCP]
set sink59 [new Agent/TCPSink]
$ns  attach-agent $n23 $tcp59
$ns attach-agent $n26 $sink59
$ns  connect $tcp59 $sink59
set ftp59 [new Application/FTP]
$ftp59 attach-agent $tcp59
$ns  at 88.6 "$ftp59 start" 
$ns  at 90.6 "$ftp59 stop"

set tcp60 [new Agent/TCP]
set sink60 [new Agent/TCPSink]
$ns  attach-agent $n26 $tcp60
$ns attach-agent $n40 $sink60
$ns  connect $tcp60 $sink60
set ftp60 [new Application/FTP]
$ftp60 attach-agent $tcp60
$ns  at 88.7 "$ftp60 start" 
$ns  at 90.7 "$ftp60 stop"

#------------

$ns at 90.5 "$n3 label Source"
$ns at 100.0 "$n3 label ."

set tcp61 [new Agent/TCP]
set sink61 [new Agent/TCPSink]
$ns  attach-agent $n3 $tcp61
$ns attach-agent $n39 $sink61
$ns  connect $tcp61 $sink61
set ftp61 [new Application/FTP]
$ftp61 attach-agent $tcp61
$ns  at 90.8 "$ftp61 start" 
$ns  at 93.8 "$ftp61 stop"

set tcp62 [new Agent/TCP]
set sink62 [new Agent/TCPSink]
$ns  attach-agent $n39 $tcp62
$ns attach-agent $n35 $sink62
$ns  connect $tcp62 $sink62
set ftp62 [new Application/FTP]
$ftp62 attach-agent $tcp62
$ns  at 93.9 "$ftp62 start" 
$ns  at 95.9 "$ftp62 stop"

set tcp63 [new Agent/TCP]
set sink63 [new Agent/TCPSink]
$ns  attach-agent $n35 $tcp63
$ns attach-agent $n0 $sink63
$ns  connect $tcp63 $sink63
set ftp63 [new Application/FTP]
$ftp63 attach-agent $tcp63
$ns  at 96.0 "$ftp63 start" 
$ns  at 99.0 "$ftp63 stop"

set tcp64 [new Agent/TCP]
set sink64 [new Agent/TCPSink]
$ns  attach-agent $n0 $tcp64
$ns attach-agent $n40 $sink64
$ns  connect $tcp64 $sink64
set ftp64 [new Application/FTP]
$ftp64 attach-agent $tcp64
$ns  at 96.0 "$ftp64 start" 
$ns  at 99.0 "$ftp64 stop"

#-----------

set tcp65 [new Agent/TCP]
set sink65 [new Agent/TCPSink]
$ns  attach-agent $n31 $tcp65
$ns attach-agent $n40 $sink65
$ns  connect $tcp65 $sink65
set ftp65 [new Application/FTP]
$ftp65 attach-agent $tcp65
$ns  at 101.0 "$ftp65 start" 
$ns  at 103.0 "$ftp65 stop"

set tcp66 [new Agent/TCP]
set sink66 [new Agent/TCPSink]
$ns  attach-agent $n11 $tcp66
$ns attach-agent $n40 $sink66
$ns  connect $tcp66 $sink66
set ftp66 [new Application/FTP]
$ftp66 attach-agent $tcp66
$ns  at 103.0 "$ftp66 start" 
$ns  at 106.0 "$ftp66 stop"

set tcp67 [new Agent/TCP]
set sink67 [new Agent/TCPSink]
$ns  attach-agent $n17 $tcp67
$ns attach-agent $n40 $sink67
$ns  connect $tcp67 $sink67
set ftp67 [new Application/FTP]
$ftp67 attach-agent $tcp67
$ns  at 106.0 "$ftp67 start" 
$ns  at 109.0 "$ftp67 stop"

set tcp68 [new Agent/TCP]
set sink68 [new Agent/TCPSink]
$ns  attach-agent $n24 $tcp68
$ns attach-agent $n40 $sink68
$ns  connect $tcp68 $sink68
set ftp68 [new Application/FTP]
$ftp68 attach-agent $tcp68
$ns  at 109.0 "$ftp68 start" 
$ns  at 112.0 "$ftp68 stop"

set tcp69 [new Agent/TCP]
set sink69 [new Agent/TCPSink]
$ns  attach-agent $n1 $tcp69
$ns attach-agent $n11 $sink69
$ns  connect $tcp69 $sink69
set ftp69 [new Application/FTP]
$ftp69 attach-agent $tcp69
$ns  at 112.0 "$ftp69 start" 
$ns  at 115.0 "$ftp69 stop"


set tcp70 [new Agent/TCP]
set sink70 [new Agent/TCPSink]
$ns  attach-agent $n11 $tcp70
$ns attach-agent $n40 $sink70
$ns  connect $tcp70 $sink70
set ftp70 [new Application/FTP]
$ftp70 attach-agent $tcp70
$ns  at 112.0 "$ftp70 start" 
$ns  at 115.0 "$ftp70 stop"


set tcp71 [new Agent/TCP]
set sink71 [new Agent/TCPSink]
$ns  attach-agent $n30 $tcp71
$ns attach-agent $n31 $sink71
$ns  connect $tcp71 $sink71
set ftp71 [new Application/FTP]
$ftp71 attach-agent $tcp71
$ns  at 115.0 "$ftp71 start" 
$ns  at 118.0 "$ftp71 stop"


set tcp72 [new Agent/TCP]
set sink72 [new Agent/TCPSink]
$ns  attach-agent $n31 $tcp72
$ns attach-agent $n40 $sink72
$ns  connect $tcp72 $sink72
set ftp72 [new Application/FTP]
$ftp72 attach-agent $tcp72
$ns  at 115.0 "$ftp72 start" 
$ns  at 118.0 "$ftp72 stop"

set tcp73 [new Agent/TCP]
set sink73 [new Agent/TCPSink]
$ns  attach-agent $n25 $tcp73
$ns attach-agent $n24 $sink73
$ns  connect $tcp73 $sink73
set ftp73 [new Application/FTP]
$ftp73 attach-agent $tcp73
$ns  at 118.0 "$ftp73 start" 
$ns  at 121.0 "$ftp73 stop"


set tcp74 [new Agent/TCP]
set sink74 [new Agent/TCPSink]
$ns  attach-agent $n24 $tcp74
$ns attach-agent $n40 $sink74
$ns  connect $tcp74 $sink74
set ftp74 [new Application/FTP]
$ftp74 attach-agent $tcp74
$ns  at 118.0 "$ftp74 start" 
$ns  at 121.0 "$ftp74 stop"

#futute enhancement

#$ns at 90.5 "$n3 label Source"
#$ns at 100.0 "$n3 label ."
$ns at 123.0 "$n3 delete-mark N1"
$ns at 123.1 "$n3 add-mark N1 yellow2 circle"
$ns at 123.1 "$n3 label Malicious"
$ns at 123.0 "$n0 delete-mark N1"
$ns at 123.1 "$n0 add-mark N1 yellow2 circle"
$ns at 123.1 "$n0 label Malicious"
$ns at 123.0 "$n14 delete-mark N1"
$ns at 123.1 "$n14 add-mark N1 yellow2 circle"
$ns at 123.1 "$n14 label Malicious"
$ns at 123.0 "$n15 delete-mark N1"
$ns at 123.1 "$n15 add-mark N1 yellow2 circle"
$ns at 123.1 "$n15 label Malicious"
$ns at 123.0 "$n19 delete-mark N1"
$ns at 123.1 "$n19 add-mark N1 yellow2 circle"
$ns at 123.1 "$n19 label Malicious"
$ns at 123.0 "$n20 delete-mark N1"
$ns at 123.1 "$n20 add-mark N1 yellow2 circle"
$ns at 123.1 "$n20 label Malicious"
$ns at 123.0 "$n27 delete-mark N1"
$ns at 123.1 "$n27 add-mark N1 yellow2 circle"
$ns at 123.1 "$n27 label Malicious"
$ns at 123.0 "$n10 delete-mark N1"
$ns at 123.1 "$n10 add-mark N1 yellow2 circle"
$ns at 123.1 "$n10 label Malicious"

set tcp75 [new Agent/TCP]
set sink75 [new Agent/TCPSink]
$ns  attach-agent $n11 $tcp75
$ns attach-agent $n35 $sink75
$ns  connect $tcp75 $sink75
set ftp75 [new Application/FTP]
$ftp75 attach-agent $tcp75
$ns  at 123.0 "$ftp75 start" 
$ns  at 125.0 "$ftp75 stop"

set tcp76 [new Agent/TCP]
set sink76 [new Agent/TCPSink]
$ns  attach-agent $n35 $tcp76
$ns attach-agent $n39 $sink76
$ns  connect $tcp76 $sink76
set ftp76 [new Application/FTP]
$ftp76 attach-agent $tcp76
$ns  at 123.1 "$ftp76 start" 
$ns  at 125.1 "$ftp76 stop"


set tcp77 [new Agent/TCP]
set sink77 [new Agent/TCPSink]
$ns  attach-agent $n39 $tcp77
$ns attach-agent $n3 $sink77
$ns  connect $tcp77 $sink77
set ftp77 [new Application/FTP]
$ftp77 attach-agent $tcp77
$ns  at 123.2 "$ftp77 start" 
$ns  at 125.2 "$ftp77 stop"

set tcp78 [new Agent/TCP]
set sink78 [new Agent/TCPSink]
$ns  attach-agent $n1 $tcp78
$ns attach-agent $n0 $sink78
$ns  connect $tcp78 $sink78
set ftp78 [new Application/FTP]
$ftp78 attach-agent $tcp78
$ns  at 125.2 "$ftp78 start" 
$ns  at 127.2 "$ftp78 stop"

#--

set tcp79 [new Agent/TCP]
set sink79 [new Agent/TCPSink]
$ns  attach-agent $n17 $tcp79
$ns attach-agent $n38 $sink79
$ns  connect $tcp79 $sink79
set ftp79 [new Application/FTP]
$ftp79 attach-agent $tcp79
$ns  at 127.2 "$ftp79 start" 
$ns  at 129.2 "$ftp79 stop"

set tcp80 [new Agent/TCP]
set sink80 [new Agent/TCPSink]
$ns  attach-agent $n38 $tcp80
$ns attach-agent $n14 $sink80
$ns  connect $tcp80 $sink80
set ftp80 [new Application/FTP]
$ftp80 attach-agent $tcp80
$ns  at 127.3 "$ftp80 start" 
$ns  at 129.3 "$ftp80 stop"

set tcp81 [new Agent/TCP]
set sink81 [new Agent/TCPSink]
$ns  attach-agent $n14 $tcp81
$ns attach-agent $n15 $sink81
$ns  connect $tcp81 $sink81
set ftp81 [new Application/FTP]
$ftp81 attach-agent $tcp81
$ns  at 127.4 "$ftp81 start" 
$ns  at 129.4 "$ftp81 stop"
#--

set tcp82 [new Agent/TCP]
set sink82 [new Agent/TCPSink]
$ns  attach-agent $n30 $tcp82
$ns attach-agent $n19 $sink82
$ns  connect $tcp82 $sink82
set ftp82 [new Application/FTP]
$ftp82 attach-agent $tcp82
$ns  at 129.4 "$ftp82 start" 
$ns  at 131.4 "$ftp82 stop"

set tcp83 [new Agent/TCP]
set sink83 [new Agent/TCPSink]
$ns  attach-agent $n19 $tcp83
$ns attach-agent $n22 $sink83
$ns  connect $tcp83 $sink83
set ftp83 [new Application/FTP]
$ftp83 attach-agent $tcp83
$ns  at 129.5 "$ftp83 start" 
$ns  at 131.5 "$ftp83 stop"

set tcp84 [new Agent/TCP]
set sink84 [new Agent/TCPSink]
$ns  attach-agent $n22 $tcp84
$ns attach-agent $n20 $sink84
$ns  connect $tcp84 $sink84
set ftp84 [new Application/FTP]
$ftp84 attach-agent $tcp84
$ns  at 129.6 "$ftp84 start" 
$ns  at 131.6 "$ftp84 stop"

#--

set tcp85 [new Agent/TCP]
set sink85 [new Agent/TCPSink]
$ns  attach-agent $n31 $tcp85
$ns attach-agent $n27 $sink85
$ns  connect $tcp85 $sink85
set ftp85 [new Application/FTP]
$ftp85 attach-agent $tcp85
$ns  at 131.6 "$ftp85 start" 
$ns  at 133.6 "$ftp85 stop"

#---

set tcp86 [new Agent/TCP]
set sink86 [new Agent/TCPSink]
$ns  attach-agent $n24 $tcp86
$ns attach-agent $n6 $sink86
$ns  connect $tcp86 $sink86
set ftp86 [new Application/FTP]
$ftp86 attach-agent $tcp86
$ns  at 133.6 "$ftp86 start" 
$ns  at 135.6 "$ftp86 stop"

set tcp86 [new Agent/TCP]
set sink86 [new Agent/TCPSink]
$ns  attach-agent $n6 $tcp86
$ns attach-agent $n10 $sink86
$ns  connect $tcp86 $sink86
set ftp86 [new Application/FTP]
$ftp86 attach-agent $tcp86
$ns  at 133.7 "$ftp86 start" 
$ns  at 135.7 "$ftp86 stop"

#relecting

set tcp87 [new Agent/TCP]
set sink87 [new Agent/TCPSink]
$ns  attach-agent $n9 $tcp87
$ns attach-agent $n24 $sink87
$ns  connect $tcp87 $sink87
set ftp87 [new Application/FTP]
$ftp87 attach-agent $tcp87
$ns  at 135.7 "$ftp87 start" 
$ns  at 137.7 "$ftp87 stop"

$ns at 136.0 "$n9 delete-mark N1"
$ns at 136.1 "$n9 add-mark N1 sienna circle"

set tcp88 [new Agent/TCP]
set sink88 [new Agent/TCPSink]
$ns  attach-agent $n28 $tcp88
$ns attach-agent $n25 $sink88
$ns  connect $tcp88 $sink88
set ftp88 [new Application/FTP]
$ftp88 attach-agent $tcp88
$ns  at 135.7 "$ftp88 start" 
$ns  at 137.7 "$ftp88 stop"

$ns at 136.0 "$n28 delete-mark N1"
$ns at 136.1 "$n28 add-mark N1 red circle"


set tcp89 [new Agent/TCP]
set sink89 [new Agent/TCPSink]
$ns  attach-agent $n29 $tcp89
$ns attach-agent $n30 $sink89
$ns  connect $tcp89 $sink89
set ftp89 [new Application/FTP]
$ftp89 attach-agent $tcp89
$ns  at 137.7 "$ftp89 start" 
$ns  at 139.7 "$ftp89 stop"

$ns at 138.0 "$n29 delete-mark N1"
$ns at 138.1 "$n29 add-mark N1 cyan circle"



$ns at 0.0 "$ns trace-annotate \" Token analysis in Random allocation \""

$ns at 0.2 "$ns trace-annotate \" Distributed Self-Organization Balanced Clustering Algorithm (GSTEB) \""

$ns at 1.0 "$ns trace-annotate \" GSTEB can be divided into three stages: \""

$ns at 2.0 "$ns trace-annotate \" Cluster head selecting phase, Clusters building phase and Cycle phase \""



proc finish {} {
    global ns tracefile namfile
    $ns flush-trace
    close $tracefile
    close $namfile
#    exec nam Exist_nam &
#    exec cat Exist_trace &	
    exit 0
}
for {set i 0} {$i < $val(nn) } { incr i } {
    $ns at $val(stop) "\$n$i reset"
}
$ns at $val(stop) "$ns nam-end-wireless $val(stop)"
$ns at $val(stop) "finish"
$ns at $val(stop) "puts \"done\" ; $ns halt"
$ns run
