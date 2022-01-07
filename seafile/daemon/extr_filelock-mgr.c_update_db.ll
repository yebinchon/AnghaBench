; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_filelock-mgr.c_update_db.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_filelock-mgr.c_update_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32* }
%struct.TYPE_13__ = type { i8*, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"DELETE FROM ServerLockedFiles WHERE repo_id = ?\00", align 1
@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@SQLITE_DONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"Failed to remove server locked files for %.8s: %s.\0A\00", align 1
@compare_paths = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [77 x i8] c"INSERT INTO ServerLockedFiles (repo_id, path, locked_by_me) VALUES (?, ?, ?)\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Failed to insert server file lock for %.8s: %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8*)* @update_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_db(%struct.TYPE_11__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = call i32 @pthread_mutex_lock(i32* %16)
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = call i32* @sqlite_query_prepare(i32 %22, i8* %23)
  store i32* %24, i32** %7, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %28 = call i32 @sqlite3_bind_text(i32* %25, i32 1, i8* %26, i32 -1, i32 %27)
  %29 = load i32*, i32** %7, align 8
  %30 = call i64 @sqlite3_step(i32* %29)
  %31 = load i64, i64* @SQLITE_DONE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %2
  %34 = load i8*, i8** %5, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @sqlite3_errmsg(i32 %39)
  %41 = call i32 @seaf_warning(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i8* %34, i32 %40)
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @sqlite3_finalize(i32* %42)
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = call i32 @pthread_mutex_unlock(i32* %47)
  store i32 -1, i32* %3, align 4
  br label %149

49:                                               ; preds = %2
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @sqlite3_finalize(i32* %50)
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = call i8* @g_hash_table_lookup(i32* %56, i8* %57)
  %59 = bitcast i8* %58 to i32*
  store i32* %59, i32** %8, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %49
  %63 = load i32*, i32** %8, align 8
  %64 = call i64 @g_hash_table_size(i32* %63)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %62, %49
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = call i32 @pthread_mutex_unlock(i32* %70)
  store i32 0, i32* %3, align 4
  br label %149

72:                                               ; preds = %62
  %73 = load i32*, i32** %8, align 8
  %74 = call %struct.TYPE_13__* @g_hash_table_get_keys(i32* %73)
  store %struct.TYPE_13__* %74, %struct.TYPE_13__** %9, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %76 = load i32, i32* @compare_paths, align 4
  %77 = call %struct.TYPE_13__* @g_list_sort(%struct.TYPE_13__* %75, i32 %76)
  store %struct.TYPE_13__* %77, %struct.TYPE_13__** %9, align 8
  store i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i8*, i8** %6, align 8
  %84 = call i32* @sqlite_query_prepare(i32 %82, i8* %83)
  store i32* %84, i32** %7, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_13__* %85, %struct.TYPE_13__** %10, align 8
  br label %86

86:                                               ; preds = %135, %72
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %88 = icmp ne %struct.TYPE_13__* %87, null
  br i1 %88, label %89, label %139

89:                                               ; preds = %86
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  store i8* %92, i8** %11, align 8
  %93 = load i32*, i32** %8, align 8
  %94 = load i8*, i8** %11, align 8
  %95 = call i8* @g_hash_table_lookup(i32* %93, i8* %94)
  %96 = bitcast i8* %95 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %96, %struct.TYPE_12__** %12, align 8
  %97 = load i32*, i32** %7, align 8
  %98 = load i8*, i8** %5, align 8
  %99 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %100 = call i32 @sqlite3_bind_text(i32* %97, i32 1, i8* %98, i32 -1, i32 %99)
  %101 = load i32*, i32** %7, align 8
  %102 = load i8*, i8** %11, align 8
  %103 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %104 = call i32 @sqlite3_bind_text(i32* %101, i32 2, i8* %102, i32 -1, i32 %103)
  %105 = load i32*, i32** %7, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @sqlite3_bind_int(i32* %105, i32 3, i32 %108)
  %110 = load i32*, i32** %7, align 8
  %111 = call i64 @sqlite3_step(i32* %110)
  %112 = load i64, i64* @SQLITE_DONE, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %130

114:                                              ; preds = %89
  %115 = load i8*, i8** %5, align 8
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @sqlite3_errmsg(i32 %120)
  %122 = call i32 @seaf_warning(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i8* %115, i32 %121)
  %123 = load i32*, i32** %7, align 8
  %124 = call i32 @sqlite3_finalize(i32* %123)
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = call i32 @pthread_mutex_unlock(i32* %128)
  store i32 -1, i32* %3, align 4
  br label %149

130:                                              ; preds = %89
  %131 = load i32*, i32** %7, align 8
  %132 = call i32 @sqlite3_reset(i32* %131)
  %133 = load i32*, i32** %7, align 8
  %134 = call i32 @sqlite3_clear_bindings(i32* %133)
  br label %135

135:                                              ; preds = %130
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %137, align 8
  store %struct.TYPE_13__* %138, %struct.TYPE_13__** %10, align 8
  br label %86

139:                                              ; preds = %86
  %140 = load i32*, i32** %7, align 8
  %141 = call i32 @sqlite3_finalize(i32* %140)
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %143 = call i32 @g_list_free(%struct.TYPE_13__* %142)
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = call i32 @pthread_mutex_unlock(i32* %147)
  store i32 0, i32* %3, align 4
  br label %149

149:                                              ; preds = %139, %114, %66, %33
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32* @sqlite_query_prepare(i32, i8*) #1

declare dso_local i32 @sqlite3_bind_text(i32*, i32, i8*, i32, i32) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i32 @seaf_warning(i8*, i8*, i32) #1

declare dso_local i32 @sqlite3_errmsg(i32) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i8* @g_hash_table_lookup(i32*, i8*) #1

declare dso_local i64 @g_hash_table_size(i32*) #1

declare dso_local %struct.TYPE_13__* @g_hash_table_get_keys(i32*) #1

declare dso_local %struct.TYPE_13__* @g_list_sort(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @sqlite3_bind_int(i32*, i32, i32) #1

declare dso_local i32 @sqlite3_reset(i32*) #1

declare dso_local i32 @sqlite3_clear_bindings(i32*) #1

declare dso_local i32 @g_list_free(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
