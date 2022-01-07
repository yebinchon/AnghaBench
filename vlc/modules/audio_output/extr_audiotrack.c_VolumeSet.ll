; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_audiotrack.c_VolumeSet.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_audiotrack.c_VolumeSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { float, i32*, i32 }

@jfields = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@setVolume = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"setVolume\00", align 1
@setStereoVolume = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"setStereoVolume\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, float)* @VolumeSet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @VolumeSet(%struct.TYPE_9__* %0, float %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca float, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca float, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store float %1, float* %4, align 4
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %10, %struct.TYPE_10__** %5, align 8
  store float 1.000000e+00, float* %7, align 4
  %11 = load float, float* %4, align 4
  %12 = fcmp ogt float %11, 1.000000e+00
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  store float 1.000000e+00, float* %15, align 8
  %16 = load float, float* %4, align 4
  store float %16, float* %7, align 4
  br label %21

17:                                               ; preds = %2
  %18 = load float, float* %4, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  store float %18, float* %20, align 8
  br label %21

21:                                               ; preds = %17, %13
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %50, label %26

26:                                               ; preds = %21
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %50

31:                                               ; preds = %26
  %32 = call i32* (...) @GET_ENV()
  store i32* %32, i32** %6, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %50

34:                                               ; preds = %31
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @jfields, i32 0, i32 0, i32 0), align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i32, i32* @setVolume, align 4
  %39 = load float, float* %4, align 4
  %40 = call i32 (i32, float, ...) @JNI_AT_CALL_INT(i32 %38, float %39)
  %41 = call i32 @CHECK_AT_EXCEPTION(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %49

42:                                               ; preds = %34
  %43 = load i32, i32* @setStereoVolume, align 4
  %44 = load float, float* %4, align 4
  %45 = load float, float* %4, align 4
  %46 = fpext float %45 to double
  %47 = call i32 (i32, float, ...) @JNI_AT_CALL_INT(i32 %43, float %44, double %46)
  %48 = call i32 @CHECK_AT_EXCEPTION(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %42, %37
  br label %50

50:                                               ; preds = %49, %31, %26, %21
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %52 = load float, float* %4, align 4
  %53 = call i32 @aout_VolumeReport(%struct.TYPE_9__* %51, float %52)
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %55 = load float, float* %7, align 4
  %56 = load float, float* %7, align 4
  %57 = fmul float %55, %56
  %58 = load float, float* %7, align 4
  %59 = fmul float %57, %58
  %60 = call i32 @aout_GainRequest(%struct.TYPE_9__* %54, float %59)
  ret i32 0
}

declare dso_local i32* @GET_ENV(...) #1

declare dso_local i32 @JNI_AT_CALL_INT(i32, float, ...) #1

declare dso_local i32 @CHECK_AT_EXCEPTION(i8*) #1

declare dso_local i32 @aout_VolumeReport(%struct.TYPE_9__*, float) #1

declare dso_local i32 @aout_GainRequest(%struct.TYPE_9__*, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
