; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_comm.c_test_ReadTimeOut.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_comm.c_test_ReadTimeOut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"GetCommState failed\0A\00", align 1
@FASTBAUD = common dso_local global i32 0, align 4
@NOPARITY = common dso_local global i32 0, align 4
@RTS_CONTROL_ENABLE = common dso_local global i32 0, align 4
@DTR_CONTROL_ENABLE = common dso_local global i32 0, align 4
@ONESTOPBIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"SetCommState failed\0A\00", align 1
@TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"SetCommTimeouts failed\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"A timed-out read should return TRUE\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"err=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Unexpected TimeOut %d, expected %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ReadTimeOut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ReadTimeOut() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_7__, align 4
  %3 = alloca %struct.TYPE_8__, align 4
  %4 = alloca [32 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = load i32, i32* @FALSE, align 4
  %12 = call i64 @test_OpenComm(i32 %11)
  store i64 %12, i64* %1, align 8
  %13 = load i64, i64* %1, align 8
  %14 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %0
  br label %80

17:                                               ; preds = %0
  %18 = load i64, i64* %1, align 8
  %19 = call i32 @test_GetModemStatus(i64 %18)
  %20 = load i64, i64* %1, align 8
  %21 = call i32 @GetCommState(i64 %20, %struct.TYPE_7__* %2)
  %22 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @FASTBAUD, align 4
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 5
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  store i32 8, i32* %25, align 4
  %26 = load i32, i32* @NOPARITY, align 4
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 4
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @RTS_CONTROL_ENABLE, align 4
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 3
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @DTR_CONTROL_ENABLE, align 4
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 2
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @ONESTOPBIT, align 4
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = load i64, i64* %1, align 8
  %35 = call i32 @SetCommState(i64 %34, %struct.TYPE_7__* %2)
  %36 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %37 = call i32 @ZeroMemory(%struct.TYPE_8__* %3, i32 4)
  %38 = load i32, i32* @TIMEOUT, align 4
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = load i64, i64* %1, align 8
  %41 = call i32 @SetCommTimeouts(i64 %40, %struct.TYPE_8__* %3)
  %42 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %43 = call i32 (...) @GetTickCount()
  store i32 %43, i32* %5, align 4
  %44 = call i32 @SetLastError(i32 -559038737)
  %45 = load i64, i64* %1, align 8
  %46 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %47 = call i64 @ReadFile(i64 %45, i8* %46, i32 32, i32* %7, i32* null)
  store i64 %47, i64* %10, align 8
  %48 = call i32 (...) @GetLastError()
  store i32 %48, i32* %9, align 4
  %49 = call i32 (...) @GetTickCount()
  store i32 %49, i32* %6, align 4
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* @TRUE, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %55 = load i32, i32* %9, align 4
  %56 = icmp eq i32 %55, -559038737
  %57 = zext i1 %56 to i32
  %58 = load i32, i32* %9, align 4
  %59 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %5, align 4
  %62 = sub nsw i32 %60, %61
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @TIMEOUT, align 4
  %65 = ashr i32 %64, 2
  %66 = icmp sgt i32 %63, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %17
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @TIMEOUT, align 4
  %70 = mul nsw i32 %69, 2
  %71 = icmp slt i32 %68, %70
  br label %72

72:                                               ; preds = %67, %17
  %73 = phi i1 [ false, %17 ], [ %71, %67 ]
  %74 = zext i1 %73 to i32
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @TIMEOUT, align 4
  %77 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %75, i32 %76)
  %78 = load i64, i64* %1, align 8
  %79 = call i32 @CloseHandle(i64 %78)
  br label %80

80:                                               ; preds = %72, %16
  ret void
}

declare dso_local i64 @test_OpenComm(i32) #1

declare dso_local i32 @test_GetModemStatus(i64) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetCommState(i64, %struct.TYPE_7__*) #1

declare dso_local i32 @SetCommState(i64, %struct.TYPE_7__*) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @SetCommTimeouts(i64, %struct.TYPE_8__*) #1

declare dso_local i32 @GetTickCount(...) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i64 @ReadFile(i64, i8*, i32, i32*, i32*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @CloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
