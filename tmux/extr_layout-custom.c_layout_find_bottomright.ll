; ModuleID = '/home/carl/AnghaBench/tmux/extr_layout-custom.c_layout_find_bottomright.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_layout-custom.c_layout_find_bottomright.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.layout_cell = type { i64, i32 }

@LAYOUT_WINDOWPANE = common dso_local global i64 0, align 8
@layout_cells = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.layout_cell* (%struct.layout_cell*)* @layout_find_bottomright to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.layout_cell* @layout_find_bottomright(%struct.layout_cell* %0) #0 {
  %2 = alloca %struct.layout_cell*, align 8
  %3 = alloca %struct.layout_cell*, align 8
  store %struct.layout_cell* %0, %struct.layout_cell** %3, align 8
  %4 = load %struct.layout_cell*, %struct.layout_cell** %3, align 8
  %5 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @LAYOUT_WINDOWPANE, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load %struct.layout_cell*, %struct.layout_cell** %3, align 8
  store %struct.layout_cell* %10, %struct.layout_cell** %2, align 8
  br label %18

11:                                               ; preds = %1
  %12 = load %struct.layout_cell*, %struct.layout_cell** %3, align 8
  %13 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %12, i32 0, i32 1
  %14 = load i32, i32* @layout_cells, align 4
  %15 = call %struct.layout_cell* @TAILQ_LAST(i32* %13, i32 %14)
  store %struct.layout_cell* %15, %struct.layout_cell** %3, align 8
  %16 = load %struct.layout_cell*, %struct.layout_cell** %3, align 8
  %17 = call %struct.layout_cell* @layout_find_bottomright(%struct.layout_cell* %16)
  store %struct.layout_cell* %17, %struct.layout_cell** %2, align 8
  br label %18

18:                                               ; preds = %11, %9
  %19 = load %struct.layout_cell*, %struct.layout_cell** %2, align 8
  ret %struct.layout_cell* %19
}

declare dso_local %struct.layout_cell* @TAILQ_LAST(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
