; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty.c_tty_cmd_linefeed.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty.c_tty_cmd_linefeed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i64, i32 }
%struct.tty_ctx = type { i64, i64, i64, i64, i64, i32, i32, i64, %struct.window_pane* }
%struct.window_pane = type { i32, i32 }

@TTYC_CSR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_cmd_linefeed(%struct.tty* %0, %struct.tty_ctx* %1) #0 {
  %3 = alloca %struct.tty*, align 8
  %4 = alloca %struct.tty_ctx*, align 8
  %5 = alloca %struct.window_pane*, align 8
  store %struct.tty* %0, %struct.tty** %3, align 8
  store %struct.tty_ctx* %1, %struct.tty_ctx** %4, align 8
  %6 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %7 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %6, i32 0, i32 8
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
  br label %128

17:                                               ; preds = %2
  %18 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %19 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %18, i32 0, i32 7
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %53, label %22

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
  br i1 %30, label %31, label %53

31:                                               ; preds = %27, %22
  %32 = load %struct.tty*, %struct.tty** %3, align 8
  %33 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %34 = call i64 @tty_fake_bce(%struct.tty* %32, %struct.window_pane* %33, i32 8)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %53, label %36

36:                                               ; preds = %31
  %37 = load %struct.tty*, %struct.tty** %3, align 8
  %38 = getelementptr inbounds %struct.tty, %struct.tty* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @TTYC_CSR, align 4
  %41 = call i32 @tty_term_has(i32 %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %36
  %44 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %45 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %50 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %57

53:                                               ; preds = %48, %43, %36, %31, %27, %17
  %54 = load %struct.tty*, %struct.tty** %3, align 8
  %55 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %56 = call i32 @tty_redraw_region(%struct.tty* %54, %struct.tty_ctx* %55)
  br label %128

57:                                               ; preds = %48
  %58 = load %struct.tty*, %struct.tty** %3, align 8
  %59 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %60 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %61 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @tty_default_attributes(%struct.tty* %58, %struct.window_pane* %59, i32 %62)
  %64 = load %struct.tty*, %struct.tty** %3, align 8
  %65 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %66 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %67 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %70 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @tty_region_pane(%struct.tty* %64, %struct.tty_ctx* %65, i32 %68, i64 %71)
  %73 = load %struct.tty*, %struct.tty** %3, align 8
  %74 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %75 = call i32 @tty_margin_pane(%struct.tty* %73, %struct.tty_ctx* %74)
  %76 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %77 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %80 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %78, %81
  %83 = load %struct.tty*, %struct.tty** %3, align 8
  %84 = getelementptr inbounds %struct.tty, %struct.tty* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp sgt i64 %82, %85
  br i1 %86, label %87, label %115

87:                                               ; preds = %57
  %88 = load %struct.tty*, %struct.tty** %3, align 8
  %89 = call i32 @tty_use_margin(%struct.tty* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %101, label %91

91:                                               ; preds = %87
  %92 = load %struct.tty*, %struct.tty** %3, align 8
  %93 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %94 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %97 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %95, %98
  %100 = call i32 @tty_cursor(%struct.tty* %92, i64 0, i64 %99)
  br label %114

101:                                              ; preds = %87
  %102 = load %struct.tty*, %struct.tty** %3, align 8
  %103 = load %struct.tty*, %struct.tty** %3, align 8
  %104 = getelementptr inbounds %struct.tty, %struct.tty* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %107 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %110 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %108, %111
  %113 = call i32 @tty_cursor(%struct.tty* %102, i64 %105, i64 %112)
  br label %114

114:                                              ; preds = %101, %91
  br label %125

115:                                              ; preds = %57
  %116 = load %struct.tty*, %struct.tty** %3, align 8
  %117 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %118 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %119 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %122 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @tty_cursor_pane(%struct.tty* %116, %struct.tty_ctx* %117, i64 %120, i64 %123)
  br label %125

125:                                              ; preds = %115, %114
  %126 = load %struct.tty*, %struct.tty** %3, align 8
  %127 = call i32 @tty_putc(%struct.tty* %126, i8 signext 10)
  br label %128

128:                                              ; preds = %125, %53, %16
  ret void
}

declare dso_local i32 @tty_pane_full_width(%struct.tty*, %struct.tty_ctx*) #1

declare dso_local i32 @tty_use_margin(%struct.tty*) #1

declare dso_local i64 @tty_fake_bce(%struct.tty*, %struct.window_pane*, i32) #1

declare dso_local i32 @tty_term_has(i32, i32) #1

declare dso_local i32 @tty_redraw_region(%struct.tty*, %struct.tty_ctx*) #1

declare dso_local i32 @tty_default_attributes(%struct.tty*, %struct.window_pane*, i32) #1

declare dso_local i32 @tty_region_pane(%struct.tty*, %struct.tty_ctx*, i32, i64) #1

declare dso_local i32 @tty_margin_pane(%struct.tty*, %struct.tty_ctx*) #1

declare dso_local i32 @tty_cursor(%struct.tty*, i64, i64) #1

declare dso_local i32 @tty_cursor_pane(%struct.tty*, %struct.tty_ctx*, i64, i64) #1

declare dso_local i32 @tty_putc(%struct.tty*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
