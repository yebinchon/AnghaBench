; ModuleID = '/home/carl/AnghaBench/tmux/extr_screen-write.c_screen_write_clearline.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_screen-write.c_screen_write_clearline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen_write_ctx = type { %struct.screen* }
%struct.screen = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.grid_line = type { i64 }
%struct.tty_ctx = type { i32 }

@tty_cmd_clearline = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @screen_write_clearline(%struct.screen_write_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.screen_write_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.screen*, align 8
  %6 = alloca %struct.grid_line*, align 8
  %7 = alloca %struct.tty_ctx, align 4
  %8 = alloca i32, align 4
  store %struct.screen_write_ctx* %0, %struct.screen_write_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.screen_write_ctx, %struct.screen_write_ctx* %9, i32 0, i32 0
  %11 = load %struct.screen*, %struct.screen** %10, align 8
  store %struct.screen* %11, %struct.screen** %5, align 8
  %12 = load %struct.screen*, %struct.screen** %5, align 8
  %13 = call i32 @screen_size_x(%struct.screen* %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.screen*, %struct.screen** %5, align 8
  %15 = getelementptr inbounds %struct.screen, %struct.screen* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = load %struct.screen*, %struct.screen** %5, align 8
  %18 = getelementptr inbounds %struct.screen, %struct.screen* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.screen*, %struct.screen** %5, align 8
  %23 = getelementptr inbounds %struct.screen, %struct.screen* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %21, %24
  %26 = call %struct.grid_line* @grid_get_line(%struct.TYPE_3__* %16, i64 %25)
  store %struct.grid_line* %26, %struct.grid_line** %6, align 8
  %27 = load %struct.grid_line*, %struct.grid_line** %6, align 8
  %28 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %2
  %32 = load i32, i32* %4, align 4
  %33 = call i64 @COLOUR_DEFAULT(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %59

36:                                               ; preds = %31, %2
  %37 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %3, align 8
  %38 = call i32 @screen_write_initctx(%struct.screen_write_ctx* %37, %struct.tty_ctx* %7)
  %39 = load i32, i32* %4, align 4
  %40 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %7, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = load %struct.screen*, %struct.screen** %5, align 8
  %42 = getelementptr inbounds %struct.screen, %struct.screen* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load %struct.screen*, %struct.screen** %5, align 8
  %45 = getelementptr inbounds %struct.screen, %struct.screen* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @grid_view_clear(%struct.TYPE_3__* %43, i32 0, i64 %46, i32 %47, i32 1, i32 %48)
  %50 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %3, align 8
  %51 = load %struct.screen*, %struct.screen** %5, align 8
  %52 = getelementptr inbounds %struct.screen, %struct.screen* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @screen_write_collect_clear(%struct.screen_write_ctx* %50, i64 %53, i32 1)
  %55 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %3, align 8
  %56 = call i32 @screen_write_collect_flush(%struct.screen_write_ctx* %55, i32 0)
  %57 = load i32, i32* @tty_cmd_clearline, align 4
  %58 = call i32 @tty_write(i32 %57, %struct.tty_ctx* %7)
  br label %59

59:                                               ; preds = %36, %35
  ret void
}

declare dso_local i32 @screen_size_x(%struct.screen*) #1

declare dso_local %struct.grid_line* @grid_get_line(%struct.TYPE_3__*, i64) #1

declare dso_local i64 @COLOUR_DEFAULT(i32) #1

declare dso_local i32 @screen_write_initctx(%struct.screen_write_ctx*, %struct.tty_ctx*) #1

declare dso_local i32 @grid_view_clear(%struct.TYPE_3__*, i32, i64, i32, i32, i32) #1

declare dso_local i32 @screen_write_collect_clear(%struct.screen_write_ctx*, i64, i32) #1

declare dso_local i32 @screen_write_collect_flush(%struct.screen_write_ctx*, i32) #1

declare dso_local i32 @tty_write(i32, %struct.tty_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
