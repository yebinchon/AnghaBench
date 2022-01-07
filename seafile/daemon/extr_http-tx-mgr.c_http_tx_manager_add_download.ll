; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_http_tx_manager_add_download.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_http_tx_manager_add_download.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i8*, i32, i32, i32, i32, i8*, i32 }

@SEAFILE_DOMAIN = common dso_local global i32 0, align 4
@SEAF_ERR_BAD_ARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Empty argument(s)\00", align 1
@seaf = common dso_local global %struct.TYPE_14__* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"Repo not found\00", align 1
@HTTP_TASK_TYPE_DOWNLOAD = common dso_local global i32 0, align 4
@HTTP_TASK_STATE_NORMAL = common dso_local global i32 0, align 4
@g_str_hash = common dso_local global i32 0, align 4
@g_str_equal = common dso_local global i32 0, align 4
@g_free = common dso_local global i32 0, align 4
@http_download_thread = common dso_local global i32 0, align 4
@http_download_done = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @http_tx_manager_add_download(%struct.TYPE_13__* %0, i8* %1, i32 %2, i8* %3, i8* %4, i8* %5, i32 %6, i8* %7, i8* %8, i32 %9, i8* %10, i32 %11, i8* %12, i32** %13) #0 {
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i32**, align 8
  %30 = alloca %struct.TYPE_12__*, align 8
  %31 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %16, align 8
  store i8* %1, i8** %17, align 8
  store i32 %2, i32* %18, align 4
  store i8* %3, i8** %19, align 8
  store i8* %4, i8** %20, align 8
  store i8* %5, i8** %21, align 8
  store i32 %6, i32* %22, align 4
  store i8* %7, i8** %23, align 8
  store i8* %8, i8** %24, align 8
  store i32 %9, i32* %25, align 4
  store i8* %10, i8** %26, align 8
  store i32 %11, i32* %27, align 4
  store i8* %12, i8** %28, align 8
  store i32** %13, i32*** %29, align 8
  %32 = load i8*, i8** %17, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %14
  %35 = load i8*, i8** %20, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load i8*, i8** %19, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load i8*, i8** %21, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i8*, i8** %26, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43, %40, %37, %34, %14
  %47 = load i32**, i32*** %29, align 8
  %48 = load i32, i32* @SEAFILE_DOMAIN, align 4
  %49 = load i32, i32* @SEAF_ERR_BAD_ARGS, align 4
  %50 = call i32 @g_set_error(i32** %47, i32 %48, i32 %49, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %15, align 4
  br label %140

51:                                               ; preds = %43
  %52 = load i32, i32* %22, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %68, label %54

54:                                               ; preds = %51
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** @seaf, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i8*, i8** %17, align 8
  %59 = call i32* @seaf_repo_manager_get_repo(i32 %57, i8* %58)
  store i32* %59, i32** %31, align 8
  %60 = load i32*, i32** %31, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %67, label %62

62:                                               ; preds = %54
  %63 = load i32**, i32*** %29, align 8
  %64 = load i32, i32* @SEAFILE_DOMAIN, align 4
  %65 = load i32, i32* @SEAF_ERR_BAD_ARGS, align 4
  %66 = call i32 @g_set_error(i32** %63, i32 %64, i32 %65, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %15, align 4
  br label %140

67:                                               ; preds = %54
  br label %68

68:                                               ; preds = %67, %51
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %70 = load i8*, i8** %17, align 8
  %71 = call i32 @clean_tasks_for_repo(%struct.TYPE_13__* %69, i8* %70)
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %73 = load i8*, i8** %17, align 8
  %74 = load i32, i32* %18, align 4
  %75 = load i32, i32* @HTTP_TASK_TYPE_DOWNLOAD, align 4
  %76 = load i32, i32* %22, align 4
  %77 = load i8*, i8** %19, align 8
  %78 = load i8*, i8** %20, align 8
  %79 = load i8*, i8** %23, align 8
  %80 = load i8*, i8** %24, align 8
  %81 = call %struct.TYPE_12__* @http_tx_task_new(%struct.TYPE_13__* %72, i8* %73, i32 %74, i32 %75, i32 %76, i8* %77, i8* %78, i8* %79, i8* %80)
  store %struct.TYPE_12__* %81, %struct.TYPE_12__** %30, align 8
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 7
  %84 = load i32, i32* %83, align 8
  %85 = load i8*, i8** %21, align 8
  %86 = call i32 @memcpy(i32 %84, i8* %85, i32 40)
  %87 = load i32, i32* %25, align 4
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load i8*, i8** %26, align 8
  %91 = call i8* @g_strdup(i8* %90)
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 6
  store i8* %91, i8** %93, align 8
  %94 = load i32, i32* @HTTP_TASK_STATE_NORMAL, align 4
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 5
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* %27, align 4
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 4
  store i32 %97, i32* %99, align 8
  %100 = load i32, i32* @g_str_hash, align 4
  %101 = load i32, i32* @g_str_equal, align 4
  %102 = load i32, i32* @g_free, align 4
  %103 = load i32, i32* @g_free, align 4
  %104 = call i32 @g_hash_table_new_full(i32 %100, i32 %101, i32 %102, i32 %103)
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 2
  %109 = call i32 @pthread_mutex_init(i32* %108, i32* null)
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i8*, i8** %17, align 8
  %116 = call i8* @g_strdup(i8* %115)
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %118 = call i32 @g_hash_table_insert(i32 %114, i8* %116, %struct.TYPE_12__* %117)
  %119 = load i8*, i8** %28, align 8
  %120 = call i8* @g_strdup(i8* %119)
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 1
  store i8* %120, i8** %122, align 8
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** @seaf, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @http_download_thread, align 4
  %127 = load i32, i32* @http_download_done, align 4
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %129 = call i64 @seaf_job_manager_schedule_job(i32 %125, i32 %126, i32 %127, %struct.TYPE_12__* %128)
  %130 = icmp slt i64 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %68
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i8*, i8** %17, align 8
  %138 = call i32 @g_hash_table_remove(i32 %136, i8* %137)
  store i32 -1, i32* %15, align 4
  br label %140

139:                                              ; preds = %68
  store i32 0, i32* %15, align 4
  br label %140

140:                                              ; preds = %139, %131, %62, %46
  %141 = load i32, i32* %15, align 4
  ret i32 %141
}

declare dso_local i32 @g_set_error(i32**, i32, i32, i8*) #1

declare dso_local i32* @seaf_repo_manager_get_repo(i32, i8*) #1

declare dso_local i32 @clean_tasks_for_repo(%struct.TYPE_13__*, i8*) #1

declare dso_local %struct.TYPE_12__* @http_tx_task_new(%struct.TYPE_13__*, i8*, i32, i32, i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i8* @g_strdup(i8*) #1

declare dso_local i32 @g_hash_table_new_full(i32, i32, i32, i32) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @g_hash_table_insert(i32, i8*, %struct.TYPE_12__*) #1

declare dso_local i64 @seaf_job_manager_schedule_job(i32, i32, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @g_hash_table_remove(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
