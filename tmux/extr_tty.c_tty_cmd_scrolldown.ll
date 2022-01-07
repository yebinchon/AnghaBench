; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty.c_tty_cmd_scrolldown.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty.c_tty_cmd_scrolldown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32 }
%struct.tty_ctx = type { i64, i32, i32, i32, i32, i64, %struct.window_pane* }
%struct.window_pane = type { i32, i32 }

@TTYC_CSR = common dso_local global i32 0, align 4
@TTYC_RI = common dso_local global i32 0, align 4
@TTYC_RIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_cmd_scrolldown(%struct.tty* %0, %struct.tty_ctx* %1) #0 {
  %3 = alloca %struct.tty*, align 8
  %4 = alloca %struct.tty_ctx*, align 8
  %5 = alloca %struct.window_pane*, align 8
  %6 = alloca i64, align 8
  store %struct.tty* %0, %struct.tty** %3, align 8
  store %struct.tty_ctx* %1, %struct.tty_ctx** %4, align 8
  %7 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %8 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %7, i32 0, i32 6
  %9 = load %struct.window_pane*, %struct.window_pane** %8, align 8
  store %struct.window_pane* %9, %struct.window_pane** %5, align 8
  %10 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %59, label %14

14:                                               ; preds = %2
  %15 = load %struct.tty*, %struct.tty** %3, align 8
  %16 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %17 = call i32 @tty_pane_full_width(%struct.tty* %15, %struct.tty_ctx* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = load %struct.tty*, %struct.tty** %3, align 8
  %21 = call i32 @tty_use_margin(%struct.tty* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %59

23:                                               ; preds = %19, %14
  %24 = load %struct.tty*, %struct.tty** %3, align 8
  %25 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %26 = call i64 @tty_fake_bce(%struct.tty* %24, %struct.window_pane* %25, i32 8)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %59, label %28

28:                                               ; preds = %23
  %29 = load %struct.tty*, %struct.tty** %3, align 8
  %30 = getelementptr inbounds %struct.tty, %struct.tty* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @TTYC_CSR, align 4
  %33 = call i64 @tty_term_has(i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %59

35:                                               ; preds = %28
  %36 = load %struct.tty*, %struct.tty** %3, align 8
  %37 = getelementptr inbounds %struct.tty, %struct.tty* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @TTYC_RI, align 4
  %40 = call i64 @tty_term_has(i32 %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %35
  %43 = load %struct.tty*, %struct.tty** %3, align 8
  %44 = getelementptr inbounds %struct.tty, %struct.tty* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @TTYC_RIN, align 4
  %47 = call i64 @tty_term_has(i32 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %42, %35
  %50 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %51 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %56 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %63

59:                                               ; preds = %54, %49, %42, %28, %23, %19, %2
  %60 = load %struct.tty*, %struct.tty** %3, align 8
  %61 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %62 = call i32 @tty_redraw_region(%struct.tty* %60, %struct.tty_ctx* %61)
  br label %119

63:                                               ; preds = %54
  %64 = load %struct.tty*, %struct.tty** %3, align 8
  %65 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %66 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %67 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @tty_default_attributes(%struct.tty* %64, %struct.window_pane* %65, i32 %68)
  %70 = load %struct.tty*, %struct.tty** %3, align 8
  %71 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %72 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %73 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %76 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @tty_region_pane(%struct.tty* %70, %struct.tty_ctx* %71, i32 %74, i32 %77)
  %79 = load %struct.tty*, %struct.tty** %3, align 8
  %80 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %81 = call i32 @tty_margin_pane(%struct.tty* %79, %struct.tty_ctx* %80)
  %82 = load %struct.tty*, %struct.tty** %3, align 8
  %83 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %84 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %85 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %88 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @tty_cursor_pane(%struct.tty* %82, %struct.tty_ctx* %83, i32 %86, i32 %89)
  %91 = load %struct.tty*, %struct.tty** %3, align 8
  %92 = getelementptr inbounds %struct.tty, %struct.tty* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @TTYC_RIN, align 4
  %95 = call i64 @tty_term_has(i32 %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %63
  %98 = load %struct.tty*, %struct.tty** %3, align 8
  %99 = load i32, i32* @TTYC_RIN, align 4
  %100 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %101 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @tty_putcode1(%struct.tty* %98, i32 %99, i64 %102)
  br label %119

104:                                              ; preds = %63
  store i64 0, i64* %6, align 8
  br label %105

105:                                              ; preds = %115, %104
  %106 = load i64, i64* %6, align 8
  %107 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %108 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp slt i64 %106, %109
  br i1 %110, label %111, label %118

111:                                              ; preds = %105
  %112 = load %struct.tty*, %struct.tty** %3, align 8
  %113 = load i32, i32* @TTYC_RI, align 4
  %114 = call i32 @tty_putcode(%struct.tty* %112, i32 %113)
  br label %115

115:                                              ; preds = %111
  %116 = load i64, i64* %6, align 8
  %117 = add nsw i64 %116, 1
  store i64 %117, i64* %6, align 8
  br label %105

118:                                              ; preds = %105
  br label %119

119:                                              ; preds = %59, %118, %97
  ret void
}

declare dso_local i32 @tty_pane_full_width(%struct.tty*, %struct.tty_ctx*) #1

declare dso_local i32 @tty_use_margin(%struct.tty*) #1

declare dso_local i64 @tty_fake_bce(%struct.tty*, %struct.window_pane*, i32) #1

declare dso_local i64 @tty_term_has(i32, i32) #1

declare dso_local i32 @tty_redraw_region(%struct.tty*, %struct.tty_ctx*) #1

declare dso_local i32 @tty_default_attributes(%struct.tty*, %struct.window_pane*, i32) #1

declare dso_local i32 @tty_region_pane(%struct.tty*, %struct.tty_ctx*, i32, i32) #1

declare dso_local i32 @tty_margin_pane(%struct.tty*, %struct.tty_ctx*) #1

declare dso_local i32 @tty_cursor_pane(%struct.tty*, %struct.tty_ctx*, i32, i32) #1

declare dso_local i32 @tty_putcode1(%struct.tty*, i32, i64) #1

declare dso_local i32 @tty_putcode(%struct.tty*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
