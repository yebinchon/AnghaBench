; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_rectangle_toggle.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_rectangle_toggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_mode_entry = type { %struct.window_copy_mode_data* }
%struct.window_copy_mode_data = type { i32, i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.window_mode_entry*)* @window_copy_rectangle_toggle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @window_copy_rectangle_toggle(%struct.window_mode_entry* %0) #0 {
  %2 = alloca %struct.window_mode_entry*, align 8
  %3 = alloca %struct.window_copy_mode_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.window_mode_entry* %0, %struct.window_mode_entry** %2, align 8
  %6 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %7 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %6, i32 0, i32 0
  %8 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %7, align 8
  store %struct.window_copy_mode_data* %8, %struct.window_copy_mode_data** %3, align 8
  %9 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %10 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %16 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %18 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @screen_hsize(i32 %19)
  %21 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %22 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  %25 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %26 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %24, %27
  store i64 %28, i64* %5, align 8
  %29 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i64 @window_copy_find_length(%struct.window_mode_entry* %29, i64 %30)
  store i64 %31, i64* %4, align 8
  %32 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %33 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %4, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %1
  %38 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %39 = load i64, i64* %4, align 8
  %40 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %41 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @window_copy_update_cursor(%struct.window_mode_entry* %38, i64 %39, i64 %42)
  br label %44

44:                                               ; preds = %37, %1
  %45 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %46 = call i32 @window_copy_update_selection(%struct.window_mode_entry* %45, i32 1)
  %47 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %48 = call i32 @window_copy_redraw_screen(%struct.window_mode_entry* %47)
  ret void
}

declare dso_local i64 @screen_hsize(i32) #1

declare dso_local i64 @window_copy_find_length(%struct.window_mode_entry*, i64) #1

declare dso_local i32 @window_copy_update_cursor(%struct.window_mode_entry*, i64, i64) #1

declare dso_local i32 @window_copy_update_selection(%struct.window_mode_entry*, i32) #1

declare dso_local i32 @window_copy_redraw_screen(%struct.window_mode_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
