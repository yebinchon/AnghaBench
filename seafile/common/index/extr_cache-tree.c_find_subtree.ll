; ModuleID = '/home/carl/AnghaBench/seafile/common/index/extr_cache-tree.c_find_subtree.c'
source_filename = "/home/carl/AnghaBench/seafile/common/index/extr_cache-tree.c_find_subtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_tree_sub = type { i32, i64*, i32* }
%struct.cache_tree = type { i32, i32, %struct.cache_tree_sub** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cache_tree_sub* (%struct.cache_tree*, i8*, i32, i32)* @find_subtree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cache_tree_sub* @find_subtree(%struct.cache_tree* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.cache_tree_sub*, align 8
  %6 = alloca %struct.cache_tree*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cache_tree_sub*, align 8
  %11 = alloca i32, align 4
  store %struct.cache_tree* %0, %struct.cache_tree** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.cache_tree*, %struct.cache_tree** %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @subtree_pos(%struct.cache_tree* %12, i8* %13, i32 %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp sle i32 0, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %4
  %19 = load %struct.cache_tree*, %struct.cache_tree** %6, align 8
  %20 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %19, i32 0, i32 2
  %21 = load %struct.cache_tree_sub**, %struct.cache_tree_sub*** %20, align 8
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.cache_tree_sub*, %struct.cache_tree_sub** %21, i64 %23
  %25 = load %struct.cache_tree_sub*, %struct.cache_tree_sub** %24, align 8
  store %struct.cache_tree_sub* %25, %struct.cache_tree_sub** %5, align 8
  br label %126

26:                                               ; preds = %4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store %struct.cache_tree_sub* null, %struct.cache_tree_sub** %5, align 8
  br label %126

30:                                               ; preds = %26
  %31 = load i32, i32* %11, align 4
  %32 = sub nsw i32 0, %31
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %11, align 4
  %34 = load %struct.cache_tree*, %struct.cache_tree** %6, align 8
  %35 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.cache_tree*, %struct.cache_tree** %6, align 8
  %38 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp sle i32 %36, %39
  br i1 %40, label %41, label %60

41:                                               ; preds = %30
  %42 = load %struct.cache_tree*, %struct.cache_tree** %6, align 8
  %43 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @alloc_nr(i32 %44)
  %46 = load %struct.cache_tree*, %struct.cache_tree** %6, align 8
  %47 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.cache_tree*, %struct.cache_tree** %6, align 8
  %49 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %48, i32 0, i32 2
  %50 = load %struct.cache_tree_sub**, %struct.cache_tree_sub*** %49, align 8
  %51 = load %struct.cache_tree*, %struct.cache_tree** %6, align 8
  %52 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 8
  %56 = trunc i64 %55 to i32
  %57 = call %struct.cache_tree_sub** @realloc(%struct.cache_tree_sub** %50, i32 %56)
  %58 = load %struct.cache_tree*, %struct.cache_tree** %6, align 8
  %59 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %58, i32 0, i32 2
  store %struct.cache_tree_sub** %57, %struct.cache_tree_sub*** %59, align 8
  br label %60

60:                                               ; preds = %41, %30
  %61 = load %struct.cache_tree*, %struct.cache_tree** %6, align 8
  %62 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = add i64 24, %66
  %68 = add i64 %67, 1
  %69 = trunc i64 %68 to i32
  %70 = call %struct.cache_tree_sub* @malloc(i32 %69)
  store %struct.cache_tree_sub* %70, %struct.cache_tree_sub** %10, align 8
  %71 = load %struct.cache_tree_sub*, %struct.cache_tree_sub** %10, align 8
  %72 = getelementptr inbounds %struct.cache_tree_sub, %struct.cache_tree_sub* %71, i32 0, i32 2
  store i32* null, i32** %72, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.cache_tree_sub*, %struct.cache_tree_sub** %10, align 8
  %75 = getelementptr inbounds %struct.cache_tree_sub, %struct.cache_tree_sub* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.cache_tree_sub*, %struct.cache_tree_sub** %10, align 8
  %77 = getelementptr inbounds %struct.cache_tree_sub, %struct.cache_tree_sub* %76, i32 0, i32 1
  %78 = load i64*, i64** %77, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @memcpy(i64* %78, i8* %79, i32 %80)
  %82 = load %struct.cache_tree_sub*, %struct.cache_tree_sub** %10, align 8
  %83 = getelementptr inbounds %struct.cache_tree_sub, %struct.cache_tree_sub* %82, i32 0, i32 1
  %84 = load i64*, i64** %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  store i64 0, i64* %87, align 8
  %88 = load i32, i32* %11, align 4
  %89 = load %struct.cache_tree*, %struct.cache_tree** %6, align 8
  %90 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %117

93:                                               ; preds = %60
  %94 = load %struct.cache_tree*, %struct.cache_tree** %6, align 8
  %95 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %94, i32 0, i32 2
  %96 = load %struct.cache_tree_sub**, %struct.cache_tree_sub*** %95, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.cache_tree_sub*, %struct.cache_tree_sub** %96, i64 %98
  %100 = getelementptr inbounds %struct.cache_tree_sub*, %struct.cache_tree_sub** %99, i64 1
  %101 = load %struct.cache_tree*, %struct.cache_tree** %6, align 8
  %102 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %101, i32 0, i32 2
  %103 = load %struct.cache_tree_sub**, %struct.cache_tree_sub*** %102, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.cache_tree_sub*, %struct.cache_tree_sub** %103, i64 %105
  %107 = load %struct.cache_tree*, %struct.cache_tree** %6, align 8
  %108 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %11, align 4
  %111 = sub nsw i32 %109, %110
  %112 = sub nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = mul i64 8, %113
  %115 = trunc i64 %114 to i32
  %116 = call i32 @memmove(%struct.cache_tree_sub** %100, %struct.cache_tree_sub** %106, i32 %115)
  br label %117

117:                                              ; preds = %93, %60
  %118 = load %struct.cache_tree_sub*, %struct.cache_tree_sub** %10, align 8
  %119 = load %struct.cache_tree*, %struct.cache_tree** %6, align 8
  %120 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %119, i32 0, i32 2
  %121 = load %struct.cache_tree_sub**, %struct.cache_tree_sub*** %120, align 8
  %122 = load i32, i32* %11, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.cache_tree_sub*, %struct.cache_tree_sub** %121, i64 %123
  store %struct.cache_tree_sub* %118, %struct.cache_tree_sub** %124, align 8
  %125 = load %struct.cache_tree_sub*, %struct.cache_tree_sub** %10, align 8
  store %struct.cache_tree_sub* %125, %struct.cache_tree_sub** %5, align 8
  br label %126

126:                                              ; preds = %117, %29, %18
  %127 = load %struct.cache_tree_sub*, %struct.cache_tree_sub** %5, align 8
  ret %struct.cache_tree_sub* %127
}

declare dso_local i32 @subtree_pos(%struct.cache_tree*, i8*, i32) #1

declare dso_local i32 @alloc_nr(i32) #1

declare dso_local %struct.cache_tree_sub** @realloc(%struct.cache_tree_sub**, i32) #1

declare dso_local %struct.cache_tree_sub* @malloc(i32) #1

declare dso_local i32 @memcpy(i64*, i8*, i32) #1

declare dso_local i32 @memmove(%struct.cache_tree_sub**, %struct.cache_tree_sub**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
