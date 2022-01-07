; ModuleID = '/home/carl/AnghaBench/tmux/extr_mode-tree.c_mode_tree_each_tagged.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_mode-tree.c_mode_tree_each_tagged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mode_tree_data = type { i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mode_tree_item* }
%struct.mode_tree_item = type { i32, i64 }
%struct.client = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mode_tree_each_tagged(%struct.mode_tree_data* %0, i32 (i32, i32, %struct.client*, i32)* %1, %struct.client* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.mode_tree_data*, align 8
  %7 = alloca i32 (i32, i32, %struct.client*, i32)*, align 8
  %8 = alloca %struct.client*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mode_tree_item*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.mode_tree_data* %0, %struct.mode_tree_data** %6, align 8
  store i32 (i32, i32, %struct.client*, i32)* %1, i32 (i32, i32, %struct.client*, i32)** %7, align 8
  store %struct.client* %2, %struct.client** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %13, align 4
  store i64 0, i64* %12, align 8
  br label %14

14:                                               ; preds = %44, %5
  %15 = load i64, i64* %12, align 8
  %16 = load %struct.mode_tree_data*, %struct.mode_tree_data** %6, align 8
  %17 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %47

20:                                               ; preds = %14
  %21 = load %struct.mode_tree_data*, %struct.mode_tree_data** %6, align 8
  %22 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %21, i32 0, i32 3
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i64, i64* %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.mode_tree_item*, %struct.mode_tree_item** %26, align 8
  store %struct.mode_tree_item* %27, %struct.mode_tree_item** %11, align 8
  %28 = load %struct.mode_tree_item*, %struct.mode_tree_item** %11, align 8
  %29 = getelementptr inbounds %struct.mode_tree_item, %struct.mode_tree_item* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %20
  store i32 1, i32* %13, align 4
  %33 = load i32 (i32, i32, %struct.client*, i32)*, i32 (i32, i32, %struct.client*, i32)** %7, align 8
  %34 = load %struct.mode_tree_data*, %struct.mode_tree_data** %6, align 8
  %35 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.mode_tree_item*, %struct.mode_tree_item** %11, align 8
  %38 = getelementptr inbounds %struct.mode_tree_item, %struct.mode_tree_item* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.client*, %struct.client** %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 %33(i32 %36, i32 %39, %struct.client* %40, i32 %41)
  br label %43

43:                                               ; preds = %32, %20
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %12, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %12, align 8
  br label %14

47:                                               ; preds = %14
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %73, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %73

53:                                               ; preds = %50
  %54 = load %struct.mode_tree_data*, %struct.mode_tree_data** %6, align 8
  %55 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %54, i32 0, i32 3
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load %struct.mode_tree_data*, %struct.mode_tree_data** %6, align 8
  %58 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load %struct.mode_tree_item*, %struct.mode_tree_item** %61, align 8
  store %struct.mode_tree_item* %62, %struct.mode_tree_item** %11, align 8
  %63 = load i32 (i32, i32, %struct.client*, i32)*, i32 (i32, i32, %struct.client*, i32)** %7, align 8
  %64 = load %struct.mode_tree_data*, %struct.mode_tree_data** %6, align 8
  %65 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.mode_tree_item*, %struct.mode_tree_item** %11, align 8
  %68 = getelementptr inbounds %struct.mode_tree_item, %struct.mode_tree_item* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.client*, %struct.client** %8, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i32 %63(i32 %66, i32 %69, %struct.client* %70, i32 %71)
  br label %73

73:                                               ; preds = %53, %50, %47
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
