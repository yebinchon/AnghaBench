; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_filelock-mgr.c_seaf_filelock_manager_init.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_filelock-mgr.c_seaf_filelock_manager_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32* }

@seaf = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"filelocks.db\00", align 1
@.str.1 = private unnamed_addr constant [94 x i8] c"CREATE TABLE IF NOT EXISTS ServerLockedFiles (repo_id TEXT, path TEXT, locked_by_me INTEGER);\00", align 1
@.str.2 = private unnamed_addr constant [91 x i8] c"CREATE INDEX IF NOT EXISTS server_locked_files_repo_id_idx ON ServerLockedFiles (repo_id);\00", align 1
@.str.3 = private unnamed_addr constant [112 x i8] c"CREATE TABLE IF NOT EXISTS ServerLockedFilesTimestamp (repo_id TEXT, timestamp INTEGER, PRIMARY KEY (repo_id));\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"SELECT repo_id, path, locked_by_me FROM ServerLockedFiles\00", align 1
@load_locked_files = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seaf_filelock_manager_init(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** @seaf, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i8* @g_build_filename(i32 %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* null)
  store i8* %10, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i64 @sqlite_open_db(i8* %11, i32** %5)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %84

15:                                               ; preds = %1
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @g_free(i8* %16)
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 3
  store i32* %18, i32** %22, align 8
  store i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @sqlite_query_exec(i32* %23, i8* %24)
  store i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @sqlite_query_exec(i32* %26, i8* %27)
  store i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @sqlite_query_exec(i32* %29, i8* %30)
  store i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = call i32 @pthread_mutex_lock(i32* %35)
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = call i32 @pthread_mutex_lock(i32* %40)
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load i32, i32* @load_locked_files, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @sqlite_foreach_selected_row(i32* %46, i8* %47, i32 %48, i32 %53)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %15
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = call i32 @pthread_mutex_unlock(i32* %60)
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = call i32 @pthread_mutex_unlock(i32* %65)
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @g_hash_table_destroy(i32 %71)
  store i32 -1, i32* %2, align 4
  br label %84

73:                                               ; preds = %15
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = call i32 @pthread_mutex_unlock(i32* %77)
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = call i32 @pthread_mutex_unlock(i32* %82)
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %73, %56, %14
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i8* @g_build_filename(i32, i8*, i32*) #1

declare dso_local i64 @sqlite_open_db(i8*, i32**) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @sqlite_query_exec(i32*, i8*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @sqlite_foreach_selected_row(i32*, i8*, i32, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @g_hash_table_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
