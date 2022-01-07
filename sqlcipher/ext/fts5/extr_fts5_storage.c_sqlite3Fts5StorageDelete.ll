; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_storage.c_sqlite3Fts5StorageDelete.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_storage.c_sqlite3Fts5StorageDelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64 }

@FTS5_CONTENT_NORMAL = common dso_local global i64 0, align 8
@SQLITE_OK = common dso_local global i32 0, align 4
@FTS5_STMT_DELETE_DOCSIZE = common dso_local global i32 0, align 4
@FTS5_STMT_DELETE_CONTENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3Fts5StorageDelete(%struct.TYPE_7__* %0, i32 %1, i32** %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %7, align 8
  store i32* null, i32** %9, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @FTS5_CONTENT_NORMAL, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32**, i32*** %6, align 8
  %20 = icmp eq i32** %19, null
  br label %21

21:                                               ; preds = %18, %3
  %22 = phi i1 [ true, %3 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = call i32 @fts5StorageLoadTotals(%struct.TYPE_7__* %25, i32 1)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @SQLITE_OK, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %21
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32**, i32*** %6, align 8
  %34 = call i32 @fts5StorageDeleteFromIndex(%struct.TYPE_7__* %31, i32 %32, i32** %33)
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %30, %21
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @SQLITE_OK, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %60

39:                                               ; preds = %35
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %39
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %46 = load i32, i32* @FTS5_STMT_DELETE_DOCSIZE, align 4
  %47 = call i32 @fts5StorageGetStmt(%struct.TYPE_7__* %45, i32 %46, i32** %9, i32 0)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @SQLITE_OK, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %44
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @sqlite3_bind_int64(i32* %52, i32 1, i32 %53)
  %55 = load i32*, i32** %9, align 8
  %56 = call i32 @sqlite3_step(i32* %55)
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @sqlite3_reset(i32* %57)
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %51, %44
  br label %60

60:                                               ; preds = %59, %39, %35
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @FTS5_CONTENT_NORMAL, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %87

66:                                               ; preds = %60
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @SQLITE_OK, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %72 = load i32, i32* @FTS5_STMT_DELETE_CONTENT, align 4
  %73 = call i32 @fts5StorageGetStmt(%struct.TYPE_7__* %71, i32 %72, i32** %9, i32 0)
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %70, %66
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @SQLITE_OK, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %74
  %79 = load i32*, i32** %9, align 8
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @sqlite3_bind_int64(i32* %79, i32 1, i32 %80)
  %82 = load i32*, i32** %9, align 8
  %83 = call i32 @sqlite3_step(i32* %82)
  %84 = load i32*, i32** %9, align 8
  %85 = call i32 @sqlite3_reset(i32* %84)
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %78, %74
  br label %87

87:                                               ; preds = %86, %60
  %88 = load i32, i32* %8, align 4
  ret i32 %88
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fts5StorageLoadTotals(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @fts5StorageDeleteFromIndex(%struct.TYPE_7__*, i32, i32**) #1

declare dso_local i32 @fts5StorageGetStmt(%struct.TYPE_7__*, i32, i32**, i32) #1

declare dso_local i32 @sqlite3_bind_int64(i32*, i32, i32) #1

declare dso_local i32 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
