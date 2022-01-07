; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty.c_tty_cmd_deletecharacter.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty.c_tty_cmd_deletecharacter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32 }
%struct.tty_ctx = type { i32, i32, i32, i32, i64, %struct.window_pane* }
%struct.window_pane = type { i32 }

@TTYC_DCH = common dso_local global i32 0, align 4
@TTYC_DCH1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_cmd_deletecharacter(%struct.tty* %0, %struct.tty_ctx* %1) #0 {
  %3 = alloca %struct.tty*, align 8
  %4 = alloca %struct.tty_ctx*, align 8
  %5 = alloca %struct.window_pane*, align 8
  store %struct.tty* %0, %struct.tty** %3, align 8
  store %struct.tty_ctx* %1, %struct.tty_ctx** %4, align 8
  %6 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %7 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %6, i32 0, i32 5
  %8 = load %struct.window_pane*, %struct.window_pane** %7, align 8
  store %struct.window_pane* %8, %struct.window_pane** %5, align 8
  %9 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %40, label %13

13:                                               ; preds = %2
  %14 = load %struct.tty*, %struct.tty** %3, align 8
  %15 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %16 = call i32 @tty_pane_full_width(%struct.tty* %14, %struct.tty_ctx* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %13
  %19 = load %struct.tty*, %struct.tty** %3, align 8
  %20 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %21 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %22 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @tty_fake_bce(%struct.tty* %19, %struct.window_pane* %20, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %18
  %27 = load %struct.tty*, %struct.tty** %3, align 8
  %28 = getelementptr inbounds %struct.tty, %struct.tty* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @TTYC_DCH, align 4
  %31 = call i32 @tty_term_has(i32 %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %47, label %33

33:                                               ; preds = %26
  %34 = load %struct.tty*, %struct.tty** %3, align 8
  %35 = getelementptr inbounds %struct.tty, %struct.tty* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @TTYC_DCH1, align 4
  %38 = call i32 @tty_term_has(i32 %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %33, %18, %13, %2
  %41 = load %struct.tty*, %struct.tty** %3, align 8
  %42 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %43 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %44 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @tty_draw_pane(%struct.tty* %41, %struct.tty_ctx* %42, i32 %45)
  br label %70

47:                                               ; preds = %33, %26
  %48 = load %struct.tty*, %struct.tty** %3, align 8
  %49 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %50 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %51 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @tty_default_attributes(%struct.tty* %48, %struct.window_pane* %49, i32 %52)
  %54 = load %struct.tty*, %struct.tty** %3, align 8
  %55 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %56 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %57 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %60 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @tty_cursor_pane(%struct.tty* %54, %struct.tty_ctx* %55, i32 %58, i32 %61)
  %63 = load %struct.tty*, %struct.tty** %3, align 8
  %64 = load i32, i32* @TTYC_DCH, align 4
  %65 = load i32, i32* @TTYC_DCH1, align 4
  %66 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %67 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @tty_emulate_repeat(%struct.tty* %63, i32 %64, i32 %65, i32 %68)
  br label %70

70:                                               ; preds = %47, %40
  ret void
}

declare dso_local i32 @tty_pane_full_width(%struct.tty*, %struct.tty_ctx*) #1

declare dso_local i64 @tty_fake_bce(%struct.tty*, %struct.window_pane*, i32) #1

declare dso_local i32 @tty_term_has(i32, i32) #1

declare dso_local i32 @tty_draw_pane(%struct.tty*, %struct.tty_ctx*, i32) #1

declare dso_local i32 @tty_default_attributes(%struct.tty*, %struct.window_pane*, i32) #1

declare dso_local i32 @tty_cursor_pane(%struct.tty*, %struct.tty_ctx*, i32, i32) #1

declare dso_local i32 @tty_emulate_repeat(%struct.tty*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
