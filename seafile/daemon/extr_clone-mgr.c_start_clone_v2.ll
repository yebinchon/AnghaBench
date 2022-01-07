; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_clone-mgr.c_start_clone_v2.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_clone-mgr.c_start_clone_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }

@F_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"[clone mgr] Failed to create worktree %s.\0A\00", align 1
@SYNC_ERROR_ID_WRITE_LOCAL_DATA = common dso_local global i32 0, align 4
@seaf = common dso_local global %struct.TYPE_15__* null, align 8
@REPO_PROP_SERVER_URL = common dso_local global i32 0, align 4
@CLONE_STATE_FETCH = common dso_local global i32 0, align 4
@SYNC_ERROR_ID_NOT_ENOUGH_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*)* @start_clone_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_clone_v2(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  store i32* null, i32** %3, align 8
  %5 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @F_OK, align 4
  %9 = call i64 @g_access(i32 %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @g_mkdir_with_parents(i32 %14, i32 511)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %11
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @seaf_warning(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %23 = load i32, i32* @SYNC_ERROR_ID_WRITE_LOCAL_DATA, align 4
  %24 = call i32 @transition_to_error(%struct.TYPE_14__* %22, i32 %23)
  br label %97

25:                                               ; preds = %11, %1
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** @seaf, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.TYPE_13__* @seaf_repo_manager_get_repo(i32 %28, i32 %31)
  store %struct.TYPE_13__* %32, %struct.TYPE_13__** %4, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %34 = icmp ne %struct.TYPE_13__* %33, null
  br i1 %34, label %35, label %85

35:                                               ; preds = %25
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** @seaf, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @seaf_repo_manager_set_repo_token(i32 %38, %struct.TYPE_13__* %39, i32 %42)
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** @seaf, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @seaf_repo_manager_set_repo_email(i32 %46, %struct.TYPE_13__* %47, i32 %50)
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** @seaf, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @seaf_repo_manager_set_repo_relay_info(i32 %54, i32 %57, i32 %60, i32 %63)
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %35
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** @seaf, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @REPO_PROP_SERVER_URL, align 4
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @seaf_repo_manager_set_repo_property(i32 %72, i32 %75, i32 %76, i64 %79)
  br label %81

81:                                               ; preds = %69, %35
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %84 = call i32 @mark_clone_done_v2(%struct.TYPE_13__* %82, %struct.TYPE_14__* %83)
  br label %97

85:                                               ; preds = %25
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %87 = call i64 @add_transfer_task(%struct.TYPE_14__* %86, i32** %3)
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %91 = load i32, i32* @CLONE_STATE_FETCH, align 4
  %92 = call i32 @transition_state(%struct.TYPE_14__* %90, i32 %91)
  br label %97

93:                                               ; preds = %85
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %95 = load i32, i32* @SYNC_ERROR_ID_NOT_ENOUGH_MEMORY, align 4
  %96 = call i32 @transition_to_error(%struct.TYPE_14__* %94, i32 %95)
  br label %97

97:                                               ; preds = %17, %81, %93, %89
  ret void
}

declare dso_local i64 @g_access(i32, i32) #1

declare dso_local i64 @g_mkdir_with_parents(i32, i32) #1

declare dso_local i32 @seaf_warning(i8*, i32) #1

declare dso_local i32 @transition_to_error(%struct.TYPE_14__*, i32) #1

declare dso_local %struct.TYPE_13__* @seaf_repo_manager_get_repo(i32, i32) #1

declare dso_local i32 @seaf_repo_manager_set_repo_token(i32, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @seaf_repo_manager_set_repo_email(i32, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @seaf_repo_manager_set_repo_relay_info(i32, i32, i32, i32) #1

declare dso_local i32 @seaf_repo_manager_set_repo_property(i32, i32, i32, i64) #1

declare dso_local i32 @mark_clone_done_v2(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

declare dso_local i64 @add_transfer_task(%struct.TYPE_14__*, i32**) #1

declare dso_local i32 @transition_state(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
