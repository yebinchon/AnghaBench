; ModuleID = '/home/carl/AnghaBench/tmux/extr_screen-redraw.c_screen_redraw_screen.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_screen-redraw.c_screen_redraw_screen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i32, i32, i32 (%struct.client*, %struct.screen_redraw_ctx*)* }
%struct.screen_redraw_ctx = type { i64, i64 }

@CLIENT_SUSPENDED = common dso_local global i32 0, align 4
@CLIENT_REDRAWWINDOW = common dso_local global i32 0, align 4
@CLIENT_REDRAWBORDERS = common dso_local global i32 0, align 4
@PANE_STATUS_OFF = common dso_local global i64 0, align 8
@CLIENT_REDRAWSTATUS = common dso_local global i32 0, align 4
@CLIENT_REDRAWSTATUSALWAYS = common dso_local global i32 0, align 4
@CLIENT_REDRAWOVERLAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @screen_redraw_screen(%struct.client* %0) #0 {
  %2 = alloca %struct.client*, align 8
  %3 = alloca %struct.screen_redraw_ctx, align 8
  %4 = alloca i32, align 4
  store %struct.client* %0, %struct.client** %2, align 8
  %5 = load %struct.client*, %struct.client** %2, align 8
  %6 = getelementptr inbounds %struct.client, %struct.client* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @CLIENT_SUSPENDED, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %75

12:                                               ; preds = %1
  %13 = load %struct.client*, %struct.client** %2, align 8
  %14 = load %struct.client*, %struct.client** %2, align 8
  %15 = getelementptr inbounds %struct.client, %struct.client* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @screen_redraw_update(%struct.client* %13, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load %struct.client*, %struct.client** %2, align 8
  %19 = call i32 @screen_redraw_set_context(%struct.client* %18, %struct.screen_redraw_ctx* %3)
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @CLIENT_REDRAWWINDOW, align 4
  %22 = load i32, i32* @CLIENT_REDRAWBORDERS, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %12
  %27 = getelementptr inbounds %struct.screen_redraw_ctx, %struct.screen_redraw_ctx* %3, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PANE_STATUS_OFF, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = call i32 @screen_redraw_draw_pane_status(%struct.screen_redraw_ctx* %3)
  br label %33

33:                                               ; preds = %31, %26
  %34 = call i32 @screen_redraw_draw_borders(%struct.screen_redraw_ctx* %3)
  br label %35

35:                                               ; preds = %33, %12
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @CLIENT_REDRAWWINDOW, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = call i32 @screen_redraw_draw_panes(%struct.screen_redraw_ctx* %3)
  br label %42

42:                                               ; preds = %40, %35
  %43 = getelementptr inbounds %struct.screen_redraw_ctx, %struct.screen_redraw_ctx* %3, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @CLIENT_REDRAWSTATUS, align 4
  %49 = load i32, i32* @CLIENT_REDRAWSTATUSALWAYS, align 4
  %50 = or i32 %48, %49
  %51 = and i32 %47, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = call i32 @screen_redraw_draw_status(%struct.screen_redraw_ctx* %3)
  br label %55

55:                                               ; preds = %53, %46, %42
  %56 = load %struct.client*, %struct.client** %2, align 8
  %57 = getelementptr inbounds %struct.client, %struct.client* %56, i32 0, i32 2
  %58 = load i32 (%struct.client*, %struct.screen_redraw_ctx*)*, i32 (%struct.client*, %struct.screen_redraw_ctx*)** %57, align 8
  %59 = icmp ne i32 (%struct.client*, %struct.screen_redraw_ctx*)* %58, null
  br i1 %59, label %60, label %71

60:                                               ; preds = %55
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @CLIENT_REDRAWOVERLAY, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load %struct.client*, %struct.client** %2, align 8
  %67 = getelementptr inbounds %struct.client, %struct.client* %66, i32 0, i32 2
  %68 = load i32 (%struct.client*, %struct.screen_redraw_ctx*)*, i32 (%struct.client*, %struct.screen_redraw_ctx*)** %67, align 8
  %69 = load %struct.client*, %struct.client** %2, align 8
  %70 = call i32 %68(%struct.client* %69, %struct.screen_redraw_ctx* %3)
  br label %71

71:                                               ; preds = %65, %60, %55
  %72 = load %struct.client*, %struct.client** %2, align 8
  %73 = getelementptr inbounds %struct.client, %struct.client* %72, i32 0, i32 1
  %74 = call i32 @tty_reset(i32* %73)
  br label %75

75:                                               ; preds = %71, %11
  ret void
}

declare dso_local i32 @screen_redraw_update(%struct.client*, i32) #1

declare dso_local i32 @screen_redraw_set_context(%struct.client*, %struct.screen_redraw_ctx*) #1

declare dso_local i32 @screen_redraw_draw_pane_status(%struct.screen_redraw_ctx*) #1

declare dso_local i32 @screen_redraw_draw_borders(%struct.screen_redraw_ctx*) #1

declare dso_local i32 @screen_redraw_draw_panes(%struct.screen_redraw_ctx*) #1

declare dso_local i32 @screen_redraw_draw_status(%struct.screen_redraw_ctx*) #1

declare dso_local i32 @tty_reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
