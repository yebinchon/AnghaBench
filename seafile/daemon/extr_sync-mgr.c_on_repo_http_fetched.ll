; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_sync-mgr.c_on_repo_http_fetched.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_sync-mgr.c_on_repo_http_fetched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i64, i32, i32, i64, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64 }

@SYNC_STATE_CANCELED = common dso_local global i32 0, align 4
@HTTP_TASK_STATE_FINISHED = common dso_local global i64 0, align 8
@SYNC_STATE_DONE = common dso_local global i32 0, align 4
@HTTP_TASK_STATE_CANCELED = common dso_local global i64 0, align 8
@HTTP_TASK_STATE_ERROR = common dso_local global i64 0, align 8
@SYNC_ERROR_ID_SERVER_REPO_DELETED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, %struct.TYPE_16__*, i32*)* @on_repo_http_fetched to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_repo_http_fetched(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.TYPE_14__* @get_sync_info(i32* %9, i32 %12)
  store %struct.TYPE_14__* %13, %struct.TYPE_14__** %7, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %8, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %94

22:                                               ; preds = %3
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %22
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %31 = load i32, i32* @SYNC_STATE_CANCELED, align 4
  %32 = call i32 @transition_sync_state(%struct.TYPE_13__* %30, i32 %31)
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %37, align 8
  %39 = call i32 @seaf_repo_manager_del_repo(i32 %35, %struct.TYPE_17__* %38)
  br label %94

40:                                               ; preds = %22
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @HTTP_TASK_STATE_FINISHED, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %40
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @memcpy(i32 %49, i32 %52, i32 41)
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %55 = load i32, i32* @SYNC_STATE_DONE, align 4
  %56 = call i32 @transition_sync_state(%struct.TYPE_13__* %54, i32 %55)
  br label %94

57:                                               ; preds = %40
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @HTTP_TASK_STATE_CANCELED, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %65 = load i32, i32* @SYNC_STATE_CANCELED, align 4
  %66 = call i32 @transition_sync_state(%struct.TYPE_13__* %64, i32 %65)
  br label %93

67:                                               ; preds = %57
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @HTTP_TASK_STATE_ERROR, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %92

73:                                               ; preds = %67
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @SYNC_ERROR_ID_SERVER_REPO_DELETED, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %73
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %82, align 8
  %84 = call i32 @on_repo_deleted_on_server(%struct.TYPE_13__* %80, %struct.TYPE_17__* %83)
  br label %91

85:                                               ; preds = %73
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @set_task_error(%struct.TYPE_13__* %86, i32 %89)
  br label %91

91:                                               ; preds = %85, %79
  br label %92

92:                                               ; preds = %91, %67
  br label %93

93:                                               ; preds = %92, %63
  br label %94

94:                                               ; preds = %21, %29, %93, %46
  ret void
}

declare dso_local %struct.TYPE_14__* @get_sync_info(i32*, i32) #1

declare dso_local i32 @transition_sync_state(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @seaf_repo_manager_del_repo(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @on_repo_deleted_on_server(%struct.TYPE_13__*, %struct.TYPE_17__*) #1

declare dso_local i32 @set_task_error(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
