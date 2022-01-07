; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_resize.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_mode_entry = type { %struct.window_copy_mode_data*, %struct.window_pane* }
%struct.window_copy_mode_data = type { i64, i64, i32, i32, i64, i64, i32*, %struct.screen*, %struct.screen }
%struct.screen = type { i32 }
%struct.window_pane = type { %struct.screen }
%struct.screen_write_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.window_mode_entry*, i64, i64)* @window_copy_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @window_copy_resize(%struct.window_mode_entry* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.window_mode_entry*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.window_pane*, align 8
  %8 = alloca %struct.window_copy_mode_data*, align 8
  %9 = alloca %struct.screen*, align 8
  %10 = alloca %struct.screen_write_ctx, align 4
  %11 = alloca i32, align 4
  store %struct.window_mode_entry* %0, %struct.window_mode_entry** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %13 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %12, i32 0, i32 1
  %14 = load %struct.window_pane*, %struct.window_pane** %13, align 8
  store %struct.window_pane* %14, %struct.window_pane** %7, align 8
  %15 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %16 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %15, i32 0, i32 0
  %17 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %16, align 8
  store %struct.window_copy_mode_data* %17, %struct.window_copy_mode_data** %8, align 8
  %18 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %19 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %18, i32 0, i32 8
  store %struct.screen* %19, %struct.screen** %9, align 8
  %20 = load %struct.screen*, %struct.screen** %9, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @screen_resize(%struct.screen* %20, i64 %21, i64 %22, i32 1)
  %24 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %25 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %24, i32 0, i32 7
  %26 = load %struct.screen*, %struct.screen** %25, align 8
  %27 = load %struct.window_pane*, %struct.window_pane** %7, align 8
  %28 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %27, i32 0, i32 0
  %29 = icmp ne %struct.screen* %26, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %3
  %31 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %32 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %31, i32 0, i32 7
  %33 = load %struct.screen*, %struct.screen** %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @screen_resize(%struct.screen* %33, i64 %34, i64 %35, i32 1)
  br label %37

37:                                               ; preds = %30, %3
  %38 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %39 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %6, align 8
  %43 = sub nsw i64 %42, 1
  %44 = icmp sgt i64 %41, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = load i64, i64* %6, align 8
  %47 = sub nsw i64 %46, 1
  %48 = trunc i64 %47 to i32
  %49 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %50 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  br label %51

51:                                               ; preds = %45, %37
  %52 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %53 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %5, align 8
  %56 = icmp sgt i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load i64, i64* %5, align 8
  %59 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %60 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %59, i32 0, i32 4
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %57, %51
  %62 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %63 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %66 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %65, i32 0, i32 7
  %67 = load %struct.screen*, %struct.screen** %66, align 8
  %68 = call i64 @screen_hsize(%struct.screen* %67)
  %69 = icmp sgt i64 %64, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %61
  %71 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %72 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %71, i32 0, i32 7
  %73 = load %struct.screen*, %struct.screen** %72, align 8
  %74 = call i64 @screen_hsize(%struct.screen* %73)
  %75 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %76 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %70, %61
  %78 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %79 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %78, i32 0, i32 6
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %11, align 4
  %83 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %84 = call i32 @window_copy_clear_selection(%struct.window_mode_entry* %83)
  %85 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %86 = call i32 @window_copy_clear_marks(%struct.window_mode_entry* %85)
  %87 = load %struct.screen*, %struct.screen** %9, align 8
  %88 = call i32 @screen_write_start(%struct.screen_write_ctx* %10, i32* null, %struct.screen* %87)
  %89 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %90 = load %struct.screen*, %struct.screen** %9, align 8
  %91 = call i64 @screen_size_y(%struct.screen* %90)
  %92 = sub nsw i64 %91, 1
  %93 = call i32 @window_copy_write_lines(%struct.window_mode_entry* %89, %struct.screen_write_ctx* %10, i32 0, i64 %92)
  %94 = call i32 @screen_write_stop(%struct.screen_write_ctx* %10)
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %77
  %98 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %99 = call i32 @window_copy_search_marks(%struct.window_mode_entry* %98, i32* null)
  br label %100

100:                                              ; preds = %97, %77
  %101 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %102 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %105 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %104, i32 0, i32 5
  store i64 %103, i64* %105, align 8
  %106 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %107 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %110 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 4
  %111 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %112 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %115 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %114, i32 0, i32 1
  store i64 %113, i64* %115, align 8
  %116 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %117 = call i32 @window_copy_redraw_screen(%struct.window_mode_entry* %116)
  ret void
}

declare dso_local i32 @screen_resize(%struct.screen*, i64, i64, i32) #1

declare dso_local i64 @screen_hsize(%struct.screen*) #1

declare dso_local i32 @window_copy_clear_selection(%struct.window_mode_entry*) #1

declare dso_local i32 @window_copy_clear_marks(%struct.window_mode_entry*) #1

declare dso_local i32 @screen_write_start(%struct.screen_write_ctx*, i32*, %struct.screen*) #1

declare dso_local i32 @window_copy_write_lines(%struct.window_mode_entry*, %struct.screen_write_ctx*, i32, i64) #1

declare dso_local i64 @screen_size_y(%struct.screen*) #1

declare dso_local i32 @screen_write_stop(%struct.screen_write_ctx*) #1

declare dso_local i32 @window_copy_search_marks(%struct.window_mode_entry*, i32*) #1

declare dso_local i32 @window_copy_redraw_screen(%struct.window_mode_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
