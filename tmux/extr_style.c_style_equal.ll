; ModuleID = '/home/carl/AnghaBench/tmux/extr_style.c_style_equal.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_style.c_style_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.style = type { i64, i64, %struct.grid_cell }
%struct.grid_cell = type { i64, i64, i32 }

@STYLE_ATTR_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @style_equal(%struct.style* %0, %struct.style* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.style*, align 8
  %5 = alloca %struct.style*, align 8
  %6 = alloca %struct.grid_cell*, align 8
  %7 = alloca %struct.grid_cell*, align 8
  store %struct.style* %0, %struct.style** %4, align 8
  store %struct.style* %1, %struct.style** %5, align 8
  %8 = load %struct.style*, %struct.style** %4, align 8
  %9 = getelementptr inbounds %struct.style, %struct.style* %8, i32 0, i32 2
  store %struct.grid_cell* %9, %struct.grid_cell** %6, align 8
  %10 = load %struct.style*, %struct.style** %5, align 8
  %11 = getelementptr inbounds %struct.style, %struct.style* %10, i32 0, i32 2
  store %struct.grid_cell* %11, %struct.grid_cell** %7, align 8
  %12 = load %struct.grid_cell*, %struct.grid_cell** %6, align 8
  %13 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.grid_cell*, %struct.grid_cell** %7, align 8
  %16 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %61

20:                                               ; preds = %2
  %21 = load %struct.grid_cell*, %struct.grid_cell** %6, align 8
  %22 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.grid_cell*, %struct.grid_cell** %7, align 8
  %25 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %61

29:                                               ; preds = %20
  %30 = load %struct.grid_cell*, %struct.grid_cell** %6, align 8
  %31 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @STYLE_ATTR_MASK, align 4
  %34 = and i32 %32, %33
  %35 = load %struct.grid_cell*, %struct.grid_cell** %7, align 8
  %36 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @STYLE_ATTR_MASK, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %34, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %61

42:                                               ; preds = %29
  %43 = load %struct.style*, %struct.style** %4, align 8
  %44 = getelementptr inbounds %struct.style, %struct.style* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.style*, %struct.style** %5, align 8
  %47 = getelementptr inbounds %struct.style, %struct.style* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %61

51:                                               ; preds = %42
  %52 = load %struct.style*, %struct.style** %4, align 8
  %53 = getelementptr inbounds %struct.style, %struct.style* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.style*, %struct.style** %5, align 8
  %56 = getelementptr inbounds %struct.style, %struct.style* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %54, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %61

60:                                               ; preds = %51
  store i32 1, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %59, %50, %41, %28, %19
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
