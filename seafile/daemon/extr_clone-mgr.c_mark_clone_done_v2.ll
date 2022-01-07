; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_clone-mgr.c_mark_clone_done_v2.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_clone-mgr.c_mark_clone_done_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_14__*, i32, i32, i32, i64, i32, i64, i32 }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_16__ = type { i64, i64, i64, i32, i32 }

@seaf = common dso_local global %struct.TYPE_13__* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Cannot get branch local for repo %s(%.10s).\0A\00", align 1
@SYNC_ERROR_ID_LOCAL_DATA_CORRUPT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"[Clone mgr] failed to set passwd for %s.\0A\00", align 1
@SYNC_ERROR_ID_GENERAL_ERROR = common dso_local global i32 0, align 4
@REPO_SYNC_WORKTREE_NAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"failed to watch repo %s(%.10s).\0A\00", align 1
@REPO_REMOTE_HEAD = common dso_local global i32 0, align 4
@REPO_LOCAL_HEAD = common dso_local global i32 0, align 4
@CLONE_STATE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, %struct.TYPE_16__*)* @mark_clone_done_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_clone_done_v2(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  store i32* null, i32** %5, align 8
  %6 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 8
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @seaf_repo_manager_set_repo_worktree(i32 %8, %struct.TYPE_15__* %9, i32 %12)
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** @seaf, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32* @seaf_branch_manager_get_branch(i32 %16, i32 %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32* %20, i32** %5, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %34, label %23

23:                                               ; preds = %2
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (i8*, i32, ...) @seaf_warning(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %29)
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %32 = load i32, i32* @SYNC_ERROR_ID_LOCAL_DATA_CORRUPT, align 4
  %33 = call i32 @transition_to_error(%struct.TYPE_16__* %31, i32 %32)
  br label %161

34:                                               ; preds = %2
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @seaf_repo_set_head(%struct.TYPE_15__* %35, i32* %36)
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @seaf_branch_unref(i32* %38)
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 7
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %34
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** @seaf, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @seaf_repo_manager_set_repo_passwd(i32 %47, %struct.TYPE_15__* %48, i32 %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %44
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (i8*, i32, ...) @seaf_warning(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %60 = load i32, i32* @SYNC_ERROR_ID_GENERAL_ERROR, align 4
  %61 = call i32 @transition_to_error(%struct.TYPE_16__* %59, i32 %60)
  br label %161

62:                                               ; preds = %44
  br label %63

63:                                               ; preds = %62, %34
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %70 = call i32 @seaf_repo_set_readonly(%struct.TYPE_15__* %69)
  br label %71

71:                                               ; preds = %68, %63
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %71
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** @seaf, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @REPO_SYNC_WORKTREE_NAME, align 4
  %84 = call i32 @seaf_repo_manager_set_repo_property(i32 %79, i32 %82, i32 %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %85

85:                                               ; preds = %76, %71
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %85
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @g_strdup(i64 %93)
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 6
  store i32 %94, i32* %96, align 8
  br label %97

97:                                               ; preds = %90, %85
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 5
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %131

102:                                              ; preds = %97
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %131

107:                                              ; preds = %102
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** @seaf, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = call i64 @seaf_wt_monitor_watch_repo(i32 %110, i32 %113, i32 %116)
  %118 = icmp slt i64 %117, 0
  br i1 %118, label %119, label %130

119:                                              ; preds = %107
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 (i8*, i32, ...) @seaf_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %122, i32 %125)
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %128 = load i32, i32* @SYNC_ERROR_ID_GENERAL_ERROR, align 4
  %129 = call i32 @transition_to_error(%struct.TYPE_16__* %127, i32 %128)
  br label %161

130:                                              ; preds = %107
  br label %131

131:                                              ; preds = %130, %102, %97
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** @seaf, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @REPO_REMOTE_HEAD, align 4
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @seaf_repo_manager_set_repo_property(i32 %134, i32 %137, i32 %138, i8* %143)
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** @seaf, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @REPO_LOCAL_HEAD, align 4
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 @seaf_repo_manager_set_repo_property(i32 %147, i32 %150, i32 %151, i8* %156)
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %159 = load i32, i32* @CLONE_STATE_DONE, align 4
  %160 = call i32 @transition_state(%struct.TYPE_16__* %158, i32 %159)
  br label %161

161:                                              ; preds = %131, %119, %54, %23
  ret void
}

declare dso_local i32 @seaf_repo_manager_set_repo_worktree(i32, %struct.TYPE_15__*, i32) #1

declare dso_local i32* @seaf_branch_manager_get_branch(i32, i32, i8*) #1

declare dso_local i32 @seaf_warning(i8*, i32, ...) #1

declare dso_local i32 @transition_to_error(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @seaf_repo_set_head(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @seaf_branch_unref(i32*) #1

declare dso_local i64 @seaf_repo_manager_set_repo_passwd(i32, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @seaf_repo_set_readonly(%struct.TYPE_15__*) #1

declare dso_local i32 @seaf_repo_manager_set_repo_property(i32, i32, i32, i8*) #1

declare dso_local i32 @g_strdup(i64) #1

declare dso_local i64 @seaf_wt_monitor_watch_repo(i32, i32, i32) #1

declare dso_local i32 @transition_state(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
