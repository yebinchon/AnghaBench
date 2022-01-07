; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mmdrv/extr_kernel.c_GetDeviceData.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mmdrv/extr_kernel.c_GetDeviceData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"GetDeviceData\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@MMSYSERR_NOMEM = common dso_local global i32 0, align 4
@ERROR_IO_PENDING = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@WAIT_IO_COMPLETION = common dso_local global i64 0, align 8
@MMSYSERR_NOERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetDeviceData(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = call i32 @DPRINT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @memset(%struct.TYPE_5__* %10, i32 0, i32 4)
  %16 = load i32, i32* @FALSE, align 4
  %17 = load i32, i32* @FALSE, align 4
  %18 = call i32 @CreateEvent(i32* null, i32 %16, i32 %17, i32* null)
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @MMSYSERR_NOMEM, align 4
  store i32 %24, i32* %5, align 4
  br label %77

25:                                               ; preds = %4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @DeviceIoControl(i32 %26, i32 %27, i32* null, i32 0, i32 %28, i32 %29, i32* %11, %struct.TYPE_5__* %10)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %56, label %33

33:                                               ; preds = %25
  %34 = call i64 (...) @GetLastError()
  %35 = load i64, i64* @ERROR_IO_PENDING, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = load i64, i64* @TRUE, align 8
  %40 = call i32 @GetOverlappedResult(i32 %38, %struct.TYPE_5__* %10, i32* %13, i64 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @CloseHandle(i32 %44)
  %46 = call i64 (...) @GetLastError()
  %47 = call i32 @ErrorToMmResult(i64 %46)
  store i32 %47, i32* %5, align 4
  br label %77

48:                                               ; preds = %37
  br label %55

49:                                               ; preds = %33
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @CloseHandle(i32 %51)
  %53 = call i64 (...) @GetLastError()
  %54 = call i32 @ErrorToMmResult(i64 %53)
  store i32 %54, i32* %5, align 4
  br label %77

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55, %25
  br label %57

57:                                               ; preds = %71, %56
  %58 = load i64, i64* @TRUE, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @SetEvent(i32 %62)
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i64, i64* @TRUE, align 8
  %67 = call i64 @WaitForSingleObjectEx(i32 %65, i32 0, i64 %66)
  %68 = load i64, i64* @WAIT_IO_COMPLETION, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %60
  br label %72

71:                                               ; preds = %60
  br label %57

72:                                               ; preds = %70, %57
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @CloseHandle(i32 %74)
  %76 = load i32, i32* @MMSYSERR_NOERROR, align 4
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %72, %49, %42, %23
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @CreateEvent(i32*, i32, i32, i32*) #1

declare dso_local i32 @DeviceIoControl(i32, i32, i32*, i32, i32, i32, i32*, %struct.TYPE_5__*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @GetOverlappedResult(i32, %struct.TYPE_5__*, i32*, i64) #1

declare dso_local i32 @CloseHandle(i32) #1

declare dso_local i32 @ErrorToMmResult(i64) #1

declare dso_local i32 @SetEvent(i32) #1

declare dso_local i64 @WaitForSingleObjectEx(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
