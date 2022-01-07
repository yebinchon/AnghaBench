; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_storage.c_fts5StorageDeleteFromIndex.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_storage.c_fts5StorageDeleteFromIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32*, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i64* }
%struct.TYPE_8__ = type { i32, i64, %struct.TYPE_7__* }

@FTS5_STMT_LOOKUP = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i64 0, align 8
@FTS5_TOKENIZE_DOCUMENT = common dso_local global i32 0, align 4
@fts5StorageInsertCallback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i64, i32**)* @fts5StorageDeleteFromIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5StorageDeleteFromIndex(%struct.TYPE_7__* %0, i64 %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32** %2, i32*** %7, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %8, align 8
  store i32* null, i32** %9, align 8
  %19 = load i32**, i32*** %7, align 8
  %20 = icmp eq i32** %19, null
  br i1 %20, label %21, label %42

21:                                               ; preds = %3
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = load i32, i32* @FTS5_STMT_LOOKUP, align 4
  %24 = call i32 @fts5StorageGetStmt(%struct.TYPE_7__* %22, i32 %23, i32** %9, i32 0)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @SQLITE_OK, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %4, align 4
  br label %140

30:                                               ; preds = %21
  %31 = load i32*, i32** %9, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @sqlite3_bind_int64(i32* %31, i32 1, i64 %32)
  %34 = load i32*, i32** %9, align 8
  %35 = call i64 @sqlite3_step(i32* %34)
  %36 = load i64, i64* @SQLITE_ROW, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 @sqlite3_reset(i32* %39)
  store i32 %40, i32* %4, align 4
  br label %140

41:                                               ; preds = %30
  br label %42

42:                                               ; preds = %41, %3
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  store %struct.TYPE_7__* %43, %struct.TYPE_7__** %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store i32 -1, i32* %45, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @sqlite3Fts5IndexBeginWrite(i32 %48, i32 1, i64 %49)
  store i32 %50, i32* %10, align 4
  store i32 1, i32* %12, align 4
  br label %51

51:                                               ; preds = %123, %42
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @SQLITE_OK, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load i32, i32* %12, align 4
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp sle i32 %56, %59
  br label %61

61:                                               ; preds = %55, %51
  %62 = phi i1 [ false, %51 ], [ %60, %55 ]
  br i1 %62, label %63, label %126

63:                                               ; preds = %61
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %66, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %122

73:                                               ; preds = %63
  %74 = load i32*, i32** %9, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = load i32*, i32** %9, align 8
  %78 = load i32, i32* %12, align 4
  %79 = call i64 @sqlite3_column_text(i32* %77, i32 %78)
  %80 = inttoptr i64 %79 to i8*
  store i8* %80, i8** %14, align 8
  %81 = load i32*, i32** %9, align 8
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @sqlite3_column_bytes(i32* %81, i32 %82)
  store i32 %83, i32* %15, align 4
  br label %100

84:                                               ; preds = %73
  %85 = load i32**, i32*** %7, align 8
  %86 = load i32, i32* %12, align 4
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32*, i32** %85, i64 %88
  %90 = load i32*, i32** %89, align 8
  %91 = call i64 @sqlite3_value_text(i32* %90)
  %92 = inttoptr i64 %91 to i8*
  store i8* %92, i8** %14, align 8
  %93 = load i32**, i32*** %7, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sub nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32*, i32** %93, i64 %96
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @sqlite3_value_bytes(i32* %98)
  store i32 %99, i32* %15, align 4
  br label %100

100:                                              ; preds = %84, %76
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  store i64 0, i64* %101, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %103 = load i32, i32* @FTS5_TOKENIZE_DOCUMENT, align 4
  %104 = load i8*, i8** %14, align 8
  %105 = load i32, i32* %15, align 4
  %106 = bitcast %struct.TYPE_8__* %13 to i8*
  %107 = load i32, i32* @fts5StorageInsertCallback, align 4
  %108 = call i32 @sqlite3Fts5Tokenize(%struct.TYPE_9__* %102, i32 %103, i8* %104, i32 %105, i8* %106, i32 %107)
  store i32 %108, i32* %10, align 4
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %12, align 4
  %115 = sub nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = sub nsw i64 %119, %110
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %117, align 4
  br label %122

122:                                              ; preds = %100, %63
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %12, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %12, align 4
  br label %51

126:                                              ; preds = %61
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* %128, align 8
  %131 = load i32*, i32** %9, align 8
  %132 = call i32 @sqlite3_reset(i32* %131)
  store i32 %132, i32* %11, align 4
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* @SQLITE_OK, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %126
  %137 = load i32, i32* %11, align 4
  store i32 %137, i32* %10, align 4
  br label %138

138:                                              ; preds = %136, %126
  %139 = load i32, i32* %10, align 4
  store i32 %139, i32* %4, align 4
  br label %140

140:                                              ; preds = %138, %38, %28
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local i32 @fts5StorageGetStmt(%struct.TYPE_7__*, i32, i32**, i32) #1

declare dso_local i32 @sqlite3_bind_int64(i32*, i32, i64) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_reset(i32*) #1

declare dso_local i32 @sqlite3Fts5IndexBeginWrite(i32, i32, i64) #1

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

declare dso_local i32 @sqlite3_column_bytes(i32*, i32) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i32 @sqlite3_value_bytes(i32*) #1

declare dso_local i32 @sqlite3Fts5Tokenize(%struct.TYPE_9__*, i32, i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
