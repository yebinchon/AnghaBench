; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_storage.c_sqlite3Fts5StorageContentInsert.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_storage.c_sqlite3Fts5StorageContentInsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@FTS5_CONTENT_NORMAL = common dso_local global i64 0, align 8
@SQLITE_INTEGER = common dso_local global i64 0, align 8
@FTS5_STMT_INSERT_CONTENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3Fts5StorageContentInsert(%struct.TYPE_6__* %0, i32** %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %7, align 8
  %14 = load i32, i32* @SQLITE_OK, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @FTS5_CONTENT_NORMAL, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %3
  %21 = load i32**, i32*** %5, align 8
  %22 = getelementptr inbounds i32*, i32** %21, i64 1
  %23 = load i32*, i32** %22, align 8
  %24 = call i64 @sqlite3_value_type(i32* %23)
  %25 = load i64, i64* @SQLITE_INTEGER, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load i32**, i32*** %5, align 8
  %29 = getelementptr inbounds i32*, i32** %28, i64 1
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @sqlite3_value_int64(i32* %30)
  %32 = load i32*, i32** %6, align 8
  store i32 %31, i32* %32, align 4
  br label %37

33:                                               ; preds = %20
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @fts5StorageNewRowid(%struct.TYPE_6__* %34, i32* %35)
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %33, %27
  br label %82

38:                                               ; preds = %3
  store i32* null, i32** %9, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = load i32, i32* @FTS5_STMT_INSERT_CONTENT, align 4
  %41 = call i32 @fts5StorageGetStmt(%struct.TYPE_6__* %39, i32 %40, i32** %9, i32 0)
  store i32 %41, i32* %8, align 4
  store i32 1, i32* %10, align 4
  br label %42

42:                                               ; preds = %64, %38
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @SQLITE_OK, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  %52 = icmp sle i32 %47, %51
  br label %53

53:                                               ; preds = %46, %42
  %54 = phi i1 [ false, %42 ], [ %52, %46 ]
  br i1 %54, label %55, label %67

55:                                               ; preds = %53
  %56 = load i32*, i32** %9, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load i32**, i32*** %5, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32*, i32** %58, i64 %60
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @sqlite3_bind_value(i32* %56, i32 %57, i32* %62)
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %55
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %42

67:                                               ; preds = %53
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @SQLITE_OK, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load i32*, i32** %9, align 8
  %73 = call i32 @sqlite3_step(i32* %72)
  %74 = load i32*, i32** %9, align 8
  %75 = call i32 @sqlite3_reset(i32* %74)
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %71, %67
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @sqlite3_last_insert_rowid(i32 %79)
  %81 = load i32*, i32** %6, align 8
  store i32 %80, i32* %81, align 4
  br label %82

82:                                               ; preds = %76, %37
  %83 = load i32, i32* %8, align 4
  ret i32 %83
}

declare dso_local i64 @sqlite3_value_type(i32*) #1

declare dso_local i32 @sqlite3_value_int64(i32*) #1

declare dso_local i32 @fts5StorageNewRowid(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @fts5StorageGetStmt(%struct.TYPE_6__*, i32, i32**, i32) #1

declare dso_local i32 @sqlite3_bind_value(i32*, i32, i32*) #1

declare dso_local i32 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_reset(i32*) #1

declare dso_local i32 @sqlite3_last_insert_rowid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
