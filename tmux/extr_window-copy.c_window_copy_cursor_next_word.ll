; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cursor_next_word.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cursor_next_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_mode_entry = type { %struct.window_copy_mode_data* }
%struct.window_copy_mode_data = type { i64, i64, i64, %struct.screen* }
%struct.screen = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.window_mode_entry*, i8*)* @window_copy_cursor_next_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @window_copy_cursor_next_word(%struct.window_mode_entry* %0, i8* %1) #0 {
  %3 = alloca %struct.window_mode_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.window_copy_mode_data*, align 8
  %6 = alloca %struct.screen*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.window_mode_entry* %0, %struct.window_mode_entry** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %13 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %12, i32 0, i32 0
  %14 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %13, align 8
  store %struct.window_copy_mode_data* %14, %struct.window_copy_mode_data** %5, align 8
  %15 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %16 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %15, i32 0, i32 3
  %17 = load %struct.screen*, %struct.screen** %16, align 8
  store %struct.screen* %17, %struct.screen** %6, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %19 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %7, align 8
  %21 = load %struct.screen*, %struct.screen** %6, align 8
  %22 = call i64 @screen_hsize(%struct.screen* %21)
  %23 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %24 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %28 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %26, %29
  store i64 %30, i64* %8, align 8
  %31 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i64 @window_copy_find_length(%struct.window_mode_entry* %31, i64 %32)
  store i64 %33, i64* %9, align 8
  %34 = load %struct.screen*, %struct.screen** %6, align 8
  %35 = call i64 @screen_hsize(%struct.screen* %34)
  %36 = load %struct.screen*, %struct.screen** %6, align 8
  %37 = call i64 @screen_size_y(%struct.screen* %36)
  %38 = add nsw i64 %35, %37
  %39 = sub nsw i64 %38, 1
  store i64 %39, i64* %10, align 8
  br label %40

40:                                               ; preds = %89, %2
  br label %41

41:                                               ; preds = %83, %40
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %9, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %53, label %45

45:                                               ; preds = %41
  %46 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 @window_copy_in_set(%struct.window_mode_entry* %46, i64 %47, i64 %48, i8* %49)
  %51 = load i32, i32* %11, align 4
  %52 = icmp eq i32 %50, %51
  br label %53

53:                                               ; preds = %45, %41
  %54 = phi i1 [ true, %41 ], [ %52, %45 ]
  br i1 %54, label %55, label %84

55:                                               ; preds = %53
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* %9, align 8
  %58 = icmp sgt i64 %56, %57
  br i1 %58, label %59, label %80

59:                                               ; preds = %55
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* %10, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %108

64:                                               ; preds = %59
  %65 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %66 = call i32 @window_copy_cursor_down(%struct.window_mode_entry* %65, i32 0)
  store i64 0, i64* %7, align 8
  %67 = load %struct.screen*, %struct.screen** %6, align 8
  %68 = call i64 @screen_hsize(%struct.screen* %67)
  %69 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %70 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %68, %71
  %73 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %74 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = sub nsw i64 %72, %75
  store i64 %76, i64* %8, align 8
  %77 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %78 = load i64, i64* %8, align 8
  %79 = call i64 @window_copy_find_length(%struct.window_mode_entry* %77, i64 %78)
  store i64 %79, i64* %9, align 8
  br label %83

80:                                               ; preds = %55
  %81 = load i64, i64* %7, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %7, align 8
  br label %83

83:                                               ; preds = %80, %64
  br label %41

84:                                               ; preds = %53
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %84
  %90 = load i32, i32* %11, align 4
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %40, label %92

92:                                               ; preds = %89
  %93 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %94 = load i64, i64* %7, align 8
  %95 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %96 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @window_copy_update_cursor(%struct.window_mode_entry* %93, i64 %94, i64 %97)
  %99 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %100 = call i64 @window_copy_update_selection(%struct.window_mode_entry* %99, i32 1)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %92
  %103 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %104 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %105 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @window_copy_redraw_lines(%struct.window_mode_entry* %103, i64 %106, i32 1)
  br label %108

108:                                              ; preds = %63, %102, %92
  ret void
}

declare dso_local i64 @screen_hsize(%struct.screen*) #1

declare dso_local i64 @window_copy_find_length(%struct.window_mode_entry*, i64) #1

declare dso_local i64 @screen_size_y(%struct.screen*) #1

declare dso_local i32 @window_copy_in_set(%struct.window_mode_entry*, i64, i64, i8*) #1

declare dso_local i32 @window_copy_cursor_down(%struct.window_mode_entry*, i32) #1

declare dso_local i32 @window_copy_update_cursor(%struct.window_mode_entry*, i64, i64) #1

declare dso_local i64 @window_copy_update_selection(%struct.window_mode_entry*, i32) #1

declare dso_local i32 @window_copy_redraw_lines(%struct.window_mode_entry*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
