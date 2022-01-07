; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_filelock-mgr.c_remove_locked_file_from_db.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_filelock-mgr.c_remove_locked_file_from_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [61 x i8] c"DELETE FROM ServerLockedFiles WHERE repo_id = ? AND path = ?\00", align 1
@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@SQLITE_DONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"Failed to remove locked file %s from %.8s: %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i8*)* @remove_locked_file_from_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_locked_file_from_db(%struct.TYPE_5__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = call i32 @pthread_mutex_lock(i32* %13)
  store i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = call i32* @sqlite_query_prepare(i32 %19, i8* %20)
  store i32* %21, i32** %9, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %25 = call i32 @sqlite3_bind_text(i32* %22, i32 1, i8* %23, i32 -1, i32 %24)
  %26 = load i32*, i32** %9, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %29 = call i32 @sqlite3_bind_text(i32* %26, i32 2, i8* %27, i32 -1, i32 %28)
  %30 = load i32*, i32** %9, align 8
  %31 = call i64 @sqlite3_step(i32* %30)
  %32 = load i64, i64* @SQLITE_DONE, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %3
  %35 = load i8*, i8** %7, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @sqlite3_errmsg(i32 %41)
  %43 = call i32 @seaf_warning(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %35, i8* %36, i32 %42)
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @sqlite3_finalize(i32* %44)
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = call i32 @pthread_mutex_unlock(i32* %49)
  store i32 -1, i32* %4, align 4
  br label %59

51:                                               ; preds = %3
  %52 = load i32*, i32** %9, align 8
  %53 = call i32 @sqlite3_finalize(i32* %52)
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = call i32 @pthread_mutex_unlock(i32* %57)
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %51, %34
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32* @sqlite_query_prepare(i32, i8*) #1

declare dso_local i32 @sqlite3_bind_text(i32*, i32, i8*, i32, i32) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i32 @seaf_warning(i8*, i8*, i8*, i32) #1

declare dso_local i32 @sqlite3_errmsg(i32) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
