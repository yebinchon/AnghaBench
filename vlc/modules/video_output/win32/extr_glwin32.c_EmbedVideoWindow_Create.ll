; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_glwin32.c_EmbedVideoWindow_Create.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_glwin32.c_EmbedVideoWindow_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@VOUT_WINDOW_TYPE_HWND = common dso_local global i32 0, align 4
@embedVideoWindow_Ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (%struct.TYPE_13__*)* @EmbedVideoWindow_Create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @EmbedVideoWindow_Create(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %6 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_14__* %8, %struct.TYPE_14__** %4, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %10 = call %struct.TYPE_12__* @vlc_object_create(%struct.TYPE_13__* %9, i32 16)
  store %struct.TYPE_12__* %10, %struct.TYPE_12__** %5, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %12 = icmp ne %struct.TYPE_12__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %2, align 8
  br label %28

14:                                               ; preds = %1
  %15 = load i32, i32* @VOUT_WINDOW_TYPE_HWND, align 4
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  store i32* @embedVideoWindow_Ops, i32** %26, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_12__* %27, %struct.TYPE_12__** %2, align 8
  br label %28

28:                                               ; preds = %14, %13
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  ret %struct.TYPE_12__* %29
}

declare dso_local %struct.TYPE_12__* @vlc_object_create(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
