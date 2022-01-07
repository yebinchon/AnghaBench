; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_clear_selection.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_clear_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_mode_entry = type { %struct.window_copy_mode_data* }
%struct.window_copy_mode_data = type { i64, i64, i64, i32, i32, i32, i32 }

@CURSORDRAG_NONE = common dso_local global i32 0, align 4
@LINE_SEL_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.window_mode_entry*)* @window_copy_clear_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @window_copy_clear_selection(%struct.window_mode_entry* %0) #0 {
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
  %10 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %9, i32 0, i32 6
  %11 = call i32 @screen_clear_selection(i32* %10)
  %12 = load i32, i32* @CURSORDRAG_NONE, align 4
  %13 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %14 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %13, i32 0, i32 5
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* @LINE_SEL_NONE, align 4
  %16 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %17 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 4
  %18 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %19 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @screen_hsize(i32 %20)
  %22 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %23 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %21, %24
  %26 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %27 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %25, %28
  store i64 %29, i64* %5, align 8
  %30 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i64 @window_copy_find_length(%struct.window_mode_entry* %30, i64 %31)
  store i64 %32, i64* %4, align 8
  %33 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %34 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %4, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %1
  %39 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %40 = load i64, i64* %4, align 8
  %41 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %42 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @window_copy_update_cursor(%struct.window_mode_entry* %39, i64 %40, i64 %43)
  br label %45

45:                                               ; preds = %38, %1
  ret void
}

declare dso_local i32 @screen_clear_selection(i32*) #1

declare dso_local i64 @screen_hsize(i32) #1

declare dso_local i64 @window_copy_find_length(%struct.window_mode_entry*, i64) #1

declare dso_local i32 @window_copy_update_cursor(%struct.window_mode_entry*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
