; ModuleID = '/home/carl/AnghaBench/tmux/extr_screen-redraw.c_screen_redraw_check_is.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_screen-redraw.c_screen_redraw_check_is.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window = type { i32, i32 }
%struct.window_pane = type { i64, i32, i64, i32 }

@PANE_STATUS_TOP = common dso_local global i32 0, align 4
@PANE_STATUS_BOTTOM = common dso_local global i32 0, align 4
@CELL_OUTSIDE = common dso_local global i32 0, align 4
@CELL_INSIDE = common dso_local global i32 0, align 4
@PANE_STATUS_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, %struct.window*, %struct.window_pane*, %struct.window_pane*)* @screen_redraw_check_is to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @screen_redraw_check_is(i32 %0, i32 %1, i32 %2, i32 %3, %struct.window* %4, %struct.window_pane* %5, %struct.window_pane* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.window*, align 8
  %14 = alloca %struct.window_pane*, align 8
  %15 = alloca %struct.window_pane*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store %struct.window* %4, %struct.window** %13, align 8
  store %struct.window_pane* %5, %struct.window_pane** %14, align 8
  store %struct.window_pane* %6, %struct.window_pane** %15, align 8
  %17 = load %struct.window_pane*, %struct.window_pane** %14, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @screen_redraw_cell_border1(%struct.window_pane* %17, i32 %18, i32 %19)
  store i32 %20, i32* %16, align 4
  %21 = load i32, i32* %16, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %7
  %24 = load i32, i32* %16, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %7
  store i32 0, i32* %8, align 4
  br label %144

27:                                               ; preds = %23
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @PANE_STATUS_TOP, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* %16, align 4
  %33 = icmp eq i32 %32, 4
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 0, i32* %8, align 4
  br label %144

35:                                               ; preds = %31, %27
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* @PANE_STATUS_BOTTOM, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* %16, align 4
  %41 = icmp eq i32 %40, 3
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 0, i32* %8, align 4
  br label %144

43:                                               ; preds = %39, %35
  %44 = load %struct.window*, %struct.window** %13, align 8
  %45 = call i32 @window_count_panes(%struct.window* %44)
  %46 = icmp ne i32 %45, 2
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 1, i32* %8, align 4
  br label %144

48:                                               ; preds = %43
  %49 = load %struct.window_pane*, %struct.window_pane** %15, align 8
  %50 = icmp eq %struct.window_pane* %49, null
  br i1 %50, label %59, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @CELL_OUTSIDE, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @CELL_INSIDE, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55, %51, %48
  store i32 1, i32* %8, align 4
  br label %144

60:                                               ; preds = %55
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @PANE_STATUS_OFF, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i32 1, i32* %8, align 4
  br label %144

65:                                               ; preds = %60
  %66 = load %struct.window_pane*, %struct.window_pane** %15, align 8
  %67 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %104

70:                                               ; preds = %65
  %71 = load %struct.window_pane*, %struct.window_pane** %15, align 8
  %72 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.window*, %struct.window** %13, align 8
  %75 = getelementptr inbounds %struct.window, %struct.window* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %73, %76
  br i1 %77, label %78, label %104

78:                                               ; preds = %70
  %79 = load %struct.window_pane*, %struct.window_pane** %15, align 8
  %80 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %103

83:                                               ; preds = %78
  %84 = load %struct.window_pane*, %struct.window_pane** %15, align 8
  %85 = load %struct.window_pane*, %struct.window_pane** %14, align 8
  %86 = icmp eq %struct.window_pane* %84, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %83
  %88 = load i32, i32* %9, align 4
  %89 = load %struct.window_pane*, %struct.window_pane** %15, align 8
  %90 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = sdiv i32 %91, 2
  %93 = icmp sle i32 %88, %92
  %94 = zext i1 %93 to i32
  store i32 %94, i32* %8, align 4
  br label %144

95:                                               ; preds = %83
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.window_pane*, %struct.window_pane** %15, align 8
  %98 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = sdiv i32 %99, 2
  %101 = icmp sgt i32 %96, %100
  %102 = zext i1 %101 to i32
  store i32 %102, i32* %8, align 4
  br label %144

103:                                              ; preds = %78
  store i32 0, i32* %8, align 4
  br label %144

104:                                              ; preds = %70, %65
  %105 = load %struct.window_pane*, %struct.window_pane** %15, align 8
  %106 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %143

109:                                              ; preds = %104
  %110 = load %struct.window_pane*, %struct.window_pane** %15, align 8
  %111 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.window*, %struct.window** %13, align 8
  %114 = getelementptr inbounds %struct.window, %struct.window* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %112, %115
  br i1 %116, label %117, label %143

117:                                              ; preds = %109
  %118 = load %struct.window_pane*, %struct.window_pane** %15, align 8
  %119 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %142

122:                                              ; preds = %117
  %123 = load %struct.window_pane*, %struct.window_pane** %15, align 8
  %124 = load %struct.window_pane*, %struct.window_pane** %14, align 8
  %125 = icmp eq %struct.window_pane* %123, %124
  br i1 %125, label %126, label %134

126:                                              ; preds = %122
  %127 = load i32, i32* %10, align 4
  %128 = load %struct.window_pane*, %struct.window_pane** %15, align 8
  %129 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = sdiv i32 %130, 2
  %132 = icmp sle i32 %127, %131
  %133 = zext i1 %132 to i32
  store i32 %133, i32* %8, align 4
  br label %144

134:                                              ; preds = %122
  %135 = load i32, i32* %10, align 4
  %136 = load %struct.window_pane*, %struct.window_pane** %15, align 8
  %137 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = sdiv i32 %138, 2
  %140 = icmp sgt i32 %135, %139
  %141 = zext i1 %140 to i32
  store i32 %141, i32* %8, align 4
  br label %144

142:                                              ; preds = %117
  store i32 0, i32* %8, align 4
  br label %144

143:                                              ; preds = %109, %104
  store i32 1, i32* %8, align 4
  br label %144

144:                                              ; preds = %143, %142, %134, %126, %103, %95, %87, %64, %59, %47, %42, %34, %26
  %145 = load i32, i32* %8, align 4
  ret i32 %145
}

declare dso_local i32 @screen_redraw_cell_border1(%struct.window_pane*, i32, i32) #1

declare dso_local i32 @window_count_panes(%struct.window*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
