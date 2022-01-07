; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty.c_tty_default_colours.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty.c_tty_default_colours.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grid_cell = type { i32, i32 }
%struct.window_pane = type { i32, %struct.TYPE_3__*, %struct.style, %struct.style, %struct.options* }
%struct.TYPE_3__ = type { %struct.window_pane* }
%struct.style = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.options = type { i32 }

@PANE_STYLECHANGED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"window-active-style\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"window-style\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.grid_cell*, %struct.window_pane*)* @tty_default_colours to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty_default_colours(%struct.grid_cell* %0, %struct.window_pane* %1) #0 {
  %3 = alloca %struct.grid_cell*, align 8
  %4 = alloca %struct.window_pane*, align 8
  %5 = alloca %struct.options*, align 8
  %6 = alloca %struct.style*, align 8
  %7 = alloca %struct.style*, align 8
  %8 = alloca i32, align 4
  store %struct.grid_cell* %0, %struct.grid_cell** %3, align 8
  store %struct.window_pane* %1, %struct.window_pane** %4, align 8
  %9 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %10 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %9, i32 0, i32 4
  %11 = load %struct.options*, %struct.options** %10, align 8
  store %struct.options* %11, %struct.options** %5, align 8
  %12 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %13 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @PANE_STYLECHANGED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %2
  %19 = load i32, i32* @PANE_STYLECHANGED, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %22 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load %struct.options*, %struct.options** %5, align 8
  %26 = call %struct.style* @options_get_style(%struct.options* %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store %struct.style* %26, %struct.style** %7, align 8
  %27 = load %struct.options*, %struct.options** %5, align 8
  %28 = call %struct.style* @options_get_style(%struct.options* %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store %struct.style* %28, %struct.style** %6, align 8
  %29 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %30 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %29, i32 0, i32 3
  %31 = load %struct.style*, %struct.style** %7, align 8
  %32 = call i32 @style_copy(%struct.style* %30, %struct.style* %31)
  %33 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %34 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %33, i32 0, i32 2
  %35 = load %struct.style*, %struct.style** %6, align 8
  %36 = call i32 @style_copy(%struct.style* %34, %struct.style* %35)
  br label %42

37:                                               ; preds = %2
  %38 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %39 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %38, i32 0, i32 3
  store %struct.style* %39, %struct.style** %7, align 8
  %40 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %41 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %40, i32 0, i32 2
  store %struct.style* %41, %struct.style** %6, align 8
  br label %42

42:                                               ; preds = %37, %18
  %43 = load %struct.grid_cell*, %struct.grid_cell** %3, align 8
  %44 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 8
  br i1 %46, label %47, label %94

47:                                               ; preds = %42
  %48 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %49 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %50 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %49, i32 0, i32 1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load %struct.window_pane*, %struct.window_pane** %52, align 8
  %54 = icmp eq %struct.window_pane* %48, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %47
  %56 = load %struct.style*, %struct.style** %7, align 8
  %57 = getelementptr inbounds %struct.style, %struct.style* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 8
  br i1 %60, label %61, label %68

61:                                               ; preds = %55
  %62 = load %struct.style*, %struct.style** %7, align 8
  %63 = getelementptr inbounds %struct.style, %struct.style* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.grid_cell*, %struct.grid_cell** %3, align 8
  %67 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  br label %75

68:                                               ; preds = %55, %47
  %69 = load %struct.style*, %struct.style** %6, align 8
  %70 = getelementptr inbounds %struct.style, %struct.style* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.grid_cell*, %struct.grid_cell** %3, align 8
  %74 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %68, %61
  %76 = load %struct.grid_cell*, %struct.grid_cell** %3, align 8
  %77 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 8
  br i1 %79, label %80, label %93

80:                                               ; preds = %75
  %81 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %82 = load %struct.grid_cell*, %struct.grid_cell** %3, align 8
  %83 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @window_pane_get_palette(%struct.window_pane* %81, i32 %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, -1
  br i1 %87, label %88, label %92

88:                                               ; preds = %80
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.grid_cell*, %struct.grid_cell** %3, align 8
  %91 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  br label %92

92:                                               ; preds = %88, %80
  br label %93

93:                                               ; preds = %92, %75
  br label %94

94:                                               ; preds = %93, %42
  %95 = load %struct.grid_cell*, %struct.grid_cell** %3, align 8
  %96 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, 8
  br i1 %98, label %99, label %146

99:                                               ; preds = %94
  %100 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %101 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %102 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %101, i32 0, i32 1
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load %struct.window_pane*, %struct.window_pane** %104, align 8
  %106 = icmp eq %struct.window_pane* %100, %105
  br i1 %106, label %107, label %120

107:                                              ; preds = %99
  %108 = load %struct.style*, %struct.style** %7, align 8
  %109 = getelementptr inbounds %struct.style, %struct.style* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 8
  br i1 %112, label %113, label %120

113:                                              ; preds = %107
  %114 = load %struct.style*, %struct.style** %7, align 8
  %115 = getelementptr inbounds %struct.style, %struct.style* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.grid_cell*, %struct.grid_cell** %3, align 8
  %119 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  br label %127

120:                                              ; preds = %107, %99
  %121 = load %struct.style*, %struct.style** %6, align 8
  %122 = getelementptr inbounds %struct.style, %struct.style* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.grid_cell*, %struct.grid_cell** %3, align 8
  %126 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  br label %127

127:                                              ; preds = %120, %113
  %128 = load %struct.grid_cell*, %struct.grid_cell** %3, align 8
  %129 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 8
  br i1 %131, label %132, label %145

132:                                              ; preds = %127
  %133 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %134 = load %struct.grid_cell*, %struct.grid_cell** %3, align 8
  %135 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @window_pane_get_palette(%struct.window_pane* %133, i32 %136)
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* %8, align 4
  %139 = icmp ne i32 %138, -1
  br i1 %139, label %140, label %144

140:                                              ; preds = %132
  %141 = load i32, i32* %8, align 4
  %142 = load %struct.grid_cell*, %struct.grid_cell** %3, align 8
  %143 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 4
  br label %144

144:                                              ; preds = %140, %132
  br label %145

145:                                              ; preds = %144, %127
  br label %146

146:                                              ; preds = %145, %94
  ret void
}

declare dso_local %struct.style* @options_get_style(%struct.options*, i8*) #1

declare dso_local i32 @style_copy(%struct.style*, %struct.style*) #1

declare dso_local i32 @window_pane_get_palette(%struct.window_pane*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
