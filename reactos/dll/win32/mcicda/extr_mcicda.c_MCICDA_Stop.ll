; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mcicda/extr_mcicda.c_MCICDA_Stop.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mcicda/extr_mcicda.c_MCICDA_Stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, i64, i32, i32*, i32*, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"(%04X, %08X, %p);\0A\00", align 1
@MCIERR_INVALID_DEVICE_ID = common dso_local global i32 0, align 4
@MCI_NOTIFY_ABORTED = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i32 0, align 4
@IOCTL_CDROM_STOP_AUDIO = common dso_local global i32 0, align 4
@MCIERR_HARDWARE = common dso_local global i32 0, align 4
@MCI_NOTIFY = common dso_local global i32 0, align 4
@MCI_NOTIFY_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.TYPE_8__*)* @MCICDA_Stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MCICDA_Stop(i32 %0, i32 %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.TYPE_7__* @MCICDA_GetOpenDrv(i32 %11)
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %8, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %16 = call i32 @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14, %struct.TYPE_8__* %15)
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %18 = icmp eq %struct.TYPE_7__* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @MCIERR_INVALID_DEVICE_ID, align 4
  store i32 %20, i32* %4, align 4
  br label %99

21:                                               ; preds = %3
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 6
  %24 = call i64 @InterlockedExchangePointer(i32* %23, i32* null)
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %9, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load i64, i64* %9, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @MCI_NOTIFY_ABORTED, align 4
  %33 = call i32 @mciDriverNotify(i64 %28, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %27, %21
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %73

39:                                               ; preds = %34
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @SetEvent(i64 %42)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* @INFINITE, align 4
  %48 = call i32 @WaitForSingleObject(i64 %46, i32 %47)
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @CloseHandle(i64 %51)
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @CloseHandle(i64 %57)
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  store i64 0, i64* %60, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 4
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @IDirectSoundBuffer_Release(i32* %63)
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 4
  store i32* null, i32** %66, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @IDirectSound_Release(i32* %69)
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 3
  store i32* null, i32** %72, align 8
  br label %83

73:                                               ; preds = %34
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @IOCTL_CDROM_STOP_AUDIO, align 4
  %78 = call i32 @device_io(i32 %76, i32 %77, i32* null, i32 0, i32* null, i32 0, i32* %10, i32* null)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %73
  %81 = load i32, i32* @MCIERR_HARDWARE, align 4
  store i32 %81, i32* %4, align 4
  br label %99

82:                                               ; preds = %73
  br label %83

83:                                               ; preds = %82, %39
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @MCI_NOTIFY, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %83
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %90 = icmp ne %struct.TYPE_8__* %89, null
  br i1 %90, label %91, label %98

91:                                               ; preds = %88
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %96 = load i32, i32* @MCI_NOTIFY_SUCCESSFUL, align 4
  %97 = call i32 @MCICDA_Notify(i32 %94, %struct.TYPE_7__* %95, i32 %96)
  br label %98

98:                                               ; preds = %91, %88, %83
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %98, %80, %19
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local %struct.TYPE_7__* @MCICDA_GetOpenDrv(i32) #1

declare dso_local i32 @TRACE(i8*, i32, i32, %struct.TYPE_8__*) #1

declare dso_local i64 @InterlockedExchangePointer(i32*, i32*) #1

declare dso_local i32 @mciDriverNotify(i64, i32, i32) #1

declare dso_local i32 @SetEvent(i64) #1

declare dso_local i32 @WaitForSingleObject(i64, i32) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i32 @IDirectSoundBuffer_Release(i32*) #1

declare dso_local i32 @IDirectSound_Release(i32*) #1

declare dso_local i32 @device_io(i32, i32, i32*, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @MCICDA_Notify(i32, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
