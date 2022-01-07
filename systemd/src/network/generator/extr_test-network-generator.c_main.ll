; ModuleID = '/home/carl/AnghaBench/systemd/src/network/generator/extr_test-network-generator.c_main.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/generator/extr_test-network-generator.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ip\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"dhcp6\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"[Match]\0AName=*\0A\0A[Link]\0A\0A[Network]\0ADHCP=ipv6\0A\0A[DHCP]\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"eth0\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"eth0:dhcp\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"[Match]\0AName=eth0\0A\0A[Link]\0A\0A[Network]\0ADHCP=ipv4\0A\0A[DHCP]\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"eth0:dhcp:1530\00", align 1
@.str.8 = private unnamed_addr constant [70 x i8] c"[Match]\0AName=eth0\0A\0A[Link]\0AMTUBytes=1530\0A\0A[Network]\0ADHCP=ipv4\0A\0A[DHCP]\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"eth0:dhcp:1530:00:11:22:33:44:55\00", align 1
@.str.10 = private unnamed_addr constant [99 x i8] c"[Match]\0AName=eth0\0A\0A[Link]\0AMACAddress=00:11:22:33:44:55\0AMTUBytes=1530\0A\0A[Network]\0ADHCP=ipv4\0A\0A[DHCP]\0A\00", align 1
@.str.11 = private unnamed_addr constant [57 x i8] c"192.168.0.10::192.168.0.1:255.255.255.0:hogehoge:eth0:on\00", align 1
@.str.12 = private unnamed_addr constant [137 x i8] c"[Match]\0AName=eth0\0A\0A[Link]\0A\0A[Network]\0ADHCP=yes\0A\0A[DHCP]\0AHostname=hogehoge\0A\0A[Address]\0AAddress=192.168.0.10/24\0A\0A[Route]\0AGateway=192.168.0.1\0A\00", align 1
@.str.13 = private unnamed_addr constant [68 x i8] c"192.168.0.10:192.168.0.2:192.168.0.1:255.255.255.0:hogehoge:eth0:on\00", align 1
@.str.14 = private unnamed_addr constant [154 x i8] c"[Match]\0AName=eth0\0A\0A[Link]\0A\0A[Network]\0ADHCP=yes\0A\0A[DHCP]\0AHostname=hogehoge\0A\0A[Address]\0AAddress=192.168.0.10/24\0APeer=192.168.0.2\0A\0A[Route]\0AGateway=192.168.0.1\0A\00", align 1
@.str.15 = private unnamed_addr constant [73 x i8] c"192.168.0.10:192.168.0.2:192.168.0.1:255.255.255.0:hogehoge:eth0:on:1530\00", align 1
@.str.16 = private unnamed_addr constant [168 x i8] c"[Match]\0AName=eth0\0A\0A[Link]\0AMTUBytes=1530\0A\0A[Network]\0ADHCP=yes\0A\0A[DHCP]\0AHostname=hogehoge\0A\0A[Address]\0AAddress=192.168.0.10/24\0APeer=192.168.0.2\0A\0A[Route]\0AGateway=192.168.0.1\0A\00", align 1
@.str.17 = private unnamed_addr constant [91 x i8] c"192.168.0.10:192.168.0.2:192.168.0.1:255.255.255.0:hogehoge:eth0:on:1530:00:11:22:33:44:55\00", align 1
@.str.18 = private unnamed_addr constant [197 x i8] c"[Match]\0AName=eth0\0A\0A[Link]\0AMACAddress=00:11:22:33:44:55\0AMTUBytes=1530\0A\0A[Network]\0ADHCP=yes\0A\0A[DHCP]\0AHostname=hogehoge\0A\0A[Address]\0AAddress=192.168.0.10/24\0APeer=192.168.0.2\0A\0A[Route]\0AGateway=192.168.0.1\0A\00", align 1
@.str.19 = private unnamed_addr constant [80 x i8] c"192.168.0.10:192.168.0.2:192.168.0.1:255.255.255.0:hogehoge:eth0:on:10.10.10.10\00", align 1
@.str.20 = private unnamed_addr constant [170 x i8] c"[Match]\0AName=eth0\0A\0A[Link]\0A\0A[Network]\0ADHCP=yes\0ADNS=10.10.10.10\0A\0A[DHCP]\0AHostname=hogehoge\0A\0A[Address]\0AAddress=192.168.0.10/24\0APeer=192.168.0.2\0A\0A[Route]\0AGateway=192.168.0.1\0A\00", align 1
@.str.21 = private unnamed_addr constant [92 x i8] c"192.168.0.10:192.168.0.2:192.168.0.1:255.255.255.0:hogehoge:eth0:on:10.10.10.10:10.10.10.11\00", align 1
@.str.22 = private unnamed_addr constant [186 x i8] c"[Match]\0AName=eth0\0A\0A[Link]\0A\0A[Network]\0ADHCP=yes\0ADNS=10.10.10.10\0ADNS=10.10.10.11\0A\0A[DHCP]\0AHostname=hogehoge\0A\0A[Address]\0AAddress=192.168.0.10/24\0APeer=192.168.0.2\0A\0A[Route]\0AGateway=192.168.0.1\0A\00", align 1
@.str.23 = private unnamed_addr constant [68 x i8] c"[2001:1234:56:8f63::10]::[2001:1234:56:8f63::1]:64:hogehoge:eth0:on\00", align 1
@.str.24 = private unnamed_addr constant [155 x i8] c"[Match]\0AName=eth0\0A\0A[Link]\0A\0A[Network]\0ADHCP=yes\0A\0A[DHCP]\0AHostname=hogehoge\0A\0A[Address]\0AAddress=2001:1234:56:8f63::10/64\0A\0A[Route]\0AGateway=2001:1234:56:8f63::1\0A\00", align 1
@.str.25 = private unnamed_addr constant [90 x i8] c"[2001:1234:56:8f63::10]:[2001:1234:56:8f63::2]:[2001:1234:56:8f63::1]:64:hogehoge:eth0:on\00", align 1
@.str.26 = private unnamed_addr constant [181 x i8] c"[Match]\0AName=eth0\0A\0A[Link]\0A\0A[Network]\0ADHCP=yes\0A\0A[DHCP]\0AHostname=hogehoge\0A\0A[Address]\0AAddress=2001:1234:56:8f63::10/64\0APeer=2001:1234:56:8f63::2\0A\0A[Route]\0AGateway=2001:1234:56:8f63::1\0A\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"rd.route\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"10.1.2.3/16:10.0.2.3\00", align 1
@.str.29 = private unnamed_addr constant [93 x i8] c"[Match]\0AName=*\0A\0A[Link]\0A\0A[Network]\0A\0A[DHCP]\0A\0A[Route]\0ADestination=10.1.2.3/16\0AGateway=10.0.2.3\0A\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"10.1.2.3/16:10.0.2.3:eth0\00", align 1
@.str.31 = private unnamed_addr constant [96 x i8] c"[Match]\0AName=eth0\0A\0A[Link]\0A\0A[Network]\0A\0A[DHCP]\0A\0A[Route]\0ADestination=10.1.2.3/16\0AGateway=10.0.2.3\0A\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"nameserver\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"10.1.2.3\00", align 1
@.str.34 = private unnamed_addr constant [56 x i8] c"[Match]\0AName=*\0A\0A[Link]\0A\0A[Network]\0ADNS=10.1.2.3\0A\0A[DHCP]\0A\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"rd.peerdns\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.37 = private unnamed_addr constant [53 x i8] c"[Match]\0AName=*\0A\0A[Link]\0A\0A[Network]\0A\0A[DHCP]\0AUseDNS=no\0A\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.39 = private unnamed_addr constant [54 x i8] c"[Match]\0AName=*\0A\0A[Link]\0A\0A[Network]\0A\0A[DHCP]\0AUseDNS=yes\0A\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"vlan\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"vlan99:eth0\00", align 1
@.str.42 = private unnamed_addr constant [58 x i8] c"[Match]\0AName=eth0\0A\0A[Link]\0A\0A[Network]\0AVLAN=vlan99\0A\0A[DHCP]\0A\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"bridge\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"bridge99:eth0,eth1\00", align 1
@.str.45 = private unnamed_addr constant [62 x i8] c"[Match]\0AName=eth0\0A\0A[Link]\0A\0A[Network]\0ABridge=bridge99\0A\0A[DHCP]\0A\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"eth1\00", align 1
@.str.47 = private unnamed_addr constant [62 x i8] c"[Match]\0AName=eth1\0A\0A[Link]\0A\0A[Network]\0ABridge=bridge99\0A\0A[DHCP]\0A\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"bond\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"bond99:eth0,eth1\00", align 1
@.str.50 = private unnamed_addr constant [58 x i8] c"[Match]\0AName=eth0\0A\0A[Link]\0A\0A[Network]\0ABond=bond99\0A\0A[DHCP]\0A\00", align 1
@.str.51 = private unnamed_addr constant [23 x i8] c"bond99:eth0,eth1::1530\00", align 1
@.str.52 = private unnamed_addr constant [58 x i8] c"[Match]\0AName=eth1\0A\0A[Link]\0A\0A[Network]\0ABond=bond99\0A\0A[DHCP]\0A\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"bond99\00", align 1
@.str.54 = private unnamed_addr constant [46 x i8] c"[NetDev]\0AKind=bond\0AName=bond99\0AMTUBytes=1530\0A\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"hogehoge\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"ifname\00", align 1
@.str.57 = private unnamed_addr constant [27 x i8] c"hogehoge:00:11:22:33:44:55\00", align 1
@.str.58 = private unnamed_addr constant [60 x i8] c"[Match]\0AMACAddress=00:11:22:33:44:55\0A\0A[Link]\0AName=hogehoge\0A\00", align 1
@.str.59 = private unnamed_addr constant [236 x i8] c"[Match]\0AName=eth0\0A\0A[Link]\0A\0A[Network]\0ADHCP=yes\0ADNS=10.10.10.10\0ADNS=10.10.10.11\0A\0A[DHCP]\0AHostname=hogehoge\0A\0A[Address]\0AAddress=192.168.0.10/24\0APeer=192.168.0.2\0A\0A[Route]\0ADestination=10.1.2.3/16\0AGateway=10.0.2.3\0A\0A[Route]\0AGateway=192.168.0.1\0A\00", align 1
@.str.60 = private unnamed_addr constant [167 x i8] c"[Match]\0AName=eth0\0A\0A[Link]\0A\0A[Network]\0ADHCP=yes\0ADNS=10.1.2.3\0A\0A[DHCP]\0AHostname=hogehoge\0A\0A[Address]\0AAddress=192.168.0.10/24\0APeer=192.168.0.2\0A\0A[Route]\0AGateway=192.168.0.1\0A\00", align 1
@.str.61 = private unnamed_addr constant [199 x i8] c"[Match]\0AName=eth0\0A\0A[Link]\0A\0A[Network]\0ADHCP=yes\0ADNS=10.10.10.10\0ADNS=10.10.10.11\0ADNS=10.1.2.3\0A\0A[DHCP]\0AHostname=hogehoge\0A\0A[Address]\0AAddress=192.168.0.10/24\0APeer=192.168.0.2\0A\0A[Route]\0AGateway=192.168.0.1\0A\00", align 1
@.str.62 = private unnamed_addr constant [197 x i8] c"[Match]\0AName=eth0\0A\0A[Link]\0A\0A[Network]\0ADHCP=yes\0ADNS=10.10.10.10\0ADNS=10.10.10.11\0A\0A[DHCP]\0AHostname=hogehoge\0AUseDNS=yes\0A\0A[Address]\0AAddress=192.168.0.10/24\0APeer=192.168.0.2\0A\0A[Route]\0AGateway=192.168.0.1\0A\00", align 1
@.str.63 = private unnamed_addr constant [202 x i8] c"[Match]\0AName=eth0\0A\0A[Link]\0A\0A[Network]\0ADHCP=yes\0ADNS=10.10.10.10\0ADNS=10.10.10.11\0ABridge=bridge99\0A\0A[DHCP]\0AHostname=hogehoge\0A\0A[Address]\0AAddress=192.168.0.10/24\0APeer=192.168.0.2\0A\0A[Route]\0AGateway=192.168.0.1\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = call i32 @test_network_one(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  %7 = call i32 @test_network_one(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0))
  %8 = call i32 @test_network_one(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.8, i64 0, i64 0))
  %9 = call i32 @test_network_one(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.10, i64 0, i64 0))
  %10 = call i32 @test_network_one(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.12, i64 0, i64 0))
  %11 = call i32 @test_network_one(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([154 x i8], [154 x i8]* @.str.14, i64 0, i64 0))
  %12 = call i32 @test_network_one(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([168 x i8], [168 x i8]* @.str.16, i64 0, i64 0))
  %13 = call i32 @test_network_one(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([197 x i8], [197 x i8]* @.str.18, i64 0, i64 0))
  %14 = call i32 @test_network_one(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([170 x i8], [170 x i8]* @.str.20, i64 0, i64 0))
  %15 = call i32 @test_network_one(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.22, i64 0, i64 0))
  %16 = call i32 @test_network_one(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.24, i64 0, i64 0))
  %17 = call i32 @test_network_one(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([181 x i8], [181 x i8]* @.str.26, i64 0, i64 0))
  %18 = call i32 @test_network_one(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.29, i64 0, i64 0))
  %19 = call i32 @test_network_one(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.31, i64 0, i64 0))
  %20 = call i32 @test_network_one(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.34, i64 0, i64 0))
  %21 = call i32 @test_network_one(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.37, i64 0, i64 0))
  %22 = call i32 @test_network_one(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.39, i64 0, i64 0))
  %23 = call i32 @test_network_one(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.42, i64 0, i64 0))
  %24 = call i32 @test_network_one(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.45, i64 0, i64 0))
  %25 = call i32 @test_network_one(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.47, i64 0, i64 0))
  %26 = call i32 @test_network_one(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.50, i64 0, i64 0))
  %27 = call i32 @test_network_one(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.51, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.52, i64 0, i64 0))
  %28 = call i32 @test_netdev_one(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.51, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.54, i64 0, i64 0))
  %29 = call i32 @test_link_one(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.57, i64 0, i64 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.58, i64 0, i64 0))
  %30 = call i32 @test_network_two(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([236 x i8], [236 x i8]* @.str.59, i64 0, i64 0))
  %31 = call i32 @test_network_two(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([167 x i8], [167 x i8]* @.str.60, i64 0, i64 0))
  %32 = call i32 @test_network_two(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([199 x i8], [199 x i8]* @.str.61, i64 0, i64 0))
  %33 = call i32 @test_network_two(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([197 x i8], [197 x i8]* @.str.62, i64 0, i64 0))
  %34 = call i32 @test_network_two(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([202 x i8], [202 x i8]* @.str.63, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @test_network_one(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @test_netdev_one(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @test_link_one(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @test_network_two(i8*, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
