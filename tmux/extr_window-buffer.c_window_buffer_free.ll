; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-buffer.c_window_buffer_free.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-buffer.c_window_buffer_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_mode_entry = type { %struct.window_buffer_modedata* }
%struct.window_buffer_modedata = type { i64, %struct.window_buffer_modedata*, %struct.window_buffer_modedata*, %struct.window_buffer_modedata*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.window_mode_entry*)* @window_buffer_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @window_buffer_free(%struct.window_mode_entry* %0) #0 {
  %2 = alloca %struct.window_mode_entry*, align 8
  %3 = alloca %struct.window_buffer_modedata*, align 8
  %4 = alloca i64, align 8
  store %struct.window_mode_entry* %0, %struct.window_mode_entry** %2, align 8
  %5 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %6 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %5, i32 0, i32 0
  %7 = load %struct.window_buffer_modedata*, %struct.window_buffer_modedata** %6, align 8
  store %struct.window_buffer_modedata* %7, %struct.window_buffer_modedata** %3, align 8
  %8 = load %struct.window_buffer_modedata*, %struct.window_buffer_modedata** %3, align 8
  %9 = icmp eq %struct.window_buffer_modedata* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %47

11:                                               ; preds = %1
  %12 = load %struct.window_buffer_modedata*, %struct.window_buffer_modedata** %3, align 8
  %13 = getelementptr inbounds %struct.window_buffer_modedata, %struct.window_buffer_modedata* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @mode_tree_free(i32 %14)
  store i64 0, i64* %4, align 8
  br label %16

16:                                               ; preds = %29, %11
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.window_buffer_modedata*, %struct.window_buffer_modedata** %3, align 8
  %19 = getelementptr inbounds %struct.window_buffer_modedata, %struct.window_buffer_modedata* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %16
  %23 = load %struct.window_buffer_modedata*, %struct.window_buffer_modedata** %3, align 8
  %24 = getelementptr inbounds %struct.window_buffer_modedata, %struct.window_buffer_modedata* %23, i32 0, i32 3
  %25 = load %struct.window_buffer_modedata*, %struct.window_buffer_modedata** %24, align 8
  %26 = load i64, i64* %4, align 8
  %27 = getelementptr inbounds %struct.window_buffer_modedata, %struct.window_buffer_modedata* %25, i64 %26
  %28 = call i32 @window_buffer_free_item(%struct.window_buffer_modedata* byval(%struct.window_buffer_modedata) align 8 %27)
  br label %29

29:                                               ; preds = %22
  %30 = load i64, i64* %4, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %4, align 8
  br label %16

32:                                               ; preds = %16
  %33 = load %struct.window_buffer_modedata*, %struct.window_buffer_modedata** %3, align 8
  %34 = getelementptr inbounds %struct.window_buffer_modedata, %struct.window_buffer_modedata* %33, i32 0, i32 3
  %35 = load %struct.window_buffer_modedata*, %struct.window_buffer_modedata** %34, align 8
  %36 = call i32 @free(%struct.window_buffer_modedata* %35)
  %37 = load %struct.window_buffer_modedata*, %struct.window_buffer_modedata** %3, align 8
  %38 = getelementptr inbounds %struct.window_buffer_modedata, %struct.window_buffer_modedata* %37, i32 0, i32 2
  %39 = load %struct.window_buffer_modedata*, %struct.window_buffer_modedata** %38, align 8
  %40 = call i32 @free(%struct.window_buffer_modedata* %39)
  %41 = load %struct.window_buffer_modedata*, %struct.window_buffer_modedata** %3, align 8
  %42 = getelementptr inbounds %struct.window_buffer_modedata, %struct.window_buffer_modedata* %41, i32 0, i32 1
  %43 = load %struct.window_buffer_modedata*, %struct.window_buffer_modedata** %42, align 8
  %44 = call i32 @free(%struct.window_buffer_modedata* %43)
  %45 = load %struct.window_buffer_modedata*, %struct.window_buffer_modedata** %3, align 8
  %46 = call i32 @free(%struct.window_buffer_modedata* %45)
  br label %47

47:                                               ; preds = %32, %10
  ret void
}

declare dso_local i32 @mode_tree_free(i32) #1

declare dso_local i32 @window_buffer_free_item(%struct.window_buffer_modedata* byval(%struct.window_buffer_modedata) align 8) #1

declare dso_local i32 @free(%struct.window_buffer_modedata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
