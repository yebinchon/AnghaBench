; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/android/extr_utils.c_SurfaceTexture_detachFromGLContext.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/android/extr_utils.c_SurfaceTexture_detachFromGLContext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32*, i32 }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_10__**, i32, i32*, i32)* }

@.str = private unnamed_addr constant [15 x i8] c"SurfaceTexture\00", align 1
@CallVoidMethod = common dso_local global i32 0, align 4
@detachFromGLContext = common dso_local global i32 0, align 4
@AWindow_SurfaceTexture = common dso_local global i32 0, align 4
@JNI_ABORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SurfaceTexture_detachFromGLContext(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_10__**, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %4 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = call %struct.TYPE_10__** @android_getEnvCommon(i32* null, i32 %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_10__** %7, %struct.TYPE_10__*** %3, align 8
  %8 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %3, align 8
  %9 = icmp ne %struct.TYPE_10__** %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %43

11:                                               ; preds = %1
  %12 = load i32, i32* @CallVoidMethod, align 4
  %13 = load i32, i32* @detachFromGLContext, align 4
  %14 = call i32 @JNI_STEXCALL(i32 %12, i32 %13)
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %16 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %3, align 8
  %17 = load i32, i32* @AWindow_SurfaceTexture, align 4
  %18 = call i32 @AWindowHandler_releaseANativeWindowEnv(%struct.TYPE_11__* %15, %struct.TYPE_10__** %16, i32 %17)
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %43

24:                                               ; preds = %11
  %25 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %3, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32 (%struct.TYPE_10__**, i32, i32*, i32)*, i32 (%struct.TYPE_10__**, i32, i32*, i32)** %27, align 8
  %29 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %3, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* @JNI_ABORT, align 4
  %39 = call i32 %28(%struct.TYPE_10__** %29, i32 %33, i32* %37, i32 %38)
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  store i32* null, i32** %42, align 8
  br label %43

43:                                               ; preds = %10, %24, %11
  ret void
}

declare dso_local %struct.TYPE_10__** @android_getEnvCommon(i32*, i32, i8*) #1

declare dso_local i32 @JNI_STEXCALL(i32, i32) #1

declare dso_local i32 @AWindowHandler_releaseANativeWindowEnv(%struct.TYPE_11__*, %struct.TYPE_10__**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
