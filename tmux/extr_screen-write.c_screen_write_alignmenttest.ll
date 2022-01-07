; ModuleID = '/home/carl/AnghaBench/tmux/extr_screen-write.c_screen_write_alignmenttest.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_screen-write.c_screen_write_alignmenttest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen_write_ctx = type { %struct.screen* }
%struct.screen = type { i64, i64, i32 }
%struct.tty_ctx = type { i32 }
%struct.grid_cell = type { i32 }

@grid_default_cell = common dso_local global i32 0, align 4
@tty_cmd_alignmenttest = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @screen_write_alignmenttest(%struct.screen_write_ctx* %0) #0 {
  %2 = alloca %struct.screen_write_ctx*, align 8
  %3 = alloca %struct.screen*, align 8
  %4 = alloca %struct.tty_ctx, align 4
  %5 = alloca %struct.grid_cell, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.screen_write_ctx* %0, %struct.screen_write_ctx** %2, align 8
  %8 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %2, align 8
  %9 = getelementptr inbounds %struct.screen_write_ctx, %struct.screen_write_ctx* %8, i32 0, i32 0
  %10 = load %struct.screen*, %struct.screen** %9, align 8
  store %struct.screen* %10, %struct.screen** %3, align 8
  %11 = call i32 @memcpy(%struct.grid_cell* %5, i32* @grid_default_cell, i32 4)
  %12 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %5, i32 0, i32 0
  %13 = call i32 @utf8_set(i32* %12, i8 signext 69)
  store i64 0, i64* %7, align 8
  br label %14

14:                                               ; preds = %36, %1
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.screen*, %struct.screen** %3, align 8
  %17 = call i64 @screen_size_y(%struct.screen* %16)
  %18 = icmp slt i64 %15, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %14
  store i64 0, i64* %6, align 8
  br label %20

20:                                               ; preds = %32, %19
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.screen*, %struct.screen** %3, align 8
  %23 = call i64 @screen_size_x(%struct.screen* %22)
  %24 = icmp slt i64 %21, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load %struct.screen*, %struct.screen** %3, align 8
  %27 = getelementptr inbounds %struct.screen, %struct.screen* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @grid_view_set_cell(i32 %28, i64 %29, i64 %30, %struct.grid_cell* %5)
  br label %32

32:                                               ; preds = %25
  %33 = load i64, i64* %6, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %6, align 8
  br label %20

35:                                               ; preds = %20
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %7, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %7, align 8
  br label %14

39:                                               ; preds = %14
  %40 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %2, align 8
  %41 = call i32 @screen_write_set_cursor(%struct.screen_write_ctx* %40, i32 0, i32 0)
  %42 = load %struct.screen*, %struct.screen** %3, align 8
  %43 = getelementptr inbounds %struct.screen, %struct.screen* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load %struct.screen*, %struct.screen** %3, align 8
  %45 = call i64 @screen_size_y(%struct.screen* %44)
  %46 = sub nsw i64 %45, 1
  %47 = load %struct.screen*, %struct.screen** %3, align 8
  %48 = getelementptr inbounds %struct.screen, %struct.screen* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %2, align 8
  %50 = call i32 @screen_write_initctx(%struct.screen_write_ctx* %49, %struct.tty_ctx* %4)
  %51 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %2, align 8
  %52 = load %struct.screen*, %struct.screen** %3, align 8
  %53 = call i64 @screen_size_y(%struct.screen* %52)
  %54 = sub nsw i64 %53, 1
  %55 = call i32 @screen_write_collect_clear(%struct.screen_write_ctx* %51, i32 0, i64 %54)
  %56 = load i32, i32* @tty_cmd_alignmenttest, align 4
  %57 = call i32 @tty_write(i32 %56, %struct.tty_ctx* %4)
  ret void
}

declare dso_local i32 @memcpy(%struct.grid_cell*, i32*, i32) #1

declare dso_local i32 @utf8_set(i32*, i8 signext) #1

declare dso_local i64 @screen_size_y(%struct.screen*) #1

declare dso_local i64 @screen_size_x(%struct.screen*) #1

declare dso_local i32 @grid_view_set_cell(i32, i64, i64, %struct.grid_cell*) #1

declare dso_local i32 @screen_write_set_cursor(%struct.screen_write_ctx*, i32, i32) #1

declare dso_local i32 @screen_write_initctx(%struct.screen_write_ctx*, %struct.tty_ctx*) #1

declare dso_local i32 @screen_write_collect_clear(%struct.screen_write_ctx*, i32, i64) #1

declare dso_local i32 @tty_write(i32, %struct.tty_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
