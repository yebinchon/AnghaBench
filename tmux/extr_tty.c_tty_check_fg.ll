; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty.c_tty_check_fg.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty.c_tty_check_fg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.window_pane = type { i32 }
%struct.grid_cell = type { i32, i32, i32 }

@GRID_FLAG_NOPALETTE = common dso_local global i32 0, align 4
@GRID_ATTR_BRIGHT = common dso_local global i32 0, align 4
@COLOUR_FLAG_RGB = common dso_local global i32 0, align 4
@TTYC_SETRGBF = common dso_local global i32 0, align 4
@TERM_256COLOURS = common dso_local global i32 0, align 4
@TTYC_COLORS = common dso_local global i32 0, align 4
@COLOUR_FLAG_256 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty*, %struct.window_pane*, %struct.grid_cell*)* @tty_check_fg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty_check_fg(%struct.tty* %0, %struct.window_pane* %1, %struct.grid_cell* %2) #0 {
  %4 = alloca %struct.tty*, align 8
  %5 = alloca %struct.window_pane*, align 8
  %6 = alloca %struct.grid_cell*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %4, align 8
  store %struct.window_pane* %1, %struct.window_pane** %5, align 8
  store %struct.grid_cell* %2, %struct.grid_cell** %6, align 8
  %12 = load %struct.grid_cell*, %struct.grid_cell** %6, align 8
  %13 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* @GRID_FLAG_NOPALETTE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %45

19:                                               ; preds = %3
  %20 = load %struct.grid_cell*, %struct.grid_cell** %6, align 8
  %21 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp slt i32 %23, 8
  br i1 %24, label %25, label %35

25:                                               ; preds = %19
  %26 = load %struct.grid_cell*, %struct.grid_cell** %6, align 8
  %27 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @GRID_ATTR_BRIGHT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* %11, align 4
  %34 = add nsw i32 %33, 90
  store i32 %34, i32* %11, align 4
  br label %35

35:                                               ; preds = %32, %25, %19
  %36 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @window_pane_get_palette(%struct.window_pane* %36, i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = icmp ne i32 %38, -1
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.grid_cell*, %struct.grid_cell** %6, align 8
  %43 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %40, %35
  br label %45

45:                                               ; preds = %44, %3
  %46 = load %struct.grid_cell*, %struct.grid_cell** %6, align 8
  %47 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @COLOUR_FLAG_RGB, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %72

52:                                               ; preds = %45
  %53 = load %struct.tty*, %struct.tty** %4, align 8
  %54 = getelementptr inbounds %struct.tty, %struct.tty* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = load i32, i32* @TTYC_SETRGBF, align 4
  %57 = call i32 @tty_term_has(%struct.TYPE_3__* %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %70, label %59

59:                                               ; preds = %52
  %60 = load %struct.grid_cell*, %struct.grid_cell** %6, align 8
  %61 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @colour_split_rgb(i32 %62, i32* %7, i32* %8, i32* %9)
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @colour_find_rgb(i32 %64, i32 %65, i32 %66)
  %68 = load %struct.grid_cell*, %struct.grid_cell** %6, align 8
  %69 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  br label %71

70:                                               ; preds = %52
  br label %152

71:                                               ; preds = %59
  br label %72

72:                                               ; preds = %71, %45
  %73 = load %struct.tty*, %struct.tty** %4, align 8
  %74 = getelementptr inbounds %struct.tty, %struct.tty* %73, i32 0, i32 1
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.tty*, %struct.tty** %4, align 8
  %79 = getelementptr inbounds %struct.tty, %struct.tty* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %77, %80
  %82 = load i32, i32* @TERM_256COLOURS, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %72
  store i32 256, i32* %10, align 4
  br label %92

86:                                               ; preds = %72
  %87 = load %struct.tty*, %struct.tty** %4, align 8
  %88 = getelementptr inbounds %struct.tty, %struct.tty* %87, i32 0, i32 1
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = load i32, i32* @TTYC_COLORS, align 4
  %91 = call i32 @tty_term_number(%struct.TYPE_3__* %89, i32 %90)
  store i32 %91, i32* %10, align 4
  br label %92

92:                                               ; preds = %86, %85
  %93 = load %struct.grid_cell*, %struct.grid_cell** %6, align 8
  %94 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @COLOUR_FLAG_256, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %129

99:                                               ; preds = %92
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 256
  br i1 %101, label %102, label %128

102:                                              ; preds = %99
  %103 = load %struct.grid_cell*, %struct.grid_cell** %6, align 8
  %104 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @colour_256to16(i32 %105)
  %107 = load %struct.grid_cell*, %struct.grid_cell** %6, align 8
  %108 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load %struct.grid_cell*, %struct.grid_cell** %6, align 8
  %110 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %127

114:                                              ; preds = %102
  %115 = load %struct.grid_cell*, %struct.grid_cell** %6, align 8
  %116 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %117, 7
  store i32 %118, i32* %116, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp sge i32 %119, 16
  br i1 %120, label %121, label %126

121:                                              ; preds = %114
  %122 = load %struct.grid_cell*, %struct.grid_cell** %6, align 8
  %123 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, 90
  store i32 %125, i32* %123, align 4
  br label %126

126:                                              ; preds = %121, %114
  br label %127

127:                                              ; preds = %126, %102
  br label %128

128:                                              ; preds = %127, %99
  br label %152

129:                                              ; preds = %92
  %130 = load %struct.grid_cell*, %struct.grid_cell** %6, align 8
  %131 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp sge i32 %132, 90
  br i1 %133, label %134, label %152

134:                                              ; preds = %129
  %135 = load %struct.grid_cell*, %struct.grid_cell** %6, align 8
  %136 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp sle i32 %137, 97
  br i1 %138, label %139, label %152

139:                                              ; preds = %134
  %140 = load i32, i32* %10, align 4
  %141 = icmp slt i32 %140, 16
  br i1 %141, label %142, label %152

142:                                              ; preds = %139
  %143 = load %struct.grid_cell*, %struct.grid_cell** %6, align 8
  %144 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = sub nsw i32 %145, 90
  store i32 %146, i32* %144, align 4
  %147 = load i32, i32* @GRID_ATTR_BRIGHT, align 4
  %148 = load %struct.grid_cell*, %struct.grid_cell** %6, align 8
  %149 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 4
  br label %152

152:                                              ; preds = %70, %128, %142, %139, %134, %129
  ret void
}

declare dso_local i32 @window_pane_get_palette(%struct.window_pane*, i32) #1

declare dso_local i32 @tty_term_has(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @colour_split_rgb(i32, i32*, i32*, i32*) #1

declare dso_local i32 @colour_find_rgb(i32, i32, i32) #1

declare dso_local i32 @tty_term_number(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @colour_256to16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
