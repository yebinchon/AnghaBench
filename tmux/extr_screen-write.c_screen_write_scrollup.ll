; ModuleID = '/home/carl/AnghaBench/tmux/extr_screen-write.c_screen_write_scrollup.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_screen-write.c_screen_write_scrollup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen_write_ctx = type { i64, i32, %struct.screen* }
%struct.screen = type { i64, i64, %struct.grid* }
%struct.grid = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @screen_write_scrollup(%struct.screen_write_ctx* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.screen_write_ctx*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.screen*, align 8
  %8 = alloca %struct.grid*, align 8
  %9 = alloca i64, align 8
  store %struct.screen_write_ctx* %0, %struct.screen_write_ctx** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.screen_write_ctx, %struct.screen_write_ctx* %10, i32 0, i32 2
  %12 = load %struct.screen*, %struct.screen** %11, align 8
  store %struct.screen* %12, %struct.screen** %7, align 8
  %13 = load %struct.screen*, %struct.screen** %7, align 8
  %14 = getelementptr inbounds %struct.screen, %struct.screen* %13, i32 0, i32 2
  %15 = load %struct.grid*, %struct.grid** %14, align 8
  store %struct.grid* %15, %struct.grid** %8, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i64 1, i64* %5, align 8
  br label %40

19:                                               ; preds = %3
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.screen*, %struct.screen** %7, align 8
  %22 = getelementptr inbounds %struct.screen, %struct.screen* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.screen*, %struct.screen** %7, align 8
  %25 = getelementptr inbounds %struct.screen, %struct.screen* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %23, %26
  %28 = add nsw i64 %27, 1
  %29 = icmp sgt i64 %20, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %19
  %31 = load %struct.screen*, %struct.screen** %7, align 8
  %32 = getelementptr inbounds %struct.screen, %struct.screen* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.screen*, %struct.screen** %7, align 8
  %35 = getelementptr inbounds %struct.screen, %struct.screen* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %33, %36
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %5, align 8
  br label %39

39:                                               ; preds = %30, %19
  br label %40

40:                                               ; preds = %39, %18
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %4, align 8
  %43 = getelementptr inbounds %struct.screen_write_ctx, %struct.screen_write_ctx* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %4, align 8
  %48 = call i32 @screen_write_collect_flush(%struct.screen_write_ctx* %47, i32 1)
  %49 = load i64, i64* %6, align 8
  %50 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %4, align 8
  %51 = getelementptr inbounds %struct.screen_write_ctx, %struct.screen_write_ctx* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  br label %52

52:                                               ; preds = %46, %40
  store i64 0, i64* %9, align 8
  br label %53

53:                                               ; preds = %69, %52
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* %5, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %72

57:                                               ; preds = %53
  %58 = load %struct.grid*, %struct.grid** %8, align 8
  %59 = load %struct.screen*, %struct.screen** %7, align 8
  %60 = getelementptr inbounds %struct.screen, %struct.screen* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.screen*, %struct.screen** %7, align 8
  %63 = getelementptr inbounds %struct.screen, %struct.screen* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %6, align 8
  %66 = call i32 @grid_view_scroll_region_up(%struct.grid* %58, i64 %61, i64 %64, i64 %65)
  %67 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %4, align 8
  %68 = call i32 @screen_write_collect_scroll(%struct.screen_write_ctx* %67)
  br label %69

69:                                               ; preds = %57
  %70 = load i64, i64* %9, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %9, align 8
  br label %53

72:                                               ; preds = %53
  %73 = load i64, i64* %5, align 8
  %74 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %4, align 8
  %75 = getelementptr inbounds %struct.screen_write_ctx, %struct.screen_write_ctx* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %77, %73
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %75, align 8
  ret void
}

declare dso_local i32 @screen_write_collect_flush(%struct.screen_write_ctx*, i32) #1

declare dso_local i32 @grid_view_scroll_region_up(%struct.grid*, i64, i64, i64) #1

declare dso_local i32 @screen_write_collect_scroll(%struct.screen_write_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
