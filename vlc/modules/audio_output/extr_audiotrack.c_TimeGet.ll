; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_audiotrack.c_TimeGet.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_audiotrack.c_TimeGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_12__, i32, %struct.TYPE_11__, i64, i64 }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_11__ = type { i64, i64 }

@.str = private unnamed_addr constant [32 x i8] c"timing screwed, reset positions\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i64*)* @TimeGet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TimeGet(%struct.TYPE_13__* %0, i64* noalias %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  store %struct.TYPE_14__* %12, %struct.TYPE_14__** %6, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %87

18:                                               ; preds = %2
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = call i32 @vlc_mutex_lock(i32* %20)
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %18
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = call i32* (...) @GET_ENV()
  store i32* %32, i32** %8, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %31, %26, %18
  br label %83

35:                                               ; preds = %31
  %36 = load i32*, i32** %8, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %38 = call i64 @AudioTrack_GetTimestampPositionUs(i32* %36, %struct.TYPE_13__* %37)
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp sle i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i32*, i32** %8, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %44 = call i64 @AudioTrack_GetSmoothPositionUs(i32* %42, %struct.TYPE_13__* %43)
  store i64 %44, i64* %7, align 8
  br label %45

45:                                               ; preds = %41, %35
  %46 = load i64, i64* %7, align 8
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %82

48:                                               ; preds = %45
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @FRAMES_TO_US(i32 %51)
  %53 = load i64, i64* %7, align 8
  %54 = sub nsw i64 %52, %53
  store i64 %54, i64* %9, align 8
  %55 = load i64, i64* %9, align 8
  %56 = icmp sge i64 %55, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %48
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %61, %65
  %67 = call i64 @BYTES_TO_US(i64 %66)
  %68 = load i64, i64* %9, align 8
  %69 = add nsw i64 %68, %67
  store i64 %69, i64* %9, align 8
  %70 = load i64, i64* %9, align 8
  %71 = load i64*, i64** %5, align 8
  store i64 %70, i64* %71, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = call i32 @vlc_mutex_unlock(i32* %73)
  store i32 0, i32* %3, align 4
  br label %87

75:                                               ; preds = %48
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %77 = call i32 @msg_Warn(%struct.TYPE_13__* %76, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %78 = load i32*, i32** %8, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %80 = call i32 @AudioTrack_ResetPositions(i32* %78, %struct.TYPE_13__* %79)
  br label %81

81:                                               ; preds = %75
  br label %82

82:                                               ; preds = %81, %45
  br label %83

83:                                               ; preds = %82, %34
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = call i32 @vlc_mutex_unlock(i32* %85)
  store i32 -1, i32* %3, align 4
  br label %87

87:                                               ; preds = %83, %57, %17
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32* @GET_ENV(...) #1

declare dso_local i64 @AudioTrack_GetTimestampPositionUs(i32*, %struct.TYPE_13__*) #1

declare dso_local i64 @AudioTrack_GetSmoothPositionUs(i32*, %struct.TYPE_13__*) #1

declare dso_local i64 @FRAMES_TO_US(i32) #1

declare dso_local i64 @BYTES_TO_US(i64) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @AudioTrack_ResetPositions(i32*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
