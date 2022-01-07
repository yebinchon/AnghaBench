; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_sync-mgr.c_on_repo_http_uploaded.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_sync-mgr.c_on_repo_http_uploaded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i64, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_20__*, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_15__*, i32, i64 }
%struct.TYPE_15__ = type { i32 }

@SYNC_STATE_CANCELED = common dso_local global i32 0, align 4
@HTTP_TASK_STATE_FINISHED = common dso_local global i64 0, align 8
@REPO_LOCAL_HEAD = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@HTTP_TASK_STATE_CANCELED = common dso_local global i64 0, align 8
@HTTP_TASK_STATE_ERROR = common dso_local global i64 0, align 8
@SYNC_ERROR_ID_SERVER_REPO_DELETED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, %struct.TYPE_19__*, i32*)* @on_repo_http_uploaded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_repo_http_uploaded(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.TYPE_17__* @get_sync_info(i32* %9, i32 %12)
  store %struct.TYPE_17__* %13, %struct.TYPE_17__** %7, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  store %struct.TYPE_16__* %16, %struct.TYPE_16__** %8, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %18 = icmp ne %struct.TYPE_16__* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %19, %3
  %25 = phi i1 [ false, %3 ], [ %23, %19 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @g_return_if_fail(i32 %26)
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %24
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %36 = load i32, i32* @SYNC_STATE_CANCELED, align 4
  %37 = call i32 @transition_sync_state(%struct.TYPE_16__* %35, i32 %36)
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %42, align 8
  %44 = call i32 @seaf_repo_manager_del_repo(i32 %40, %struct.TYPE_20__* %43)
  br label %118

45:                                               ; preds = %24
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @HTTP_TASK_STATE_FINISHED, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %81

51:                                               ; preds = %45
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @memcpy(i32 %54, i32 %57, i32 41)
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @REPO_LOCAL_HEAD, align 4
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @seaf_repo_manager_set_repo_property(i32 %61, i32 %66, i32 %67, i32 %74)
  %76 = load i32, i32* @TRUE, align 4
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %80 = call i32 @check_head_commit_http(%struct.TYPE_16__* %79)
  br label %118

81:                                               ; preds = %45
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @HTTP_TASK_STATE_CANCELED, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %81
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %89 = load i32, i32* @SYNC_STATE_CANCELED, align 4
  %90 = call i32 @transition_sync_state(%struct.TYPE_16__* %88, i32 %89)
  br label %117

91:                                               ; preds = %81
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @HTTP_TASK_STATE_ERROR, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %116

97:                                               ; preds = %91
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @SYNC_ERROR_ID_SERVER_REPO_DELETED, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %97
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %106, align 8
  %108 = call i32 @on_repo_deleted_on_server(%struct.TYPE_16__* %104, %struct.TYPE_20__* %107)
  br label %115

109:                                              ; preds = %97
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @set_task_error(%struct.TYPE_16__* %110, i32 %113)
  br label %115

115:                                              ; preds = %109, %103
  br label %116

116:                                              ; preds = %115, %91
  br label %117

117:                                              ; preds = %116, %87
  br label %118

118:                                              ; preds = %34, %117, %51
  ret void
}

declare dso_local %struct.TYPE_17__* @get_sync_info(i32*, i32) #1

declare dso_local i32 @g_return_if_fail(i32) #1

declare dso_local i32 @transition_sync_state(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @seaf_repo_manager_del_repo(i32, %struct.TYPE_20__*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @seaf_repo_manager_set_repo_property(i32, i32, i32, i32) #1

declare dso_local i32 @check_head_commit_http(%struct.TYPE_16__*) #1

declare dso_local i32 @on_repo_deleted_on_server(%struct.TYPE_16__*, %struct.TYPE_20__*) #1

declare dso_local i32 @set_task_error(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
