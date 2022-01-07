; ModuleID = '/home/carl/AnghaBench/vlc/src/audio_output/extr_output.c_aout_Destroy.c'
source_filename = "/home/carl/AnghaBench/vlc/src/audio_output/extr_output.c_aout_Destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32*, i32*, i32* }
%struct.TYPE_12__ = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"viewpoint\00", align 1
@ViewpointCallback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"audio-filter\00", align 1
@FilterCallback = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@var_CopyDevice = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"mute\00", align 1
@var_Copy = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"volume\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"stereo-mode\00", align 1
@StereoModeCallback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aout_Destroy(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %4 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %5 = call %struct.TYPE_12__* @aout_owner(%struct.TYPE_11__* %4)
  store %struct.TYPE_12__* %5, %struct.TYPE_12__** %3, align 8
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %8 = call i32 @vlc_mutex_lock(i32* %7)
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @module_unneed(%struct.TYPE_11__* %9, i32 %12)
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 2
  store i32* null, i32** %15, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  store i32* null, i32** %17, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  store i32* null, i32** %19, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = call i32 @vlc_mutex_unlock(i32* %21)
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %24 = load i32, i32* @ViewpointCallback, align 4
  %25 = call i32 @var_DelCallback(%struct.TYPE_11__* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %24, i32* null)
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %27 = load i32, i32* @FilterCallback, align 4
  %28 = call i32 @var_DelCallback(%struct.TYPE_11__* %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32* null)
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %30 = load i32, i32* @var_CopyDevice, align 4
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %32 = call i32* @vlc_object_parent(%struct.TYPE_11__* %31)
  %33 = call i32 @var_DelCallback(%struct.TYPE_11__* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %30, i32* %32)
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %35 = load i32, i32* @var_Copy, align 4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %37 = call i32* @vlc_object_parent(%struct.TYPE_11__* %36)
  %38 = call i32 @var_DelCallback(%struct.TYPE_11__* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %35, i32* %37)
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %40 = call i32 @var_SetFloat(%struct.TYPE_11__* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), float -1.000000e+00)
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %42 = load i32, i32* @var_Copy, align 4
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %44 = call i32* @vlc_object_parent(%struct.TYPE_11__* %43)
  %45 = call i32 @var_DelCallback(%struct.TYPE_11__* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %42, i32* %44)
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %47 = load i32, i32* @StereoModeCallback, align 4
  %48 = call i32 @var_DelCallback(%struct.TYPE_11__* %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %47, i32* null)
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %50 = call i32 @aout_Release(%struct.TYPE_11__* %49)
  ret void
}

declare dso_local %struct.TYPE_12__* @aout_owner(%struct.TYPE_11__*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @module_unneed(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @var_DelCallback(%struct.TYPE_11__*, i8*, i32, i32*) #1

declare dso_local i32* @vlc_object_parent(%struct.TYPE_11__*) #1

declare dso_local i32 @var_SetFloat(%struct.TYPE_11__*, i8*, float) #1

declare dso_local i32 @aout_Release(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
