; ModuleID = '/home/carl/AnghaBench/tmux/extr_screen-write.c_screen_write_clearendofscreen.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_screen-write.c_screen_write_clearendofscreen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen_write_ctx = type { %struct.screen* }
%struct.screen = type { i64, i64, %struct.grid* }
%struct.grid = type { i32 }
%struct.tty_ctx = type { i32 }

@GRID_HISTORY = common dso_local global i32 0, align 4
@tty_cmd_clearendofscreen = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @screen_write_clearendofscreen(%struct.screen_write_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.screen_write_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.screen*, align 8
  %6 = alloca %struct.grid*, align 8
  %7 = alloca %struct.tty_ctx, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.screen_write_ctx* %0, %struct.screen_write_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.screen_write_ctx, %struct.screen_write_ctx* %10, i32 0, i32 0
  %12 = load %struct.screen*, %struct.screen** %11, align 8
  store %struct.screen* %12, %struct.screen** %5, align 8
  %13 = load %struct.screen*, %struct.screen** %5, align 8
  %14 = getelementptr inbounds %struct.screen, %struct.screen* %13, i32 0, i32 2
  %15 = load %struct.grid*, %struct.grid** %14, align 8
  store %struct.grid* %15, %struct.grid** %6, align 8
  %16 = load %struct.screen*, %struct.screen** %5, align 8
  %17 = call i32 @screen_size_x(%struct.screen* %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.screen*, %struct.screen** %5, align 8
  %19 = call i32 @screen_size_y(%struct.screen* %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %3, align 8
  %21 = call i32 @screen_write_initctx(%struct.screen_write_ctx* %20, %struct.tty_ctx* %7)
  %22 = load i32, i32* %4, align 4
  %23 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %7, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load %struct.screen*, %struct.screen** %5, align 8
  %25 = getelementptr inbounds %struct.screen, %struct.screen* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %2
  %29 = load %struct.screen*, %struct.screen** %5, align 8
  %30 = getelementptr inbounds %struct.screen, %struct.screen* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = load %struct.grid*, %struct.grid** %6, align 8
  %35 = getelementptr inbounds %struct.grid, %struct.grid* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @GRID_HISTORY, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load %struct.grid*, %struct.grid** %6, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @grid_view_clear_history(%struct.grid* %41, i32 %42)
  br label %87

44:                                               ; preds = %33, %28, %2
  %45 = load %struct.screen*, %struct.screen** %5, align 8
  %46 = getelementptr inbounds %struct.screen, %struct.screen* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = icmp sle i64 %47, %50
  br i1 %51, label %52, label %70

52:                                               ; preds = %44
  %53 = load %struct.grid*, %struct.grid** %6, align 8
  %54 = load %struct.screen*, %struct.screen** %5, align 8
  %55 = getelementptr inbounds %struct.screen, %struct.screen* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = load %struct.screen*, %struct.screen** %5, align 8
  %59 = getelementptr inbounds %struct.screen, %struct.screen* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = load %struct.screen*, %struct.screen** %5, align 8
  %64 = getelementptr inbounds %struct.screen, %struct.screen* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %62, %65
  %67 = trunc i64 %66 to i32
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @grid_view_clear(%struct.grid* %53, i32 %57, i64 %60, i32 %67, i32 1, i32 %68)
  br label %70

70:                                               ; preds = %52, %44
  %71 = load %struct.grid*, %struct.grid** %6, align 8
  %72 = load %struct.screen*, %struct.screen** %5, align 8
  %73 = getelementptr inbounds %struct.screen, %struct.screen* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, 1
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = load %struct.screen*, %struct.screen** %5, align 8
  %80 = getelementptr inbounds %struct.screen, %struct.screen* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, 1
  %83 = sub nsw i64 %78, %82
  %84 = trunc i64 %83 to i32
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @grid_view_clear(%struct.grid* %71, i32 0, i64 %75, i32 %76, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %70, %40
  %88 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %3, align 8
  %89 = load %struct.screen*, %struct.screen** %5, align 8
  %90 = getelementptr inbounds %struct.screen, %struct.screen* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, 1
  %93 = trunc i64 %92 to i32
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = load %struct.screen*, %struct.screen** %5, align 8
  %97 = getelementptr inbounds %struct.screen, %struct.screen* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, 1
  %100 = sub nsw i64 %95, %99
  %101 = trunc i64 %100 to i32
  %102 = call i32 @screen_write_collect_clear(%struct.screen_write_ctx* %88, i32 %93, i32 %101)
  %103 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %3, align 8
  %104 = call i32 @screen_write_collect_flush(%struct.screen_write_ctx* %103, i32 0)
  %105 = load i32, i32* @tty_cmd_clearendofscreen, align 4
  %106 = call i32 @tty_write(i32 %105, %struct.tty_ctx* %7)
  ret void
}

declare dso_local i32 @screen_size_x(%struct.screen*) #1

declare dso_local i32 @screen_size_y(%struct.screen*) #1

declare dso_local i32 @screen_write_initctx(%struct.screen_write_ctx*, %struct.tty_ctx*) #1

declare dso_local i32 @grid_view_clear_history(%struct.grid*, i32) #1

declare dso_local i32 @grid_view_clear(%struct.grid*, i32, i64, i32, i32, i32) #1

declare dso_local i32 @screen_write_collect_clear(%struct.screen_write_ctx*, i32, i32) #1

declare dso_local i32 @screen_write_collect_flush(%struct.screen_write_ctx*, i32) #1

declare dso_local i32 @tty_write(i32, %struct.tty_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
