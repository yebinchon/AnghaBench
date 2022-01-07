; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_pulse.c_VolumeSet.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_pulse.c_VolumeSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, i64, i32* }
%struct.TYPE_8__ = type { i32 }

@PA_VOLUME_NORM = common dso_local global float 0.000000e+00, align 4
@PA_VOLUME_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"balance clobbered by volume change\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, float)* @VolumeSet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @VolumeSet(%struct.TYPE_9__* %0, float %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca float, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store float %1, float* %5, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %6, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 4
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %7, align 8
  %18 = load float, float* @PA_VOLUME_NORM, align 4
  %19 = load float, float* %5, align 4
  %20 = fmul float %19, %18
  store float %20, float* %5, align 4
  %21 = load float, float* %5, align 4
  %22 = load i64, i64* @PA_VOLUME_MAX, align 8
  %23 = sitofp i64 %22 to float
  %24 = fcmp oge float %21, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i64, i64* @PA_VOLUME_MAX, align 8
  store i64 %29, i64* %9, align 8
  br label %33

30:                                               ; preds = %2
  %31 = load float, float* %5, align 4
  %32 = call i64 @lroundf(float %31) #3
  store i64 %32, i64* %9, align 8
  br label %33

33:                                               ; preds = %30, %28
  %34 = load i32*, i32** %7, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load i64, i64* %9, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 3
  store i64 %37, i64* %39, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %41 = load i64, i64* %9, align 8
  %42 = sitofp i64 %41 to float
  %43 = load float, float* @PA_VOLUME_NORM, align 4
  %44 = fdiv float %42, %43
  %45 = call i32 @aout_VolumeReport(%struct.TYPE_9__* %40, float %44)
  store i32 0, i32* %3, align 4
  br label %103

46:                                               ; preds = %33
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @pa_threaded_mainloop_lock(i32 %49)
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  %53 = call i32 @pa_cvolume_valid(i32* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %46
  %56 = load i32*, i32** %7, align 8
  %57 = call %struct.TYPE_8__* @pa_stream_get_sample_spec(i32* %56)
  store %struct.TYPE_8__* %57, %struct.TYPE_8__** %10, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %59 = call i32 @msg_Warn(%struct.TYPE_9__* %58, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load float, float* @PA_VOLUME_NORM, align 4
  %66 = call i32 @pa_cvolume_set(i32* %61, i32 %64, float %65)
  br label %67

67:                                               ; preds = %55, %46
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %11, align 4
  %71 = load float, float* @PA_VOLUME_NORM, align 4
  %72 = call i32 @pa_cvolume_scale(i32* %11, float %71)
  %73 = load i64, i64* %9, align 8
  %74 = call i32 @pa_sw_cvolume_multiply_scalar(i32* %11, i32* %11, i64 %73)
  %75 = call i32 @pa_cvolume_valid(i32* %11)
  %76 = call i32 @assert(i32 %75)
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %7, align 8
  %81 = call i32 @pa_stream_get_index(i32* %80)
  %82 = call i32* @pa_context_set_sink_input_volume(i32 %79, i32 %81, i32* %11, i32* null, i32* null)
  store i32* %82, i32** %8, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = icmp ne i32* %83, null
  %85 = zext i1 %84 to i32
  %86 = call i64 @likely(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %67
  %89 = load i32*, i32** %8, align 8
  %90 = call i32 @pa_operation_unref(i32* %89)
  br label %91

91:                                               ; preds = %88, %67
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @pa_threaded_mainloop_unlock(i32 %94)
  %96 = load i32*, i32** %8, align 8
  %97 = icmp ne i32* %96, null
  %98 = zext i1 %97 to i32
  %99 = call i64 @likely(i32 %98)
  %100 = icmp ne i64 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i32 0, i32 -1
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %91, %36
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i64 @unlikely(i32) #1

; Function Attrs: nounwind
declare dso_local i64 @lroundf(float) #2

declare dso_local i32 @aout_VolumeReport(%struct.TYPE_9__*, float) #1

declare dso_local i32 @pa_threaded_mainloop_lock(i32) #1

declare dso_local i32 @pa_cvolume_valid(i32*) #1

declare dso_local %struct.TYPE_8__* @pa_stream_get_sample_spec(i32*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @pa_cvolume_set(i32*, i32, float) #1

declare dso_local i32 @pa_cvolume_scale(i32*, float) #1

declare dso_local i32 @pa_sw_cvolume_multiply_scalar(i32*, i32*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @pa_context_set_sink_input_volume(i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @pa_stream_get_index(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @pa_operation_unref(i32*) #1

declare dso_local i32 @pa_threaded_mainloop_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
