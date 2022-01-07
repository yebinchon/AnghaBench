; ModuleID = '/home/carl/AnghaBench/tmux/extr_layout.c_layout_new_pane_size.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_layout.c_layout_new_pane_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window = type { i32 }
%struct.layout_cell = type { i32, i32 }

@PANE_MINIMUM = common dso_local global i32 0, align 4
@LAYOUT_LEFTRIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.window*, i32, %struct.layout_cell*, i32, i32, i32, i32)* @layout_new_pane_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @layout_new_pane_size(%struct.window* %0, i32 %1, %struct.layout_cell* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.window*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.layout_cell*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.window* %0, %struct.window** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.layout_cell* %2, %struct.layout_cell** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %20 = load i32, i32* %14, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %24

22:                                               ; preds = %7
  %23 = load i32, i32* %15, align 4
  store i32 %23, i32* %8, align 4
  br label %98

24:                                               ; preds = %7
  %25 = load %struct.window*, %struct.window** %9, align 8
  %26 = load %struct.layout_cell*, %struct.layout_cell** %11, align 8
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @layout_resize_check(%struct.window* %25, %struct.layout_cell* %26, i32 %27)
  store i32 %28, i32* %19, align 4
  %29 = load i32, i32* @PANE_MINIMUM, align 4
  %30 = add nsw i32 %29, 1
  %31 = load i32, i32* %14, align 4
  %32 = sub nsw i32 %31, 1
  %33 = mul nsw i32 %30, %32
  store i32 %33, i32* %17, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @LAYOUT_LEFTRIGHT, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %59

37:                                               ; preds = %24
  %38 = load %struct.layout_cell*, %struct.layout_cell** %11, align 8
  %39 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %19, align 4
  %42 = sub nsw i32 %40, %41
  %43 = load i32, i32* %17, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = load %struct.layout_cell*, %struct.layout_cell** %11, align 8
  %47 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %19, align 4
  %50 = sub nsw i32 %48, %49
  store i32 %50, i32* %17, align 4
  br label %51

51:                                               ; preds = %45, %37
  %52 = load %struct.layout_cell*, %struct.layout_cell** %11, align 8
  %53 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %13, align 4
  %56 = mul nsw i32 %54, %55
  %57 = load i32, i32* %10, align 4
  %58 = sdiv i32 %56, %57
  store i32 %58, i32* %16, align 4
  br label %81

59:                                               ; preds = %24
  %60 = load %struct.layout_cell*, %struct.layout_cell** %11, align 8
  %61 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %19, align 4
  %64 = sub nsw i32 %62, %63
  %65 = load i32, i32* %17, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %59
  %68 = load %struct.layout_cell*, %struct.layout_cell** %11, align 8
  %69 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %19, align 4
  %72 = sub nsw i32 %70, %71
  store i32 %72, i32* %17, align 4
  br label %73

73:                                               ; preds = %67, %59
  %74 = load %struct.layout_cell*, %struct.layout_cell** %11, align 8
  %75 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %13, align 4
  %78 = mul nsw i32 %76, %77
  %79 = load i32, i32* %10, align 4
  %80 = sdiv i32 %78, %79
  store i32 %80, i32* %16, align 4
  br label %81

81:                                               ; preds = %73, %51
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %17, align 4
  %84 = sub nsw i32 %82, %83
  store i32 %84, i32* %18, align 4
  %85 = load i32, i32* %16, align 4
  %86 = load i32, i32* %18, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = load i32, i32* %18, align 4
  store i32 %89, i32* %16, align 4
  br label %90

90:                                               ; preds = %88, %81
  %91 = load i32, i32* %16, align 4
  %92 = load i32, i32* @PANE_MINIMUM, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load i32, i32* @PANE_MINIMUM, align 4
  store i32 %95, i32* %16, align 4
  br label %96

96:                                               ; preds = %94, %90
  %97 = load i32, i32* %16, align 4
  store i32 %97, i32* %8, align 4
  br label %98

98:                                               ; preds = %96, %22
  %99 = load i32, i32* %8, align 4
  ret i32 %99
}

declare dso_local i32 @layout_resize_check(%struct.window*, %struct.layout_cell*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
