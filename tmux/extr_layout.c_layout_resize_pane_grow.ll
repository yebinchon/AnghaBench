; ModuleID = '/home/carl/AnghaBench/tmux/extr_layout.c_layout_resize_pane_grow.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_layout.c_layout_resize_pane_grow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window = type { i32 }
%struct.layout_cell = type { i32 }

@entry = common dso_local global i32 0, align 4
@layout_cells = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.window*, %struct.layout_cell*, i32, i32, i32)* @layout_resize_pane_grow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @layout_resize_pane_grow(%struct.window* %0, %struct.layout_cell* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.window*, align 8
  %8 = alloca %struct.layout_cell*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.layout_cell*, align 8
  %13 = alloca %struct.layout_cell*, align 8
  %14 = alloca i32, align 4
  store %struct.window* %0, %struct.window** %7, align 8
  store %struct.layout_cell* %1, %struct.layout_cell** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %15 = load %struct.layout_cell*, %struct.layout_cell** %8, align 8
  store %struct.layout_cell* %15, %struct.layout_cell** %12, align 8
  %16 = load %struct.layout_cell*, %struct.layout_cell** %8, align 8
  %17 = load i32, i32* @entry, align 4
  %18 = call %struct.layout_cell* @TAILQ_NEXT(%struct.layout_cell* %16, i32 %17)
  store %struct.layout_cell* %18, %struct.layout_cell** %13, align 8
  br label %19

19:                                               ; preds = %30, %5
  %20 = load %struct.layout_cell*, %struct.layout_cell** %13, align 8
  %21 = icmp ne %struct.layout_cell* %20, null
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  %23 = load %struct.window*, %struct.window** %7, align 8
  %24 = load %struct.layout_cell*, %struct.layout_cell** %13, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @layout_resize_check(%struct.window* %23, %struct.layout_cell* %24, i32 %25)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %34

30:                                               ; preds = %22
  %31 = load %struct.layout_cell*, %struct.layout_cell** %13, align 8
  %32 = load i32, i32* @entry, align 4
  %33 = call %struct.layout_cell* @TAILQ_NEXT(%struct.layout_cell* %31, i32 %32)
  store %struct.layout_cell* %33, %struct.layout_cell** %13, align 8
  br label %19

34:                                               ; preds = %29, %19
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %62

37:                                               ; preds = %34
  %38 = load %struct.layout_cell*, %struct.layout_cell** %13, align 8
  %39 = icmp eq %struct.layout_cell* %38, null
  br i1 %39, label %40, label %62

40:                                               ; preds = %37
  %41 = load %struct.layout_cell*, %struct.layout_cell** %8, align 8
  %42 = load i32, i32* @layout_cells, align 4
  %43 = load i32, i32* @entry, align 4
  %44 = call %struct.layout_cell* @TAILQ_PREV(%struct.layout_cell* %41, i32 %42, i32 %43)
  store %struct.layout_cell* %44, %struct.layout_cell** %13, align 8
  br label %45

45:                                               ; preds = %56, %40
  %46 = load %struct.layout_cell*, %struct.layout_cell** %13, align 8
  %47 = icmp ne %struct.layout_cell* %46, null
  br i1 %47, label %48, label %61

48:                                               ; preds = %45
  %49 = load %struct.window*, %struct.window** %7, align 8
  %50 = load %struct.layout_cell*, %struct.layout_cell** %13, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @layout_resize_check(%struct.window* %49, %struct.layout_cell* %50, i32 %51)
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %61

56:                                               ; preds = %48
  %57 = load %struct.layout_cell*, %struct.layout_cell** %13, align 8
  %58 = load i32, i32* @layout_cells, align 4
  %59 = load i32, i32* @entry, align 4
  %60 = call %struct.layout_cell* @TAILQ_PREV(%struct.layout_cell* %57, i32 %58, i32 %59)
  store %struct.layout_cell* %60, %struct.layout_cell** %13, align 8
  br label %45

61:                                               ; preds = %55, %45
  br label %62

62:                                               ; preds = %61, %37, %34
  %63 = load %struct.layout_cell*, %struct.layout_cell** %13, align 8
  %64 = icmp eq %struct.layout_cell* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 0, i32* %6, align 4
  br label %85

66:                                               ; preds = %62
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %14, align 4
  br label %72

72:                                               ; preds = %70, %66
  %73 = load %struct.window*, %struct.window** %7, align 8
  %74 = load %struct.layout_cell*, %struct.layout_cell** %12, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %14, align 4
  %77 = call i32 @layout_resize_adjust(%struct.window* %73, %struct.layout_cell* %74, i32 %75, i32 %76)
  %78 = load %struct.window*, %struct.window** %7, align 8
  %79 = load %struct.layout_cell*, %struct.layout_cell** %13, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %14, align 4
  %82 = sub nsw i32 0, %81
  %83 = call i32 @layout_resize_adjust(%struct.window* %78, %struct.layout_cell* %79, i32 %80, i32 %82)
  %84 = load i32, i32* %14, align 4
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %72, %65
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local %struct.layout_cell* @TAILQ_NEXT(%struct.layout_cell*, i32) #1

declare dso_local i32 @layout_resize_check(%struct.window*, %struct.layout_cell*, i32) #1

declare dso_local %struct.layout_cell* @TAILQ_PREV(%struct.layout_cell*, i32, i32) #1

declare dso_local i32 @layout_resize_adjust(%struct.window*, %struct.layout_cell*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
