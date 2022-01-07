; ModuleID = '/home/carl/AnghaBench/tmux/extr_window.c_window_pane_alternate_off.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window.c_window_pane_alternate_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_pane = type { i64, i64, i32, %struct.TYPE_5__*, %struct.screen, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.screen = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.grid_cell = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"alternate-screen\00", align 1
@UINT_MAX = common dso_local global i64 0, align 8
@GRID_HISTORY = common dso_local global i32 0, align 4
@PANE_REDRAW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @window_pane_alternate_off(%struct.window_pane* %0, %struct.grid_cell* %1, i32 %2) #0 {
  %4 = alloca %struct.window_pane*, align 8
  %5 = alloca %struct.grid_cell*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.screen*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.window_pane* %0, %struct.window_pane** %4, align 8
  store %struct.grid_cell* %1, %struct.grid_cell** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %11 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %10, i32 0, i32 4
  store %struct.screen* %11, %struct.screen** %7, align 8
  %12 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %13 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @options_get_number(i32 %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %156

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %78

21:                                               ; preds = %18
  %22 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %23 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @UINT_MAX, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %78

27:                                               ; preds = %21
  %28 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %29 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @UINT_MAX, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %78

33:                                               ; preds = %27
  %34 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %35 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = load %struct.screen*, %struct.screen** %7, align 8
  %39 = getelementptr inbounds %struct.screen, %struct.screen* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.screen*, %struct.screen** %7, align 8
  %41 = getelementptr inbounds %struct.screen, %struct.screen* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.screen*, %struct.screen** %7, align 8
  %44 = call i32 @screen_size_x(%struct.screen* %43)
  %45 = sub nsw i32 %44, 1
  %46 = icmp sgt i32 %42, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %33
  %48 = load %struct.screen*, %struct.screen** %7, align 8
  %49 = call i32 @screen_size_x(%struct.screen* %48)
  %50 = sub nsw i32 %49, 1
  %51 = load %struct.screen*, %struct.screen** %7, align 8
  %52 = getelementptr inbounds %struct.screen, %struct.screen* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  br label %53

53:                                               ; preds = %47, %33
  %54 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %55 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = load %struct.screen*, %struct.screen** %7, align 8
  %59 = getelementptr inbounds %struct.screen, %struct.screen* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.screen*, %struct.screen** %7, align 8
  %61 = getelementptr inbounds %struct.screen, %struct.screen* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.screen*, %struct.screen** %7, align 8
  %64 = call i32 @screen_size_y(%struct.screen* %63)
  %65 = sub nsw i32 %64, 1
  %66 = icmp sgt i32 %62, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %53
  %68 = load %struct.screen*, %struct.screen** %7, align 8
  %69 = call i32 @screen_size_y(%struct.screen* %68)
  %70 = sub nsw i32 %69, 1
  %71 = load %struct.screen*, %struct.screen** %7, align 8
  %72 = getelementptr inbounds %struct.screen, %struct.screen* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %67, %53
  %74 = load %struct.grid_cell*, %struct.grid_cell** %5, align 8
  %75 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %76 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %75, i32 0, i32 5
  %77 = call i32 @memcpy(%struct.grid_cell* %74, i32* %76, i32 4)
  br label %78

78:                                               ; preds = %73, %27, %21, %18
  %79 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %80 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %79, i32 0, i32 3
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = icmp eq %struct.TYPE_5__* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %156

84:                                               ; preds = %78
  %85 = load %struct.screen*, %struct.screen** %7, align 8
  %86 = call i32 @screen_size_x(%struct.screen* %85)
  store i32 %86, i32* %8, align 4
  %87 = load %struct.screen*, %struct.screen** %7, align 8
  %88 = call i32 @screen_size_y(%struct.screen* %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %91 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %90, i32 0, i32 3
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp sgt i32 %89, %94
  br i1 %95, label %96, label %105

96:                                               ; preds = %84
  %97 = load %struct.screen*, %struct.screen** %7, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %100 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %99, i32 0, i32 3
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @screen_resize(%struct.screen* %97, i32 %98, i32 %103, i32 1)
  br label %105

105:                                              ; preds = %96, %84
  %106 = load %struct.screen*, %struct.screen** %7, align 8
  %107 = getelementptr inbounds %struct.screen, %struct.screen* %106, i32 0, i32 2
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = load %struct.screen*, %struct.screen** %7, align 8
  %110 = call i32 @screen_hsize(%struct.screen* %109)
  %111 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %112 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %111, i32 0, i32 3
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @grid_duplicate_lines(%struct.TYPE_4__* %108, i32 %110, %struct.TYPE_5__* %113, i32 0, i32 %114)
  %116 = load i32, i32* @GRID_HISTORY, align 4
  %117 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %118 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.screen, %struct.screen* %118, i32 0, i32 2
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %116
  store i32 %123, i32* %121, align 4
  %124 = load i32, i32* %9, align 4
  %125 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %126 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %125, i32 0, i32 3
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp sgt i32 %124, %129
  br i1 %130, label %139, label %131

131:                                              ; preds = %105
  %132 = load i32, i32* %8, align 4
  %133 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %134 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %133, i32 0, i32 3
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %132, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %131, %105
  %140 = load %struct.screen*, %struct.screen** %7, align 8
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* %9, align 4
  %143 = call i32 @screen_resize(%struct.screen* %140, i32 %141, i32 %142, i32 1)
  br label %144

144:                                              ; preds = %139, %131
  %145 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %146 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %145, i32 0, i32 3
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %146, align 8
  %148 = call i32 @grid_destroy(%struct.TYPE_5__* %147)
  %149 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %150 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %149, i32 0, i32 3
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %150, align 8
  %151 = load i32, i32* @PANE_REDRAW, align 4
  %152 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %153 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 8
  br label %156

156:                                              ; preds = %144, %83, %17
  ret void
}

declare dso_local i32 @options_get_number(i32, i8*) #1

declare dso_local i32 @screen_size_x(%struct.screen*) #1

declare dso_local i32 @screen_size_y(%struct.screen*) #1

declare dso_local i32 @memcpy(%struct.grid_cell*, i32*, i32) #1

declare dso_local i32 @screen_resize(%struct.screen*, i32, i32, i32) #1

declare dso_local i32 @grid_duplicate_lines(%struct.TYPE_4__*, i32, %struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @screen_hsize(%struct.screen*) #1

declare dso_local i32 @grid_destroy(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
