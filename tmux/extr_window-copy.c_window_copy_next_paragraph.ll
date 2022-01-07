; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_next_paragraph.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_next_paragraph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_mode_entry = type { %struct.window_copy_mode_data* }
%struct.window_copy_mode_data = type { i64, i64, i32, %struct.screen }
%struct.screen = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.window_mode_entry*)* @window_copy_next_paragraph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @window_copy_next_paragraph(%struct.window_mode_entry* %0) #0 {
  %2 = alloca %struct.window_mode_entry*, align 8
  %3 = alloca %struct.window_copy_mode_data*, align 8
  %4 = alloca %struct.screen*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.window_mode_entry* %0, %struct.window_mode_entry** %2, align 8
  %8 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %9 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %8, i32 0, i32 0
  %10 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %9, align 8
  store %struct.window_copy_mode_data* %10, %struct.window_copy_mode_data** %3, align 8
  %11 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %12 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %11, i32 0, i32 3
  store %struct.screen* %12, %struct.screen** %4, align 8
  %13 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %14 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @screen_hsize(i32 %15)
  %17 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %18 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %16, %19
  %21 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %22 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %20, %23
  store i64 %24, i64* %7, align 8
  %25 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %26 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @screen_hsize(i32 %27)
  %29 = load %struct.screen*, %struct.screen** %4, align 8
  %30 = call i64 @screen_size_y(%struct.screen* %29)
  %31 = add nsw i64 %28, %30
  %32 = sub nsw i64 %31, 1
  store i64 %32, i64* %5, align 8
  br label %33

33:                                               ; preds = %44, %1
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i64 @window_copy_find_length(%struct.window_mode_entry* %38, i64 %39)
  %41 = icmp eq i64 %40, 0
  br label %42

42:                                               ; preds = %37, %33
  %43 = phi i1 [ false, %33 ], [ %41, %37 ]
  br i1 %43, label %44, label %47

44:                                               ; preds = %42
  %45 = load i64, i64* %7, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %7, align 8
  br label %33

47:                                               ; preds = %42
  br label %48

48:                                               ; preds = %59, %47
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %5, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call i64 @window_copy_find_length(%struct.window_mode_entry* %53, i64 %54)
  %56 = icmp sgt i64 %55, 0
  br label %57

57:                                               ; preds = %52, %48
  %58 = phi i1 [ false, %48 ], [ %56, %52 ]
  br i1 %58, label %59, label %62

59:                                               ; preds = %57
  %60 = load i64, i64* %7, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %7, align 8
  br label %48

62:                                               ; preds = %57
  %63 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %64 = load i64, i64* %7, align 8
  %65 = call i64 @window_copy_find_length(%struct.window_mode_entry* %63, i64 %64)
  store i64 %65, i64* %6, align 8
  %66 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %67 = load i64, i64* %6, align 8
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @window_copy_scroll_to(%struct.window_mode_entry* %66, i64 %67, i64 %68)
  ret void
}

declare dso_local i64 @screen_hsize(i32) #1

declare dso_local i64 @screen_size_y(%struct.screen*) #1

declare dso_local i64 @window_copy_find_length(%struct.window_mode_entry*, i64) #1

declare dso_local i32 @window_copy_scroll_to(%struct.window_mode_entry*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
