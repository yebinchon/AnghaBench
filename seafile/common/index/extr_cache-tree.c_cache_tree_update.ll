; ModuleID = '/home/carl/AnghaBench/seafile/common/index/extr_cache-tree.c_cache_tree_update.c'
source_filename = "/home/carl/AnghaBench/seafile/common/index/extr_cache-tree.c_cache_tree_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_tree = type { i32 }
%struct.cache_entry = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cache_tree_update(i8* %0, i32 %1, i8* %2, %struct.cache_tree* %3, %struct.cache_entry** %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.cache_tree*, align 8
  %15 = alloca %struct.cache_entry**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %11, align 8
  store i32 %1, i32* %12, align 4
  store i8* %2, i8** %13, align 8
  store %struct.cache_tree* %3, %struct.cache_tree** %14, align 8
  store %struct.cache_entry** %4, %struct.cache_entry*** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %21 = load %struct.cache_entry**, %struct.cache_entry*** %15, align 8
  %22 = load i32, i32* %16, align 4
  %23 = call i32 @verify_cache(%struct.cache_entry** %21, i32 %22)
  store i32 %23, i32* %20, align 4
  %24 = load i32, i32* %20, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %9
  %27 = load i32, i32* %20, align 4
  store i32 %27, i32* %10, align 4
  br label %44

28:                                               ; preds = %9
  %29 = load i8*, i8** %11, align 8
  %30 = load i32, i32* %12, align 4
  %31 = load i8*, i8** %13, align 8
  %32 = load %struct.cache_tree*, %struct.cache_tree** %14, align 8
  %33 = load %struct.cache_entry**, %struct.cache_entry*** %15, align 8
  %34 = load i32, i32* %16, align 4
  %35 = load i32, i32* %17, align 4
  %36 = load i32, i32* %18, align 4
  %37 = load i32, i32* %19, align 4
  %38 = call i32 @update_one(i8* %29, i32 %30, i8* %31, %struct.cache_tree* %32, %struct.cache_entry** %33, i32 %34, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0, i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %20, align 4
  %39 = load i32, i32* %20, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %28
  %42 = load i32, i32* %20, align 4
  store i32 %42, i32* %10, align 4
  br label %44

43:                                               ; preds = %28
  store i32 0, i32* %10, align 4
  br label %44

44:                                               ; preds = %43, %41, %26
  %45 = load i32, i32* %10, align 4
  ret i32 %45
}

declare dso_local i32 @verify_cache(%struct.cache_entry**, i32) #1

declare dso_local i32 @update_one(i8*, i32, i8*, %struct.cache_tree*, %struct.cache_entry**, i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
