; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/wayland/extr_xdg-shell.c_Enable.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/wayland/extr_xdg-shell.c_Enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_11__, %struct.TYPE_13__, %struct.TYPE_15__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { %struct.wl_display* }
%struct.wl_display = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i64, i64 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_16__*)* @Enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Enable(%struct.TYPE_14__* %0, %struct.TYPE_16__* noalias %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.wl_display*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_15__* %10, %struct.TYPE_15__** %6, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load %struct.wl_display*, %struct.wl_display** %13, align 8
  store %struct.wl_display* %14, %struct.wl_display** %7, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @xdg_toplevel_set_fullscreen(i32 %22, i32* null)
  br label %29

24:                                               ; preds = %2
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @xdg_toplevel_unset_fullscreen(i32 %27)
  br label %29

29:                                               ; preds = %24, %19
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %35, i32* %3, align 4
  br label %53

36:                                               ; preds = %29
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @vout_window_SetSize(%struct.TYPE_14__* %37, i32 %40, i32 %43)
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @wl_surface_commit(i32 %48)
  %50 = load %struct.wl_display*, %struct.wl_display** %7, align 8
  %51 = call i32 @wl_display_flush(%struct.wl_display* %50)
  %52 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %36, %34
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @xdg_toplevel_set_fullscreen(i32, i32*) #1

declare dso_local i32 @xdg_toplevel_unset_fullscreen(i32) #1

declare dso_local i32 @vout_window_SetSize(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @wl_surface_commit(i32) #1

declare dso_local i32 @wl_display_flush(%struct.wl_display*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
