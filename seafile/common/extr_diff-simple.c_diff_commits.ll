; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_diff-simple.c_diff_commits.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_diff-simple.c_diff_commits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i8*, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_13__*, i32, i32, i32, i32, i32, i32** }

@seaf = common dso_local global %struct.TYPE_14__* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"Failed to get repo %s.\0A\00", align 1
@twoway_diff_files = common dso_local global i32 0, align 4
@twoway_diff_dirs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @diff_commits(%struct.TYPE_12__* %0, %struct.TYPE_12__* %1, i32** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_13__, align 8
  %12 = alloca [2 x i8*], align 16
  %13 = alloca %struct.TYPE_13__, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %10, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** @seaf, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.TYPE_11__* @seaf_repo_manager_get_repo(i32 %16, i32 %19)
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %10, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %22 = icmp ne %struct.TYPE_11__* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %4
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @seaf_warning(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %26)
  store i32 -1, i32* %5, align 4
  br label %62

28:                                               ; preds = %4
  %29 = call i32 @memset(%struct.TYPE_13__* %13, i32 0, i32 40)
  %30 = load i32**, i32*** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 6
  store i32** %30, i32*** %31, align 8
  %32 = load i32, i32* %9, align 4
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 5
  store i32 %32, i32* %33, align 8
  %34 = call i32 @memset(%struct.TYPE_13__* %11, i32 0, i32 40)
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @memcpy(i32 %36, i32 %39, i32 36)
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 3
  store i32 %43, i32* %44, align 8
  %45 = load i32, i32* @twoway_diff_files, align 4
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 2
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* @twoway_diff_dirs, align 4
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  store i32 %47, i32* %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %49, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds [2 x i8*], [2 x i8*]* %12, i64 0, i64 0
  store i8* %52, i8** %53, align 16
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds [2 x i8*], [2 x i8*]* %12, i64 0, i64 1
  store i8* %56, i8** %57, align 8
  %58 = getelementptr inbounds [2 x i8*], [2 x i8*]* %12, i64 0, i64 0
  %59 = call i32 @diff_trees(i32 2, i8** %58, %struct.TYPE_13__* %11)
  %60 = load i32**, i32*** %8, align 8
  %61 = call i32 @diff_resolve_renames(i32** %60)
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %28, %23
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local %struct.TYPE_11__* @seaf_repo_manager_get_repo(i32, i32) #1

declare dso_local i32 @seaf_warning(i8*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @diff_trees(i32, i8**, %struct.TYPE_13__*) #1

declare dso_local i32 @diff_resolve_renames(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
