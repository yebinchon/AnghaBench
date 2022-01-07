; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_filelock-mgr.c_mark_file_locked_in_db.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_filelock-mgr.c_mark_file_locked_in_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [78 x i8] c"REPLACE INTO ServerLockedFiles (repo_id, path, locked_by_me) VALUES (?, ?, ?)\00", align 1
@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@SQLITE_DONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"Failed to update server locked files for %.8s: %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i8*, i32)* @mark_file_locked_in_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mark_file_locked_in_db(%struct.TYPE_5__* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = call i32 @pthread_mutex_lock(i32* %15)
  store i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %10, align 8
  %23 = call i32* @sqlite_query_prepare(i32 %21, i8* %22)
  store i32* %23, i32** %11, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %27 = call i32 @sqlite3_bind_text(i32* %24, i32 1, i8* %25, i32 -1, i32 %26)
  %28 = load i32*, i32** %11, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %31 = call i32 @sqlite3_bind_text(i32* %28, i32 2, i8* %29, i32 -1, i32 %30)
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @sqlite3_bind_int(i32* %32, i32 3, i32 %33)
  %35 = load i32*, i32** %11, align 8
  %36 = call i64 @sqlite3_step(i32* %35)
  %37 = load i64, i64* @SQLITE_DONE, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %4
  %40 = load i8*, i8** %7, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @sqlite3_errmsg(i32 %45)
  %47 = call i32 @seaf_warning(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i8* %40, i32 %46)
  %48 = load i32*, i32** %11, align 8
  %49 = call i32 @sqlite3_finalize(i32* %48)
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = call i32 @pthread_mutex_unlock(i32* %53)
  store i32 -1, i32* %5, align 4
  br label %63

55:                                               ; preds = %4
  %56 = load i32*, i32** %11, align 8
  %57 = call i32 @sqlite3_finalize(i32* %56)
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = call i32 @pthread_mutex_unlock(i32* %61)
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %55, %39
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32* @sqlite_query_prepare(i32, i8*) #1

declare dso_local i32 @sqlite3_bind_text(i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @sqlite3_bind_int(i32*, i32, i32) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i32 @seaf_warning(i8*, i8*, i32) #1

declare dso_local i32 @sqlite3_errmsg(i32) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
