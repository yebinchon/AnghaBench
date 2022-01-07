; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_scroll_up.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_scroll_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_mode_entry = type { %struct.window_copy_mode_data*, %struct.window_pane* }
%struct.window_copy_mode_data = type { i32, i32, i32, %struct.screen }
%struct.screen = type { i32* }
%struct.window_pane = type { i32 }
%struct.screen_write_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.window_mode_entry*, i32)* @window_copy_scroll_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @window_copy_scroll_up(%struct.window_mode_entry* %0, i32 %1) #0 {
  %3 = alloca %struct.window_mode_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.window_pane*, align 8
  %6 = alloca %struct.window_copy_mode_data*, align 8
  %7 = alloca %struct.screen*, align 8
  %8 = alloca %struct.screen_write_ctx, align 4
  store %struct.window_mode_entry* %0, %struct.window_mode_entry** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %10 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %9, i32 0, i32 1
  %11 = load %struct.window_pane*, %struct.window_pane** %10, align 8
  store %struct.window_pane* %11, %struct.window_pane** %5, align 8
  %12 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %13 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %12, i32 0, i32 0
  %14 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %13, align 8
  store %struct.window_copy_mode_data* %14, %struct.window_copy_mode_data** %6, align 8
  %15 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %6, align 8
  %16 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %15, i32 0, i32 3
  store %struct.screen* %16, %struct.screen** %7, align 8
  %17 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %6, align 8
  %18 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %6, align 8
  %24 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %22, %2
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %95

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %6, align 8
  %33 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %37 = call i32 @window_copy_update_selection(%struct.window_mode_entry* %36, i32 0)
  %38 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %39 = call i32 @screen_write_start(%struct.screen_write_ctx* %8, %struct.window_pane* %38, i32* null)
  %40 = call i32 @screen_write_cursormove(%struct.screen_write_ctx* %8, i32 0, i32 0, i32 0)
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @screen_write_deleteline(%struct.screen_write_ctx* %8, i32 %41, i32 8)
  %43 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %44 = load %struct.screen*, %struct.screen** %7, align 8
  %45 = call i32 @screen_size_y(%struct.screen* %44)
  %46 = load i32, i32* %4, align 4
  %47 = sub nsw i32 %45, %46
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @window_copy_write_lines(%struct.window_mode_entry* %43, %struct.screen_write_ctx* %8, i32 %47, i32 %48)
  %50 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %51 = call i32 @window_copy_write_line(%struct.window_mode_entry* %50, %struct.screen_write_ctx* %8, i32 0)
  %52 = load %struct.screen*, %struct.screen** %7, align 8
  %53 = call i32 @screen_size_y(%struct.screen* %52)
  %54 = icmp sgt i32 %53, 1
  br i1 %54, label %55, label %58

55:                                               ; preds = %30
  %56 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %57 = call i32 @window_copy_write_line(%struct.window_mode_entry* %56, %struct.screen_write_ctx* %8, i32 1)
  br label %58

58:                                               ; preds = %55, %30
  %59 = load %struct.screen*, %struct.screen** %7, align 8
  %60 = call i32 @screen_size_y(%struct.screen* %59)
  %61 = icmp sgt i32 %60, 3
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %64 = load %struct.screen*, %struct.screen** %7, align 8
  %65 = call i32 @screen_size_y(%struct.screen* %64)
  %66 = sub nsw i32 %65, 2
  %67 = call i32 @window_copy_write_line(%struct.window_mode_entry* %63, %struct.screen_write_ctx* %8, i32 %66)
  br label %68

68:                                               ; preds = %62, %58
  %69 = load %struct.screen*, %struct.screen** %7, align 8
  %70 = getelementptr inbounds %struct.screen, %struct.screen* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %86

73:                                               ; preds = %68
  %74 = load %struct.screen*, %struct.screen** %7, align 8
  %75 = call i32 @screen_size_y(%struct.screen* %74)
  %76 = load i32, i32* %4, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %73
  %79 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %80 = load %struct.screen*, %struct.screen** %7, align 8
  %81 = call i32 @screen_size_y(%struct.screen* %80)
  %82 = load i32, i32* %4, align 4
  %83 = sub nsw i32 %81, %82
  %84 = sub nsw i32 %83, 1
  %85 = call i32 @window_copy_write_line(%struct.window_mode_entry* %79, %struct.screen_write_ctx* %8, i32 %84)
  br label %86

86:                                               ; preds = %78, %73, %68
  %87 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %6, align 8
  %88 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %6, align 8
  %91 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @screen_write_cursormove(%struct.screen_write_ctx* %8, i32 %89, i32 %92, i32 0)
  %94 = call i32 @screen_write_stop(%struct.screen_write_ctx* %8)
  br label %95

95:                                               ; preds = %86, %29
  ret void
}

declare dso_local i32 @window_copy_update_selection(%struct.window_mode_entry*, i32) #1

declare dso_local i32 @screen_write_start(%struct.screen_write_ctx*, %struct.window_pane*, i32*) #1

declare dso_local i32 @screen_write_cursormove(%struct.screen_write_ctx*, i32, i32, i32) #1

declare dso_local i32 @screen_write_deleteline(%struct.screen_write_ctx*, i32, i32) #1

declare dso_local i32 @window_copy_write_lines(%struct.window_mode_entry*, %struct.screen_write_ctx*, i32, i32) #1

declare dso_local i32 @screen_size_y(%struct.screen*) #1

declare dso_local i32 @window_copy_write_line(%struct.window_mode_entry*, %struct.screen_write_ctx*, i32) #1

declare dso_local i32 @screen_write_stop(%struct.screen_write_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
