; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_locked_file_set_remove.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_locked_file_set_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"Remove locked file record %.8s, %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"DELETE FROM LockedFiles WHERE repo_id = ? AND path = ?\00", align 1
@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@SQLITE_DONE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"Failed to remove locked file %s from db: %s.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @locked_file_set_remove(%struct.TYPE_7__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %8, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32* @g_hash_table_lookup(i32 %16, i8* %17)
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %86

21:                                               ; preds = %3
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @seaf_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %24, i8* %25)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = call i32 @pthread_mutex_lock(i32* %30)
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %9, align 8
  %38 = call i32* @sqlite_query_prepare(i32 %36, i8* %37)
  store i32* %38, i32** %10, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %44 = call i32 @sqlite3_bind_text(i32* %39, i32 1, i8* %42, i32 -1, i32 %43)
  %45 = load i32*, i32** %10, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %48 = call i32 @sqlite3_bind_text(i32* %45, i32 2, i8* %46, i32 -1, i32 %47)
  %49 = load i32*, i32** %10, align 8
  %50 = call i64 @sqlite3_step(i32* %49)
  %51 = load i64, i64* @SQLITE_DONE, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %69

53:                                               ; preds = %21
  %54 = load i8*, i8** %6, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @sqlite3_errmsg(i32 %59)
  %61 = call i32 @seaf_warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* %54, i32 %60)
  %62 = load i32*, i32** %10, align 8
  %63 = call i32 @sqlite3_finalize(i32* %62)
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = call i32 @pthread_mutex_unlock(i32* %67)
  store i32 -1, i32* %4, align 4
  br label %86

69:                                               ; preds = %21
  %70 = load i32*, i32** %10, align 8
  %71 = call i32 @sqlite3_finalize(i32* %70)
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = call i32 @pthread_mutex_unlock(i32* %75)
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %69
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = call i32 @g_hash_table_remove(i32 %82, i8* %83)
  br label %85

85:                                               ; preds = %79, %69
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %85, %53, %20
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32* @g_hash_table_lookup(i32, i8*) #1

declare dso_local i32 @seaf_debug(i8*, i8*, i8*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32* @sqlite_query_prepare(i32, i8*) #1

declare dso_local i32 @sqlite3_bind_text(i32*, i32, i8*, i32, i32) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i32 @seaf_warning(i8*, i8*, i32) #1

declare dso_local i32 @sqlite3_errmsg(i32) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @g_hash_table_remove(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
