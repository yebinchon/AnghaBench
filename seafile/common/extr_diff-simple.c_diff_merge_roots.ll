; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_diff-simple.c_diff_merge_roots.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_diff-simple.c_diff_merge_roots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_5__*, i32, i32, i32, i32, i32** }

@threeway_diff_files = common dso_local global i32 0, align 4
@threeway_diff_dirs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @diff_merge_roots(i8* %0, i32 %1, i8* %2, i8* %3, i8* %4, i32** %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_5__, align 8
  %16 = alloca [3 x i8*], align 16
  %17 = alloca %struct.TYPE_5__, align 8
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32** %5, i32*** %13, align 8
  store i32 %6, i32* %14, align 4
  %18 = load i32**, i32*** %13, align 8
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @g_return_val_if_fail(i32 %21, i32 -1)
  %23 = call i32 @memset(%struct.TYPE_5__* %17, i32 0, i32 40)
  %24 = load i32**, i32*** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 6
  store i32** %24, i32*** %25, align 8
  %26 = load i32, i32* %14, align 4
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 5
  store i32 %26, i32* %27, align 4
  %28 = call i32 @memset(%struct.TYPE_5__* %15, i32 0, i32 40)
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @memcpy(i32 %30, i8* %31, i32 36)
  %33 = load i32, i32* %9, align 4
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i32 %33, i32* %34, align 8
  %35 = load i32, i32* @threeway_diff_files, align 4
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 3
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @threeway_diff_dirs, align 4
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  store i32 %37, i32* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %39, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = getelementptr inbounds [3 x i8*], [3 x i8*]* %16, i64 0, i64 0
  store i8* %40, i8** %41, align 16
  %42 = load i8*, i8** %11, align 8
  %43 = getelementptr inbounds [3 x i8*], [3 x i8*]* %16, i64 0, i64 1
  store i8* %42, i8** %43, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = getelementptr inbounds [3 x i8*], [3 x i8*]* %16, i64 0, i64 2
  store i8* %44, i8** %45, align 16
  %46 = getelementptr inbounds [3 x i8*], [3 x i8*]* %16, i64 0, i64 0
  %47 = call i32 @diff_trees(i32 3, i8** %46, %struct.TYPE_5__* %15)
  %48 = load i32**, i32*** %13, align 8
  %49 = call i32 @diff_resolve_renames(i32** %48)
  ret i32 0
}

declare dso_local i32 @g_return_val_if_fail(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @diff_trees(i32, i8**, %struct.TYPE_5__*) #1

declare dso_local i32 @diff_resolve_renames(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
