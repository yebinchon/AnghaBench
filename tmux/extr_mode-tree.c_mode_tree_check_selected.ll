; ModuleID = '/home/carl/AnghaBench/tmux/extr_mode-tree.c_mode_tree_check_selected.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_mode-tree.c_mode_tree_check_selected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mode_tree_data = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mode_tree_data*)* @mode_tree_check_selected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mode_tree_check_selected(%struct.mode_tree_data* %0) #0 {
  %2 = alloca %struct.mode_tree_data*, align 8
  store %struct.mode_tree_data* %0, %struct.mode_tree_data** %2, align 8
  %3 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %4 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %7 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = sub nsw i32 %8, 1
  %10 = icmp sgt i32 %5, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %13 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %16 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 %14, %17
  %19 = add nsw i32 %18, 1
  %20 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %21 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  br label %22

22:                                               ; preds = %11, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
