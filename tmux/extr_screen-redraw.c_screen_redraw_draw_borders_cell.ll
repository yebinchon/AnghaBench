; ModuleID = '/home/carl/AnghaBench/tmux/extr_screen-redraw.c_screen_redraw_draw_borders_cell.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_screen-redraw.c_screen_redraw_draw_borders_cell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.window_pane* }
%struct.window_pane = type { i32 }
%struct.screen_redraw_ctx = type { i64, i64, i32, i64, i64, %struct.client* }
%struct.client = type { %struct.tty, %struct.session* }
%struct.tty = type { i32 }
%struct.session = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.window* }
%struct.window = type { %struct.window_pane* }
%struct.grid_cell = type { i32 }

@marked_pane = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@CELL_INSIDE = common dso_local global i64 0, align 8
@CELL_BORDERS = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.screen_redraw_ctx*, i64, i64, %struct.grid_cell*, %struct.grid_cell*, %struct.grid_cell*, %struct.grid_cell*)* @screen_redraw_draw_borders_cell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @screen_redraw_draw_borders_cell(%struct.screen_redraw_ctx* %0, i64 %1, i64 %2, %struct.grid_cell* %3, %struct.grid_cell* %4, %struct.grid_cell* %5, %struct.grid_cell* %6) #0 {
  %8 = alloca %struct.screen_redraw_ctx*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.grid_cell*, align 8
  %12 = alloca %struct.grid_cell*, align 8
  %13 = alloca %struct.grid_cell*, align 8
  %14 = alloca %struct.grid_cell*, align 8
  %15 = alloca %struct.client*, align 8
  %16 = alloca %struct.session*, align 8
  %17 = alloca %struct.window*, align 8
  %18 = alloca %struct.tty*, align 8
  %19 = alloca %struct.window_pane*, align 8
  %20 = alloca %struct.window_pane*, align 8
  %21 = alloca %struct.window_pane*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.screen_redraw_ctx* %0, %struct.screen_redraw_ctx** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.grid_cell* %3, %struct.grid_cell** %11, align 8
  store %struct.grid_cell* %4, %struct.grid_cell** %12, align 8
  store %struct.grid_cell* %5, %struct.grid_cell** %13, align 8
  store %struct.grid_cell* %6, %struct.grid_cell** %14, align 8
  %27 = load %struct.screen_redraw_ctx*, %struct.screen_redraw_ctx** %8, align 8
  %28 = getelementptr inbounds %struct.screen_redraw_ctx, %struct.screen_redraw_ctx* %27, i32 0, i32 5
  %29 = load %struct.client*, %struct.client** %28, align 8
  store %struct.client* %29, %struct.client** %15, align 8
  %30 = load %struct.client*, %struct.client** %15, align 8
  %31 = getelementptr inbounds %struct.client, %struct.client* %30, i32 0, i32 1
  %32 = load %struct.session*, %struct.session** %31, align 8
  store %struct.session* %32, %struct.session** %16, align 8
  %33 = load %struct.session*, %struct.session** %16, align 8
  %34 = getelementptr inbounds %struct.session, %struct.session* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load %struct.window*, %struct.window** %36, align 8
  store %struct.window* %37, %struct.window** %17, align 8
  %38 = load %struct.client*, %struct.client** %15, align 8
  %39 = getelementptr inbounds %struct.client, %struct.client* %38, i32 0, i32 0
  store %struct.tty* %39, %struct.tty** %18, align 8
  %40 = load %struct.window*, %struct.window** %17, align 8
  %41 = getelementptr inbounds %struct.window, %struct.window* %40, i32 0, i32 0
  %42 = load %struct.window_pane*, %struct.window_pane** %41, align 8
  store %struct.window_pane* %42, %struct.window_pane** %20, align 8
  %43 = load %struct.window_pane*, %struct.window_pane** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @marked_pane, i32 0, i32 0), align 8
  store %struct.window_pane* %43, %struct.window_pane** %21, align 8
  %44 = load %struct.screen_redraw_ctx*, %struct.screen_redraw_ctx** %8, align 8
  %45 = getelementptr inbounds %struct.screen_redraw_ctx, %struct.screen_redraw_ctx* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %9, align 8
  %48 = add i64 %46, %47
  store i64 %48, i64* %23, align 8
  %49 = load %struct.screen_redraw_ctx*, %struct.screen_redraw_ctx** %8, align 8
  %50 = getelementptr inbounds %struct.screen_redraw_ctx, %struct.screen_redraw_ctx* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %10, align 8
  %53 = add i64 %51, %52
  store i64 %53, i64* %24, align 8
  %54 = load %struct.screen_redraw_ctx*, %struct.screen_redraw_ctx** %8, align 8
  %55 = getelementptr inbounds %struct.screen_redraw_ctx, %struct.screen_redraw_ctx* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %26, align 4
  %57 = load %struct.client*, %struct.client** %15, align 8
  %58 = load i64, i64* %23, align 8
  %59 = load i64, i64* %24, align 8
  %60 = load i32, i32* %26, align 4
  %61 = call i64 @screen_redraw_check_cell(%struct.client* %57, i64 %58, i64 %59, i32 %60, %struct.window_pane** %19)
  store i64 %61, i64* %22, align 8
  %62 = load i64, i64* %22, align 8
  %63 = load i64, i64* @CELL_INSIDE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %7
  br label %142

66:                                               ; preds = %7
  %67 = load i64, i64* %23, align 8
  %68 = load i64, i64* %24, align 8
  %69 = load i64, i64* %22, align 8
  %70 = load i32, i32* %26, align 4
  %71 = load %struct.window*, %struct.window** %17, align 8
  %72 = load %struct.window_pane*, %struct.window_pane** %20, align 8
  %73 = load %struct.window_pane*, %struct.window_pane** %19, align 8
  %74 = call i32 @screen_redraw_check_is(i64 %67, i64 %68, i64 %69, i32 %70, %struct.window* %71, %struct.window_pane* %72, %struct.window_pane* %73)
  store i32 %74, i32* %25, align 4
  %75 = load %struct.session*, %struct.session** %16, align 8
  %76 = load %struct.session*, %struct.session** %16, align 8
  %77 = getelementptr inbounds %struct.session, %struct.session* %76, i32 0, i32 0
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = load %struct.window_pane*, %struct.window_pane** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @marked_pane, i32 0, i32 0), align 8
  %80 = call i64 @server_is_marked(%struct.session* %75, %struct.TYPE_3__* %78, %struct.window_pane* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %104

82:                                               ; preds = %66
  %83 = load i64, i64* %23, align 8
  %84 = load i64, i64* %24, align 8
  %85 = load i64, i64* %22, align 8
  %86 = load i32, i32* %26, align 4
  %87 = load %struct.window*, %struct.window** %17, align 8
  %88 = load %struct.window_pane*, %struct.window_pane** %21, align 8
  %89 = load %struct.window_pane*, %struct.window_pane** %19, align 8
  %90 = call i32 @screen_redraw_check_is(i64 %83, i64 %84, i64 %85, i32 %86, %struct.window* %87, %struct.window_pane* %88, %struct.window_pane* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %82
  %93 = load i32, i32* %25, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load %struct.tty*, %struct.tty** %18, align 8
  %97 = load %struct.grid_cell*, %struct.grid_cell** %11, align 8
  %98 = call i32 @tty_attributes(%struct.tty* %96, %struct.grid_cell* %97, i32* null)
  br label %103

99:                                               ; preds = %92
  %100 = load %struct.tty*, %struct.tty** %18, align 8
  %101 = load %struct.grid_cell*, %struct.grid_cell** %13, align 8
  %102 = call i32 @tty_attributes(%struct.tty* %100, %struct.grid_cell* %101, i32* null)
  br label %103

103:                                              ; preds = %99, %95
  br label %116

104:                                              ; preds = %82, %66
  %105 = load i32, i32* %25, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = load %struct.tty*, %struct.tty** %18, align 8
  %109 = load %struct.grid_cell*, %struct.grid_cell** %12, align 8
  %110 = call i32 @tty_attributes(%struct.tty* %108, %struct.grid_cell* %109, i32* null)
  br label %115

111:                                              ; preds = %104
  %112 = load %struct.tty*, %struct.tty** %18, align 8
  %113 = load %struct.grid_cell*, %struct.grid_cell** %14, align 8
  %114 = call i32 @tty_attributes(%struct.tty* %112, %struct.grid_cell* %113, i32* null)
  br label %115

115:                                              ; preds = %111, %107
  br label %116

116:                                              ; preds = %115, %103
  %117 = load %struct.screen_redraw_ctx*, %struct.screen_redraw_ctx** %8, align 8
  %118 = getelementptr inbounds %struct.screen_redraw_ctx, %struct.screen_redraw_ctx* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %116
  %122 = load %struct.tty*, %struct.tty** %18, align 8
  %123 = load i64, i64* %9, align 8
  %124 = load %struct.screen_redraw_ctx*, %struct.screen_redraw_ctx** %8, align 8
  %125 = getelementptr inbounds %struct.screen_redraw_ctx, %struct.screen_redraw_ctx* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* %10, align 8
  %128 = add i64 %126, %127
  %129 = call i32 @tty_cursor(%struct.tty* %122, i64 %123, i64 %128)
  br label %135

130:                                              ; preds = %116
  %131 = load %struct.tty*, %struct.tty** %18, align 8
  %132 = load i64, i64* %9, align 8
  %133 = load i64, i64* %10, align 8
  %134 = call i32 @tty_cursor(%struct.tty* %131, i64 %132, i64 %133)
  br label %135

135:                                              ; preds = %130, %121
  %136 = load %struct.tty*, %struct.tty** %18, align 8
  %137 = load i32*, i32** @CELL_BORDERS, align 8
  %138 = load i64, i64* %22, align 8
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @tty_putc(%struct.tty* %136, i32 %140)
  br label %142

142:                                              ; preds = %135, %65
  ret void
}

declare dso_local i64 @screen_redraw_check_cell(%struct.client*, i64, i64, i32, %struct.window_pane**) #1

declare dso_local i32 @screen_redraw_check_is(i64, i64, i64, i32, %struct.window*, %struct.window_pane*, %struct.window_pane*) #1

declare dso_local i64 @server_is_marked(%struct.session*, %struct.TYPE_3__*, %struct.window_pane*) #1

declare dso_local i32 @tty_attributes(%struct.tty*, %struct.grid_cell*, i32*) #1

declare dso_local i32 @tty_cursor(%struct.tty*, i64, i64) #1

declare dso_local i32 @tty_putc(%struct.tty*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
