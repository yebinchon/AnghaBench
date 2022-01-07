; ModuleID = '/home/carl/AnghaBench/tmux/extr_mode-tree.c_mode_tree_up.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_mode-tree.c_mode_tree_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mode_tree_data = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mode_tree_data*, i32)* @mode_tree_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mode_tree_up(%struct.mode_tree_data* %0, i32 %1) #0 {
  %3 = alloca %struct.mode_tree_data*, align 8
  %4 = alloca i32, align 4
  store %struct.mode_tree_data* %0, %struct.mode_tree_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.mode_tree_data*, %struct.mode_tree_data** %3, align 8
  %6 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %38

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %37

12:                                               ; preds = %9
  %13 = load %struct.mode_tree_data*, %struct.mode_tree_data** %3, align 8
  %14 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = sub nsw i64 %15, 1
  %17 = load %struct.mode_tree_data*, %struct.mode_tree_data** %3, align 8
  %18 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.mode_tree_data*, %struct.mode_tree_data** %3, align 8
  %20 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.mode_tree_data*, %struct.mode_tree_data** %3, align 8
  %23 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp sge i64 %21, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %12
  %27 = load %struct.mode_tree_data*, %struct.mode_tree_data** %3, align 8
  %28 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.mode_tree_data*, %struct.mode_tree_data** %3, align 8
  %31 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %29, %32
  %34 = load %struct.mode_tree_data*, %struct.mode_tree_data** %3, align 8
  %35 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %34, i32 0, i32 3
  store i64 %33, i64* %35, align 8
  br label %36

36:                                               ; preds = %26, %12
  br label %37

37:                                               ; preds = %36, %9
  br label %56

38:                                               ; preds = %2
  %39 = load %struct.mode_tree_data*, %struct.mode_tree_data** %3, align 8
  %40 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, -1
  store i64 %42, i64* %40, align 8
  %43 = load %struct.mode_tree_data*, %struct.mode_tree_data** %3, align 8
  %44 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.mode_tree_data*, %struct.mode_tree_data** %3, align 8
  %47 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %45, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %38
  %51 = load %struct.mode_tree_data*, %struct.mode_tree_data** %3, align 8
  %52 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, -1
  store i64 %54, i64* %52, align 8
  br label %55

55:                                               ; preds = %50, %38
  br label %56

56:                                               ; preds = %55, %37
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
