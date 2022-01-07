; ModuleID = '/home/carl/AnghaBench/tmux/extr_screen-write.c_screen_write_backspace.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_screen-write.c_screen_write_backspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen_write_ctx = type { %struct.screen* }
%struct.screen = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.grid_line = type { i32 }

@GRID_LINE_WRAPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @screen_write_backspace(%struct.screen_write_ctx* %0) #0 {
  %2 = alloca %struct.screen_write_ctx*, align 8
  %3 = alloca %struct.screen*, align 8
  %4 = alloca %struct.grid_line*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.screen_write_ctx* %0, %struct.screen_write_ctx** %2, align 8
  %7 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %2, align 8
  %8 = getelementptr inbounds %struct.screen_write_ctx, %struct.screen_write_ctx* %7, i32 0, i32 0
  %9 = load %struct.screen*, %struct.screen** %8, align 8
  store %struct.screen* %9, %struct.screen** %3, align 8
  %10 = load %struct.screen*, %struct.screen** %3, align 8
  %11 = getelementptr inbounds %struct.screen, %struct.screen* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %5, align 8
  %13 = load %struct.screen*, %struct.screen** %3, align 8
  %14 = getelementptr inbounds %struct.screen, %struct.screen* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %48

18:                                               ; preds = %1
  %19 = load i64, i64* %6, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  br label %56

22:                                               ; preds = %18
  %23 = load %struct.screen*, %struct.screen** %3, align 8
  %24 = getelementptr inbounds %struct.screen, %struct.screen* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load %struct.screen*, %struct.screen** %3, align 8
  %27 = getelementptr inbounds %struct.screen, %struct.screen* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = add nsw i64 %30, %31
  %33 = sub nsw i64 %32, 1
  %34 = call %struct.grid_line* @grid_get_line(%struct.TYPE_2__* %25, i64 %33)
  store %struct.grid_line* %34, %struct.grid_line** %4, align 8
  %35 = load %struct.grid_line*, %struct.grid_line** %4, align 8
  %36 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @GRID_LINE_WRAPPED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %22
  %42 = load i64, i64* %6, align 8
  %43 = add nsw i64 %42, -1
  store i64 %43, i64* %6, align 8
  %44 = load %struct.screen*, %struct.screen** %3, align 8
  %45 = call i64 @screen_size_x(%struct.screen* %44)
  %46 = sub nsw i64 %45, 1
  store i64 %46, i64* %5, align 8
  br label %47

47:                                               ; preds = %41, %22
  br label %51

48:                                               ; preds = %1
  %49 = load i64, i64* %5, align 8
  %50 = add nsw i64 %49, -1
  store i64 %50, i64* %5, align 8
  br label %51

51:                                               ; preds = %48, %47
  %52 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %2, align 8
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @screen_write_set_cursor(%struct.screen_write_ctx* %52, i64 %53, i64 %54)
  br label %56

56:                                               ; preds = %51, %21
  ret void
}

declare dso_local %struct.grid_line* @grid_get_line(%struct.TYPE_2__*, i64) #1

declare dso_local i64 @screen_size_x(%struct.screen*) #1

declare dso_local i32 @screen_write_set_cursor(%struct.screen_write_ctx*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
