; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mciwave/extr_mciwave.c_WAVE_mciStop.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mciwave/extr_mciwave.c_WAVE_mciStop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"(%u, %08X, %p);\0A\00", align 1
@MCIERR_INVALID_DEVICE_ID = common dso_local global i64 0, align 8
@MCI_MODE_STOP = common dso_local global i32 0, align 4
@MCI_NOTIFY_ABORTED = common dso_local global i32 0, align 4
@MCI_MODE_NOT_READY = common dso_local global i32 0, align 4
@MCI_NOTIFY = common dso_local global i64 0, align 8
@MMSYSERR_NOERROR = common dso_local global i64 0, align 8
@MCI_NOTIFY_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, %struct.TYPE_8__*)* @WAVE_mciStop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @WAVE_mciStop(i32 %0, i64 %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  store i64 0, i64* %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.TYPE_7__* @WAVE_mciGetOpenDev(i32 %12)
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %9, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %17 = call i32 @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %14, i64 %15, %struct.TYPE_8__* %16)
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %19 = icmp eq %struct.TYPE_7__* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i64, i64* @MCIERR_INVALID_DEVICE_ID, align 8
  store i64 %21, i64* %4, align 8
  br label %104

22:                                               ; preds = %3
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MCI_MODE_STOP, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %22
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 3
  %31 = call i64 @InterlockedExchangePointer(i32* %30, i32* null)
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %10, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load i64, i64* %10, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @MCI_NOTIFY_ABORTED, align 4
  %38 = call i32 @mciDriverNotify(i64 %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %34, %28
  br label %40

40:                                               ; preds = %39, %22
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %80 [
    i32 130, label %44
    i32 129, label %44
    i32 128, label %44
  ]

44:                                               ; preds = %40, %40, %40
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* @MCI_MODE_NOT_READY, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp eq i32 %51, 130
  br i1 %52, label %53, label %70

53:                                               ; preds = %44
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @waveInReset(i32 %61)
  br label %68

63:                                               ; preds = %53
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @waveOutReset(i32 %66)
  br label %68

68:                                               ; preds = %63, %58
  %69 = phi i64 [ %62, %58 ], [ %67, %63 ]
  store i64 %69, i64* %8, align 8
  br label %70

70:                                               ; preds = %68, %44
  br label %71

71:                                               ; preds = %77, %70
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @MCI_MODE_STOP, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = call i32 @Sleep(i32 10)
  br label %71

79:                                               ; preds = %71
  br label %80

80:                                               ; preds = %40, %79
  %81 = load i32, i32* @MCI_MODE_STOP, align 4
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  %84 = load i64, i64* %6, align 8
  %85 = load i64, i64* @MCI_NOTIFY, align 8
  %86 = and i64 %84, %85
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %102

88:                                               ; preds = %80
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %90 = icmp ne %struct.TYPE_8__* %89, null
  br i1 %90, label %91, label %102

91:                                               ; preds = %88
  %92 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %93 = load i64, i64* %8, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %91
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %100 = load i32, i32* @MCI_NOTIFY_SUCCESSFUL, align 4
  %101 = call i32 @WAVE_mciNotify(i32 %98, %struct.TYPE_7__* %99, i32 %100)
  br label %102

102:                                              ; preds = %95, %91, %88, %80
  %103 = load i64, i64* %8, align 8
  store i64 %103, i64* %4, align 8
  br label %104

104:                                              ; preds = %102, %20
  %105 = load i64, i64* %4, align 8
  ret i64 %105
}

declare dso_local %struct.TYPE_7__* @WAVE_mciGetOpenDev(i32) #1

declare dso_local i32 @TRACE(i8*, i32, i64, %struct.TYPE_8__*) #1

declare dso_local i64 @InterlockedExchangePointer(i32*, i32*) #1

declare dso_local i32 @mciDriverNotify(i64, i32, i32) #1

declare dso_local i64 @waveInReset(i32) #1

declare dso_local i64 @waveOutReset(i32) #1

declare dso_local i32 @Sleep(i32) #1

declare dso_local i32 @WAVE_mciNotify(i32, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
