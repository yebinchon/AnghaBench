; ModuleID = '/home/carl/AnghaBench/tmux/extr_layout.c_layout_resize.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_layout.c_layout_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window = type { %struct.layout_cell* }
%struct.layout_cell = type { i64, i64 }

@LAYOUT_LEFTRIGHT = common dso_local global i32 0, align 4
@LAYOUT_TOPBOTTOM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @layout_resize(%struct.window* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.window*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.layout_cell*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.window* %0, %struct.window** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.window*, %struct.window** %4, align 8
  %13 = getelementptr inbounds %struct.window, %struct.window* %12, i32 0, i32 0
  %14 = load %struct.layout_cell*, %struct.layout_cell** %13, align 8
  store %struct.layout_cell* %14, %struct.layout_cell** %7, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.layout_cell*, %struct.layout_cell** %7, align 8
  %17 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %15, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %10, align 4
  %21 = load %struct.window*, %struct.window** %4, align 8
  %22 = load %struct.layout_cell*, %struct.layout_cell** %7, align 8
  %23 = load i32, i32* @LAYOUT_LEFTRIGHT, align 4
  %24 = call i32 @layout_resize_check(%struct.window* %21, %struct.layout_cell* %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %3
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %8, align 4
  %30 = sub nsw i32 0, %29
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* %8, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %32, %27, %3
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %35
  %39 = load i64, i64* %5, align 8
  %40 = load %struct.layout_cell*, %struct.layout_cell** %7, align 8
  %41 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sle i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 0, i32* %10, align 4
  br label %52

45:                                               ; preds = %38
  %46 = load i64, i64* %5, align 8
  %47 = load %struct.layout_cell*, %struct.layout_cell** %7, align 8
  %48 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %46, %49
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %45, %44
  br label %53

53:                                               ; preds = %52, %35
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load %struct.window*, %struct.window** %4, align 8
  %58 = load %struct.layout_cell*, %struct.layout_cell** %7, align 8
  %59 = load i32, i32* @LAYOUT_LEFTRIGHT, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @layout_resize_adjust(%struct.window* %57, %struct.layout_cell* %58, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %56, %53
  %63 = load i64, i64* %6, align 8
  %64 = load %struct.layout_cell*, %struct.layout_cell** %7, align 8
  %65 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %63, %66
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %11, align 4
  %69 = load %struct.window*, %struct.window** %4, align 8
  %70 = load %struct.layout_cell*, %struct.layout_cell** %7, align 8
  %71 = load i32, i32* @LAYOUT_TOPBOTTOM, align 4
  %72 = call i32 @layout_resize_check(%struct.window* %69, %struct.layout_cell* %70, i32 %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %62
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %9, align 4
  %78 = sub nsw i32 0, %77
  %79 = icmp slt i32 %76, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i32, i32* %9, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %11, align 4
  br label %83

83:                                               ; preds = %80, %75, %62
  %84 = load i32, i32* %9, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %101

86:                                               ; preds = %83
  %87 = load i64, i64* %6, align 8
  %88 = load %struct.layout_cell*, %struct.layout_cell** %7, align 8
  %89 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp sle i64 %87, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  store i32 0, i32* %11, align 4
  br label %100

93:                                               ; preds = %86
  %94 = load i64, i64* %6, align 8
  %95 = load %struct.layout_cell*, %struct.layout_cell** %7, align 8
  %96 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = sub nsw i64 %94, %97
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %11, align 4
  br label %100

100:                                              ; preds = %93, %92
  br label %101

101:                                              ; preds = %100, %83
  %102 = load i32, i32* %11, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %101
  %105 = load %struct.window*, %struct.window** %4, align 8
  %106 = load %struct.layout_cell*, %struct.layout_cell** %7, align 8
  %107 = load i32, i32* @LAYOUT_TOPBOTTOM, align 4
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @layout_resize_adjust(%struct.window* %105, %struct.layout_cell* %106, i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %104, %101
  %111 = load %struct.window*, %struct.window** %4, align 8
  %112 = call i32 @layout_fix_offsets(%struct.window* %111)
  %113 = load %struct.window*, %struct.window** %4, align 8
  %114 = call i32 @layout_fix_panes(%struct.window* %113)
  ret void
}

declare dso_local i32 @layout_resize_check(%struct.window*, %struct.layout_cell*, i32) #1

declare dso_local i32 @layout_resize_adjust(%struct.window*, %struct.layout_cell*, i32, i32) #1

declare dso_local i32 @layout_fix_offsets(%struct.window*) #1

declare dso_local i32 @layout_fix_panes(%struct.window*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
