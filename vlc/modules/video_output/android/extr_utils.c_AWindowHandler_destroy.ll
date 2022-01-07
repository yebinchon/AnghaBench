; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/android/extr_utils.c_AWindowHandler_destroy.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/android/extr_utils.c_AWindowHandler_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__, i64, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_13__**, i32)* }

@CallVoidMethod = common dso_local global i32 0, align 4
@unregisterNative = common dso_local global i32 0, align 4
@AWindow_Video = common dso_local global i32 0, align 4
@AWindow_Subtitles = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AWindowHandler_destroy(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_13__**, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %4 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %5 = call %struct.TYPE_13__** @AWindowHandler_getEnv(%struct.TYPE_14__* %4)
  store %struct.TYPE_13__** %5, %struct.TYPE_13__*** %3, align 8
  %6 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %3, align 8
  %7 = icmp ne %struct.TYPE_13__** %6, null
  br i1 %7, label %8, label %29

8:                                                ; preds = %1
  %9 = load i32, i32* @CallVoidMethod, align 4
  %10 = load i32, i32* @unregisterNative, align 4
  %11 = call i32 @JNI_ANWCALL(i32 %9, i32 %10)
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %13 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %3, align 8
  %14 = load i32, i32* @AWindow_Video, align 4
  %15 = call i32 @AWindowHandler_releaseANativeWindowEnv(%struct.TYPE_14__* %12, %struct.TYPE_13__** %13, i32 %14)
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %17 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %3, align 8
  %18 = load i32, i32* @AWindow_Subtitles, align 4
  %19 = call i32 @AWindowHandler_releaseANativeWindowEnv(%struct.TYPE_14__* %16, %struct.TYPE_13__** %17, i32 %18)
  %20 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %3, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i32 (%struct.TYPE_13__**, i32)*, i32 (%struct.TYPE_13__**, i32)** %22, align 8
  %24 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %3, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 %23(%struct.TYPE_13__** %24, i32 %27)
  br label %29

29:                                               ; preds = %8, %1
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @dlclose(i64 %37)
  br label %39

39:                                               ; preds = %34, %29
  %40 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %3, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i32 (%struct.TYPE_13__**, i32)*, i32 (%struct.TYPE_13__**, i32)** %42, align 8
  %44 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %3, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 %43(%struct.TYPE_13__** %44, i32 %48)
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %51 = call i32 @free(%struct.TYPE_14__* %50)
  ret void
}

declare dso_local %struct.TYPE_13__** @AWindowHandler_getEnv(%struct.TYPE_14__*) #1

declare dso_local i32 @JNI_ANWCALL(i32, i32) #1

declare dso_local i32 @AWindowHandler_releaseANativeWindowEnv(%struct.TYPE_14__*, %struct.TYPE_13__**, i32) #1

declare dso_local i32 @dlclose(i64) #1

declare dso_local i32 @free(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
