; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty.c_tty_cmd_reverseindex.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty.c_tty_cmd_reverseindex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32 }
%struct.tty_ctx = type { i64, i64, i32, i32, i32, %struct.window_pane*, i64 }
%struct.window_pane = type { i32, i32 }

@TTYC_CSR = common dso_local global i32 0, align 4
@TTYC_RI = common dso_local global i32 0, align 4
@TTYC_RIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_cmd_reverseindex(%struct.tty* %0, %struct.tty_ctx* %1) #0 {
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
  %10 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %13 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %117

17:                                               ; preds = %2
  %18 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %19 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %18, i32 0, i32 6
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %71, label %22

22:                                               ; preds = %17
  %23 = load %struct.tty*, %struct.tty** %3, align 8
  %24 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %25 = call i32 @tty_pane_full_width(%struct.tty* %23, %struct.tty_ctx* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = load %struct.tty*, %struct.tty** %3, align 8
  %29 = call i32 @tty_use_margin(%struct.tty* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %71

31:                                               ; preds = %27, %22
  %32 = load %struct.tty*, %struct.tty** %3, align 8
  %33 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %34 = call i64 @tty_fake_bce(%struct.tty* %32, %struct.window_pane* %33, i32 8)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %71, label %36

36:                                               ; preds = %31
  %37 = load %struct.tty*, %struct.tty** %3, align 8
  %38 = getelementptr inbounds %struct.tty, %struct.tty* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @TTYC_CSR, align 4
  %41 = call i64 @tty_term_has(i32 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %71

43:                                               ; preds = %36
  %44 = load %struct.tty*, %struct.tty** %3, align 8
  %45 = getelementptr inbounds %struct.tty, %struct.tty* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @TTYC_RI, align 4
  %48 = call i64 @tty_term_has(i32 %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %43
  %51 = load %struct.tty*, %struct.tty** %3, align 8
  %52 = getelementptr inbounds %struct.tty, %struct.tty* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @TTYC_RIN, align 4
  %55 = call i64 @tty_term_has(i32 %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %50, %43
  %58 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %59 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %58, i32 0, i32 5
  %60 = load %struct.window_pane*, %struct.window_pane** %59, align 8
  %61 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %71, label %64

64:                                               ; preds = %57
  %65 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %66 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %65, i32 0, i32 5
  %67 = load %struct.window_pane*, %struct.window_pane** %66, align 8
  %68 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %75

71:                                               ; preds = %64, %57, %50, %36, %31, %27, %17
  %72 = load %struct.tty*, %struct.tty** %3, align 8
  %73 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %74 = call i32 @tty_redraw_region(%struct.tty* %72, %struct.tty_ctx* %73)
  br label %117

75:                                               ; preds = %64
  %76 = load %struct.tty*, %struct.tty** %3, align 8
  %77 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %78 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %79 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @tty_default_attributes(%struct.tty* %76, %struct.window_pane* %77, i32 %80)
  %82 = load %struct.tty*, %struct.tty** %3, align 8
  %83 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %84 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %85 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %88 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @tty_region_pane(%struct.tty* %82, %struct.tty_ctx* %83, i64 %86, i32 %89)
  %91 = load %struct.tty*, %struct.tty** %3, align 8
  %92 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %93 = call i32 @tty_margin_pane(%struct.tty* %91, %struct.tty_ctx* %92)
  %94 = load %struct.tty*, %struct.tty** %3, align 8
  %95 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %96 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %97 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %100 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @tty_cursor_pane(%struct.tty* %94, %struct.tty_ctx* %95, i32 %98, i64 %101)
  %103 = load %struct.tty*, %struct.tty** %3, align 8
  %104 = getelementptr inbounds %struct.tty, %struct.tty* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @TTYC_RI, align 4
  %107 = call i64 @tty_term_has(i32 %105, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %75
  %110 = load %struct.tty*, %struct.tty** %3, align 8
  %111 = load i32, i32* @TTYC_RI, align 4
  %112 = call i32 @tty_putcode(%struct.tty* %110, i32 %111)
  br label %117

113:                                              ; preds = %75
  %114 = load %struct.tty*, %struct.tty** %3, align 8
  %115 = load i32, i32* @TTYC_RIN, align 4
  %116 = call i32 @tty_putcode1(%struct.tty* %114, i32 %115, i32 1)
  br label %117

117:                                              ; preds = %16, %71, %113, %109
  ret void
}

declare dso_local i32 @tty_pane_full_width(%struct.tty*, %struct.tty_ctx*) #1

declare dso_local i32 @tty_use_margin(%struct.tty*) #1

declare dso_local i64 @tty_fake_bce(%struct.tty*, %struct.window_pane*, i32) #1

declare dso_local i64 @tty_term_has(i32, i32) #1

declare dso_local i32 @tty_redraw_region(%struct.tty*, %struct.tty_ctx*) #1

declare dso_local i32 @tty_default_attributes(%struct.tty*, %struct.window_pane*, i32) #1

declare dso_local i32 @tty_region_pane(%struct.tty*, %struct.tty_ctx*, i64, i32) #1

declare dso_local i32 @tty_margin_pane(%struct.tty*, %struct.tty_ctx*) #1

declare dso_local i32 @tty_cursor_pane(%struct.tty*, %struct.tty_ctx*, i32, i64) #1

declare dso_local i32 @tty_putcode(%struct.tty*, i32) #1

declare dso_local i32 @tty_putcode1(%struct.tty*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
