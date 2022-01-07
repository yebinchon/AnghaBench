; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty.c_tty_check_bg.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty.c_tty_check_bg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.window_pane = type { i32 }
%struct.grid_cell = type { i32, i32 }

@GRID_FLAG_NOPALETTE = common dso_local global i32 0, align 4
@COLOUR_FLAG_RGB = common dso_local global i32 0, align 4
@TTYC_SETRGBB = common dso_local global i32 0, align 4
@TERM_256COLOURS = common dso_local global i32 0, align 4
@TTYC_COLORS = common dso_local global i32 0, align 4
@COLOUR_FLAG_256 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty*, %struct.window_pane*, %struct.grid_cell*)* @tty_check_bg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty_check_bg(%struct.tty* %0, %struct.window_pane* %1, %struct.grid_cell* %2) #0 {
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
  br i1 %18, label %19, label %31

19:                                               ; preds = %3
  %20 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %21 = load %struct.grid_cell*, %struct.grid_cell** %6, align 8
  %22 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @window_pane_get_palette(%struct.window_pane* %20, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.grid_cell*, %struct.grid_cell** %6, align 8
  %29 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %26, %19
  br label %31

31:                                               ; preds = %30, %3
  %32 = load %struct.grid_cell*, %struct.grid_cell** %6, align 8
  %33 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @COLOUR_FLAG_RGB, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %31
  %39 = load %struct.tty*, %struct.tty** %4, align 8
  %40 = getelementptr inbounds %struct.tty, %struct.tty* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load i32, i32* @TTYC_SETRGBB, align 4
  %43 = call i32 @tty_term_has(%struct.TYPE_3__* %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %38
  %46 = load %struct.grid_cell*, %struct.grid_cell** %6, align 8
  %47 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @colour_split_rgb(i32 %48, i32* %7, i32* %8, i32* %9)
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @colour_find_rgb(i32 %50, i32 %51, i32 %52)
  %54 = load %struct.grid_cell*, %struct.grid_cell** %6, align 8
  %55 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  br label %57

56:                                               ; preds = %38
  br label %133

57:                                               ; preds = %45
  br label %58

58:                                               ; preds = %57, %31
  %59 = load %struct.tty*, %struct.tty** %4, align 8
  %60 = getelementptr inbounds %struct.tty, %struct.tty* %59, i32 0, i32 1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.tty*, %struct.tty** %4, align 8
  %65 = getelementptr inbounds %struct.tty, %struct.tty* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %63, %66
  %68 = load i32, i32* @TERM_256COLOURS, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %58
  store i32 256, i32* %10, align 4
  br label %78

72:                                               ; preds = %58
  %73 = load %struct.tty*, %struct.tty** %4, align 8
  %74 = getelementptr inbounds %struct.tty, %struct.tty* %73, i32 0, i32 1
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = load i32, i32* @TTYC_COLORS, align 4
  %77 = call i32 @tty_term_number(%struct.TYPE_3__* %75, i32 %76)
  store i32 %77, i32* %10, align 4
  br label %78

78:                                               ; preds = %72, %71
  %79 = load %struct.grid_cell*, %struct.grid_cell** %6, align 8
  %80 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @COLOUR_FLAG_256, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %115

85:                                               ; preds = %78
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 256
  br i1 %87, label %88, label %114

88:                                               ; preds = %85
  %89 = load %struct.grid_cell*, %struct.grid_cell** %6, align 8
  %90 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @colour_256to16(i32 %91)
  %93 = load %struct.grid_cell*, %struct.grid_cell** %6, align 8
  %94 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.grid_cell*, %struct.grid_cell** %6, align 8
  %96 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %88
  %101 = load %struct.grid_cell*, %struct.grid_cell** %6, align 8
  %102 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, 7
  store i32 %104, i32* %102, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp sge i32 %105, 16
  br i1 %106, label %107, label %112

107:                                              ; preds = %100
  %108 = load %struct.grid_cell*, %struct.grid_cell** %6, align 8
  %109 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 90
  store i32 %111, i32* %109, align 4
  br label %112

112:                                              ; preds = %107, %100
  br label %113

113:                                              ; preds = %112, %88
  br label %114

114:                                              ; preds = %113, %85
  br label %133

115:                                              ; preds = %78
  %116 = load %struct.grid_cell*, %struct.grid_cell** %6, align 8
  %117 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp sge i32 %118, 90
  br i1 %119, label %120, label %133

120:                                              ; preds = %115
  %121 = load %struct.grid_cell*, %struct.grid_cell** %6, align 8
  %122 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp sle i32 %123, 97
  br i1 %124, label %125, label %133

125:                                              ; preds = %120
  %126 = load i32, i32* %10, align 4
  %127 = icmp slt i32 %126, 16
  br i1 %127, label %128, label %133

128:                                              ; preds = %125
  %129 = load %struct.grid_cell*, %struct.grid_cell** %6, align 8
  %130 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = sub nsw i32 %131, 90
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %56, %114, %128, %125, %120, %115
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
