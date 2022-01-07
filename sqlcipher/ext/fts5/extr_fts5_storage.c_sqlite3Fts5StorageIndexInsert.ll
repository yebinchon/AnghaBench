; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_storage.c_sqlite3Fts5StorageIndexInsert.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_storage.c_sqlite3Fts5StorageIndexInsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32*, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i64* }
%struct.TYPE_13__ = type { i64, i64, %struct.TYPE_12__* }
%struct.TYPE_15__ = type { i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@FTS5_TOKENIZE_DOCUMENT = common dso_local global i32 0, align 4
@fts5StorageInsertCallback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3Fts5StorageIndexInsert(%struct.TYPE_12__* %0, i32** %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__, align 8
  %10 = alloca %struct.TYPE_15__, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  store %struct.TYPE_14__* %13, %struct.TYPE_14__** %7, align 8
  %14 = load i32, i32* @SQLITE_OK, align 4
  store i32 %14, i32* %8, align 4
  %15 = call i32 @memset(%struct.TYPE_15__* %10, i32 0, i32 4)
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 2
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %17, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = call i32 @fts5StorageLoadTotals(%struct.TYPE_12__* %18, i32 1)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @SQLITE_OK, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @sqlite3Fts5IndexBeginWrite(i32 %26, i32 0, i64 %27)
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %23, %3
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %91, %29
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @SQLITE_OK, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ult i64 %37, %40
  br label %42

42:                                               ; preds = %35, %31
  %43 = phi i1 [ false, %31 ], [ %41, %35 ]
  br i1 %43, label %44, label %95

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %75

54:                                               ; preds = %44
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %56 = load i32, i32* @FTS5_TOKENIZE_DOCUMENT, align 4
  %57 = load i32**, i32*** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add i64 %59, 2
  %61 = getelementptr inbounds i32*, i32** %57, i64 %60
  %62 = load i32*, i32** %61, align 8
  %63 = call i64 @sqlite3_value_text(i32* %62)
  %64 = inttoptr i64 %63 to i8*
  %65 = load i32**, i32*** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add i64 %67, 2
  %69 = getelementptr inbounds i32*, i32** %65, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @sqlite3_value_bytes(i32* %70)
  %72 = bitcast %struct.TYPE_13__* %9 to i8*
  %73 = load i32, i32* @fts5StorageInsertCallback, align 4
  %74 = call i32 @sqlite3Fts5Tokenize(%struct.TYPE_14__* %55, i32 %56, i8* %64, i32 %71, i8* %72, i32 %73)
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %54, %44
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @sqlite3Fts5BufferAppendVarint(i32* %8, %struct.TYPE_15__* %10, i64 %77)
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %88, %80
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %86, align 4
  br label %91

91:                                               ; preds = %75
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %92, align 8
  br label %31

95:                                               ; preds = %42
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 8
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* @SQLITE_OK, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %95
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %105 = load i64, i64* %6, align 8
  %106 = call i32 @fts5StorageInsertDocsize(%struct.TYPE_12__* %104, i64 %105, %struct.TYPE_15__* %10)
  store i32 %106, i32* %8, align 4
  br label %107

107:                                              ; preds = %103, %95
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @sqlite3_free(i32 %109)
  %111 = load i32, i32* %8, align 4
  ret i32 %111
}

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @fts5StorageLoadTotals(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @sqlite3Fts5IndexBeginWrite(i32, i32, i64) #1

declare dso_local i32 @sqlite3Fts5Tokenize(%struct.TYPE_14__*, i32, i8*, i32, i8*, i32) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i32 @sqlite3_value_bytes(i32*) #1

declare dso_local i32 @sqlite3Fts5BufferAppendVarint(i32*, %struct.TYPE_15__*, i64) #1

declare dso_local i32 @fts5StorageInsertDocsize(%struct.TYPE_12__*, i64, %struct.TYPE_15__*) #1

declare dso_local i32 @sqlite3_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
