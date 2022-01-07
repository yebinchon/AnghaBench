; ModuleID = '/home/carl/AnghaBench/vlc/src/video_output/extr_video_widgets.c_OSDWidget.c'
source_filename = "/home/carl/AnghaBench/vlc/src/video_output/extr_video_widgets.c_OSDWidget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_11__*, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [4 x i8] c"osd\00", align 1
@OSD_HOR_SLIDER = common dso_local global i32 0, align 4
@OSD_VERT_SLIDER = common dso_local global i32 0, align 4
@OSDWidgetDestroy = common dso_local global i32 0, align 4
@OSDWidgetUpdate = common dso_local global i32 0, align 4
@OSDWidgetValidate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32)* @OSDWidget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @OSDWidget(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_9__, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @var_InheritBool(i32* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  br label %76

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @OSD_HOR_SLIDER, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @OSD_VERT_SLIDER, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20, %16
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @VLC_CLIP(i32 %25, i32 0, i32 100)
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %24, %20
  %28 = call %struct.TYPE_11__* @malloc(i32 8)
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %9, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %30 = icmp ne %struct.TYPE_11__* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  br label %76

32:                                               ; preds = %27
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_11__* %40, %struct.TYPE_11__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %42 = load i32, i32* @OSDWidgetDestroy, align 4
  store i32 %42, i32* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %44 = load i32, i32* @OSDWidgetUpdate, align 4
  store i32 %44, i32* %43, align 4
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 3
  %46 = load i32, i32* @OSDWidgetValidate, align 4
  store i32 %46, i32* %45, align 8
  %47 = call %struct.TYPE_10__* @subpicture_New(%struct.TYPE_9__* %10)
  store %struct.TYPE_10__* %47, %struct.TYPE_10__** %11, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %49 = icmp ne %struct.TYPE_10__* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %32
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %52 = call i32 @free(%struct.TYPE_11__* %51)
  br label %76

53:                                               ; preds = %32
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = call i64 (...) @vlc_tick_now()
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 4
  store i64 %57, i64* %59, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = call i64 @VLC_TICK_FROM_MS(i32 1200)
  %64 = add nsw i64 %62, %63
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 5
  store i64 %64, i64* %66, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  store i32 1, i32* %68, align 4
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 2
  store i32 1, i32* %70, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 3
  store i32 1, i32* %72, align 4
  %73 = load i32*, i32** %5, align 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %75 = call i32 @vout_PutSubpicture(i32* %73, %struct.TYPE_10__* %74)
  br label %76

76:                                               ; preds = %53, %50, %31, %15
  ret void
}

declare dso_local i32 @var_InheritBool(i32*, i8*) #1

declare dso_local i32 @VLC_CLIP(i32, i32, i32) #1

declare dso_local %struct.TYPE_11__* @malloc(i32) #1

declare dso_local %struct.TYPE_10__* @subpicture_New(%struct.TYPE_9__*) #1

declare dso_local i32 @free(%struct.TYPE_11__*) #1

declare dso_local i64 @vlc_tick_now(...) #1

declare dso_local i64 @VLC_TICK_FROM_MS(i32) #1

declare dso_local i32 @vout_PutSubpicture(i32*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
