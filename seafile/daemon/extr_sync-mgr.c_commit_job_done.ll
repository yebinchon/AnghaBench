; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_sync-mgr.c_commit_job_done.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_sync-mgr.c_commit_job_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.CommitResult = type { %struct.TYPE_11__*, i64, i32 }
%struct.TYPE_11__ = type { i64, i64, i64, %struct.TYPE_10__*, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@SYNC_STATE_CANCELED = common dso_local global i32 0, align 4
@seaf = common dso_local global %struct.TYPE_13__* null, align 8
@SYNC_STATE_CANCEL_PENDING = common dso_local global i64 0, align 8
@SYNC_ERROR_ID_INDEX_ERROR = common dso_local global i32 0, align 4
@SYNC_STATE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @commit_job_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @commit_job_done(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.CommitResult*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.CommitResult*
  store %struct.CommitResult* %7, %struct.CommitResult** %3, align 8
  %8 = load %struct.CommitResult*, %struct.CommitResult** %3, align 8
  %9 = getelementptr inbounds %struct.CommitResult, %struct.CommitResult* %8, i32 0, i32 0
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 4
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %4, align 8
  %13 = load %struct.CommitResult*, %struct.CommitResult** %3, align 8
  %14 = getelementptr inbounds %struct.CommitResult, %struct.CommitResult* %13, i32 0, i32 0
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %5, align 8
  %16 = load i32, i32* @FALSE, align 4
  %17 = load %struct.CommitResult*, %struct.CommitResult** %3, align 8
  %18 = getelementptr inbounds %struct.CommitResult, %struct.CommitResult* %17, i32 0, i32 0
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  store i32 %16, i32* %22, align 4
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %1
  %28 = load %struct.CommitResult*, %struct.CommitResult** %3, align 8
  %29 = getelementptr inbounds %struct.CommitResult, %struct.CommitResult* %28, i32 0, i32 0
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = load i32, i32* @SYNC_STATE_CANCELED, align 4
  %32 = call i32 @transition_sync_state(%struct.TYPE_11__* %30, i32 %31)
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** @seaf, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %37 = call i32 @seaf_repo_manager_del_repo(i32 %35, %struct.TYPE_12__* %36)
  %38 = load %struct.CommitResult*, %struct.CommitResult** %3, align 8
  %39 = call i32 @g_free(%struct.CommitResult* %38)
  br label %100

40:                                               ; preds = %1
  %41 = load %struct.CommitResult*, %struct.CommitResult** %3, align 8
  %42 = getelementptr inbounds %struct.CommitResult, %struct.CommitResult* %41, i32 0, i32 0
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @SYNC_STATE_CANCEL_PENDING, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %40
  %49 = load %struct.CommitResult*, %struct.CommitResult** %3, align 8
  %50 = getelementptr inbounds %struct.CommitResult, %struct.CommitResult* %49, i32 0, i32 0
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = load i32, i32* @SYNC_STATE_CANCELED, align 4
  %53 = call i32 @transition_sync_state(%struct.TYPE_11__* %51, i32 %52)
  %54 = load %struct.CommitResult*, %struct.CommitResult** %3, align 8
  %55 = call i32 @g_free(%struct.CommitResult* %54)
  br label %100

56:                                               ; preds = %40
  %57 = load %struct.CommitResult*, %struct.CommitResult** %3, align 8
  %58 = getelementptr inbounds %struct.CommitResult, %struct.CommitResult* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %56
  %62 = load %struct.CommitResult*, %struct.CommitResult** %3, align 8
  %63 = getelementptr inbounds %struct.CommitResult, %struct.CommitResult* %62, i32 0, i32 0
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = load i32, i32* @SYNC_ERROR_ID_INDEX_ERROR, align 4
  %66 = call i32 @set_task_error(%struct.TYPE_11__* %64, i32 %65)
  %67 = load %struct.CommitResult*, %struct.CommitResult** %3, align 8
  %68 = call i32 @g_free(%struct.CommitResult* %67)
  br label %100

69:                                               ; preds = %56
  %70 = load %struct.CommitResult*, %struct.CommitResult** %3, align 8
  %71 = getelementptr inbounds %struct.CommitResult, %struct.CommitResult* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load %struct.CommitResult*, %struct.CommitResult** %3, align 8
  %76 = getelementptr inbounds %struct.CommitResult, %struct.CommitResult* %75, i32 0, i32 0
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = call i32 @start_upload_if_necessary(%struct.TYPE_11__* %77)
  br label %97

79:                                               ; preds = %69
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %79
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84, %79
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %91 = call i32 @check_head_commit_http(%struct.TYPE_11__* %90)
  br label %96

92:                                               ; preds = %84
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %94 = load i32, i32* @SYNC_STATE_DONE, align 4
  %95 = call i32 @transition_sync_state(%struct.TYPE_11__* %93, i32 %94)
  br label %96

96:                                               ; preds = %92, %89
  br label %97

97:                                               ; preds = %96, %74
  %98 = load %struct.CommitResult*, %struct.CommitResult** %3, align 8
  %99 = call i32 @g_free(%struct.CommitResult* %98)
  br label %100

100:                                              ; preds = %97, %61, %48, %27
  ret void
}

declare dso_local i32 @transition_sync_state(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @seaf_repo_manager_del_repo(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @g_free(%struct.CommitResult*) #1

declare dso_local i32 @set_task_error(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @start_upload_if_necessary(%struct.TYPE_11__*) #1

declare dso_local i32 @check_head_commit_http(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
