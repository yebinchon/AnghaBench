; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/pdh/extr_pdh.c_test_PdhValidatePathExW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/pdh/extr_pdh.c_test_PdhValidatePathExW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_PdhValidatePathExW.empty = internal constant [1 x i8] zeroinitializer, align 1
@test_PdhValidatePathExW.system = internal constant [8 x i8] c"\\System\00", align 1
@PDH_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"PdhValidatePathExW failed 0x%08x\0A\00", align 1
@PDH_CSTATUS_BAD_COUNTERNAME = common dso_local global i64 0, align 8
@uptime = common dso_local global i8* null, align 8
@nonexistent_counter = common dso_local global i8* null, align 8
@PDH_CSTATUS_NO_COUNTER = common dso_local global i64 0, align 8
@system_uptime = common dso_local global i8* null, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_PdhValidatePathExW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_PdhValidatePathExW() #0 {
  %1 = alloca i64, align 8
  %2 = call i64 @pPdhValidatePathExW(i32* null, i8* null)
  store i64 %2, i64* %1, align 8
  %3 = load i64, i64* %1, align 8
  %4 = load i64, i64* @PDH_INVALID_ARGUMENT, align 8
  %5 = icmp eq i64 %3, %4
  %6 = zext i1 %5 to i32
  %7 = load i64, i64* %1, align 8
  %8 = call i32 @ok(i32 %6, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %7)
  %9 = call i64 @pPdhValidatePathExW(i32* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @test_PdhValidatePathExW.empty, i64 0, i64 0))
  store i64 %9, i64* %1, align 8
  %10 = load i64, i64* %1, align 8
  %11 = load i64, i64* @PDH_INVALID_ARGUMENT, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i64, i64* %1, align 8
  %15 = call i32 @ok(i32 %13, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = call i64 @pPdhValidatePathExW(i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_PdhValidatePathExW.system, i64 0, i64 0))
  store i64 %16, i64* %1, align 8
  %17 = load i64, i64* %1, align 8
  %18 = load i64, i64* @PDH_CSTATUS_BAD_COUNTERNAME, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load i64, i64* %1, align 8
  %22 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load i8*, i8** @uptime, align 8
  %24 = call i64 @pPdhValidatePathExW(i32* null, i8* %23)
  store i64 %24, i64* %1, align 8
  %25 = load i64, i64* %1, align 8
  %26 = load i64, i64* @PDH_CSTATUS_BAD_COUNTERNAME, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i64, i64* %1, align 8
  %30 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %29)
  %31 = load i8*, i8** @nonexistent_counter, align 8
  %32 = call i64 @pPdhValidatePathExW(i32* null, i8* %31)
  store i64 %32, i64* %1, align 8
  %33 = load i64, i64* %1, align 8
  %34 = load i64, i64* @PDH_CSTATUS_NO_COUNTER, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load i64, i64* %1, align 8
  %38 = call i32 @ok(i32 %36, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %37)
  %39 = load i8*, i8** @system_uptime, align 8
  %40 = call i64 @pPdhValidatePathExW(i32* null, i8* %39)
  store i64 %40, i64* %1, align 8
  %41 = load i64, i64* %1, align 8
  %42 = load i64, i64* @ERROR_SUCCESS, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i64, i64* %1, align 8
  %46 = call i32 @ok(i32 %44, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %45)
  ret void
}

declare dso_local i64 @pPdhValidatePathExW(i32*, i8*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
