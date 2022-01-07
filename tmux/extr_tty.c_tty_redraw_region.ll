; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty.c_tty_redraw_region.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty.c_tty_redraw_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32 }
%struct.tty_ctx = type { i64, i64, i64, %struct.window_pane* }
%struct.window_pane = type { i32, %struct.screen* }
%struct.screen = type { i32 }

@PANE_REDRAW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty*, %struct.tty_ctx*)* @tty_redraw_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty_redraw_region(%struct.tty* %0, %struct.tty_ctx* %1) #0 {
  %3 = alloca %struct.tty*, align 8
  %4 = alloca %struct.tty_ctx*, align 8
  %5 = alloca %struct.window_pane*, align 8
  %6 = alloca %struct.screen*, align 8
  %7 = alloca i64, align 8
  store %struct.tty* %0, %struct.tty** %3, align 8
  store %struct.tty_ctx* %1, %struct.tty_ctx** %4, align 8
  %8 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %9 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %8, i32 0, i32 3
  %10 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  store %struct.window_pane* %10, %struct.window_pane** %5, align 8
  %11 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %12 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %11, i32 0, i32 1
  %13 = load %struct.screen*, %struct.screen** %12, align 8
  store %struct.screen* %13, %struct.screen** %6, align 8
  %14 = load %struct.tty*, %struct.tty** %3, align 8
  %15 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %16 = call i64 @tty_large_region(%struct.tty* %14, %struct.tty_ctx* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load i32, i32* @PANE_REDRAW, align 4
  %20 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %21 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 8
  br label %77

24:                                               ; preds = %2
  %25 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %26 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %29 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %27, %30
  br i1 %31, label %40, label %32

32:                                               ; preds = %24
  %33 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %34 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %37 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %35, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %32, %24
  %41 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %42 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %7, align 8
  br label %44

44:                                               ; preds = %54, %40
  %45 = load i64, i64* %7, align 8
  %46 = load %struct.screen*, %struct.screen** %6, align 8
  %47 = call i64 @screen_size_y(%struct.screen* %46)
  %48 = icmp slt i64 %45, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load %struct.tty*, %struct.tty** %3, align 8
  %51 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @tty_draw_pane(%struct.tty* %50, %struct.tty_ctx* %51, i64 %52)
  br label %54

54:                                               ; preds = %49
  %55 = load i64, i64* %7, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %7, align 8
  br label %44

57:                                               ; preds = %44
  br label %77

58:                                               ; preds = %32
  %59 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %60 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %7, align 8
  br label %62

62:                                               ; preds = %73, %58
  %63 = load i64, i64* %7, align 8
  %64 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %65 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp sle i64 %63, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %62
  %69 = load %struct.tty*, %struct.tty** %3, align 8
  %70 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %71 = load i64, i64* %7, align 8
  %72 = call i32 @tty_draw_pane(%struct.tty* %69, %struct.tty_ctx* %70, i64 %71)
  br label %73

73:                                               ; preds = %68
  %74 = load i64, i64* %7, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %7, align 8
  br label %62

76:                                               ; preds = %62
  br label %77

77:                                               ; preds = %18, %76, %57
  ret void
}

declare dso_local i64 @tty_large_region(%struct.tty*, %struct.tty_ctx*) #1

declare dso_local i64 @screen_size_y(%struct.screen*) #1

declare dso_local i32 @tty_draw_pane(%struct.tty*, %struct.tty_ctx*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
