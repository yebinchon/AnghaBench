; ModuleID = '/home/carl/AnghaBench/tmux/extr_mode-tree.c_mode_tree_down.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_mode-tree.c_mode_tree_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mode_tree_data = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mode_tree_down(%struct.mode_tree_data* %0, i32 %1) #0 {
  %3 = alloca %struct.mode_tree_data*, align 8
  %4 = alloca i32, align 4
  store %struct.mode_tree_data* %0, %struct.mode_tree_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.mode_tree_data*, %struct.mode_tree_data** %3, align 8
  %6 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.mode_tree_data*, %struct.mode_tree_data** %3, align 8
  %9 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = sub nsw i32 %10, 1
  %12 = icmp eq i32 %7, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load %struct.mode_tree_data*, %struct.mode_tree_data** %3, align 8
  %18 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %17, i32 0, i32 0
  store i32 0, i32* %18, align 4
  %19 = load %struct.mode_tree_data*, %struct.mode_tree_data** %3, align 8
  %20 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %19, i32 0, i32 2
  store i32 0, i32* %20, align 4
  br label %21

21:                                               ; preds = %16, %13
  br label %45

22:                                               ; preds = %2
  %23 = load %struct.mode_tree_data*, %struct.mode_tree_data** %3, align 8
  %24 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  %27 = load %struct.mode_tree_data*, %struct.mode_tree_data** %3, align 8
  %28 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mode_tree_data*, %struct.mode_tree_data** %3, align 8
  %31 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mode_tree_data*, %struct.mode_tree_data** %3, align 8
  %34 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %32, %35
  %37 = sub nsw i32 %36, 1
  %38 = icmp sgt i32 %29, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %22
  %40 = load %struct.mode_tree_data*, %struct.mode_tree_data** %3, align 8
  %41 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %39, %22
  br label %45

45:                                               ; preds = %44, %21
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
