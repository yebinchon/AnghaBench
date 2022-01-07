; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_handle_cursor_motion_absolute.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_handle_cursor_motion_absolute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_cursor = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { double, double }
%struct.wl_listener = type { i32 }
%struct.wlr_event_pointer_motion_absolute = type { i32, i32, i32, i32 }

@motion_absolute = common dso_local global i32 0, align 4
@cursor = common dso_local global %struct.sway_cursor* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl_listener*, i8*)* @handle_cursor_motion_absolute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_cursor_motion_absolute(%struct.wl_listener* %0, i8* %1) #0 {
  %3 = alloca %struct.wl_listener*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sway_cursor*, align 8
  %6 = alloca %struct.wlr_event_pointer_motion_absolute*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store %struct.wl_listener* %0, %struct.wl_listener** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load %struct.wl_listener*, %struct.wl_listener** %3, align 8
  %12 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %13 = ptrtoint %struct.sway_cursor* %12 to i32
  %14 = load i32, i32* @motion_absolute, align 4
  %15 = call %struct.sway_cursor* @wl_container_of(%struct.wl_listener* %11, i32 %13, i32 %14)
  store %struct.sway_cursor* %15, %struct.sway_cursor** %5, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to %struct.wlr_event_pointer_motion_absolute*
  store %struct.wlr_event_pointer_motion_absolute* %17, %struct.wlr_event_pointer_motion_absolute** %6, align 8
  %18 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %19 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load %struct.wlr_event_pointer_motion_absolute*, %struct.wlr_event_pointer_motion_absolute** %6, align 8
  %22 = getelementptr inbounds %struct.wlr_event_pointer_motion_absolute, %struct.wlr_event_pointer_motion_absolute* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.wlr_event_pointer_motion_absolute*, %struct.wlr_event_pointer_motion_absolute** %6, align 8
  %25 = getelementptr inbounds %struct.wlr_event_pointer_motion_absolute, %struct.wlr_event_pointer_motion_absolute* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.wlr_event_pointer_motion_absolute*, %struct.wlr_event_pointer_motion_absolute** %6, align 8
  %28 = getelementptr inbounds %struct.wlr_event_pointer_motion_absolute, %struct.wlr_event_pointer_motion_absolute* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @wlr_cursor_absolute_to_layout_coords(%struct.TYPE_2__* %20, i32 %23, i32 %26, i32 %29, double* %7, double* %8)
  %31 = load double, double* %7, align 8
  %32 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %33 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load double, double* %35, align 8
  %37 = fsub double %31, %36
  store double %37, double* %9, align 8
  %38 = load double, double* %8, align 8
  %39 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %40 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load double, double* %42, align 8
  %44 = fsub double %38, %43
  store double %44, double* %10, align 8
  %45 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %46 = load %struct.wlr_event_pointer_motion_absolute*, %struct.wlr_event_pointer_motion_absolute** %6, align 8
  %47 = getelementptr inbounds %struct.wlr_event_pointer_motion_absolute, %struct.wlr_event_pointer_motion_absolute* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.wlr_event_pointer_motion_absolute*, %struct.wlr_event_pointer_motion_absolute** %6, align 8
  %50 = getelementptr inbounds %struct.wlr_event_pointer_motion_absolute, %struct.wlr_event_pointer_motion_absolute* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load double, double* %9, align 8
  %53 = load double, double* %10, align 8
  %54 = load double, double* %9, align 8
  %55 = load double, double* %10, align 8
  %56 = call i32 @cursor_motion(%struct.sway_cursor* %45, i32 %48, i32 %51, double %52, double %53, double %54, double %55)
  %57 = call i32 (...) @transaction_commit_dirty()
  ret void
}

declare dso_local %struct.sway_cursor* @wl_container_of(%struct.wl_listener*, i32, i32) #1

declare dso_local i32 @wlr_cursor_absolute_to_layout_coords(%struct.TYPE_2__*, i32, i32, i32, double*, double*) #1

declare dso_local i32 @cursor_motion(%struct.sway_cursor*, i32, i32, double, double, double, double) #1

declare dso_local i32 @transaction_commit_dirty(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
