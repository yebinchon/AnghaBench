; ModuleID = '/home/carl/AnghaBench/tmux/extr_screen-redraw.c_screen_redraw_cell_border1.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_screen-redraw.c_screen_redraw_cell_border1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_pane = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.window_pane*, i64, i64)* @screen_redraw_cell_border1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @screen_redraw_cell_border1(%struct.window_pane* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.window_pane*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.window_pane* %0, %struct.window_pane** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %10 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sge i64 %8, %11
  br i1 %12, label %13, label %40

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %16 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %19 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %17, %20
  %22 = icmp slt i64 %14, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %13
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %26 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp sge i64 %24, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %23
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %32 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %35 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %33, %36
  %38 = icmp slt i64 %30, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %135

40:                                               ; preds = %29, %23, %13, %3
  %41 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %42 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %40
  %46 = load i64, i64* %7, align 8
  %47 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %48 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %49, 1
  %51 = icmp sge i64 %46, %50
  br i1 %51, label %52, label %87

52:                                               ; preds = %45, %40
  %53 = load i64, i64* %7, align 8
  %54 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %55 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %58 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %56, %59
  %61 = icmp sle i64 %53, %60
  br i1 %61, label %62, label %87

62:                                               ; preds = %52
  %63 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %64 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  %68 = load i64, i64* %6, align 8
  %69 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %70 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %71, 1
  %73 = icmp eq i64 %68, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  store i32 1, i32* %4, align 4
  br label %135

75:                                               ; preds = %67, %62
  %76 = load i64, i64* %6, align 8
  %77 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %78 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %81 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %79, %82
  %84 = icmp eq i64 %76, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %75
  store i32 2, i32* %4, align 4
  br label %135

86:                                               ; preds = %75
  br label %87

87:                                               ; preds = %86, %52, %45
  %88 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %89 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %87
  %93 = load i64, i64* %6, align 8
  %94 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %95 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = sub nsw i64 %96, 1
  %98 = icmp sge i64 %93, %97
  br i1 %98, label %99, label %134

99:                                               ; preds = %92, %87
  %100 = load i64, i64* %6, align 8
  %101 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %102 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %105 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %103, %106
  %108 = icmp sle i64 %100, %107
  br i1 %108, label %109, label %134

109:                                              ; preds = %99
  %110 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %111 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %109
  %115 = load i64, i64* %7, align 8
  %116 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %117 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = sub nsw i64 %118, 1
  %120 = icmp eq i64 %115, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %114
  store i32 3, i32* %4, align 4
  br label %135

122:                                              ; preds = %114, %109
  %123 = load i64, i64* %7, align 8
  %124 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %125 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %128 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %126, %129
  %131 = icmp eq i64 %123, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %122
  store i32 4, i32* %4, align 4
  br label %135

133:                                              ; preds = %122
  br label %134

134:                                              ; preds = %133, %99, %92
  store i32 -1, i32* %4, align 4
  br label %135

135:                                              ; preds = %134, %132, %121, %85, %74, %39
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
