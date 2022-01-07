; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mcicda/extr_mcicda.c_MCICDA_Resume.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mcicda/extr_mcicda.c_MCICDA_Resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"(%04X, %08X, %p);\0A\00", align 1
@MCIERR_INVALID_DEVICE_ID = common dso_local global i32 0, align 4
@WAIT_OBJECT_0 = common dso_local global i64 0, align 8
@DSBPLAY_LOOPING = common dso_local global i32 0, align 4
@MCIERR_HARDWARE = common dso_local global i32 0, align 4
@IOCTL_CDROM_RESUME_AUDIO = common dso_local global i32 0, align 4
@MCI_NOTIFY = common dso_local global i32 0, align 4
@MCI_NOTIFY_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.TYPE_8__*)* @MCICDA_Resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MCICDA_Resume(i32 %0, i32 %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.TYPE_7__* @MCICDA_GetOpenDrv(i32 %10)
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %15 = call i32 @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13, %struct.TYPE_8__* %14)
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %17 = icmp eq %struct.TYPE_7__* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @MCIERR_INVALID_DEVICE_ID, align 4
  store i32 %19, i32* %4, align 4
  br label %69

20:                                               ; preds = %3
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %20
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @WaitForSingleObject(i32 %28, i32 0)
  %30 = load i64, i64* @WAIT_OBJECT_0, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %25
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @DSBPLAY_LOOPING, align 4
  %37 = call i32 @IDirectSoundBuffer_Play(i32 %35, i32 0, i32 0, i32 %36)
  %38 = call i64 @FAILED(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @MCIERR_HARDWARE, align 4
  store i32 %41, i32* %4, align 4
  br label %69

42:                                               ; preds = %32, %25
  br label %53

43:                                               ; preds = %20
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @IOCTL_CDROM_RESUME_AUDIO, align 4
  %48 = call i32 @device_io(i32 %46, i32 %47, i32* null, i32 0, i32* null, i32 0, i32* %9, i32* null)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %43
  %51 = load i32, i32* @MCIERR_HARDWARE, align 4
  store i32 %51, i32* %4, align 4
  br label %69

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %42
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @MCI_NOTIFY, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %53
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %60 = icmp ne %struct.TYPE_8__* %59, null
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %66 = load i32, i32* @MCI_NOTIFY_SUCCESSFUL, align 4
  %67 = call i32 @MCICDA_Notify(i32 %64, %struct.TYPE_7__* %65, i32 %66)
  br label %68

68:                                               ; preds = %61, %58, %53
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %50, %40, %18
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.TYPE_7__* @MCICDA_GetOpenDrv(i32) #1

declare dso_local i32 @TRACE(i8*, i32, i32, %struct.TYPE_8__*) #1

declare dso_local i64 @WaitForSingleObject(i32, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IDirectSoundBuffer_Play(i32, i32, i32, i32) #1

declare dso_local i32 @device_io(i32, i32, i32*, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @MCICDA_Notify(i32, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
