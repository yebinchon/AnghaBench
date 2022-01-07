; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-ip-protocol-list.c_main.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-ip-protocol-list.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IPPROTO_TCP = common dso_local global i32 0, align 4
@IPPROTO_DCCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"sctp\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"hoge\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"1000000000\00", align 1
@IPPROTO_SCTP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"ScTp\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"ip\00", align 1
@IPPROTO_IP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"-10\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [10 x i8] c"100000000\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = load i32, i32* @IPPROTO_TCP, align 4
  %7 = call i32 @test_int(i32 %6)
  %8 = load i32, i32* @IPPROTO_DCCP, align 4
  %9 = call i32 @test_int(i32 %8)
  %10 = call i32 @test_int_fail(i32 -1)
  %11 = call i32 @test_int_fail(i32 1048576)
  %12 = call i32 @test_str(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @test_str(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 @test_str_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %15 = call i32 @test_str_fail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %16 = call i32 @test_str_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %17 = load i32, i32* @IPPROTO_SCTP, align 4
  %18 = call i32 @test_parse_ip_protocol(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @IPPROTO_SCTP, align 4
  %20 = call i32 @test_parse_ip_protocol(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @IPPROTO_IP, align 4
  %22 = call i32 @test_parse_ip_protocol(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @IPPROTO_IP, align 4
  %24 = call i32 @test_parse_ip_protocol(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 %23)
  %25 = call i32 @test_parse_ip_protocol(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 1)
  %26 = call i32 @test_parse_ip_protocol(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32 0)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  %29 = call i32 @test_parse_ip_protocol(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  %32 = call i32 @test_parse_ip_protocol(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 %31)
  ret i32 0
}

declare dso_local i32 @test_int(i32) #1

declare dso_local i32 @test_int_fail(i32) #1

declare dso_local i32 @test_str(i8*) #1

declare dso_local i32 @test_str_fail(i8*) #1

declare dso_local i32 @test_parse_ip_protocol(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
