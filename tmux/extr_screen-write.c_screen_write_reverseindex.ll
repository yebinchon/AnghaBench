; ModuleID = '/home/carl/AnghaBench/tmux/extr_screen-write.c_screen_write_reverseindex.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_screen-write.c_screen_write_reverseindex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen_write_ctx = type { %struct.screen* }
%struct.screen = type { i64, i64, i32, i32 }
%struct.tty_ctx = type { i32 }

@tty_cmd_reverseindex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @screen_write_reverseindex(%struct.screen_write_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.screen_write_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.screen*, align 8
  %6 = alloca %struct.tty_ctx, align 4
  store %struct.screen_write_ctx* %0, %struct.screen_write_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.screen_write_ctx, %struct.screen_write_ctx* %7, i32 0, i32 0
  %9 = load %struct.screen*, %struct.screen** %8, align 8
  store %struct.screen* %9, %struct.screen** %5, align 8
  %10 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %3, align 8
  %11 = call i32 @screen_write_initctx(%struct.screen_write_ctx* %10, %struct.tty_ctx* %6)
  %12 = load i32, i32* %4, align 4
  %13 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %6, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load %struct.screen*, %struct.screen** %5, align 8
  %15 = getelementptr inbounds %struct.screen, %struct.screen* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.screen*, %struct.screen** %5, align 8
  %18 = getelementptr inbounds %struct.screen, %struct.screen* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %2
  %22 = load %struct.screen*, %struct.screen** %5, align 8
  %23 = getelementptr inbounds %struct.screen, %struct.screen* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.screen*, %struct.screen** %5, align 8
  %26 = getelementptr inbounds %struct.screen, %struct.screen* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.screen*, %struct.screen** %5, align 8
  %29 = getelementptr inbounds %struct.screen, %struct.screen* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @grid_view_scroll_region_down(i32 %24, i64 %27, i32 %30, i32 %31)
  br label %46

33:                                               ; preds = %2
  %34 = load %struct.screen*, %struct.screen** %5, align 8
  %35 = getelementptr inbounds %struct.screen, %struct.screen* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %3, align 8
  %40 = load %struct.screen*, %struct.screen** %5, align 8
  %41 = getelementptr inbounds %struct.screen, %struct.screen* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %42, 1
  %44 = call i32 @screen_write_set_cursor(%struct.screen_write_ctx* %39, i32 -1, i64 %43)
  br label %45

45:                                               ; preds = %38, %33
  br label %46

46:                                               ; preds = %45, %21
  %47 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %3, align 8
  %48 = call i32 @screen_write_collect_flush(%struct.screen_write_ctx* %47, i32 0)
  %49 = load i32, i32* @tty_cmd_reverseindex, align 4
  %50 = call i32 @tty_write(i32 %49, %struct.tty_ctx* %6)
  ret void
}

declare dso_local i32 @screen_write_initctx(%struct.screen_write_ctx*, %struct.tty_ctx*) #1

declare dso_local i32 @grid_view_scroll_region_down(i32, i64, i32, i32) #1

declare dso_local i32 @screen_write_set_cursor(%struct.screen_write_ctx*, i32, i64) #1

declare dso_local i32 @screen_write_collect_flush(%struct.screen_write_ctx*, i32) #1

declare dso_local i32 @tty_write(i32, %struct.tty_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
