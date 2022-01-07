; ModuleID = '/home/carl/AnghaBench/seafile/common/index/extr_cache-tree.c_subtree_pos.c'
source_filename = "/home/carl/AnghaBench/seafile/common/index/extr_cache-tree.c_subtree_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_tree = type { i32, %struct.cache_tree_sub** }
%struct.cache_tree_sub = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_tree*, i8*, i32)* @subtree_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @subtree_pos(%struct.cache_tree* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cache_tree*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cache_tree_sub**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cache_tree_sub*, align 8
  %13 = alloca i32, align 4
  store %struct.cache_tree* %0, %struct.cache_tree** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.cache_tree*, %struct.cache_tree** %5, align 8
  %15 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %14, i32 0, i32 1
  %16 = load %struct.cache_tree_sub**, %struct.cache_tree_sub*** %15, align 8
  store %struct.cache_tree_sub** %16, %struct.cache_tree_sub*** %8, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.cache_tree*, %struct.cache_tree** %5, align 8
  %18 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %10, align 4
  br label %20

20:                                               ; preds = %55, %3
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %56

24:                                               ; preds = %20
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = add nsw i32 %25, %26
  %28 = sdiv i32 %27, 2
  store i32 %28, i32* %11, align 4
  %29 = load %struct.cache_tree_sub**, %struct.cache_tree_sub*** %8, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.cache_tree_sub*, %struct.cache_tree_sub** %29, i64 %31
  %33 = load %struct.cache_tree_sub*, %struct.cache_tree_sub** %32, align 8
  store %struct.cache_tree_sub* %33, %struct.cache_tree_sub** %12, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.cache_tree_sub*, %struct.cache_tree_sub** %12, align 8
  %37 = getelementptr inbounds %struct.cache_tree_sub, %struct.cache_tree_sub* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.cache_tree_sub*, %struct.cache_tree_sub** %12, align 8
  %40 = getelementptr inbounds %struct.cache_tree_sub, %struct.cache_tree_sub* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @subtree_name_cmp(i8* %34, i32 %35, i32 %38, i32 %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %24
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %4, align 4
  br label %60

47:                                               ; preds = %24
  %48 = load i32, i32* %13, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* %10, align 4
  br label %55

52:                                               ; preds = %47
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %52, %50
  br label %20

56:                                               ; preds = %20
  %57 = load i32, i32* %9, align 4
  %58 = sub nsw i32 0, %57
  %59 = sub nsw i32 %58, 1
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %56, %45
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @subtree_name_cmp(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
