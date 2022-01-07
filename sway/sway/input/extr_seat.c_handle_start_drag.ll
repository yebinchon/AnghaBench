; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seat.c_handle_start_drag.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seat.c_handle_start_drag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.sway_seat = type { i32 }
%struct.wl_listener = type { i32 }
%struct.wlr_drag = type { %struct.wlr_drag_icon* }
%struct.wlr_drag_icon = type { %struct.TYPE_8__, %struct.TYPE_7__*, %struct.sway_drag_icon* }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sway_drag_icon = type { i32, %struct.TYPE_9__, %struct.TYPE_9__, %struct.TYPE_9__, %struct.TYPE_9__, %struct.wlr_drag_icon*, %struct.sway_seat* }
%struct.TYPE_9__ = type { i32 }

@start_drag = common dso_local global i32 0, align 4
@SWAY_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Allocation failed\00", align 1
@drag_icon_handle_surface_commit = common dso_local global i32 0, align 4
@drag_icon_handle_unmap = common dso_local global i32 0, align 4
@drag_icon_handle_map = common dso_local global i32 0, align 4
@drag_icon_handle_destroy = common dso_local global i32 0, align 4
@root = common dso_local global %struct.TYPE_10__* null, align 8
@seat = common dso_local global %struct.sway_seat* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl_listener*, i8*)* @handle_start_drag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_start_drag(%struct.wl_listener* %0, i8* %1) #0 {
  %3 = alloca %struct.wl_listener*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sway_seat*, align 8
  %6 = alloca %struct.wlr_drag*, align 8
  %7 = alloca %struct.wlr_drag_icon*, align 8
  %8 = alloca %struct.sway_drag_icon*, align 8
  store %struct.wl_listener* %0, %struct.wl_listener** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.wl_listener*, %struct.wl_listener** %3, align 8
  %10 = load %struct.sway_seat*, %struct.sway_seat** %5, align 8
  %11 = ptrtoint %struct.sway_seat* %10 to i32
  %12 = load i32, i32* @start_drag, align 4
  %13 = call %struct.sway_seat* @wl_container_of(%struct.wl_listener* %9, i32 %11, i32 %12)
  store %struct.sway_seat* %13, %struct.sway_seat** %5, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.wlr_drag*
  store %struct.wlr_drag* %15, %struct.wlr_drag** %6, align 8
  %16 = load %struct.wlr_drag*, %struct.wlr_drag** %6, align 8
  %17 = getelementptr inbounds %struct.wlr_drag, %struct.wlr_drag* %16, i32 0, i32 0
  %18 = load %struct.wlr_drag_icon*, %struct.wlr_drag_icon** %17, align 8
  store %struct.wlr_drag_icon* %18, %struct.wlr_drag_icon** %7, align 8
  %19 = load %struct.wlr_drag_icon*, %struct.wlr_drag_icon** %7, align 8
  %20 = icmp eq %struct.wlr_drag_icon* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %90

22:                                               ; preds = %2
  %23 = call %struct.sway_drag_icon* @calloc(i32 1, i32 40)
  store %struct.sway_drag_icon* %23, %struct.sway_drag_icon** %8, align 8
  %24 = load %struct.sway_drag_icon*, %struct.sway_drag_icon** %8, align 8
  %25 = icmp eq %struct.sway_drag_icon* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @SWAY_ERROR, align 4
  %28 = call i32 @sway_log(i32 %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %90

29:                                               ; preds = %22
  %30 = load %struct.sway_seat*, %struct.sway_seat** %5, align 8
  %31 = load %struct.sway_drag_icon*, %struct.sway_drag_icon** %8, align 8
  %32 = getelementptr inbounds %struct.sway_drag_icon, %struct.sway_drag_icon* %31, i32 0, i32 6
  store %struct.sway_seat* %30, %struct.sway_seat** %32, align 8
  %33 = load %struct.wlr_drag_icon*, %struct.wlr_drag_icon** %7, align 8
  %34 = load %struct.sway_drag_icon*, %struct.sway_drag_icon** %8, align 8
  %35 = getelementptr inbounds %struct.sway_drag_icon, %struct.sway_drag_icon* %34, i32 0, i32 5
  store %struct.wlr_drag_icon* %33, %struct.wlr_drag_icon** %35, align 8
  %36 = load %struct.sway_drag_icon*, %struct.sway_drag_icon** %8, align 8
  %37 = load %struct.wlr_drag_icon*, %struct.wlr_drag_icon** %7, align 8
  %38 = getelementptr inbounds %struct.wlr_drag_icon, %struct.wlr_drag_icon* %37, i32 0, i32 2
  store %struct.sway_drag_icon* %36, %struct.sway_drag_icon** %38, align 8
  %39 = load i32, i32* @drag_icon_handle_surface_commit, align 4
  %40 = load %struct.sway_drag_icon*, %struct.sway_drag_icon** %8, align 8
  %41 = getelementptr inbounds %struct.sway_drag_icon, %struct.sway_drag_icon* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  %43 = load %struct.wlr_drag_icon*, %struct.wlr_drag_icon** %7, align 8
  %44 = getelementptr inbounds %struct.wlr_drag_icon, %struct.wlr_drag_icon* %43, i32 0, i32 1
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.sway_drag_icon*, %struct.sway_drag_icon** %8, align 8
  %49 = getelementptr inbounds %struct.sway_drag_icon, %struct.sway_drag_icon* %48, i32 0, i32 4
  %50 = call i32 @wl_signal_add(i32* %47, %struct.TYPE_9__* %49)
  %51 = load i32, i32* @drag_icon_handle_unmap, align 4
  %52 = load %struct.sway_drag_icon*, %struct.sway_drag_icon** %8, align 8
  %53 = getelementptr inbounds %struct.sway_drag_icon, %struct.sway_drag_icon* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 4
  %55 = load %struct.wlr_drag_icon*, %struct.wlr_drag_icon** %7, align 8
  %56 = getelementptr inbounds %struct.wlr_drag_icon, %struct.wlr_drag_icon* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 2
  %58 = load %struct.sway_drag_icon*, %struct.sway_drag_icon** %8, align 8
  %59 = getelementptr inbounds %struct.sway_drag_icon, %struct.sway_drag_icon* %58, i32 0, i32 3
  %60 = call i32 @wl_signal_add(i32* %57, %struct.TYPE_9__* %59)
  %61 = load i32, i32* @drag_icon_handle_map, align 4
  %62 = load %struct.sway_drag_icon*, %struct.sway_drag_icon** %8, align 8
  %63 = getelementptr inbounds %struct.sway_drag_icon, %struct.sway_drag_icon* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 8
  %65 = load %struct.wlr_drag_icon*, %struct.wlr_drag_icon** %7, align 8
  %66 = getelementptr inbounds %struct.wlr_drag_icon, %struct.wlr_drag_icon* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load %struct.sway_drag_icon*, %struct.sway_drag_icon** %8, align 8
  %69 = getelementptr inbounds %struct.sway_drag_icon, %struct.sway_drag_icon* %68, i32 0, i32 2
  %70 = call i32 @wl_signal_add(i32* %67, %struct.TYPE_9__* %69)
  %71 = load i32, i32* @drag_icon_handle_destroy, align 4
  %72 = load %struct.sway_drag_icon*, %struct.sway_drag_icon** %8, align 8
  %73 = getelementptr inbounds %struct.sway_drag_icon, %struct.sway_drag_icon* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 4
  %75 = load %struct.wlr_drag_icon*, %struct.wlr_drag_icon** %7, align 8
  %76 = getelementptr inbounds %struct.wlr_drag_icon, %struct.wlr_drag_icon* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load %struct.sway_drag_icon*, %struct.sway_drag_icon** %8, align 8
  %79 = getelementptr inbounds %struct.sway_drag_icon, %struct.sway_drag_icon* %78, i32 0, i32 1
  %80 = call i32 @wl_signal_add(i32* %77, %struct.TYPE_9__* %79)
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** @root, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load %struct.sway_drag_icon*, %struct.sway_drag_icon** %8, align 8
  %84 = getelementptr inbounds %struct.sway_drag_icon, %struct.sway_drag_icon* %83, i32 0, i32 0
  %85 = call i32 @wl_list_insert(i32* %82, i32* %84)
  %86 = load %struct.sway_drag_icon*, %struct.sway_drag_icon** %8, align 8
  %87 = call i32 @drag_icon_update_position(%struct.sway_drag_icon* %86)
  %88 = load %struct.sway_seat*, %struct.sway_seat** %5, align 8
  %89 = call i32 @seatop_begin_default(%struct.sway_seat* %88)
  br label %90

90:                                               ; preds = %29, %26, %21
  ret void
}

declare dso_local %struct.sway_seat* @wl_container_of(%struct.wl_listener*, i32, i32) #1

declare dso_local %struct.sway_drag_icon* @calloc(i32, i32) #1

declare dso_local i32 @sway_log(i32, i8*) #1

declare dso_local i32 @wl_signal_add(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @wl_list_insert(i32*, i32*) #1

declare dso_local i32 @drag_icon_update_position(%struct.sway_drag_icon*) #1

declare dso_local i32 @seatop_begin_default(%struct.sway_seat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
