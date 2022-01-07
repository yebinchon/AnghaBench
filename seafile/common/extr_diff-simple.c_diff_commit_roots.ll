; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_diff-simple.c_diff_commit_roots.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_diff-simple.c_diff_commit_roots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_5__*, i32, i32, i32, i32, i32** }

@twoway_diff_files = common dso_local global i32 0, align 4
@twoway_diff_dirs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @diff_commit_roots(i8* %0, i32 %1, i8* %2, i8* %3, i32** %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_5__, align 8
  %14 = alloca [2 x i8*], align 16
  %15 = alloca %struct.TYPE_5__, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32** %4, i32*** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = call i32 @memset(%struct.TYPE_5__* %15, i32 0, i32 40)
  %17 = load i32**, i32*** %11, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 6
  store i32** %17, i32*** %18, align 8
  %19 = load i32, i32* %12, align 4
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 5
  store i32 %19, i32* %20, align 4
  %21 = call i32 @memset(%struct.TYPE_5__* %13, i32 0, i32 40)
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @memcpy(i32 %23, i8* %24, i32 36)
  %26 = load i32, i32* %8, align 4
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store i32 %26, i32* %27, align 8
  %28 = load i32, i32* @twoway_diff_files, align 4
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 3
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @twoway_diff_dirs, align 4
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  store i32 %30, i32* %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %32, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = getelementptr inbounds [2 x i8*], [2 x i8*]* %14, i64 0, i64 0
  store i8* %33, i8** %34, align 16
  %35 = load i8*, i8** %10, align 8
  %36 = getelementptr inbounds [2 x i8*], [2 x i8*]* %14, i64 0, i64 1
  store i8* %35, i8** %36, align 8
  %37 = getelementptr inbounds [2 x i8*], [2 x i8*]* %14, i64 0, i64 0
  %38 = call i32 @diff_trees(i32 2, i8** %37, %struct.TYPE_5__* %13)
  %39 = load i32**, i32*** %11, align 8
  %40 = call i32 @diff_resolve_renames(i32** %39)
  ret i32 0
}

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
