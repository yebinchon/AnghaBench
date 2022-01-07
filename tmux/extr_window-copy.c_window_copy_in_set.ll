; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_in_set.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_in_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_mode_entry = type { %struct.window_copy_mode_data* }
%struct.window_copy_mode_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.grid_cell = type { i32, i32 }

@GRID_FLAG_PADDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.window_mode_entry*, i32, i32, i8*)* @window_copy_in_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @window_copy_in_set(%struct.window_mode_entry* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.window_mode_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.window_copy_mode_data*, align 8
  %11 = alloca %struct.grid_cell, align 4
  store %struct.window_mode_entry* %0, %struct.window_mode_entry** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load %struct.window_mode_entry*, %struct.window_mode_entry** %6, align 8
  %13 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %12, i32 0, i32 0
  %14 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %13, align 8
  store %struct.window_copy_mode_data* %14, %struct.window_copy_mode_data** %10, align 8
  %15 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %10, align 8
  %16 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @grid_get_cell(i32 %19, i32 %20, i32 %21, %struct.grid_cell* %11)
  %23 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %11, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @GRID_FLAG_PADDING, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %33

29:                                               ; preds = %4
  %30 = load i8*, i8** %9, align 8
  %31 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %11, i32 0, i32 1
  %32 = call i32 @utf8_cstrhas(i8* %30, i32* %31)
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %29, %28
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @grid_get_cell(i32, i32, i32, %struct.grid_cell*) #1

declare dso_local i32 @utf8_cstrhas(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
