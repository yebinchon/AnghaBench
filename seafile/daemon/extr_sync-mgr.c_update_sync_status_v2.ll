; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_sync-mgr.c_update_sync_status_v2.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_sync-mgr.c_update_sync_status_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_18__*, %struct.TYPE_19__* }
%struct.TYPE_18__ = type { i32, i64, i64, i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32 }

@seaf = common dso_local global %struct.TYPE_16__* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"[sync-mgr] Branch local not found for repo %s(%.8s).\0A\00", align 1
@SYNC_ERROR_ID_LOCAL_DATA_CORRUPT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"[sync-mgr] Branch master not found for repo %s(%.8s).\0A\00", align 1
@SYNC_ERROR_ID_SERVER_REPO_CORRUPT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"Removing blocks for repo %s(%.8s).\0A\00", align 1
@remove_repo_blocks = common dso_local global i32 0, align 4
@remove_blocks_done = common dso_local global i32 0, align 4
@SYNC_STATE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*)* @update_sync_status_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_sync_status_v2(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_18__* %9, %struct.TYPE_18__** %3, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  store %struct.TYPE_19__* %12, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %6, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** @seaf, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.TYPE_20__* @seaf_branch_manager_get_branch(i32 %15, i32 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_20__* %19, %struct.TYPE_20__** %6, align 8
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %21 = icmp ne %struct.TYPE_20__* %20, null
  br i1 %21, label %33, label %22

22:                                               ; preds = %1
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @seaf_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %28)
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %31 = load i32, i32* @SYNC_ERROR_ID_LOCAL_DATA_CORRUPT, align 4
  %32 = call i32 @set_task_error(%struct.TYPE_17__* %30, i32 %31)
  br label %120

33:                                               ; preds = %1
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** @seaf, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call %struct.TYPE_20__* @seaf_branch_manager_get_branch(i32 %36, i32 %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_20__* %40, %struct.TYPE_20__** %5, align 8
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %42 = icmp ne %struct.TYPE_20__* %41, null
  br i1 %42, label %54, label %43

43:                                               ; preds = %33
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @seaf_warning(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %46, i32 %49)
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %52 = load i32, i32* @SYNC_ERROR_ID_LOCAL_DATA_CORRUPT, align 4
  %53 = call i32 @set_task_error(%struct.TYPE_17__* %51, i32 %52)
  br label %120

54:                                               ; preds = %33
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %61 = load i32, i32* @SYNC_ERROR_ID_SERVER_REPO_CORRUPT, align 4
  %62 = call i32 @set_task_error(%struct.TYPE_17__* %60, i32 %61)
  br label %115

63:                                               ; preds = %54
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %71 = call i32 @on_repo_deleted_on_server(%struct.TYPE_17__* %69, %struct.TYPE_19__* %70)
  br label %114

72:                                               ; preds = %63
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @strcmp(i32 %75, i32 %78)
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %105

81:                                               ; preds = %72
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %83 = call i64 @repo_block_store_exists(%struct.TYPE_19__* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %81
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @seaf_message(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %88, i32 %91)
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** @seaf, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @remove_repo_blocks, align 4
  %97 = load i32, i32* @remove_blocks_done, align 4
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %99 = call i32 @seaf_job_manager_schedule_job(i32 %95, i32 %96, i32 %97, %struct.TYPE_17__* %98)
  br label %104

100:                                              ; preds = %81
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %102 = load i32, i32* @SYNC_STATE_DONE, align 4
  %103 = call i32 @transition_sync_state(%struct.TYPE_17__* %101, i32 %102)
  br label %104

104:                                              ; preds = %100, %85
  br label %113

105:                                              ; preds = %72
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @start_fetch_if_necessary(%struct.TYPE_17__* %106, i32 %111)
  br label %113

113:                                              ; preds = %105, %104
  br label %114

114:                                              ; preds = %113, %68
  br label %115

115:                                              ; preds = %114, %59
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %117 = call i32 @seaf_branch_unref(%struct.TYPE_20__* %116)
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %119 = call i32 @seaf_branch_unref(%struct.TYPE_20__* %118)
  br label %120

120:                                              ; preds = %115, %43, %22
  ret void
}

declare dso_local %struct.TYPE_20__* @seaf_branch_manager_get_branch(i32, i32, i8*) #1

declare dso_local i32 @seaf_warning(i8*, i32, i32) #1

declare dso_local i32 @set_task_error(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @on_repo_deleted_on_server(%struct.TYPE_17__*, %struct.TYPE_19__*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i64 @repo_block_store_exists(%struct.TYPE_19__*) #1

declare dso_local i32 @seaf_message(i8*, i32, i32) #1

declare dso_local i32 @seaf_job_manager_schedule_job(i32, i32, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @transition_sync_state(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @start_fetch_if_necessary(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @seaf_branch_unref(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
