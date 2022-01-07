; ModuleID = '/home/carl/AnghaBench/tmux/extr_layout.c_layout_add_border.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_layout.c_layout_add_border.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window = type { i32 }
%struct.layout_cell = type { i32 }

@PANE_STATUS_TOP = common dso_local global i32 0, align 4
@PANE_STATUS_BOTTOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.window*, %struct.layout_cell*, i32)* @layout_add_border to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @layout_add_border(%struct.window* %0, %struct.layout_cell* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.window*, align 8
  %6 = alloca %struct.layout_cell*, align 8
  %7 = alloca i32, align 4
  store %struct.window* %0, %struct.window** %5, align 8
  store %struct.layout_cell* %1, %struct.layout_cell** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @PANE_STATUS_TOP, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load %struct.window*, %struct.window** %5, align 8
  %13 = load %struct.layout_cell*, %struct.layout_cell** %6, align 8
  %14 = call i32 @layout_cell_is_top(%struct.window* %12, %struct.layout_cell* %13)
  store i32 %14, i32* %4, align 4
  br label %24

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @PANE_STATUS_BOTTOM, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load %struct.window*, %struct.window** %5, align 8
  %21 = load %struct.layout_cell*, %struct.layout_cell** %6, align 8
  %22 = call i32 @layout_cell_is_bottom(%struct.window* %20, %struct.layout_cell* %21)
  store i32 %22, i32* %4, align 4
  br label %24

23:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %23, %19, %11
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32 @layout_cell_is_top(%struct.window*, %struct.layout_cell*) #1

declare dso_local i32 @layout_cell_is_bottom(%struct.window*, %struct.layout_cell*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
