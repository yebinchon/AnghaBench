; ModuleID = '/home/carl/AnghaBench/tmux/extr_mode-tree.c_mode_tree_set_current.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_mode-tree.c_mode_tree_set_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mode_tree_data = type { i64, i64, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mode_tree_set_current(%struct.mode_tree_data* %0, i64 %1) #0 {
  %3 = alloca %struct.mode_tree_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.mode_tree_data* %0, %struct.mode_tree_data** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %26, %2
  %7 = load i64, i64* %5, align 8
  %8 = load %struct.mode_tree_data*, %struct.mode_tree_data** %3, align 8
  %9 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ult i64 %7, %10
  br i1 %11, label %12, label %29

12:                                               ; preds = %6
  %13 = load %struct.mode_tree_data*, %struct.mode_tree_data** %3, align 8
  %14 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %13, i32 0, i32 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %4, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %12
  br label %29

25:                                               ; preds = %12
  br label %26

26:                                               ; preds = %25
  %27 = load i64, i64* %5, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %5, align 8
  br label %6

29:                                               ; preds = %24, %6
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.mode_tree_data*, %struct.mode_tree_data** %3, align 8
  %32 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %35, label %65

35:                                               ; preds = %29
  %36 = load i64, i64* %5, align 8
  %37 = load %struct.mode_tree_data*, %struct.mode_tree_data** %3, align 8
  %38 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = load %struct.mode_tree_data*, %struct.mode_tree_data** %3, align 8
  %40 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.mode_tree_data*, %struct.mode_tree_data** %3, align 8
  %43 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = icmp ugt i64 %41, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %35
  %49 = load %struct.mode_tree_data*, %struct.mode_tree_data** %3, align 8
  %50 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.mode_tree_data*, %struct.mode_tree_data** %3, align 8
  %53 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = sub i64 %51, %55
  %57 = add i64 %56, 1
  %58 = trunc i64 %57 to i32
  %59 = load %struct.mode_tree_data*, %struct.mode_tree_data** %3, align 8
  %60 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  br label %64

61:                                               ; preds = %35
  %62 = load %struct.mode_tree_data*, %struct.mode_tree_data** %3, align 8
  %63 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %62, i32 0, i32 3
  store i32 0, i32* %63, align 4
  br label %64

64:                                               ; preds = %61, %48
  br label %70

65:                                               ; preds = %29
  %66 = load %struct.mode_tree_data*, %struct.mode_tree_data** %3, align 8
  %67 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  %68 = load %struct.mode_tree_data*, %struct.mode_tree_data** %3, align 8
  %69 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %68, i32 0, i32 3
  store i32 0, i32* %69, align 4
  br label %70

70:                                               ; preds = %65, %64
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
