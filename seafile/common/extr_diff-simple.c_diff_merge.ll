; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_diff-simple.c_diff_merge.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_diff-simple.c_diff_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_13__ = type { i8*, i32*, i32*, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_14__*, i32, i32, i32, i32, i32, i32** }

@seaf = common dso_local global %struct.TYPE_15__* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"Failed to get repo %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to find commit %s:%s.\0A\00", align 1
@threeway_diff_files = common dso_local global i32 0, align 4
@threeway_diff_dirs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @diff_merge(%struct.TYPE_13__* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_14__, align 8
  %10 = alloca [3 x i8*], align 16
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_14__, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %8, align 8
  %15 = load i32**, i32*** %6, align 8
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @g_return_val_if_fail(i32 %18, i32 -1)
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br label %29

29:                                               ; preds = %24, %3
  %30 = phi i1 [ false, %3 ], [ %28, %24 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @g_return_val_if_fail(i32 %31, i32 -1)
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** @seaf, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call %struct.TYPE_12__* @seaf_repo_manager_get_repo(i32 %35, i32 %38)
  store %struct.TYPE_12__* %39, %struct.TYPE_12__** %8, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %41 = icmp ne %struct.TYPE_12__* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %29
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (i8*, i32, ...) @seaf_warning(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %45)
  store i32 -1, i32* %4, align 4
  br label %140

47:                                               ; preds = %29
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** @seaf, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = call %struct.TYPE_13__* @seaf_commit_manager_get_commit(i32 %50, i32 %53, i32 %56, i32* %59)
  store %struct.TYPE_13__* %60, %struct.TYPE_13__** %11, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %62 = icmp ne %struct.TYPE_13__* %61, null
  br i1 %62, label %71, label %63

63:                                               ; preds = %47
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 (i8*, i32, ...) @seaf_warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32* %69)
  store i32 -1, i32* %4, align 4
  br label %140

71:                                               ; preds = %47
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** @seaf, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = call %struct.TYPE_13__* @seaf_commit_manager_get_commit(i32 %74, i32 %77, i32 %80, i32* %83)
  store %struct.TYPE_13__* %84, %struct.TYPE_13__** %12, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %86 = icmp ne %struct.TYPE_13__* %85, null
  br i1 %86, label %97, label %87

87:                                               ; preds = %71
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 (i8*, i32, ...) @seaf_warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %90, i32* %93)
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %96 = call i32 @seaf_commit_unref(%struct.TYPE_13__* %95)
  store i32 -1, i32* %4, align 4
  br label %140

97:                                               ; preds = %71
  %98 = call i32 @memset(%struct.TYPE_14__* %13, i32 0, i32 40)
  %99 = load i32**, i32*** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 6
  store i32** %99, i32*** %100, align 8
  %101 = load i32, i32* %7, align 4
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 5
  store i32 %101, i32* %102, align 8
  %103 = call i32 @memset(%struct.TYPE_14__* %9, i32 0, i32 40)
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @memcpy(i32 %105, i32 %108, i32 36)
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 3
  store i32 %112, i32* %113, align 8
  %114 = load i32, i32* @threeway_diff_files, align 4
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 2
  store i32 %114, i32* %115, align 4
  %116 = load i32, i32* @threeway_diff_dirs, align 4
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  store i32 %116, i32* %117, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  store %struct.TYPE_14__* %13, %struct.TYPE_14__** %118, align 8
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = getelementptr inbounds [3 x i8*], [3 x i8*]* %10, i64 0, i64 0
  store i8* %121, i8** %122, align 16
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = getelementptr inbounds [3 x i8*], [3 x i8*]* %10, i64 0, i64 1
  store i8* %125, i8** %126, align 8
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = getelementptr inbounds [3 x i8*], [3 x i8*]* %10, i64 0, i64 2
  store i8* %129, i8** %130, align 16
  %131 = getelementptr inbounds [3 x i8*], [3 x i8*]* %10, i64 0, i64 0
  %132 = call i32 @diff_trees(i32 3, i8** %131, %struct.TYPE_14__* %9)
  store i32 %132, i32* %14, align 4
  %133 = load i32**, i32*** %6, align 8
  %134 = call i32 @diff_resolve_renames(i32** %133)
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %136 = call i32 @seaf_commit_unref(%struct.TYPE_13__* %135)
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %138 = call i32 @seaf_commit_unref(%struct.TYPE_13__* %137)
  %139 = load i32, i32* %14, align 4
  store i32 %139, i32* %4, align 4
  br label %140

140:                                              ; preds = %97, %87, %63, %42
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local i32 @g_return_val_if_fail(i32, i32) #1

declare dso_local %struct.TYPE_12__* @seaf_repo_manager_get_repo(i32, i32) #1

declare dso_local i32 @seaf_warning(i8*, i32, ...) #1

declare dso_local %struct.TYPE_13__* @seaf_commit_manager_get_commit(i32, i32, i32, i32*) #1

declare dso_local i32 @seaf_commit_unref(%struct.TYPE_13__*) #1

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @diff_trees(i32, i8**, %struct.TYPE_14__*) #1

declare dso_local i32 @diff_resolve_renames(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
