; ModuleID = '/home/carl/AnghaBench/tmux/extr_layout.c_layout_cell_is_top.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_layout.c_layout_cell_is_top.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window = type { %struct.layout_cell* }
%struct.layout_cell = type { i64, i32, %struct.layout_cell* }

@LAYOUT_TOPBOTTOM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.window*, %struct.layout_cell*)* @layout_cell_is_top to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @layout_cell_is_top(%struct.window* %0, %struct.layout_cell* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.window*, align 8
  %5 = alloca %struct.layout_cell*, align 8
  %6 = alloca %struct.layout_cell*, align 8
  store %struct.window* %0, %struct.window** %4, align 8
  store %struct.layout_cell* %1, %struct.layout_cell** %5, align 8
  br label %7

7:                                                ; preds = %29, %2
  %8 = load %struct.layout_cell*, %struct.layout_cell** %5, align 8
  %9 = load %struct.window*, %struct.window** %4, align 8
  %10 = getelementptr inbounds %struct.window, %struct.window* %9, i32 0, i32 0
  %11 = load %struct.layout_cell*, %struct.layout_cell** %10, align 8
  %12 = icmp ne %struct.layout_cell* %8, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %7
  %14 = load %struct.layout_cell*, %struct.layout_cell** %5, align 8
  %15 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %14, i32 0, i32 2
  %16 = load %struct.layout_cell*, %struct.layout_cell** %15, align 8
  store %struct.layout_cell* %16, %struct.layout_cell** %6, align 8
  %17 = load %struct.layout_cell*, %struct.layout_cell** %6, align 8
  %18 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @LAYOUT_TOPBOTTOM, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %13
  %23 = load %struct.layout_cell*, %struct.layout_cell** %5, align 8
  %24 = load %struct.layout_cell*, %struct.layout_cell** %6, align 8
  %25 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %24, i32 0, i32 1
  %26 = call %struct.layout_cell* @TAILQ_FIRST(i32* %25)
  %27 = icmp ne %struct.layout_cell* %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %32

29:                                               ; preds = %22, %13
  %30 = load %struct.layout_cell*, %struct.layout_cell** %6, align 8
  store %struct.layout_cell* %30, %struct.layout_cell** %5, align 8
  br label %7

31:                                               ; preds = %7
  store i32 1, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %28
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.layout_cell* @TAILQ_FIRST(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
