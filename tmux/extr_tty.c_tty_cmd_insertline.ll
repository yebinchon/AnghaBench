; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty.c_tty_cmd_insertline.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty.c_tty_cmd_insertline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i32, i32 }
%struct.tty_ctx = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32, i32 }

@TTYC_CSR = common dso_local global i32 0, align 4
@TTYC_IL1 = common dso_local global i32 0, align 4
@TTYC_IL = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_cmd_insertline(%struct.tty* %0, %struct.tty_ctx* %1) #0 {
  %3 = alloca %struct.tty*, align 8
  %4 = alloca %struct.tty_ctx*, align 8
  store %struct.tty* %0, %struct.tty** %3, align 8
  store %struct.tty_ctx* %1, %struct.tty_ctx** %4, align 8
  %5 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %6 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %5, i32 0, i32 7
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %52, label %9

9:                                                ; preds = %2
  %10 = load %struct.tty*, %struct.tty** %3, align 8
  %11 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %12 = call i32 @tty_pane_full_width(%struct.tty* %10, %struct.tty_ctx* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %52

14:                                               ; preds = %9
  %15 = load %struct.tty*, %struct.tty** %3, align 8
  %16 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %17 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %16, i32 0, i32 6
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %20 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @tty_fake_bce(%struct.tty* %15, %struct.TYPE_3__* %18, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %52, label %24

24:                                               ; preds = %14
  %25 = load %struct.tty*, %struct.tty** %3, align 8
  %26 = getelementptr inbounds %struct.tty, %struct.tty* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @TTYC_CSR, align 4
  %29 = call i32 @tty_term_has(i32 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %52

31:                                               ; preds = %24
  %32 = load %struct.tty*, %struct.tty** %3, align 8
  %33 = getelementptr inbounds %struct.tty, %struct.tty* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @TTYC_IL1, align 4
  %36 = call i32 @tty_term_has(i32 %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %31
  %39 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %40 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %39, i32 0, i32 6
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %52, label %45

45:                                               ; preds = %38
  %46 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %47 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %46, i32 0, i32 6
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %56

52:                                               ; preds = %45, %38, %31, %24, %14, %9, %2
  %53 = load %struct.tty*, %struct.tty** %3, align 8
  %54 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %55 = call i32 @tty_redraw_region(%struct.tty* %53, %struct.tty_ctx* %54)
  br label %97

56:                                               ; preds = %45
  %57 = load %struct.tty*, %struct.tty** %3, align 8
  %58 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %59 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %58, i32 0, i32 6
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %62 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @tty_default_attributes(%struct.tty* %57, %struct.TYPE_3__* %60, i32 %63)
  %65 = load %struct.tty*, %struct.tty** %3, align 8
  %66 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %67 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %68 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %71 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @tty_region_pane(%struct.tty* %65, %struct.tty_ctx* %66, i32 %69, i32 %72)
  %74 = load %struct.tty*, %struct.tty** %3, align 8
  %75 = call i32 @tty_margin_off(%struct.tty* %74)
  %76 = load %struct.tty*, %struct.tty** %3, align 8
  %77 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %78 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %79 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %82 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @tty_cursor_pane(%struct.tty* %76, %struct.tty_ctx* %77, i32 %80, i32 %83)
  %85 = load %struct.tty*, %struct.tty** %3, align 8
  %86 = load i32, i32* @TTYC_IL, align 4
  %87 = load i32, i32* @TTYC_IL1, align 4
  %88 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %89 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @tty_emulate_repeat(%struct.tty* %85, i32 %86, i32 %87, i32 %90)
  %92 = load i32, i32* @UINT_MAX, align 4
  %93 = load %struct.tty*, %struct.tty** %3, align 8
  %94 = getelementptr inbounds %struct.tty, %struct.tty* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  %95 = load %struct.tty*, %struct.tty** %3, align 8
  %96 = getelementptr inbounds %struct.tty, %struct.tty* %95, i32 0, i32 1
  store i32 %92, i32* %96, align 4
  br label %97

97:                                               ; preds = %56, %52
  ret void
}

declare dso_local i32 @tty_pane_full_width(%struct.tty*, %struct.tty_ctx*) #1

declare dso_local i64 @tty_fake_bce(%struct.tty*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @tty_term_has(i32, i32) #1

declare dso_local i32 @tty_redraw_region(%struct.tty*, %struct.tty_ctx*) #1

declare dso_local i32 @tty_default_attributes(%struct.tty*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @tty_region_pane(%struct.tty*, %struct.tty_ctx*, i32, i32) #1

declare dso_local i32 @tty_margin_off(%struct.tty*) #1

declare dso_local i32 @tty_cursor_pane(%struct.tty*, %struct.tty_ctx*, i32, i32) #1

declare dso_local i32 @tty_emulate_repeat(%struct.tty*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
