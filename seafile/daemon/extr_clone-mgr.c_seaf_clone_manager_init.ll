; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_clone-mgr.c_seaf_clone_manager_init.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_clone-mgr.c_seaf_clone_manager_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [190 x i8] c"CREATE TABLE IF NOT EXISTS CloneTasks (repo_id TEXT PRIMARY KEY, repo_name TEXT, token TEXT, dest_id TEXT,worktree_parent TEXT, passwd TEXT, server_addr TEXT, server_port TEXT, email TEXT);\00", align 1
@.str.1 = private unnamed_addr constant [90 x i8] c"CREATE TABLE IF NOT EXISTS CloneTasksMoreInfo (repo_id TEXT PRIMARY KEY, more_info TEXT);\00", align 1
@.str.2 = private unnamed_addr constant [106 x i8] c"CREATE TABLE IF NOT EXISTS CloneEncInfo (repo_id TEXT PRIMARY KEY, enc_version INTEGER, random_key TEXT);\00", align 1
@.str.3 = private unnamed_addr constant [94 x i8] c"CREATE TABLE IF NOT EXISTS CloneVersionInfo (repo_id TEXT PRIMARY KEY, repo_version INTEGER);\00", align 1
@.str.4 = private unnamed_addr constant [87 x i8] c"CREATE TABLE IF NOT EXISTS CloneServerURL (repo_id TEXT PRIMARY KEY, server_url TEXT);\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seaf_clone_manager_init(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* getelementptr inbounds ([190 x i8], [190 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = call i64 @sqlite_query_exec(i32 %7, i8* %8)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %45

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 @sqlite_query_exec(i32 %15, i8* %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  store i32 -1, i32* %2, align 4
  br label %45

20:                                               ; preds = %12
  store i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %4, align 8
  %25 = call i64 @sqlite_query_exec(i32 %23, i8* %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 -1, i32* %2, align 4
  br label %45

28:                                               ; preds = %20
  store i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %4, align 8
  %33 = call i64 @sqlite_query_exec(i32 %31, i8* %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 -1, i32* %2, align 4
  br label %45

36:                                               ; preds = %28
  store i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %4, align 8
  %41 = call i64 @sqlite_query_exec(i32 %39, i8* %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store i32 -1, i32* %2, align 4
  br label %45

44:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %43, %35, %27, %19, %11
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i64 @sqlite_query_exec(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
