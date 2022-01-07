; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/pdh/extr_pdh.c_test_PdhValidatePathA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/pdh/extr_pdh.c_test_PdhValidatePathA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PDH_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"PdhValidatePathA failed 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"\\System\00", align 1
@PDH_CSTATUS_BAD_COUNTERNAME = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"System Up Time\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"\\System\\Nonexistent Counter\00", align 1
@PDH_CSTATUS_NO_COUNTER = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"\\System\\System Up Time\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_PdhValidatePathA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_PdhValidatePathA() #0 {
  %1 = alloca i64, align 8
  %2 = call i64 @PdhValidatePathA(i8* null)
  store i64 %2, i64* %1, align 8
  %3 = load i64, i64* %1, align 8
  %4 = load i64, i64* @PDH_INVALID_ARGUMENT, align 8
  %5 = icmp eq i64 %3, %4
  %6 = zext i1 %5 to i32
  %7 = load i64, i64* %1, align 8
  %8 = call i32 @ok(i32 %6, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %7)
  %9 = call i64 @PdhValidatePathA(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i64 %9, i64* %1, align 8
  %10 = load i64, i64* %1, align 8
  %11 = load i64, i64* @PDH_INVALID_ARGUMENT, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i64, i64* %1, align 8
  %15 = call i32 @ok(i32 %13, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = call i64 @PdhValidatePathA(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i64 %16, i64* %1, align 8
  %17 = load i64, i64* %1, align 8
  %18 = load i64, i64* @PDH_CSTATUS_BAD_COUNTERNAME, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load i64, i64* %1, align 8
  %22 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = call i64 @PdhValidatePathA(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  store i64 %23, i64* %1, align 8
  %24 = load i64, i64* %1, align 8
  %25 = load i64, i64* @PDH_CSTATUS_BAD_COUNTERNAME, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load i64, i64* %1, align 8
  %29 = call i32 @ok(i32 %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = call i64 @PdhValidatePathA(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  store i64 %30, i64* %1, align 8
  %31 = load i64, i64* %1, align 8
  %32 = load i64, i64* @PDH_CSTATUS_NO_COUNTER, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i64, i64* %1, align 8
  %36 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %35)
  %37 = call i64 @PdhValidatePathA(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  store i64 %37, i64* %1, align 8
  %38 = load i64, i64* %1, align 8
  %39 = load i64, i64* @ERROR_SUCCESS, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i64, i64* %1, align 8
  %43 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %42)
  ret void
}

declare dso_local i64 @PdhValidatePathA(i8*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
