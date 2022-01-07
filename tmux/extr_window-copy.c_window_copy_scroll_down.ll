; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_scroll_down.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_scroll_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_mode_entry = type { %struct.window_copy_mode_data*, %struct.window_pane* }
%struct.window_copy_mode_data = type { i64, i32, i32, i32, %struct.screen }
%struct.screen = type { i32* }
%struct.window_pane = type { i32 }
%struct.screen_write_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.window_mode_entry*, i64)* @window_copy_scroll_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @window_copy_scroll_down(%struct.window_mode_entry* %0, i64 %1) #0 {
  %3 = alloca %struct.window_mode_entry*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.window_pane*, align 8
  %6 = alloca %struct.window_copy_mode_data*, align 8
  %7 = alloca %struct.screen*, align 8
  %8 = alloca %struct.screen_write_ctx, align 4
  store %struct.window_mode_entry* %0, %struct.window_mode_entry** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %10 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %9, i32 0, i32 1
  %11 = load %struct.window_pane*, %struct.window_pane** %10, align 8
  store %struct.window_pane* %11, %struct.window_pane** %5, align 8
  %12 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %13 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %12, i32 0, i32 0
  %14 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %13, align 8
  store %struct.window_copy_mode_data* %14, %struct.window_copy_mode_data** %6, align 8
  %15 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %6, align 8
  %16 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %15, i32 0, i32 4
  store %struct.screen* %16, %struct.screen** %7, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %6, align 8
  %19 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @screen_hsize(i32 %20)
  %22 = icmp sgt i64 %17, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %94

24:                                               ; preds = %2
  %25 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %6, align 8
  %26 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %6, align 8
  %29 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @screen_hsize(i32 %30)
  %32 = load i64, i64* %4, align 8
  %33 = sub nsw i64 %31, %32
  %34 = icmp sgt i64 %27, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %24
  %36 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %6, align 8
  %37 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @screen_hsize(i32 %38)
  %40 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %6, align 8
  %41 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %39, %42
  store i64 %43, i64* %4, align 8
  br label %44

44:                                               ; preds = %35, %24
  %45 = load i64, i64* %4, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %94

48:                                               ; preds = %44
  %49 = load i64, i64* %4, align 8
  %50 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %6, align 8
  %51 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, %49
  store i64 %53, i64* %51, align 8
  %54 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %55 = call i32 @window_copy_update_selection(%struct.window_mode_entry* %54, i32 0)
  %56 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %57 = call i32 @screen_write_start(%struct.screen_write_ctx* %8, %struct.window_pane* %56, i32* null)
  %58 = call i32 @screen_write_cursormove(%struct.screen_write_ctx* %8, i32 0, i32 0, i32 0)
  %59 = load i64, i64* %4, align 8
  %60 = call i32 @screen_write_insertline(%struct.screen_write_ctx* %8, i64 %59, i32 8)
  %61 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %62 = load i64, i64* %4, align 8
  %63 = call i32 @window_copy_write_lines(%struct.window_mode_entry* %61, %struct.screen_write_ctx* %8, i32 0, i64 %62)
  %64 = load %struct.screen*, %struct.screen** %7, align 8
  %65 = getelementptr inbounds %struct.screen, %struct.screen* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %78

68:                                               ; preds = %48
  %69 = load %struct.screen*, %struct.screen** %7, align 8
  %70 = call i64 @screen_size_y(%struct.screen* %69)
  %71 = load i64, i64* %4, align 8
  %72 = icmp sgt i64 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %75 = load i64, i64* %4, align 8
  %76 = trunc i64 %75 to i32
  %77 = call i32 @window_copy_write_line(%struct.window_mode_entry* %74, %struct.screen_write_ctx* %8, i32 %76)
  br label %85

78:                                               ; preds = %68, %48
  %79 = load i64, i64* %4, align 8
  %80 = icmp eq i64 %79, 1
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %83 = call i32 @window_copy_write_line(%struct.window_mode_entry* %82, %struct.screen_write_ctx* %8, i32 1)
  br label %84

84:                                               ; preds = %81, %78
  br label %85

85:                                               ; preds = %84, %73
  %86 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %6, align 8
  %87 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %6, align 8
  %90 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @screen_write_cursormove(%struct.screen_write_ctx* %8, i32 %88, i32 %91, i32 0)
  %93 = call i32 @screen_write_stop(%struct.screen_write_ctx* %8)
  br label %94

94:                                               ; preds = %85, %47, %23
  ret void
}

declare dso_local i64 @screen_hsize(i32) #1

declare dso_local i32 @window_copy_update_selection(%struct.window_mode_entry*, i32) #1

declare dso_local i32 @screen_write_start(%struct.screen_write_ctx*, %struct.window_pane*, i32*) #1

declare dso_local i32 @screen_write_cursormove(%struct.screen_write_ctx*, i32, i32, i32) #1

declare dso_local i32 @screen_write_insertline(%struct.screen_write_ctx*, i64, i32) #1

declare dso_local i32 @window_copy_write_lines(%struct.window_mode_entry*, %struct.screen_write_ctx*, i32, i64) #1

declare dso_local i64 @screen_size_y(%struct.screen*) #1

declare dso_local i32 @window_copy_write_line(%struct.window_mode_entry*, %struct.screen_write_ctx*, i32) #1

declare dso_local i32 @screen_write_stop(%struct.screen_write_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
