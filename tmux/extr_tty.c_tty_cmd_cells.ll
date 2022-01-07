; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty.c_tty_cmd_cells.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty.c_tty_cmd_cells.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i64, i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.tty_ctx = type { i64, i64, i64, i64, i64, i64, i64, i32, %struct.window_pane*, i32, i32, i64 }
%struct.window_pane = type { i32 }

@TERM_EARLYWRAP = common dso_local global i32 0, align 4
@PANE_REDRAW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_cmd_cells(%struct.tty* %0, %struct.tty_ctx* %1) #0 {
  %3 = alloca %struct.tty*, align 8
  %4 = alloca %struct.tty_ctx*, align 8
  %5 = alloca %struct.window_pane*, align 8
  store %struct.tty* %0, %struct.tty** %3, align 8
  store %struct.tty_ctx* %1, %struct.tty_ctx** %4, align 8
  %6 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %7 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %6, i32 0, i32 8
  %8 = load %struct.window_pane*, %struct.window_pane** %7, align 8
  store %struct.window_pane* %8, %struct.window_pane** %5, align 8
  %9 = load %struct.tty*, %struct.tty** %3, align 8
  %10 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %11 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %15 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @tty_is_visible(%struct.tty* %9, %struct.tty_ctx* %10, i64 %13, i64 %16, i64 %19, i32 1)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %162

23:                                               ; preds = %2
  %24 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %25 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %24, i32 0, i32 11
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %131

28:                                               ; preds = %23
  %29 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %30 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %33 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  %36 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %37 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %35, %38
  br i1 %39, label %60, label %40

40:                                               ; preds = %28
  %41 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %42 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %45 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %43, %46
  %48 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %49 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %47, %50
  %52 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %53 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %56 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %54, %57
  %59 = icmp sgt i64 %51, %58
  br i1 %59, label %60, label %131

60:                                               ; preds = %40, %28
  %61 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %62 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %61, i32 0, i32 10
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %117

65:                                               ; preds = %60
  %66 = load %struct.tty*, %struct.tty** %3, align 8
  %67 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %68 = call i32 @tty_pane_full_width(%struct.tty* %66, %struct.tty_ctx* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %117

70:                                               ; preds = %65
  %71 = load %struct.tty*, %struct.tty** %3, align 8
  %72 = getelementptr inbounds %struct.tty, %struct.tty* %71, i32 0, i32 4
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @TERM_EARLYWRAP, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %117, label %79

79:                                               ; preds = %70
  %80 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %81 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %84 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %82, %85
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %117, label %88

88:                                               ; preds = %79
  %89 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %90 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %89, i32 0, i32 6
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %93 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %91, %94
  %96 = load %struct.tty*, %struct.tty** %3, align 8
  %97 = getelementptr inbounds %struct.tty, %struct.tty* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, 1
  %100 = icmp ne i64 %95, %99
  br i1 %100, label %117, label %101

101:                                              ; preds = %88
  %102 = load %struct.tty*, %struct.tty** %3, align 8
  %103 = getelementptr inbounds %struct.tty, %struct.tty* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.tty*, %struct.tty** %3, align 8
  %106 = getelementptr inbounds %struct.tty, %struct.tty* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp slt i64 %104, %107
  br i1 %108, label %117, label %109

109:                                              ; preds = %101
  %110 = load %struct.tty*, %struct.tty** %3, align 8
  %111 = getelementptr inbounds %struct.tty, %struct.tty* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.tty*, %struct.tty** %3, align 8
  %114 = getelementptr inbounds %struct.tty, %struct.tty* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %112, %115
  br i1 %116, label %117, label %124

117:                                              ; preds = %109, %101, %88, %79, %70, %65, %60
  %118 = load %struct.tty*, %struct.tty** %3, align 8
  %119 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %120 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %121 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @tty_draw_pane(%struct.tty* %118, %struct.tty_ctx* %119, i64 %122)
  br label %130

124:                                              ; preds = %109
  %125 = load i32, i32* @PANE_REDRAW, align 4
  %126 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %127 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 4
  br label %130

130:                                              ; preds = %124, %117
  br label %162

131:                                              ; preds = %40, %23
  %132 = load %struct.tty*, %struct.tty** %3, align 8
  %133 = call i32 @tty_margin_off(%struct.tty* %132)
  %134 = load %struct.tty*, %struct.tty** %3, align 8
  %135 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %136 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %137 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %140 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @tty_cursor_pane_unless_wrap(%struct.tty* %134, %struct.tty_ctx* %135, i64 %138, i64 %141)
  %143 = load %struct.tty*, %struct.tty** %3, align 8
  %144 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %145 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %144, i32 0, i32 9
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %148 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %147, i32 0, i32 8
  %149 = load %struct.window_pane*, %struct.window_pane** %148, align 8
  %150 = call i32 @tty_attributes(%struct.tty* %143, i32 %146, %struct.window_pane* %149)
  %151 = load %struct.tty*, %struct.tty** %3, align 8
  %152 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %153 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %152, i32 0, i32 7
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %156 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %159 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = call i32 @tty_putn(%struct.tty* %151, i32 %154, i64 %157, i64 %160)
  br label %162

162:                                              ; preds = %131, %130, %22
  ret void
}

declare dso_local i32 @tty_is_visible(%struct.tty*, %struct.tty_ctx*, i64, i64, i64, i32) #1

declare dso_local i32 @tty_pane_full_width(%struct.tty*, %struct.tty_ctx*) #1

declare dso_local i32 @tty_draw_pane(%struct.tty*, %struct.tty_ctx*, i64) #1

declare dso_local i32 @tty_margin_off(%struct.tty*) #1

declare dso_local i32 @tty_cursor_pane_unless_wrap(%struct.tty*, %struct.tty_ctx*, i64, i64) #1

declare dso_local i32 @tty_attributes(%struct.tty*, i32, %struct.window_pane*) #1

declare dso_local i32 @tty_putn(%struct.tty*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
