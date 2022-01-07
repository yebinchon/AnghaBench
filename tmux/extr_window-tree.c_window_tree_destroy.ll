; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-tree.c_window_tree_destroy.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-tree.c_window_tree_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_tree_modedata = type { i64, i64, %struct.window_tree_modedata*, %struct.window_tree_modedata*, %struct.window_tree_modedata* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.window_tree_modedata*)* @window_tree_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @window_tree_destroy(%struct.window_tree_modedata* %0) #0 {
  %2 = alloca %struct.window_tree_modedata*, align 8
  %3 = alloca i64, align 8
  store %struct.window_tree_modedata* %0, %struct.window_tree_modedata** %2, align 8
  %4 = load %struct.window_tree_modedata*, %struct.window_tree_modedata** %2, align 8
  %5 = getelementptr inbounds %struct.window_tree_modedata, %struct.window_tree_modedata* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add nsw i64 %6, -1
  store i64 %7, i64* %5, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %42

10:                                               ; preds = %1
  store i64 0, i64* %3, align 8
  br label %11

11:                                               ; preds = %24, %10
  %12 = load i64, i64* %3, align 8
  %13 = load %struct.window_tree_modedata*, %struct.window_tree_modedata** %2, align 8
  %14 = getelementptr inbounds %struct.window_tree_modedata, %struct.window_tree_modedata* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %11
  %18 = load %struct.window_tree_modedata*, %struct.window_tree_modedata** %2, align 8
  %19 = getelementptr inbounds %struct.window_tree_modedata, %struct.window_tree_modedata* %18, i32 0, i32 4
  %20 = load %struct.window_tree_modedata*, %struct.window_tree_modedata** %19, align 8
  %21 = load i64, i64* %3, align 8
  %22 = getelementptr inbounds %struct.window_tree_modedata, %struct.window_tree_modedata* %20, i64 %21
  %23 = call i32 @window_tree_free_item(%struct.window_tree_modedata* byval(%struct.window_tree_modedata) align 8 %22)
  br label %24

24:                                               ; preds = %17
  %25 = load i64, i64* %3, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %3, align 8
  br label %11

27:                                               ; preds = %11
  %28 = load %struct.window_tree_modedata*, %struct.window_tree_modedata** %2, align 8
  %29 = getelementptr inbounds %struct.window_tree_modedata, %struct.window_tree_modedata* %28, i32 0, i32 4
  %30 = load %struct.window_tree_modedata*, %struct.window_tree_modedata** %29, align 8
  %31 = call i32 @free(%struct.window_tree_modedata* %30)
  %32 = load %struct.window_tree_modedata*, %struct.window_tree_modedata** %2, align 8
  %33 = getelementptr inbounds %struct.window_tree_modedata, %struct.window_tree_modedata* %32, i32 0, i32 3
  %34 = load %struct.window_tree_modedata*, %struct.window_tree_modedata** %33, align 8
  %35 = call i32 @free(%struct.window_tree_modedata* %34)
  %36 = load %struct.window_tree_modedata*, %struct.window_tree_modedata** %2, align 8
  %37 = getelementptr inbounds %struct.window_tree_modedata, %struct.window_tree_modedata* %36, i32 0, i32 2
  %38 = load %struct.window_tree_modedata*, %struct.window_tree_modedata** %37, align 8
  %39 = call i32 @free(%struct.window_tree_modedata* %38)
  %40 = load %struct.window_tree_modedata*, %struct.window_tree_modedata** %2, align 8
  %41 = call i32 @free(%struct.window_tree_modedata* %40)
  br label %42

42:                                               ; preds = %27, %9
  ret void
}

declare dso_local i32 @window_tree_free_item(%struct.window_tree_modedata* byval(%struct.window_tree_modedata) align 8) #1

declare dso_local i32 @free(%struct.window_tree_modedata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
