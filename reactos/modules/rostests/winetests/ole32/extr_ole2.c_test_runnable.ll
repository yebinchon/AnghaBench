; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_ole2.c_test_runnable.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_ole2.c_test_runnable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expected_method = type { i8*, i32 }

@test_runnable.methods_query_runnable = internal constant [5 x %struct.expected_method] [%struct.expected_method { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0), i32 0 }, %struct.expected_method { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0), i32 0 }, %struct.expected_method { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0), i32 0 }, %struct.expected_method { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0), i32 0 }, %struct.expected_method zeroinitializer], align 16
@.str = private unnamed_addr constant [25 x i8] c"OleObject_QueryInterface\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"OleObjectRunnable_AddRef\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"OleObjectRunnable_IsRunning\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"OleObjectRunnable_Release\00", align 1
@test_runnable.methods_no_runnable = internal constant [2 x %struct.expected_method] [%struct.expected_method { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0), i32 0 }, %struct.expected_method zeroinitializer], align 16
@OleObject = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@expected_method_list = common dso_local global %struct.expected_method* null, align 8
@TRUE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"Object should be running\0A\00", align 1
@g_isRunning = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [30 x i8] c"Object should not be running\0A\00", align 1
@g_showRunnable = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [50 x i8] c"Object without IRunnableObject should be running\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_runnable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_runnable() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  store i32* @OleObject, i32** %2, align 8
  %3 = call i64 @OleIsRunning(i32* null)
  store i64 %3, i64* %1, align 8
  %4 = load i64, i64* %1, align 8
  %5 = load i64, i64* @FALSE, align 8
  %6 = icmp eq i64 %4, %5
  %7 = zext i1 %6 to i32
  %8 = load i64, i64* %1, align 8
  %9 = call i32 (i32, i8*, ...) @ok(i32 %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i64 %8)
  store %struct.expected_method* getelementptr inbounds ([5 x %struct.expected_method], [5 x %struct.expected_method]* @test_runnable.methods_query_runnable, i64 0, i64 0), %struct.expected_method** @expected_method_list, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = call i64 @OleIsRunning(i32* %10)
  store i64 %11, i64* %1, align 8
  %12 = load i64, i64* %1, align 8
  %13 = load i64, i64* @TRUE, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 (i32, i8*, ...) @ok(i32 %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %17 = call i32 (...) @CHECK_NO_EXTRA_METHODS()
  %18 = load i64, i64* @FALSE, align 8
  store i64 %18, i64* @g_isRunning, align 8
  store %struct.expected_method* getelementptr inbounds ([5 x %struct.expected_method], [5 x %struct.expected_method]* @test_runnable.methods_query_runnable, i64 0, i64 0), %struct.expected_method** @expected_method_list, align 8
  %19 = load i32*, i32** %2, align 8
  %20 = call i64 @OleIsRunning(i32* %19)
  store i64 %20, i64* %1, align 8
  %21 = load i64, i64* %1, align 8
  %22 = load i64, i64* @FALSE, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %26 = call i32 (...) @CHECK_NO_EXTRA_METHODS()
  %27 = load i64, i64* @FALSE, align 8
  store i64 %27, i64* @g_showRunnable, align 8
  store %struct.expected_method* getelementptr inbounds ([2 x %struct.expected_method], [2 x %struct.expected_method]* @test_runnable.methods_no_runnable, i64 0, i64 0), %struct.expected_method** @expected_method_list, align 8
  %28 = load i32*, i32** %2, align 8
  %29 = call i64 @OleIsRunning(i32* %28)
  store i64 %29, i64* %1, align 8
  %30 = load i64, i64* %1, align 8
  %31 = load i64, i64* @TRUE, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0))
  %35 = call i32 (...) @CHECK_NO_EXTRA_METHODS()
  %36 = load i64, i64* @TRUE, align 8
  store i64 %36, i64* @g_isRunning, align 8
  %37 = load i64, i64* @TRUE, align 8
  store i64 %37, i64* @g_showRunnable, align 8
  ret void
}

declare dso_local i64 @OleIsRunning(i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @CHECK_NO_EXTRA_METHODS(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
