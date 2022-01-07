; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_calculate_upload_size_delta_and_active_paths.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_calculate_upload_size_delta_and_active_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i8* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_18__*, i32, i32, i32, i32, i32*, %struct.TYPE_17__* }

@seaf = common dso_local global %struct.TYPE_14__* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Branch local not found for repo %.8s.\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Branch master not found for repo %.8s.\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Local head commit not found for repo %.8s.\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Master head commit not found for repo %.8s.\0A\00", align 1
@check_quota_and_active_paths_diff_files = common dso_local global i32 0, align 4
@check_quota_and_active_paths_diff_dirs = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [53 x i8] c"Failed to diff local and master head for repo %.8s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32*, i32*)* @calculate_upload_size_delta_and_active_paths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calculate_upload_size_delta_and_active_paths(%struct.TYPE_17__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.TYPE_18__, align 8
  %13 = alloca %struct.TYPE_18__, align 8
  %14 = alloca [2 x i8*], align 16
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %9, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %10, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %11, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** @seaf, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.TYPE_16__* @seaf_branch_manager_get_branch(i32 %17, i32 %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_16__* %21, %struct.TYPE_16__** %8, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %23 = icmp ne %struct.TYPE_16__* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %3
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @seaf_warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  store i32 -1, i32* %7, align 4
  br label %128

29:                                               ; preds = %3
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** @seaf, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.TYPE_16__* @seaf_branch_manager_get_branch(i32 %32, i32 %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_16__* %36, %struct.TYPE_16__** %9, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %38 = icmp ne %struct.TYPE_16__* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %29
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @seaf_warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %42)
  store i32 -1, i32* %7, align 4
  br label %128

44:                                               ; preds = %29
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** @seaf, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.TYPE_15__* @seaf_commit_manager_get_commit(i32 %47, i32 %50, i32 %53, i32 %56)
  store %struct.TYPE_15__* %57, %struct.TYPE_15__** %10, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %59 = icmp ne %struct.TYPE_15__* %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %44
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @seaf_warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %63)
  store i32 -1, i32* %7, align 4
  br label %128

65:                                               ; preds = %44
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** @seaf, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call %struct.TYPE_15__* @seaf_commit_manager_get_commit(i32 %68, i32 %71, i32 %74, i32 %77)
  store %struct.TYPE_15__* %78, %struct.TYPE_15__** %11, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %80 = icmp ne %struct.TYPE_15__* %79, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %65
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @seaf_warning(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %84)
  store i32 -1, i32* %7, align 4
  br label %128

86:                                               ; preds = %65
  %87 = call i32 @memset(%struct.TYPE_18__* %12, i32 0, i32 48)
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 7
  store %struct.TYPE_17__* %88, %struct.TYPE_17__** %89, align 8
  %90 = load i32*, i32** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 6
  store i32* %90, i32** %91, align 8
  %92 = call i32 @memset(%struct.TYPE_18__* %13, i32 0, i32 48)
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @memcpy(i32 %94, i32 %97, i32 36)
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 4
  store i32 %101, i32* %102, align 8
  %103 = load i32, i32* @check_quota_and_active_paths_diff_files, align 4
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 3
  store i32 %103, i32* %104, align 4
  %105 = load i32, i32* @check_quota_and_active_paths_diff_dirs, align 4
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 2
  store i32 %105, i32* %106, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  store %struct.TYPE_18__* %12, %struct.TYPE_18__** %107, align 8
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = getelementptr inbounds [2 x i8*], [2 x i8*]* %14, i64 0, i64 0
  store i8* %110, i8** %111, align 16
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = getelementptr inbounds [2 x i8*], [2 x i8*]* %14, i64 0, i64 1
  store i8* %114, i8** %115, align 8
  %116 = getelementptr inbounds [2 x i8*], [2 x i8*]* %14, i64 0, i64 0
  %117 = call i64 @diff_trees(i32 2, i8** %116, %struct.TYPE_18__* %13)
  %118 = icmp slt i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %86
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @seaf_warning(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i32 %122)
  store i32 -1, i32* %7, align 4
  br label %128

124:                                              ; preds = %86
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32*, i32** %5, align 8
  store i32 %126, i32* %127, align 4
  br label %128

128:                                              ; preds = %124, %119, %81, %60, %39, %24
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %130 = call i32 @seaf_branch_unref(%struct.TYPE_16__* %129)
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %132 = call i32 @seaf_branch_unref(%struct.TYPE_16__* %131)
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %134 = call i32 @seaf_commit_unref(%struct.TYPE_15__* %133)
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %136 = call i32 @seaf_commit_unref(%struct.TYPE_15__* %135)
  %137 = load i32, i32* %7, align 4
  ret i32 %137
}

declare dso_local %struct.TYPE_16__* @seaf_branch_manager_get_branch(i32, i32, i8*) #1

declare dso_local i32 @seaf_warning(i8*, i32) #1

declare dso_local %struct.TYPE_15__* @seaf_commit_manager_get_commit(i32, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @diff_trees(i32, i8**, %struct.TYPE_18__*) #1

declare dso_local i32 @seaf_branch_unref(%struct.TYPE_16__*) #1

declare dso_local i32 @seaf_commit_unref(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
