; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty.c_tty_cmd_scrollup.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty.c_tty_cmd_scrollup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i32, i32, i32 }
%struct.tty_ctx = type { i32, i32, i32, i32, i64, %struct.window_pane* }
%struct.window_pane = type { i32, i32 }

@TTYC_CSR = common dso_local global i32 0, align 4
@TTYC_INDN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_cmd_scrollup(%struct.tty* %0, %struct.tty_ctx* %1) #0 {
  %3 = alloca %struct.tty*, align 8
  %4 = alloca %struct.tty_ctx*, align 8
  %5 = alloca %struct.window_pane*, align 8
  %6 = alloca i64, align 8
  store %struct.tty* %0, %struct.tty** %3, align 8
  store %struct.tty_ctx* %1, %struct.tty_ctx** %4, align 8
  %7 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %8 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %7, i32 0, i32 5
  %9 = load %struct.window_pane*, %struct.window_pane** %8, align 8
  store %struct.window_pane* %9, %struct.window_pane** %5, align 8
  %10 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %45, label %14

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
  br i1 %22, label %23, label %45

23:                                               ; preds = %19, %14
  %24 = load %struct.tty*, %struct.tty** %3, align 8
  %25 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %26 = call i64 @tty_fake_bce(%struct.tty* %24, %struct.window_pane* %25, i32 8)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %45, label %28

28:                                               ; preds = %23
  %29 = load %struct.tty*, %struct.tty** %3, align 8
  %30 = getelementptr inbounds %struct.tty, %struct.tty* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @TTYC_CSR, align 4
  %33 = call i32 @tty_term_has(i32 %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %28
  %36 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %37 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %42 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %49

45:                                               ; preds = %40, %35, %28, %23, %19, %2
  %46 = load %struct.tty*, %struct.tty** %3, align 8
  %47 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %48 = call i32 @tty_redraw_region(%struct.tty* %46, %struct.tty_ctx* %47)
  br label %126

49:                                               ; preds = %40
  %50 = load %struct.tty*, %struct.tty** %3, align 8
  %51 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %52 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %53 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @tty_default_attributes(%struct.tty* %50, %struct.window_pane* %51, i32 %54)
  %56 = load %struct.tty*, %struct.tty** %3, align 8
  %57 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %58 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %59 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %62 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @tty_region_pane(%struct.tty* %56, %struct.tty_ctx* %57, i32 %60, i32 %63)
  %65 = load %struct.tty*, %struct.tty** %3, align 8
  %66 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %67 = call i32 @tty_margin_pane(%struct.tty* %65, %struct.tty_ctx* %66)
  %68 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %69 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %79, label %72

72:                                               ; preds = %49
  %73 = load %struct.tty*, %struct.tty** %3, align 8
  %74 = getelementptr inbounds %struct.tty, %struct.tty* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @TTYC_INDN, align 4
  %77 = call i32 @tty_term_has(i32 %75, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %113, label %79

79:                                               ; preds = %72, %49
  %80 = load %struct.tty*, %struct.tty** %3, align 8
  %81 = call i32 @tty_use_margin(%struct.tty* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %79
  %84 = load %struct.tty*, %struct.tty** %3, align 8
  %85 = load %struct.tty*, %struct.tty** %3, align 8
  %86 = getelementptr inbounds %struct.tty, %struct.tty* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @tty_cursor(%struct.tty* %84, i32 0, i32 %87)
  br label %98

89:                                               ; preds = %79
  %90 = load %struct.tty*, %struct.tty** %3, align 8
  %91 = load %struct.tty*, %struct.tty** %3, align 8
  %92 = getelementptr inbounds %struct.tty, %struct.tty* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.tty*, %struct.tty** %3, align 8
  %95 = getelementptr inbounds %struct.tty, %struct.tty* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @tty_cursor(%struct.tty* %90, i32 %93, i32 %96)
  br label %98

98:                                               ; preds = %89, %83
  store i64 0, i64* %6, align 8
  br label %99

99:                                               ; preds = %109, %98
  %100 = load i64, i64* %6, align 8
  %101 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %102 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = icmp slt i64 %100, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %99
  %107 = load %struct.tty*, %struct.tty** %3, align 8
  %108 = call i32 @tty_putc(%struct.tty* %107, i8 signext 10)
  br label %109

109:                                              ; preds = %106
  %110 = load i64, i64* %6, align 8
  %111 = add nsw i64 %110, 1
  store i64 %111, i64* %6, align 8
  br label %99

112:                                              ; preds = %99
  br label %126

113:                                              ; preds = %72
  %114 = load %struct.tty*, %struct.tty** %3, align 8
  %115 = load %struct.tty*, %struct.tty** %3, align 8
  %116 = getelementptr inbounds %struct.tty, %struct.tty* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @tty_cursor(%struct.tty* %114, i32 0, i32 %117)
  %119 = load %struct.tty*, %struct.tty** %3, align 8
  %120 = load i32, i32* @TTYC_INDN, align 4
  %121 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %122 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = sext i32 %123 to i64
  %125 = call i32 @tty_putcode1(%struct.tty* %119, i32 %120, i64 %124)
  br label %126

126:                                              ; preds = %45, %113, %112
  ret void
}

declare dso_local i32 @tty_pane_full_width(%struct.tty*, %struct.tty_ctx*) #1

declare dso_local i32 @tty_use_margin(%struct.tty*) #1

declare dso_local i64 @tty_fake_bce(%struct.tty*, %struct.window_pane*, i32) #1

declare dso_local i32 @tty_term_has(i32, i32) #1

declare dso_local i32 @tty_redraw_region(%struct.tty*, %struct.tty_ctx*) #1

declare dso_local i32 @tty_default_attributes(%struct.tty*, %struct.window_pane*, i32) #1

declare dso_local i32 @tty_region_pane(%struct.tty*, %struct.tty_ctx*, i32, i32) #1

declare dso_local i32 @tty_margin_pane(%struct.tty*, %struct.tty_ctx*) #1

declare dso_local i32 @tty_cursor(%struct.tty*, i32, i32) #1

declare dso_local i32 @tty_putc(%struct.tty*, i8 signext) #1

declare dso_local i32 @tty_putcode1(%struct.tty*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
