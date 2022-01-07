; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-tree.c_window_tree_free.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-tree.c_window_tree_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_mode_entry = type { %struct.window_tree_modedata* }
%struct.window_tree_modedata = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.window_mode_entry*)* @window_tree_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @window_tree_free(%struct.window_mode_entry* %0) #0 {
  %2 = alloca %struct.window_mode_entry*, align 8
  %3 = alloca %struct.window_tree_modedata*, align 8
  store %struct.window_mode_entry* %0, %struct.window_mode_entry** %2, align 8
  %4 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %5 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %4, i32 0, i32 0
  %6 = load %struct.window_tree_modedata*, %struct.window_tree_modedata** %5, align 8
  store %struct.window_tree_modedata* %6, %struct.window_tree_modedata** %3, align 8
  %7 = load %struct.window_tree_modedata*, %struct.window_tree_modedata** %3, align 8
  %8 = icmp eq %struct.window_tree_modedata* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %19

10:                                               ; preds = %1
  %11 = load %struct.window_tree_modedata*, %struct.window_tree_modedata** %3, align 8
  %12 = getelementptr inbounds %struct.window_tree_modedata, %struct.window_tree_modedata* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load %struct.window_tree_modedata*, %struct.window_tree_modedata** %3, align 8
  %14 = getelementptr inbounds %struct.window_tree_modedata, %struct.window_tree_modedata* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @mode_tree_free(i32 %15)
  %17 = load %struct.window_tree_modedata*, %struct.window_tree_modedata** %3, align 8
  %18 = call i32 @window_tree_destroy(%struct.window_tree_modedata* %17)
  br label %19

19:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @mode_tree_free(i32) #1

declare dso_local i32 @window_tree_destroy(%struct.window_tree_modedata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
