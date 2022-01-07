; ModuleID = '/home/carl/AnghaBench/tmux/extr_screen-write.c_screen_write_scrolldown.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_screen-write.c_screen_write_scrolldown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen_write_ctx = type { %struct.screen* }
%struct.screen = type { i64, i64, %struct.grid* }
%struct.grid = type { i32 }
%struct.tty_ctx = type { i64, i64 }

@tty_cmd_scrolldown = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @screen_write_scrolldown(%struct.screen_write_ctx* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.screen_write_ctx*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.screen*, align 8
  %8 = alloca %struct.grid*, align 8
  %9 = alloca %struct.tty_ctx, align 8
  %10 = alloca i64, align 8
  store %struct.screen_write_ctx* %0, %struct.screen_write_ctx** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.screen_write_ctx, %struct.screen_write_ctx* %11, i32 0, i32 0
  %13 = load %struct.screen*, %struct.screen** %12, align 8
  store %struct.screen* %13, %struct.screen** %7, align 8
  %14 = load %struct.screen*, %struct.screen** %7, align 8
  %15 = getelementptr inbounds %struct.screen, %struct.screen* %14, i32 0, i32 2
  %16 = load %struct.grid*, %struct.grid** %15, align 8
  store %struct.grid* %16, %struct.grid** %8, align 8
  %17 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %4, align 8
  %18 = call i32 @screen_write_initctx(%struct.screen_write_ctx* %17, %struct.tty_ctx* %9)
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %9, i32 0, i32 1
  store i64 %19, i64* %20, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i64 1, i64* %5, align 8
  br label %45

24:                                               ; preds = %3
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.screen*, %struct.screen** %7, align 8
  %27 = getelementptr inbounds %struct.screen, %struct.screen* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.screen*, %struct.screen** %7, align 8
  %30 = getelementptr inbounds %struct.screen, %struct.screen* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %28, %31
  %33 = add nsw i64 %32, 1
  %34 = icmp sgt i64 %25, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %24
  %36 = load %struct.screen*, %struct.screen** %7, align 8
  %37 = getelementptr inbounds %struct.screen, %struct.screen* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.screen*, %struct.screen** %7, align 8
  %40 = getelementptr inbounds %struct.screen, %struct.screen* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %38, %41
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %5, align 8
  br label %44

44:                                               ; preds = %35, %24
  br label %45

45:                                               ; preds = %44, %23
  store i64 0, i64* %10, align 8
  br label %46

46:                                               ; preds = %60, %45
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* %5, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %46
  %51 = load %struct.grid*, %struct.grid** %8, align 8
  %52 = load %struct.screen*, %struct.screen** %7, align 8
  %53 = getelementptr inbounds %struct.screen, %struct.screen* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.screen*, %struct.screen** %7, align 8
  %56 = getelementptr inbounds %struct.screen, %struct.screen* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %6, align 8
  %59 = call i32 @grid_view_scroll_region_down(%struct.grid* %51, i64 %54, i64 %57, i64 %58)
  br label %60

60:                                               ; preds = %50
  %61 = load i64, i64* %10, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %10, align 8
  br label %46

63:                                               ; preds = %46
  %64 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %4, align 8
  %65 = call i32 @screen_write_collect_flush(%struct.screen_write_ctx* %64, i32 0)
  %66 = load i64, i64* %5, align 8
  %67 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %9, i32 0, i32 0
  store i64 %66, i64* %67, align 8
  %68 = load i32, i32* @tty_cmd_scrolldown, align 4
  %69 = call i32 @tty_write(i32 %68, %struct.tty_ctx* %9)
  ret void
}

declare dso_local i32 @screen_write_initctx(%struct.screen_write_ctx*, %struct.tty_ctx*) #1

declare dso_local i32 @grid_view_scroll_region_down(%struct.grid*, i64, i64, i64) #1

declare dso_local i32 @screen_write_collect_flush(%struct.screen_write_ctx*, i32) #1

declare dso_local i32 @tty_write(i32, %struct.tty_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
