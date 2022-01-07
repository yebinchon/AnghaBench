; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_goto_line.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_goto_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_mode_entry = type { %struct.window_copy_mode_data* }
%struct.window_copy_mode_data = type { i32, i32 }

@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.window_mode_entry*, i8*)* @window_copy_goto_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @window_copy_goto_line(%struct.window_mode_entry* %0, i8* %1) #0 {
  %3 = alloca %struct.window_mode_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.window_copy_mode_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.window_mode_entry* %0, %struct.window_mode_entry** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %9 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %8, i32 0, i32 0
  %10 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %9, align 8
  store %struct.window_copy_mode_data* %10, %struct.window_copy_mode_data** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load i32, i32* @INT_MAX, align 4
  %13 = call i32 @strtonum(i8* %11, i32 -1, i32 %12, i8** %6)
  store i32 %13, i32* %7, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %40

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %23 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @screen_hsize(i32 %24)
  %26 = icmp sgt i32 %21, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %20, %17
  %28 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %29 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @screen_hsize(i32 %30)
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %27, %20
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %35 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %37 = call i32 @window_copy_update_selection(%struct.window_mode_entry* %36, i32 1)
  %38 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %39 = call i32 @window_copy_redraw_screen(%struct.window_mode_entry* %38)
  br label %40

40:                                               ; preds = %32, %16
  ret void
}

declare dso_local i32 @strtonum(i8*, i32, i32, i8**) #1

declare dso_local i32 @screen_hsize(i32) #1

declare dso_local i32 @window_copy_update_selection(%struct.window_mode_entry*, i32) #1

declare dso_local i32 @window_copy_redraw_screen(%struct.window_mode_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
