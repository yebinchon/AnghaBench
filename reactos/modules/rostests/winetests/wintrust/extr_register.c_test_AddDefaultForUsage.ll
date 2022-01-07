; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wintrust/extr_register.c_test_AddDefaultForUsage.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wintrust/extr_register.c_test_AddDefaultForUsage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i8*, i8*, i8*, %struct.TYPE_7__* }

@test_AddDefaultForUsage.ActionID = internal global %struct.TYPE_7__ { i32 -559038737, i32 57005, i32 48879, %struct.TYPE_6__ { i32 222, i32 173, i32 190, i32 239, i32 222, i32 173, i32 190, i32 239 } }, align 4
@test_AddDefaultForUsage.DummyDllW = internal global [13 x i8] c"deadbeef.dll\00", align 1
@test_AddDefaultForUsage.DummyFunction = internal global [14 x i8] c"dummyfunction\00", align 1
@test_AddDefaultForUsage.oid = internal constant [21 x i8] c"1.2.3.4.5.6.7.8.9.10\00", align 16
@test_AddDefaultForUsage.DefUsage = internal global %struct.TYPE_8__ zeroinitializer, align 8
@.str = private unnamed_addr constant [46 x i8] c"Expected WintrustAddDefaultForUsage to fail.\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"Expected ERROR_INVALID_PARAMETER, got %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_AddDefaultForUsage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_AddDefaultForUsage() #0 {
  %1 = alloca i64, align 8
  %2 = call i32 @SetLastError(i32 -559038737)
  %3 = call i64 @pWintrustAddDefaultForUsage(i8* null, %struct.TYPE_8__* null)
  store i64 %3, i64* %1, align 8
  %4 = load i64, i64* %1, align 8
  %5 = icmp ne i64 %4, 0
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i32 (i32, i8*, ...) @ok(i32 %7, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %9 = call i64 (...) @GetLastError()
  %10 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i64 (...) @GetLastError()
  %14 = call i32 (i32, i8*, ...) @ok(i32 %12, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %13)
  %15 = call i32 @SetLastError(i32 -559038737)
  %16 = call i64 @pWintrustAddDefaultForUsage(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @test_AddDefaultForUsage.oid, i64 0, i64 0), %struct.TYPE_8__* null)
  store i64 %16, i64* %1, align 8
  %17 = load i64, i64* %1, align 8
  %18 = icmp ne i64 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %22 = call i64 (...) @GetLastError()
  %23 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 (...) @GetLastError()
  %27 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %26)
  %28 = call i32 @memset(%struct.TYPE_8__* @test_AddDefaultForUsage.DefUsage, i32 0, i32 40)
  store i32 40, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @test_AddDefaultForUsage.DefUsage, i32 0, i32 0), align 8
  store %struct.TYPE_7__* @test_AddDefaultForUsage.ActionID, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @test_AddDefaultForUsage.DefUsage, i32 0, i32 4), align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_AddDefaultForUsage.DummyDllW, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @test_AddDefaultForUsage.DefUsage, i32 0, i32 1), align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_AddDefaultForUsage.DummyFunction, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @test_AddDefaultForUsage.DefUsage, i32 0, i32 2), align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_AddDefaultForUsage.DummyFunction, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @test_AddDefaultForUsage.DefUsage, i32 0, i32 3), align 8
  %29 = call i32 @SetLastError(i32 -559038737)
  %30 = call i64 @pWintrustAddDefaultForUsage(i8* null, %struct.TYPE_8__* @test_AddDefaultForUsage.DefUsage)
  store i64 %30, i64* %1, align 8
  %31 = load i64, i64* %1, align 8
  %32 = icmp ne i64 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %36 = call i64 (...) @GetLastError()
  %37 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i64 (...) @GetLastError()
  %41 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %40)
  %42 = call i32 @memset(%struct.TYPE_8__* @test_AddDefaultForUsage.DefUsage, i32 0, i32 40)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @test_AddDefaultForUsage.DefUsage, i32 0, i32 0), align 8
  store %struct.TYPE_7__* @test_AddDefaultForUsage.ActionID, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @test_AddDefaultForUsage.DefUsage, i32 0, i32 4), align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_AddDefaultForUsage.DummyDllW, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @test_AddDefaultForUsage.DefUsage, i32 0, i32 1), align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_AddDefaultForUsage.DummyFunction, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @test_AddDefaultForUsage.DefUsage, i32 0, i32 2), align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_AddDefaultForUsage.DummyFunction, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @test_AddDefaultForUsage.DefUsage, i32 0, i32 3), align 8
  %43 = call i32 @SetLastError(i32 -559038737)
  %44 = call i64 @pWintrustAddDefaultForUsage(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @test_AddDefaultForUsage.oid, i64 0, i64 0), %struct.TYPE_8__* @test_AddDefaultForUsage.DefUsage)
  store i64 %44, i64* %1, align 8
  %45 = load i64, i64* %1, align 8
  %46 = icmp ne i64 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %50 = call i64 (...) @GetLastError()
  %51 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i64 (...) @GetLastError()
  %55 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %54)
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i64 @pWintrustAddDefaultForUsage(i8*, %struct.TYPE_8__*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
