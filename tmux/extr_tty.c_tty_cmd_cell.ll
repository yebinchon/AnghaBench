; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty.c_tty_cmd_cell.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty.c_tty_cmd_cell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32 }
%struct.tty_ctx = type { i32, i64, i32, i32, i64, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_cmd_cell(%struct.tty* %0, %struct.tty_ctx* %1) #0 {
  %3 = alloca %struct.tty*, align 8
  %4 = alloca %struct.tty_ctx*, align 8
  store %struct.tty* %0, %struct.tty** %3, align 8
  store %struct.tty_ctx* %1, %struct.tty_ctx** %4, align 8
  %5 = load %struct.tty*, %struct.tty** %3, align 8
  %6 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %7 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %8 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @tty_is_visible(%struct.tty* %5, %struct.tty_ctx* %6, i32 %9, i64 %12, i32 1, i32 1)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %76

16:                                               ; preds = %2
  %17 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %21 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %19, %22
  %24 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %25 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %23, %26
  %28 = load %struct.tty*, %struct.tty** %3, align 8
  %29 = getelementptr inbounds %struct.tty, %struct.tty* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %30, 1
  %32 = icmp sgt i32 %27, %31
  br i1 %32, label %33, label %56

33:                                               ; preds = %16
  %34 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %35 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %38 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %33
  %42 = load %struct.tty*, %struct.tty** %3, align 8
  %43 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %44 = call i64 @tty_pane_full_width(%struct.tty* %42, %struct.tty_ctx* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load %struct.tty*, %struct.tty** %3, align 8
  %48 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %49 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %50 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %49, i32 0, i32 7
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %53 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @tty_region_pane(%struct.tty* %47, %struct.tty_ctx* %48, i32 %51, i64 %54)
  br label %56

56:                                               ; preds = %46, %41, %33, %16
  %57 = load %struct.tty*, %struct.tty** %3, align 8
  %58 = call i32 @tty_margin_off(%struct.tty* %57)
  %59 = load %struct.tty*, %struct.tty** %3, align 8
  %60 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %61 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %62 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %65 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @tty_cursor_pane_unless_wrap(%struct.tty* %59, %struct.tty_ctx* %60, i32 %63, i64 %66)
  %68 = load %struct.tty*, %struct.tty** %3, align 8
  %69 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %70 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %73 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @tty_cell(%struct.tty* %68, i32 %71, i32 %74)
  br label %76

76:                                               ; preds = %56, %15
  ret void
}

declare dso_local i32 @tty_is_visible(%struct.tty*, %struct.tty_ctx*, i32, i64, i32, i32) #1

declare dso_local i64 @tty_pane_full_width(%struct.tty*, %struct.tty_ctx*) #1

declare dso_local i32 @tty_region_pane(%struct.tty*, %struct.tty_ctx*, i32, i64) #1

declare dso_local i32 @tty_margin_off(%struct.tty*) #1

declare dso_local i32 @tty_cursor_pane_unless_wrap(%struct.tty*, %struct.tty_ctx*, i32, i64) #1

declare dso_local i32 @tty_cell(%struct.tty*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
