; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/wayland/extr_shm.c_Close.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/wayland/extr_shm.c_Close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i32, i32, i32*, i32*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { %struct.wl_surface* }
%struct.wl_surface = type { i32 }
%struct.TYPE_9__ = type { %struct.wl_display* }
%struct.wl_display = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"%zu buffer(s) still active\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"no active buffers left\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @Close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Close(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.wl_display*, align 8
  %5 = alloca %struct.wl_surface*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_13__* %8, %struct.TYPE_13__** %3, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 5
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load %struct.wl_display*, %struct.wl_display** %13, align 8
  store %struct.wl_display* %14, %struct.wl_display** %4, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 5
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load %struct.wl_surface*, %struct.wl_surface** %19, align 8
  store %struct.wl_surface* %20, %struct.wl_surface** %5, align 8
  %21 = load %struct.wl_surface*, %struct.wl_surface** %5, align 8
  %22 = call i32 @wl_surface_attach(%struct.wl_surface* %21, i32* null, i32 0, i32 0)
  %23 = load %struct.wl_surface*, %struct.wl_surface** %5, align 8
  %24 = call i32 @wl_surface_commit(%struct.wl_surface* %23)
  br label %25

25:                                               ; preds = %30, %1
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 (%struct.TYPE_12__*, i8*, ...) @msg_Dbg(%struct.TYPE_12__* %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %34)
  %36 = load %struct.wl_display*, %struct.wl_display** %4, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @wl_display_roundtrip_queue(%struct.wl_display* %36, i32 %39)
  br label %25

41:                                               ; preds = %25
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %43 = call i32 (%struct.TYPE_12__*, i8*, ...) @msg_Dbg(%struct.TYPE_12__* %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 4
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @wp_viewport_destroy(i32* %51)
  br label %53

53:                                               ; preds = %48, %41
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @wp_viewporter_destroy(i32* %61)
  br label %63

63:                                               ; preds = %58, %53
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @wl_shm_destroy(i32 %66)
  %68 = load %struct.wl_display*, %struct.wl_display** %4, align 8
  %69 = call i32 @wl_display_flush(%struct.wl_display* %68)
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @wl_event_queue_destroy(i32 %72)
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %75 = call i32 @free(%struct.TYPE_13__* %74)
  ret void
}

declare dso_local i32 @wl_surface_attach(%struct.wl_surface*, i32*, i32, i32) #1

declare dso_local i32 @wl_surface_commit(%struct.wl_surface*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_12__*, i8*, ...) #1

declare dso_local i32 @wl_display_roundtrip_queue(%struct.wl_display*, i32) #1

declare dso_local i32 @wp_viewport_destroy(i32*) #1

declare dso_local i32 @wp_viewporter_destroy(i32*) #1

declare dso_local i32 @wl_shm_destroy(i32) #1

declare dso_local i32 @wl_display_flush(%struct.wl_display*) #1

declare dso_local i32 @wl_event_queue_destroy(i32) #1

declare dso_local i32 @free(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
