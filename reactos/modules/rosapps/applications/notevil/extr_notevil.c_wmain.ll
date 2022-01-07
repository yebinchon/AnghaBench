; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/notevil/extr_notevil.c_wmain.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/notevil/extr_notevil.c_wmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }

@myself = common dso_local global i32 0, align 4
@STD_OUTPUT_HANDLE = common dso_local global i32 0, align 4
@ScreenBufferInfo = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@CONSOLE_TEXTMODE_BUFFER = common dso_local global i32 0, align 4
@ScreenBuffer = common dso_local global i64 0, align 8
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i32] [i32 37, i32 115, i32 58, i32 32, i32 99, i32 111, i32 117, i32 108, i32 100, i32 32, i32 110, i32 111, i32 116, i32 32, i32 99, i32 114, i32 101, i32 97, i32 116, i32 101, i32 32, i32 97, i32 32, i32 110, i32 101, i32 119, i32 32, i32 115, i32 99, i32 114, i32 101, i32 101, i32 110, i32 32, i32 98, i32 117, i32 102, i32 102, i32 101, i32 114, i32 10, i32 0], align 4
@app_name = common dso_local global i8* null, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@WaitableTimer = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i32] [i32 67, i32 114, i32 101, i32 97, i32 116, i32 101, i32 87, i32 97, i32 105, i32 116, i32 97, i32 98, i32 108, i32 101, i32 116, i32 105, i32 109, i32 101, i32 114, i32 40, i32 41, i32 32, i32 102, i32 97, i32 105, i32 108, i32 101, i32 100, i32 10, i32 0], align 4
@.str.2 = private unnamed_addr constant [34 x i32] [i32 83, i32 101, i32 116, i32 87, i32 97, i32 105, i32 116, i32 97, i32 98, i32 108, i32 101, i32 84, i32 105, i32 109, i32 101, i32 114, i32 40, i32 41, i32 32, i32 102, i32 97, i32 105, i32 108, i32 101, i32 100, i32 58, i32 32, i32 48, i32 120, i32 37, i32 108, i32 120, i32 10, i32 0], align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wmain(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca %struct.TYPE_11__, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__, align 4
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  %9 = bitcast %struct.TYPE_12__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 8, i1 false)
  %10 = call i32 @GetModuleHandle(i32* null)
  store i32 %10, i32* @myself, align 4
  %11 = load i32, i32* @STD_OUTPUT_HANDLE, align 4
  %12 = call i32 @GetStdHandle(i32 %11)
  %13 = call i32 @GetConsoleScreenBufferInfo(i32 %12, %struct.TYPE_13__* @ScreenBufferInfo)
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ScreenBufferInfo, i32 0, i32 1, i32 0), align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ScreenBufferInfo, i32 0, i32 1, i32 1), align 4
  %16 = sub nsw i32 %14, %15
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ScreenBufferInfo, i32 0, i32 0, i32 0), align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ScreenBufferInfo, i32 0, i32 1, i32 2), align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ScreenBufferInfo, i32 0, i32 1, i32 3), align 4
  %20 = sub nsw i32 %18, %19
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ScreenBufferInfo, i32 0, i32 0, i32 1), align 4
  %22 = load i32, i32* @GENERIC_WRITE, align 4
  %23 = load i32, i32* @CONSOLE_TEXTMODE_BUFFER, align 4
  %24 = call i64 @CreateConsoleScreenBuffer(i32 %22, i32 0, i32* null, i32 %23, i32* null)
  store i64 %24, i64* @ScreenBuffer, align 8
  %25 = load i64, i64* @ScreenBuffer, align 8
  %26 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load i8*, i8** @app_name, align 8
  %30 = call i32 (i8*, ...) @wprintf(i8* bitcast ([42 x i32]* @.str to i8*), i8* %29)
  %31 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %31, i32* %3, align 4
  br label %63

32:                                               ; preds = %2
  %33 = load i64, i64* @ScreenBuffer, align 8
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ScreenBufferInfo, i32 0, i32 0, i32 0), align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ScreenBufferInfo, i32 0, i32 0, i32 1), align 4
  %36 = mul nsw i32 %34, %35
  %37 = bitcast %struct.TYPE_12__* %8 to i64*
  %38 = load i64, i64* %37, align 4
  %39 = call i32 @FillConsoleOutputAttribute(i64 %33, i32 0, i32 %36, i64 %38, i32* %7)
  %40 = load i32, i32* @FALSE, align 4
  %41 = call i64 @CreateWaitableTimer(i32* null, i32 %40, i32* null)
  store i64 %41, i64* @WaitableTimer, align 8
  %42 = load i64, i64* @WaitableTimer, align 8
  %43 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %32
  %46 = call i32 (i8*, ...) @wprintf(i8* bitcast ([30 x i32]* @.str.1 to i8*))
  store i32 1, i32* %3, align 4
  br label %63

47:                                               ; preds = %32
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  store i32 -2000000, i32* %48, align 4
  %49 = load i64, i64* @WaitableTimer, align 8
  %50 = load i32, i32* @FALSE, align 4
  %51 = call i32 @SetWaitableTimer(i64 %49, %struct.TYPE_11__* %6, i32 200, i32* null, i32* null, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %47
  %54 = call i8* (...) @GetLastError()
  %55 = call i32 (i8*, ...) @wprintf(i8* bitcast ([34 x i32]* @.str.2 to i8*), i8* %54)
  store i32 2, i32* %3, align 4
  br label %63

56:                                               ; preds = %47
  %57 = load i64, i64* @ScreenBuffer, align 8
  %58 = call i32 @SetConsoleActiveScreenBuffer(i64 %57)
  %59 = call i32 (...) @MainLoop()
  %60 = load i64, i64* @ScreenBuffer, align 8
  %61 = call i32 @CloseHandle(i64 %60)
  %62 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %56, %53, %45, %28
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @GetModuleHandle(i32*) #2

declare dso_local i32 @GetConsoleScreenBufferInfo(i32, %struct.TYPE_13__*) #2

declare dso_local i32 @GetStdHandle(i32) #2

declare dso_local i64 @CreateConsoleScreenBuffer(i32, i32, i32*, i32, i32*) #2

declare dso_local i32 @wprintf(i8*, ...) #2

declare dso_local i32 @FillConsoleOutputAttribute(i64, i32, i32, i64, i32*) #2

declare dso_local i64 @CreateWaitableTimer(i32*, i32, i32*) #2

declare dso_local i32 @SetWaitableTimer(i64, %struct.TYPE_11__*, i32, i32*, i32*, i32) #2

declare dso_local i8* @GetLastError(...) #2

declare dso_local i32 @SetConsoleActiveScreenBuffer(i64) #2

declare dso_local i32 @MainLoop(...) #2

declare dso_local i32 @CloseHandle(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
