; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_http_tx_manager_add_upload.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_http_tx_manager_add_upload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i8* }

@SEAFILE_DOMAIN = common dso_local global i32 0, align 4
@SEAF_ERR_BAD_ARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Empty argument(s)\00", align 1
@seaf = common dso_local global %struct.TYPE_17__* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"Repo not found\00", align 1
@HTTP_TASK_TYPE_UPLOAD = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@HTTP_TASK_STATE_NORMAL = common dso_local global i32 0, align 4
@http_upload_thread = common dso_local global i32 0, align 4
@http_upload_done = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @http_tx_manager_add_upload(%struct.TYPE_16__* %0, i8* %1, i32 %2, i8* %3, i8* %4, i32 %5, i32 %6, i32** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32**, align 8
  %18 = alloca %struct.TYPE_15__*, align 8
  %19 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32** %7, i32*** %17, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %8
  %23 = load i8*, i8** %14, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i8*, i8** %13, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %25, %22, %8
  %29 = load i32**, i32*** %17, align 8
  %30 = load i32, i32* @SEAFILE_DOMAIN, align 4
  %31 = load i32, i32* @SEAF_ERR_BAD_ARGS, align 4
  %32 = call i32 @g_set_error(i32** %29, i32 %30, i32 %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %9, align 4
  br label %99

33:                                               ; preds = %25
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** @seaf, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %11, align 8
  %38 = call %struct.TYPE_14__* @seaf_repo_manager_get_repo(i32 %36, i8* %37)
  store %struct.TYPE_14__* %38, %struct.TYPE_14__** %19, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %40 = icmp ne %struct.TYPE_14__* %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %33
  %42 = load i32**, i32*** %17, align 8
  %43 = load i32, i32* @SEAFILE_DOMAIN, align 4
  %44 = load i32, i32* @SEAF_ERR_BAD_ARGS, align 4
  %45 = call i32 @g_set_error(i32** %42, i32 %43, i32 %44, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %9, align 4
  br label %99

46:                                               ; preds = %33
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = call i32 @clean_tasks_for_repo(%struct.TYPE_16__* %47, i8* %48)
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @HTTP_TASK_TYPE_UPLOAD, align 4
  %54 = load i32, i32* @FALSE, align 4
  %55 = load i8*, i8** %13, align 8
  %56 = load i8*, i8** %14, align 8
  %57 = call %struct.TYPE_15__* @http_tx_task_new(%struct.TYPE_16__* %50, i8* %51, i32 %52, i32 %53, i32 %54, i8* %55, i8* %56, i32* null, i32* null)
  store %struct.TYPE_15__* %57, %struct.TYPE_15__** %18, align 8
  %58 = load i32, i32* %15, align 4
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @HTTP_TASK_STATE_NORMAL, align 4
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %16, align 4
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @g_strdup(i8* %69)
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i8*, i8** %11, align 8
  %79 = call i32 @g_strdup(i8* %78)
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %81 = call i32 @g_hash_table_insert(i32 %77, i32 %79, %struct.TYPE_15__* %80)
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** @seaf, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @http_upload_thread, align 4
  %86 = load i32, i32* @http_upload_done, align 4
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %88 = call i64 @seaf_job_manager_schedule_job(i32 %84, i32 %85, i32 %86, %struct.TYPE_15__* %87)
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %46
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i8*, i8** %11, align 8
  %97 = call i32 @g_hash_table_remove(i32 %95, i8* %96)
  store i32 -1, i32* %9, align 4
  br label %99

98:                                               ; preds = %46
  store i32 0, i32* %9, align 4
  br label %99

99:                                               ; preds = %98, %90, %41, %28
  %100 = load i32, i32* %9, align 4
  ret i32 %100
}

declare dso_local i32 @g_set_error(i32**, i32, i32, i8*) #1

declare dso_local %struct.TYPE_14__* @seaf_repo_manager_get_repo(i32, i8*) #1

declare dso_local i32 @clean_tasks_for_repo(%struct.TYPE_16__*, i8*) #1

declare dso_local %struct.TYPE_15__* @http_tx_task_new(%struct.TYPE_16__*, i8*, i32, i32, i32, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @g_strdup(i8*) #1

declare dso_local i32 @g_hash_table_insert(i32, i32, %struct.TYPE_15__*) #1

declare dso_local i64 @seaf_job_manager_schedule_job(i32, i32, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @g_hash_table_remove(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
