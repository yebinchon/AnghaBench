; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/android/extr_utils.c_SurfaceTexture_waitAndUpdateTexImage.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/android/extr_utils.c_SurfaceTexture_waitAndUpdateTexImage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { float*, i32 }
%struct.TYPE_9__ = type { float* (%struct.TYPE_9__**, i32, i32*)*, i32 (%struct.TYPE_9__**, i32, float*, i32)* }

@.str = private unnamed_addr constant [15 x i8] c"SurfaceTexture\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@JNI_ABORT = common dso_local global i32 0, align 4
@CallBooleanMethod = common dso_local global i32 0, align 4
@waitAndUpdateTexImage = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SurfaceTexture_waitAndUpdateTexImage(%struct.TYPE_10__* %0, float** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca float**, align 8
  %6 = alloca %struct.TYPE_9__**, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store float** %1, float*** %5, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.TYPE_9__** @android_getEnvCommon(i32* null, i32 %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_9__** %11, %struct.TYPE_9__*** %6, align 8
  %12 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %13 = icmp ne %struct.TYPE_9__** %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %15, i32* %3, align 4
  br label %73

16:                                               ; preds = %2
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load float*, float** %19, align 8
  %21 = icmp ne float* %20, null
  br i1 %21, label %22, label %38

22:                                               ; preds = %16
  %23 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load i32 (%struct.TYPE_9__**, i32, float*, i32)*, i32 (%struct.TYPE_9__**, i32, float*, i32)** %25, align 8
  %27 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load float*, float** %34, align 8
  %36 = load i32, i32* @JNI_ABORT, align 4
  %37 = call i32 %26(%struct.TYPE_9__** %27, i32 %31, float* %35, i32 %36)
  br label %38

38:                                               ; preds = %22, %16
  %39 = load i32, i32* @CallBooleanMethod, align 4
  %40 = load i32, i32* @waitAndUpdateTexImage, align 4
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @JNI_STEXCALL(i32 %39, i32 %40, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %68

48:                                               ; preds = %38
  %49 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load float* (%struct.TYPE_9__**, i32, i32*)*, float* (%struct.TYPE_9__**, i32, i32*)** %51, align 8
  %53 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call float* %52(%struct.TYPE_9__** %53, i32 %57, i32* null)
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  store float* %58, float** %61, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load float*, float** %64, align 8
  %66 = load float**, float*** %5, align 8
  store float* %65, float** %66, align 8
  %67 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %67, i32* %3, align 4
  br label %73

68:                                               ; preds = %38
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  store float* null, float** %71, align 8
  %72 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %68, %48, %14
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.TYPE_9__** @android_getEnvCommon(i32*, i32, i8*) #1

declare dso_local i32 @JNI_STEXCALL(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
