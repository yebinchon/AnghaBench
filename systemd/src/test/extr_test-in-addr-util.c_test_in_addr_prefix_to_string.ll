; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-in-addr-util.c_test_in_addr_prefix_to_string.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-in-addr-util.c_test_in_addr_prefix_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AF_INET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"0.0.0.0/32\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"1.2.3.4/0\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"1.2.3.4/24\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"1.2.3.4/32\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"255.255.255.255/32\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"::1/128\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"fd00:abcd::1/64\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"fd00:abcd::1234:1/64\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"1111:2222:3333:4444:5555:6666:7777:8888/128\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"0.0.0.0\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"192.168.0.1\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"fd00:0000:0000:0000:0000:0000:0000:0001/64\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"fd00:1111::0000:2222:3333:4444:0001/64\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_in_addr_prefix_to_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_in_addr_prefix_to_string() #0 {
  %1 = load i32, i32* @AF_INET, align 4
  %2 = call i32 @test_in_addr_prefix_to_string_valid(i32 %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %3 = load i32, i32* @AF_INET, align 4
  %4 = call i32 @test_in_addr_prefix_to_string_valid(i32 %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %5 = load i32, i32* @AF_INET, align 4
  %6 = call i32 @test_in_addr_prefix_to_string_valid(i32 %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %7 = load i32, i32* @AF_INET, align 4
  %8 = call i32 @test_in_addr_prefix_to_string_valid(i32 %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %9 = load i32, i32* @AF_INET, align 4
  %10 = call i32 @test_in_addr_prefix_to_string_valid(i32 %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %11 = load i32, i32* @AF_INET6, align 4
  %12 = call i32 @test_in_addr_prefix_to_string_valid(i32 %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %13 = load i32, i32* @AF_INET6, align 4
  %14 = call i32 @test_in_addr_prefix_to_string_valid(i32 %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %15 = load i32, i32* @AF_INET6, align 4
  %16 = call i32 @test_in_addr_prefix_to_string_valid(i32 %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %17 = load i32, i32* @AF_INET6, align 4
  %18 = call i32 @test_in_addr_prefix_to_string_valid(i32 %17, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0))
  %19 = load i32, i32* @AF_INET, align 4
  %20 = call i32 @test_in_addr_prefix_to_string_unoptimized(i32 %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %21 = load i32, i32* @AF_INET, align 4
  %22 = call i32 @test_in_addr_prefix_to_string_unoptimized(i32 %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %23 = load i32, i32* @AF_INET6, align 4
  %24 = call i32 @test_in_addr_prefix_to_string_unoptimized(i32 %23, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0))
  %25 = load i32, i32* @AF_INET6, align 4
  %26 = call i32 @test_in_addr_prefix_to_string_unoptimized(i32 %25, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0))
  ret void
}

declare dso_local i32 @test_in_addr_prefix_to_string_valid(i32, i8*) #1

declare dso_local i32 @test_in_addr_prefix_to_string_unoptimized(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
