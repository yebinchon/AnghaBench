; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_test-networkd-conf.c_test_config_parse_hwaddr.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_test-networkd-conf.c_test_config_parse_hwaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ether_addr = type { i32 }

@__const.test_config_parse_hwaddr.t = private unnamed_addr constant [2 x %struct.ether_addr] [%struct.ether_addr { i32 170 }, %struct.ether_addr { i32 1 }], align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"no:ta:ma:ca:dd:re\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"aa:bb:cc:dd:ee:fx\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"aa:bb:cc:dd:ee:ff\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c" aa:bb:cc:dd:ee:ff\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"aa:bb:cc:dd:ee:ff \09\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"aa:bb:cc:dd:ee:ff \09\0Axxx\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"aa:bb:cc: dd:ee:ff\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"aa:bb:cc:d d:ee:ff\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"aa:bb:cc:dd:ee\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"9:aa:bb:cc:dd:ee:ff\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"aa:bb:cc:dd:ee:ff:gg\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"aa:Bb:CC:dd:ee:ff\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"01:23:45:67:89:aB\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"1:23:45:67:89:aB\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"aa-bb-cc-dd-ee-ff\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"AA-BB-CC-DD-EE-FF\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"01-23-45-67-89-ab\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"aabb.ccdd.eeff\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"0123.4567.89ab\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"123.4567.89ab.\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"aabbcc.ddeeff\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"aabbccddeeff\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"aabbccddee:ff\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"012345.6789ab\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"123.4567.89ab\00", align 1
@.str.26 = private unnamed_addr constant [68 x i8] c"123.4567.89ab aa:bb:cc:dd:ee:ff 01-23-45-67-89-ab aa:Bb:CC:dd:ee:ff\00", align 1
@.str.27 = private unnamed_addr constant [82 x i8] c"123.4567.89ab aa:bb:cc:dd:ee:fx hogehoge 01-23-45-67-89-ab aaaa aa:Bb:CC:dd:ee:ff\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_config_parse_hwaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_config_parse_hwaddr() #0 {
  %1 = alloca [2 x %struct.ether_addr], align 4
  %2 = bitcast [2 x %struct.ether_addr]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 bitcast ([2 x %struct.ether_addr]* @__const.test_config_parse_hwaddr.t to i8*), i64 8, i1 false)
  %3 = call i32 @test_config_parse_hwaddr_one(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0, %struct.ether_addr* null)
  %4 = call i32 @test_config_parse_hwaddr_one(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 0, %struct.ether_addr* null)
  %5 = call i32 @test_config_parse_hwaddr_one(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 0, %struct.ether_addr* null)
  %6 = getelementptr inbounds [2 x %struct.ether_addr], [2 x %struct.ether_addr]* %1, i64 0, i64 0
  %7 = call i32 @test_config_parse_hwaddr_one(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 0, %struct.ether_addr* %6)
  %8 = getelementptr inbounds [2 x %struct.ether_addr], [2 x %struct.ether_addr]* %1, i64 0, i64 0
  %9 = call i32 @test_config_parse_hwaddr_one(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 0, %struct.ether_addr* %8)
  %10 = call i32 @test_config_parse_hwaddr_one(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 0, %struct.ether_addr* null)
  %11 = call i32 @test_config_parse_hwaddr_one(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 0, %struct.ether_addr* null)
  %12 = call i32 @test_config_parse_hwaddr_one(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 0, %struct.ether_addr* null)
  %13 = call i32 @test_config_parse_hwaddr_one(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 0, %struct.ether_addr* null)
  %14 = call i32 @test_config_parse_hwaddr_one(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 0, %struct.ether_addr* null)
  %15 = call i32 @test_config_parse_hwaddr_one(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 0, %struct.ether_addr* null)
  %16 = call i32 @test_config_parse_hwaddr_one(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 0, %struct.ether_addr* null)
  %17 = getelementptr inbounds [2 x %struct.ether_addr], [2 x %struct.ether_addr]* %1, i64 0, i64 0
  %18 = call i32 @test_config_parse_hwaddr_one(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i32 0, %struct.ether_addr* %17)
  %19 = getelementptr inbounds [2 x %struct.ether_addr], [2 x %struct.ether_addr]* %1, i64 0, i64 1
  %20 = call i32 @test_config_parse_hwaddr_one(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i32 0, %struct.ether_addr* %19)
  %21 = getelementptr inbounds [2 x %struct.ether_addr], [2 x %struct.ether_addr]* %1, i64 0, i64 1
  %22 = call i32 @test_config_parse_hwaddr_one(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 0, %struct.ether_addr* %21)
  %23 = getelementptr inbounds [2 x %struct.ether_addr], [2 x %struct.ether_addr]* %1, i64 0, i64 0
  %24 = call i32 @test_config_parse_hwaddr_one(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i32 0, %struct.ether_addr* %23)
  %25 = getelementptr inbounds [2 x %struct.ether_addr], [2 x %struct.ether_addr]* %1, i64 0, i64 0
  %26 = call i32 @test_config_parse_hwaddr_one(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i32 0, %struct.ether_addr* %25)
  %27 = getelementptr inbounds [2 x %struct.ether_addr], [2 x %struct.ether_addr]* %1, i64 0, i64 1
  %28 = call i32 @test_config_parse_hwaddr_one(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i32 0, %struct.ether_addr* %27)
  %29 = getelementptr inbounds [2 x %struct.ether_addr], [2 x %struct.ether_addr]* %1, i64 0, i64 0
  %30 = call i32 @test_config_parse_hwaddr_one(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i32 0, %struct.ether_addr* %29)
  %31 = getelementptr inbounds [2 x %struct.ether_addr], [2 x %struct.ether_addr]* %1, i64 0, i64 1
  %32 = call i32 @test_config_parse_hwaddr_one(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i32 0, %struct.ether_addr* %31)
  %33 = call i32 @test_config_parse_hwaddr_one(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i32 0, %struct.ether_addr* null)
  %34 = call i32 @test_config_parse_hwaddr_one(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i32 0, %struct.ether_addr* null)
  %35 = call i32 @test_config_parse_hwaddr_one(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), i32 0, %struct.ether_addr* null)
  %36 = call i32 @test_config_parse_hwaddr_one(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0), i32 0, %struct.ether_addr* null)
  %37 = call i32 @test_config_parse_hwaddr_one(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), i32 0, %struct.ether_addr* null)
  %38 = getelementptr inbounds [2 x %struct.ether_addr], [2 x %struct.ether_addr]* %1, i64 0, i64 1
  %39 = call i32 @test_config_parse_hwaddr_one(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), i32 0, %struct.ether_addr* %38)
  %40 = getelementptr inbounds [2 x %struct.ether_addr], [2 x %struct.ether_addr]* %1, i64 0, i64 0
  %41 = call i32 @test_config_parse_hwaddrs_one(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %struct.ether_addr* %40, i32 0)
  %42 = getelementptr inbounds [2 x %struct.ether_addr], [2 x %struct.ether_addr]* %1, i64 0, i64 0
  %43 = call i32 @test_config_parse_hwaddrs_one(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), %struct.ether_addr* %42, i32 0)
  %44 = getelementptr inbounds [2 x %struct.ether_addr], [2 x %struct.ether_addr]* %1, i64 0, i64 0
  %45 = call i32 @test_config_parse_hwaddrs_one(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), %struct.ether_addr* %44, i32 0)
  %46 = getelementptr inbounds [2 x %struct.ether_addr], [2 x %struct.ether_addr]* %1, i64 0, i64 0
  %47 = call i32 @test_config_parse_hwaddrs_one(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), %struct.ether_addr* %46, i32 1)
  %48 = getelementptr inbounds [2 x %struct.ether_addr], [2 x %struct.ether_addr]* %1, i64 0, i64 0
  %49 = call i32 @test_config_parse_hwaddrs_one(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), %struct.ether_addr* %48, i32 1)
  %50 = getelementptr inbounds [2 x %struct.ether_addr], [2 x %struct.ether_addr]* %1, i64 0, i64 0
  %51 = call i32 @test_config_parse_hwaddrs_one(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), %struct.ether_addr* %50, i32 1)
  %52 = getelementptr inbounds [2 x %struct.ether_addr], [2 x %struct.ether_addr]* %1, i64 0, i64 0
  %53 = call i32 @test_config_parse_hwaddrs_one(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), %struct.ether_addr* %52, i32 1)
  %54 = getelementptr inbounds [2 x %struct.ether_addr], [2 x %struct.ether_addr]* %1, i64 0, i64 0
  %55 = call i32 @test_config_parse_hwaddrs_one(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), %struct.ether_addr* %54, i32 0)
  %56 = getelementptr inbounds [2 x %struct.ether_addr], [2 x %struct.ether_addr]* %1, i64 0, i64 0
  %57 = call i32 @test_config_parse_hwaddrs_one(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), %struct.ether_addr* %56, i32 0)
  %58 = getelementptr inbounds [2 x %struct.ether_addr], [2 x %struct.ether_addr]* %1, i64 0, i64 0
  %59 = call i32 @test_config_parse_hwaddrs_one(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), %struct.ether_addr* %58, i32 0)
  %60 = getelementptr inbounds [2 x %struct.ether_addr], [2 x %struct.ether_addr]* %1, i64 0, i64 0
  %61 = call i32 @test_config_parse_hwaddrs_one(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), %struct.ether_addr* %60, i32 0)
  %62 = getelementptr inbounds [2 x %struct.ether_addr], [2 x %struct.ether_addr]* %1, i64 0, i64 0
  %63 = call i32 @test_config_parse_hwaddrs_one(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), %struct.ether_addr* %62, i32 0)
  %64 = getelementptr inbounds [2 x %struct.ether_addr], [2 x %struct.ether_addr]* %1, i64 0, i64 0
  %65 = call i32 @test_config_parse_hwaddrs_one(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), %struct.ether_addr* %64, i32 1)
  %66 = getelementptr inbounds [2 x %struct.ether_addr], [2 x %struct.ether_addr]* %1, i64 0, i64 1
  %67 = call i32 @test_config_parse_hwaddrs_one(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), %struct.ether_addr* %66, i32 1)
  %68 = getelementptr inbounds [2 x %struct.ether_addr], [2 x %struct.ether_addr]* %1, i64 0, i64 1
  %69 = call i32 @test_config_parse_hwaddrs_one(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), %struct.ether_addr* %68, i32 1)
  %70 = getelementptr inbounds [2 x %struct.ether_addr], [2 x %struct.ether_addr]* %1, i64 0, i64 0
  %71 = call i32 @test_config_parse_hwaddrs_one(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), %struct.ether_addr* %70, i32 1)
  %72 = getelementptr inbounds [2 x %struct.ether_addr], [2 x %struct.ether_addr]* %1, i64 0, i64 0
  %73 = call i32 @test_config_parse_hwaddrs_one(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), %struct.ether_addr* %72, i32 1)
  %74 = getelementptr inbounds [2 x %struct.ether_addr], [2 x %struct.ether_addr]* %1, i64 0, i64 1
  %75 = call i32 @test_config_parse_hwaddrs_one(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), %struct.ether_addr* %74, i32 1)
  %76 = getelementptr inbounds [2 x %struct.ether_addr], [2 x %struct.ether_addr]* %1, i64 0, i64 0
  %77 = call i32 @test_config_parse_hwaddrs_one(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), %struct.ether_addr* %76, i32 1)
  %78 = getelementptr inbounds [2 x %struct.ether_addr], [2 x %struct.ether_addr]* %1, i64 0, i64 1
  %79 = call i32 @test_config_parse_hwaddrs_one(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), %struct.ether_addr* %78, i32 1)
  %80 = getelementptr inbounds [2 x %struct.ether_addr], [2 x %struct.ether_addr]* %1, i64 0, i64 0
  %81 = call i32 @test_config_parse_hwaddrs_one(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), %struct.ether_addr* %80, i32 0)
  %82 = getelementptr inbounds [2 x %struct.ether_addr], [2 x %struct.ether_addr]* %1, i64 0, i64 0
  %83 = call i32 @test_config_parse_hwaddrs_one(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), %struct.ether_addr* %82, i32 0)
  %84 = getelementptr inbounds [2 x %struct.ether_addr], [2 x %struct.ether_addr]* %1, i64 0, i64 0
  %85 = call i32 @test_config_parse_hwaddrs_one(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), %struct.ether_addr* %84, i32 0)
  %86 = getelementptr inbounds [2 x %struct.ether_addr], [2 x %struct.ether_addr]* %1, i64 0, i64 0
  %87 = call i32 @test_config_parse_hwaddrs_one(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0), %struct.ether_addr* %86, i32 0)
  %88 = getelementptr inbounds [2 x %struct.ether_addr], [2 x %struct.ether_addr]* %1, i64 0, i64 0
  %89 = call i32 @test_config_parse_hwaddrs_one(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), %struct.ether_addr* %88, i32 0)
  %90 = getelementptr inbounds [2 x %struct.ether_addr], [2 x %struct.ether_addr]* %1, i64 0, i64 1
  %91 = call i32 @test_config_parse_hwaddrs_one(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), %struct.ether_addr* %90, i32 1)
  %92 = getelementptr inbounds [2 x %struct.ether_addr], [2 x %struct.ether_addr]* %1, i64 0, i64 0
  %93 = call i32 @test_config_parse_hwaddrs_one(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.26, i64 0, i64 0), %struct.ether_addr* %92, i32 2)
  %94 = getelementptr inbounds [2 x %struct.ether_addr], [2 x %struct.ether_addr]* %1, i64 0, i64 0
  %95 = call i32 @test_config_parse_hwaddrs_one(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.27, i64 0, i64 0), %struct.ether_addr* %94, i32 2)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @test_config_parse_hwaddr_one(i8*, i32, %struct.ether_addr*) #2

declare dso_local i32 @test_config_parse_hwaddrs_one(i8*, %struct.ether_addr*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
