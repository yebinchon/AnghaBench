; ModuleID = '/home/carl/AnghaBench/tmux/extr_server-fn.c_server_destroy_pane.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_server-fn.c_server_destroy_pane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_pane = type { i32, i32, i32, i32, i32, i32*, %struct.window* }
%struct.window = type { i32 }
%struct.screen_write_ctx = type { i32 }
%struct.grid_cell = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"remain-on-exit\00", align 1
@PANE_STATUSREADY = common dso_local global i32 0, align 4
@PANE_STATUSDRAWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"pane-died\00", align 1
@grid_default_cell = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Pane is dead (status %d, %s)\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Pane is dead (signal %d, %s)\00", align 1
@PANE_REDRAW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"pane-exited\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @server_destroy_pane(%struct.window_pane* %0, i32 %1) #0 {
  %3 = alloca %struct.window_pane*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.window*, align 8
  %6 = alloca %struct.screen_write_ctx, align 4
  %7 = alloca %struct.grid_cell, align 4
  %8 = alloca i32, align 4
  %9 = alloca [26 x i8], align 16
  store %struct.window_pane* %0, %struct.window_pane** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.window_pane*, %struct.window_pane** %3, align 8
  %11 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %10, i32 0, i32 6
  %12 = load %struct.window*, %struct.window** %11, align 8
  store %struct.window* %12, %struct.window** %5, align 8
  %13 = load %struct.window_pane*, %struct.window_pane** %3, align 8
  %14 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %30

17:                                               ; preds = %2
  %18 = load %struct.window_pane*, %struct.window_pane** %3, align 8
  %19 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %18, i32 0, i32 5
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @bufferevent_free(i32* %20)
  %22 = load %struct.window_pane*, %struct.window_pane** %3, align 8
  %23 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %22, i32 0, i32 5
  store i32* null, i32** %23, align 8
  %24 = load %struct.window_pane*, %struct.window_pane** %3, align 8
  %25 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @close(i32 %26)
  %28 = load %struct.window_pane*, %struct.window_pane** %3, align 8
  %29 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %28, i32 0, i32 0
  store i32 -1, i32* %29, align 8
  br label %30

30:                                               ; preds = %17, %2
  %31 = load %struct.window_pane*, %struct.window_pane** %3, align 8
  %32 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @options_get_number(i32 %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %117

36:                                               ; preds = %30
  %37 = load %struct.window_pane*, %struct.window_pane** %3, align 8
  %38 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* @PANE_STATUSREADY, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %141

45:                                               ; preds = %36
  %46 = load %struct.window_pane*, %struct.window_pane** %3, align 8
  %47 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @PANE_STATUSDRAWN, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %141

53:                                               ; preds = %45
  %54 = load i32, i32* @PANE_STATUSDRAWN, align 4
  %55 = load %struct.window_pane*, %struct.window_pane** %3, align 8
  %56 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = load %struct.window_pane*, %struct.window_pane** %3, align 8
  %63 = call i32 @notify_pane(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %struct.window_pane* %62)
  br label %64

64:                                               ; preds = %61, %53
  %65 = load %struct.window_pane*, %struct.window_pane** %3, align 8
  %66 = load %struct.window_pane*, %struct.window_pane** %3, align 8
  %67 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %66, i32 0, i32 3
  %68 = call i32 @screen_write_start(%struct.screen_write_ctx* %6, %struct.window_pane* %65, i32* %67)
  %69 = getelementptr inbounds %struct.screen_write_ctx, %struct.screen_write_ctx* %6, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @screen_size_y(i32 %70)
  %72 = sub nsw i64 %71, 1
  %73 = call i32 @screen_write_scrollregion(%struct.screen_write_ctx* %6, i32 0, i64 %72)
  %74 = getelementptr inbounds %struct.screen_write_ctx, %struct.screen_write_ctx* %6, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @screen_size_y(i32 %75)
  %77 = sub nsw i64 %76, 1
  %78 = call i32 @screen_write_cursormove(%struct.screen_write_ctx* %6, i32 0, i64 %77, i32 0)
  %79 = call i32 @screen_write_linefeed(%struct.screen_write_ctx* %6, i32 1, i32 8)
  %80 = call i32 @memcpy(%struct.grid_cell* %7, i32* @grid_default_cell, i32 4)
  %81 = call i32 @time(i32* %8)
  %82 = getelementptr inbounds [26 x i8], [26 x i8]* %9, i64 0, i64 0
  %83 = call i32 @ctime_r(i32* %8, i8* %82)
  %84 = load %struct.window_pane*, %struct.window_pane** %3, align 8
  %85 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @WIFEXITED(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %64
  %90 = load %struct.window_pane*, %struct.window_pane** %3, align 8
  %91 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @WEXITSTATUS(i32 %92)
  %94 = getelementptr inbounds [26 x i8], [26 x i8]* %9, i64 0, i64 0
  %95 = call i32 @screen_write_nputs(%struct.screen_write_ctx* %6, i32 -1, %struct.grid_cell* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %93, i8* %94)
  br label %110

96:                                               ; preds = %64
  %97 = load %struct.window_pane*, %struct.window_pane** %3, align 8
  %98 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i64 @WIFSIGNALED(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %96
  %103 = load %struct.window_pane*, %struct.window_pane** %3, align 8
  %104 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @WTERMSIG(i32 %105)
  %107 = getelementptr inbounds [26 x i8], [26 x i8]* %9, i64 0, i64 0
  %108 = call i32 @screen_write_nputs(%struct.screen_write_ctx* %6, i32 -1, %struct.grid_cell* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %106, i8* %107)
  br label %109

109:                                              ; preds = %102, %96
  br label %110

110:                                              ; preds = %109, %89
  %111 = call i32 @screen_write_stop(%struct.screen_write_ctx* %6)
  %112 = load i32, i32* @PANE_REDRAW, align 4
  %113 = load %struct.window_pane*, %struct.window_pane** %3, align 8
  %114 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 4
  br label %141

117:                                              ; preds = %30
  %118 = load i32, i32* %4, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load %struct.window_pane*, %struct.window_pane** %3, align 8
  %122 = call i32 @notify_pane(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), %struct.window_pane* %121)
  br label %123

123:                                              ; preds = %120, %117
  %124 = load %struct.window*, %struct.window** %5, align 8
  %125 = call i32 @server_unzoom_window(%struct.window* %124)
  %126 = load %struct.window_pane*, %struct.window_pane** %3, align 8
  %127 = call i32 @layout_close_pane(%struct.window_pane* %126)
  %128 = load %struct.window*, %struct.window** %5, align 8
  %129 = load %struct.window_pane*, %struct.window_pane** %3, align 8
  %130 = call i32 @window_remove_pane(%struct.window* %128, %struct.window_pane* %129)
  %131 = load %struct.window*, %struct.window** %5, align 8
  %132 = getelementptr inbounds %struct.window, %struct.window* %131, i32 0, i32 0
  %133 = call i64 @TAILQ_EMPTY(i32* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %123
  %136 = load %struct.window*, %struct.window** %5, align 8
  %137 = call i32 @server_kill_window(%struct.window* %136)
  br label %141

138:                                              ; preds = %123
  %139 = load %struct.window*, %struct.window** %5, align 8
  %140 = call i32 @server_redraw_window(%struct.window* %139)
  br label %141

141:                                              ; preds = %44, %52, %110, %138, %135
  ret void
}

declare dso_local i32 @bufferevent_free(i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @options_get_number(i32, i8*) #1

declare dso_local i32 @notify_pane(i8*, %struct.window_pane*) #1

declare dso_local i32 @screen_write_start(%struct.screen_write_ctx*, %struct.window_pane*, i32*) #1

declare dso_local i32 @screen_write_scrollregion(%struct.screen_write_ctx*, i32, i64) #1

declare dso_local i64 @screen_size_y(i32) #1

declare dso_local i32 @screen_write_cursormove(%struct.screen_write_ctx*, i32, i64, i32) #1

declare dso_local i32 @screen_write_linefeed(%struct.screen_write_ctx*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.grid_cell*, i32*, i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @ctime_r(i32*, i8*) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i32 @screen_write_nputs(%struct.screen_write_ctx*, i32, %struct.grid_cell*, i8*, i32, i8*) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

declare dso_local i64 @WIFSIGNALED(i32) #1

declare dso_local i32 @WTERMSIG(i32) #1

declare dso_local i32 @screen_write_stop(%struct.screen_write_ctx*) #1

declare dso_local i32 @server_unzoom_window(%struct.window*) #1

declare dso_local i32 @layout_close_pane(%struct.window_pane*) #1

declare dso_local i32 @window_remove_pane(%struct.window*, %struct.window_pane*) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @server_kill_window(%struct.window*) #1

declare dso_local i32 @server_redraw_window(%struct.window*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
