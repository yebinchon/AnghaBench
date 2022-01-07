; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seatop_default.c_wl_axis_to_button.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seatop_default.c_wl_axis_to_button.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlr_event_pointer_axis = type { i32, i32 }

@SWAY_SCROLL_UP = common dso_local global i32 0, align 4
@SWAY_SCROLL_DOWN = common dso_local global i32 0, align 4
@SWAY_SCROLL_LEFT = common dso_local global i32 0, align 4
@SWAY_SCROLL_RIGHT = common dso_local global i32 0, align 4
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Unknown axis orientation\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wlr_event_pointer_axis*)* @wl_axis_to_button to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl_axis_to_button(%struct.wlr_event_pointer_axis* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wlr_event_pointer_axis*, align 8
  store %struct.wlr_event_pointer_axis* %0, %struct.wlr_event_pointer_axis** %3, align 8
  %4 = load %struct.wlr_event_pointer_axis*, %struct.wlr_event_pointer_axis** %3, align 8
  %5 = getelementptr inbounds %struct.wlr_event_pointer_axis, %struct.wlr_event_pointer_axis* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %29 [
    i32 128, label %7
    i32 129, label %18
  ]

7:                                                ; preds = %1
  %8 = load %struct.wlr_event_pointer_axis*, %struct.wlr_event_pointer_axis** %3, align 8
  %9 = getelementptr inbounds %struct.wlr_event_pointer_axis, %struct.wlr_event_pointer_axis* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = load i32, i32* @SWAY_SCROLL_UP, align 4
  br label %16

14:                                               ; preds = %7
  %15 = load i32, i32* @SWAY_SCROLL_DOWN, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  store i32 %17, i32* %2, align 4
  br label %32

18:                                               ; preds = %1
  %19 = load %struct.wlr_event_pointer_axis*, %struct.wlr_event_pointer_axis** %3, align 8
  %20 = getelementptr inbounds %struct.wlr_event_pointer_axis, %struct.wlr_event_pointer_axis* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @SWAY_SCROLL_LEFT, align 4
  br label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @SWAY_SCROLL_RIGHT, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  store i32 %28, i32* %2, align 4
  br label %32

29:                                               ; preds = %1
  %30 = load i32, i32* @SWAY_DEBUG, align 4
  %31 = call i32 @sway_log(i32 %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %29, %27, %16
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @sway_log(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
