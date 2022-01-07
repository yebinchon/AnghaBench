; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_filelock-mgr.c_seaf_filelock_manager_remove.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_filelock-mgr.c_seaf_filelock_manager_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"DELETE FROM ServerLockedFiles WHERE repo_id = ?\00", align 1
@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@SQLITE_DONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"Failed to remove server locked files for %.8s: %s.\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"DELETE FROM ServerLockedFilesTimestamp WHERE repo_id = ?\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"Failed to remove server locked files timestamp for %.8s: %s.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seaf_filelock_manager_remove(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %12 = call i32 @pthread_mutex_lock(i32* %11)
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = call i32* @sqlite_query_prepare(i32 %17, i8* %18)
  store i32* %19, i32** %7, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %23 = call i32 @sqlite3_bind_text(i32* %20, i32 1, i8* %21, i32 -1, i32 %22)
  %24 = load i32*, i32** %7, align 8
  %25 = call i64 @sqlite3_step(i32* %24)
  %26 = load i64, i64* @SQLITE_DONE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %2
  %29 = load i8*, i8** %5, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @sqlite3_errmsg(i32 %34)
  %36 = call i32 @seaf_warning(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i8* %29, i32 %35)
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @sqlite3_finalize(i32* %37)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = call i32 @pthread_mutex_unlock(i32* %42)
  store i32 -1, i32* %3, align 4
  br label %103

44:                                               ; preds = %2
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @sqlite3_finalize(i32* %45)
  store i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %6, align 8
  %53 = call i32* @sqlite_query_prepare(i32 %51, i8* %52)
  store i32* %53, i32** %7, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %57 = call i32 @sqlite3_bind_text(i32* %54, i32 1, i8* %55, i32 -1, i32 %56)
  %58 = load i32*, i32** %7, align 8
  %59 = call i64 @sqlite3_step(i32* %58)
  %60 = load i64, i64* @SQLITE_DONE, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %78

62:                                               ; preds = %44
  %63 = load i8*, i8** %5, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @sqlite3_errmsg(i32 %68)
  %70 = call i32 @seaf_warning(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i8* %63, i32 %69)
  %71 = load i32*, i32** %7, align 8
  %72 = call i32 @sqlite3_finalize(i32* %71)
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = call i32 @pthread_mutex_unlock(i32* %76)
  store i32 -1, i32* %3, align 4
  br label %103

78:                                               ; preds = %44
  %79 = load i32*, i32** %7, align 8
  %80 = call i32 @sqlite3_finalize(i32* %79)
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  %85 = call i32 @pthread_mutex_unlock(i32* %84)
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = call i32 @pthread_mutex_lock(i32* %89)
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i8*, i8** %5, align 8
  %97 = call i32 @g_hash_table_remove(i32 %95, i8* %96)
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = call i32 @pthread_mutex_unlock(i32* %101)
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %78, %62, %28
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

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
