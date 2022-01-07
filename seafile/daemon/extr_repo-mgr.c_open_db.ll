; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_open_db.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_open_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [8 x i8] c"repo.db\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"CREATE TABLE IF NOT EXISTS Repo (repo_id TEXT PRIMARY KEY);\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"CREATE TABLE IF NOT EXISTS DeletedRepo (repo_id TEXT PRIMARY KEY);\00", align 1
@.str.3 = private unnamed_addr constant [84 x i8] c"CREATE TABLE IF NOT EXISTS RepoBranch (repo_id TEXT PRIMARY KEY, branch_name TEXT);\00", align 1
@.str.4 = private unnamed_addr constant [80 x i8] c"CREATE TABLE IF NOT EXISTS RepoLanToken (repo_id TEXT PRIMARY KEY, token TEXT);\00", align 1
@.str.5 = private unnamed_addr constant [133 x i8] c"CREATE TABLE IF NOT EXISTS RepoTmpToken (repo_id TEXT, peer_id TEXT, token TEXT, timestamp INTEGER, PRIMARY KEY (repo_id, peer_id));\00", align 1
@.str.6 = private unnamed_addr constant [88 x i8] c"CREATE TABLE IF NOT EXISTS RepoPasswd (repo_id TEXT PRIMARY KEY, passwd TEXT NOT NULL);\00", align 1
@.str.7 = private unnamed_addr constant [101 x i8] c"CREATE TABLE IF NOT EXISTS RepoKeys (repo_id TEXT PRIMARY KEY, key TEXT NOT NULL, iv TEXT NOT NULL);\00", align 1
@.str.8 = private unnamed_addr constant [78 x i8] c"CREATE TABLE IF NOT EXISTS RepoProperty (repo_id TEXT, key TEXT, value TEXT);\00", align 1
@.str.9 = private unnamed_addr constant [64 x i8] c"CREATE INDEX IF NOT EXISTS RepoIndex ON RepoProperty (repo_id);\00", align 1
@.str.10 = private unnamed_addr constant [96 x i8] c"CREATE TABLE IF NOT EXISTS MergeInfo (repo_id TEXT PRIMARY KEY, in_merge INTEGER, branch TEXT);\00", align 1
@.str.11 = private unnamed_addr constant [96 x i8] c"CREATE TABLE IF NOT EXISTS CommonAncestor (repo_id TEXT PRIMARY KEY, ca_id TEXT, head_id TEXT);\00", align 1
@.str.12 = private unnamed_addr constant [68 x i8] c"CREATE TABLE IF NOT EXISTS GarbageRepos (repo_id TEXT PRIMARY KEY);\00", align 1
@.str.13 = private unnamed_addr constant [159 x i8] c"CREATE TABLE IF NOT EXISTS LockedFiles (repo_id TEXT, path TEXT, operation TEXT, old_mtime INTEGER, file_id TEXT, new_path TEXT, PRIMARY KEY (repo_id, path));\00", align 1
@.str.14 = private unnamed_addr constant [87 x i8] c"CREATE TABLE IF NOT EXISTS FolderUserPerms (repo_id TEXT, path TEXT, permission TEXT);\00", align 1
@.str.15 = private unnamed_addr constant [87 x i8] c"CREATE INDEX IF NOT EXISTS folder_user_perms_repo_id_idx ON FolderUserPerms (repo_id);\00", align 1
@.str.16 = private unnamed_addr constant [88 x i8] c"CREATE TABLE IF NOT EXISTS FolderGroupPerms (repo_id TEXT, path TEXT, permission TEXT);\00", align 1
@.str.17 = private unnamed_addr constant [89 x i8] c"CREATE INDEX IF NOT EXISTS folder_group_perms_repo_id_idx ON FolderGroupPerms (repo_id);\00", align 1
@.str.18 = private unnamed_addr constant [105 x i8] c"CREATE TABLE IF NOT EXISTS FolderPermTimestamp (repo_id TEXT, timestamp INTEGER, PRIMARY KEY (repo_id));\00", align 1
@.str.19 = private unnamed_addr constant [114 x i8] c"CREATE TABLE IF NOT EXISTS ServerProperty (server_url TEXT, key TEXT, value TEXT, PRIMARY KEY (server_url, key));\00", align 1
@.str.20 = private unnamed_addr constant [71 x i8] c"CREATE INDEX IF NOT EXISTS ServerIndex ON ServerProperty (server_url);\00", align 1
@.str.21 = private unnamed_addr constant [157 x i8] c"CREATE TABLE IF NOT EXISTS FileSyncError (id INTEGER PRIMARY KEY AUTOINCREMENT, repo_id TEXT, repo_name TEXT, path TEXT, err_id INTEGER, timestamp INTEGER);\00", align 1
@.str.22 = private unnamed_addr constant [79 x i8] c"CREATE INDEX IF NOT EXISTS FileSyncErrorIndex ON FileSyncError (repo_id, path)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_5__*, i8*)* @open_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @open_db(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i8* @g_build_filename(i8* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null)
  store i8* %10, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i64 @sqlite_open_db(i8* %11, i32** %6)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %90

15:                                               ; preds = %2
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @g_free(i8* %16)
  %18 = load i32*, i32** %6, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32* %18, i32** %22, align 8
  store i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @sqlite_query_exec(i32* %23, i8* %24)
  store i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @sqlite_query_exec(i32* %26, i8* %27)
  store i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @sqlite_query_exec(i32* %29, i8* %30)
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.4, i64 0, i64 0), i8** %8, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @sqlite_query_exec(i32* %32, i8* %33)
  store i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.5, i64 0, i64 0), i8** %8, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @sqlite_query_exec(i32* %35, i8* %36)
  store i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.6, i64 0, i64 0), i8** %8, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @sqlite_query_exec(i32* %38, i8* %39)
  store i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.7, i64 0, i64 0), i8** %8, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @sqlite_query_exec(i32* %41, i8* %42)
  store i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.8, i64 0, i64 0), i8** %8, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @sqlite_query_exec(i32* %44, i8* %45)
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.9, i64 0, i64 0), i8** %8, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @sqlite_query_exec(i32* %47, i8* %48)
  store i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.10, i64 0, i64 0), i8** %8, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @sqlite_query_exec(i32* %50, i8* %51)
  store i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.11, i64 0, i64 0), i8** %8, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @sqlite_query_exec(i32* %53, i8* %54)
  store i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.12, i64 0, i64 0), i8** %8, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 @sqlite_query_exec(i32* %56, i8* %57)
  store i8* getelementptr inbounds ([159 x i8], [159 x i8]* @.str.13, i64 0, i64 0), i8** %8, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = call i32 @sqlite_query_exec(i32* %59, i8* %60)
  store i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.14, i64 0, i64 0), i8** %8, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 @sqlite_query_exec(i32* %62, i8* %63)
  store i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.15, i64 0, i64 0), i8** %8, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = call i32 @sqlite_query_exec(i32* %65, i8* %66)
  store i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.16, i64 0, i64 0), i8** %8, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = call i32 @sqlite_query_exec(i32* %68, i8* %69)
  store i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.17, i64 0, i64 0), i8** %8, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = call i32 @sqlite_query_exec(i32* %71, i8* %72)
  store i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.18, i64 0, i64 0), i8** %8, align 8
  %74 = load i32*, i32** %6, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = call i32 @sqlite_query_exec(i32* %74, i8* %75)
  store i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.19, i64 0, i64 0), i8** %8, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = call i32 @sqlite_query_exec(i32* %77, i8* %78)
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.20, i64 0, i64 0), i8** %8, align 8
  %80 = load i32*, i32** %6, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = call i32 @sqlite_query_exec(i32* %80, i8* %81)
  store i8* getelementptr inbounds ([157 x i8], [157 x i8]* @.str.21, i64 0, i64 0), i8** %8, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = call i32 @sqlite_query_exec(i32* %83, i8* %84)
  store i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.22, i64 0, i64 0), i8** %8, align 8
  %86 = load i32*, i32** %6, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = call i32 @sqlite_query_exec(i32* %86, i8* %87)
  %89 = load i32*, i32** %6, align 8
  store i32* %89, i32** %3, align 8
  br label %90

90:                                               ; preds = %15, %14
  %91 = load i32*, i32** %3, align 8
  ret i32* %91
}

declare dso_local i8* @g_build_filename(i8*, i8*, i32*) #1

declare dso_local i64 @sqlite_open_db(i8*, i32**) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @sqlite_query_exec(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
