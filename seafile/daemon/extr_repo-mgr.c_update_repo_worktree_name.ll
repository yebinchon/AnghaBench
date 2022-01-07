; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_update_repo_worktree_name.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_update_repo_worktree_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"Update worktree folder name of repo %s to %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Failed to rename worktree from %s to %s: %s.\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@seaf = common dso_local global %struct.TYPE_6__* null, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"Failed to unwatch repo %s old worktree.\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Failed to watch repo %s new worktree.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i8*, i64)* @update_repo_worktree_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_repo_worktree_name(%struct.TYPE_5__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @seaf_message(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %12, i8* %13)
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @g_path_get_dirname(i32 %17)
  store i8* %18, i8** %7, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i64 @g_strcmp0(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %97

23:                                               ; preds = %3
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @g_path_get_basename(i32 %26)
  store i8* %27, i8** %8, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i8* @g_build_filename(i8* %28, i8* %29, i32* null)
  store i8* %30, i8** %9, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %9, align 8
  %35 = call i64 @seaf_util_rename(i32 %33, i8* %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %23
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %9, align 8
  %42 = load i32, i32* @errno, align 4
  %43 = call i32 @strerror(i32 %42)
  %44 = call i32 (i8*, i32, ...) @seaf_warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %40, i8* %41, i32 %43)
  br label %90

45:                                               ; preds = %23
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** @seaf, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = call i64 @seaf_repo_manager_set_repo_worktree(i32 %48, %struct.TYPE_5__* %49, i8* %50)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %90

54:                                               ; preds = %45
  %55 = load i64, i64* %6, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %89

57:                                               ; preds = %54
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** @seaf, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @seaf_wt_monitor_unwatch_repo(i32 %60, i32 %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %57
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i8*, i32, ...) @seaf_warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  br label %90

71:                                               ; preds = %57
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** @seaf, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @seaf_wt_monitor_watch_repo(i32 %74, i32 %77, i32 %80)
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %71
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i8*, i32, ...) @seaf_warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %83, %71
  br label %89

89:                                               ; preds = %88, %54
  br label %90

90:                                               ; preds = %89, %66, %53, %37
  %91 = load i8*, i8** %7, align 8
  %92 = call i32 @g_free(i8* %91)
  %93 = load i8*, i8** %8, align 8
  %94 = call i32 @g_free(i8* %93)
  %95 = load i8*, i8** %9, align 8
  %96 = call i32 @g_free(i8* %95)
  br label %97

97:                                               ; preds = %90, %22
  ret void
}

declare dso_local i32 @seaf_message(i8*, i32, i8*) #1

declare dso_local i8* @g_path_get_dirname(i32) #1

declare dso_local i64 @g_strcmp0(i8*, i8*) #1

declare dso_local i8* @g_path_get_basename(i32) #1

declare dso_local i8* @g_build_filename(i8*, i8*, i32*) #1

declare dso_local i64 @seaf_util_rename(i32, i8*) #1

declare dso_local i32 @seaf_warning(i8*, i32, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @seaf_repo_manager_set_repo_worktree(i32, %struct.TYPE_5__*, i8*) #1

declare dso_local i64 @seaf_wt_monitor_unwatch_repo(i32, i32) #1

declare dso_local i64 @seaf_wt_monitor_watch_repo(i32, i32, i32) #1

declare dso_local i32 @g_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
