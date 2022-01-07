; ModuleID = '/home/carl/AnghaBench/tmux/extr_layout.c_layout_resize_pane_shrink.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_layout.c_layout_resize_pane_shrink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window = type { i32 }
%struct.layout_cell = type { i32 }

@layout_cells = common dso_local global i32 0, align 4
@entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.window*, %struct.layout_cell*, i32, i32)* @layout_resize_pane_shrink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @layout_resize_pane_shrink(%struct.window* %0, %struct.layout_cell* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.window*, align 8
  %7 = alloca %struct.layout_cell*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.layout_cell*, align 8
  %11 = alloca %struct.layout_cell*, align 8
  %12 = alloca i32, align 4
  store %struct.window* %0, %struct.window** %6, align 8
  store %struct.layout_cell* %1, %struct.layout_cell** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.layout_cell*, %struct.layout_cell** %7, align 8
  store %struct.layout_cell* %13, %struct.layout_cell** %11, align 8
  br label %14

14:                                               ; preds = %27, %4
  %15 = load %struct.window*, %struct.window** %6, align 8
  %16 = load %struct.layout_cell*, %struct.layout_cell** %11, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @layout_resize_check(%struct.window* %15, %struct.layout_cell* %16, i32 %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %30

22:                                               ; preds = %14
  %23 = load %struct.layout_cell*, %struct.layout_cell** %11, align 8
  %24 = load i32, i32* @layout_cells, align 4
  %25 = load i32, i32* @entry, align 4
  %26 = call %struct.layout_cell* @TAILQ_PREV(%struct.layout_cell* %23, i32 %24, i32 %25)
  store %struct.layout_cell* %26, %struct.layout_cell** %11, align 8
  br label %27

27:                                               ; preds = %22
  %28 = load %struct.layout_cell*, %struct.layout_cell** %11, align 8
  %29 = icmp ne %struct.layout_cell* %28, null
  br i1 %29, label %14, label %30

30:                                               ; preds = %27, %21
  %31 = load %struct.layout_cell*, %struct.layout_cell** %11, align 8
  %32 = icmp eq %struct.layout_cell* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %62

34:                                               ; preds = %30
  %35 = load %struct.layout_cell*, %struct.layout_cell** %7, align 8
  %36 = load i32, i32* @entry, align 4
  %37 = call %struct.layout_cell* @TAILQ_NEXT(%struct.layout_cell* %35, i32 %36)
  store %struct.layout_cell* %37, %struct.layout_cell** %10, align 8
  %38 = load %struct.layout_cell*, %struct.layout_cell** %10, align 8
  %39 = icmp eq %struct.layout_cell* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %62

41:                                               ; preds = %34
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %9, align 4
  %44 = sub nsw i32 0, %43
  %45 = icmp sgt i32 %42, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* %9, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %12, align 4
  br label %49

49:                                               ; preds = %46, %41
  %50 = load %struct.window*, %struct.window** %6, align 8
  %51 = load %struct.layout_cell*, %struct.layout_cell** %10, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @layout_resize_adjust(%struct.window* %50, %struct.layout_cell* %51, i32 %52, i32 %53)
  %55 = load %struct.window*, %struct.window** %6, align 8
  %56 = load %struct.layout_cell*, %struct.layout_cell** %11, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %12, align 4
  %59 = sub nsw i32 0, %58
  %60 = call i32 @layout_resize_adjust(%struct.window* %55, %struct.layout_cell* %56, i32 %57, i32 %59)
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %49, %40, %33
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @layout_resize_check(%struct.window*, %struct.layout_cell*, i32) #1

declare dso_local %struct.layout_cell* @TAILQ_PREV(%struct.layout_cell*, i32, i32) #1

declare dso_local %struct.layout_cell* @TAILQ_NEXT(%struct.layout_cell*, i32) #1

declare dso_local i32 @layout_resize_adjust(%struct.window*, %struct.layout_cell*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
