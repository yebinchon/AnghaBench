; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_storage.c_sqlite3Fts5StorageRebuild.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_storage.c_sqlite3Fts5StorageRebuild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32*, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i64* }
%struct.TYPE_19__ = type { i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i64, i64, %struct.TYPE_16__* }

@SQLITE_OK = common dso_local global i32 0, align 4
@FTS5_STMT_SCAN = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i64 0, align 8
@FTS5_TOKENIZE_DOCUMENT = common dso_local global i32 0, align 4
@fts5StorageInsertCallback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3Fts5StorageRebuild(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_19__, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_17__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %10 = bitcast %struct.TYPE_19__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 16, i1 false)
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  store %struct.TYPE_18__* %13, %struct.TYPE_18__** %4, align 8
  store i32* null, i32** %5, align 8
  %14 = call i32 @memset(%struct.TYPE_17__* %6, i32 0, i32 24)
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 2
  store %struct.TYPE_16__* %15, %struct.TYPE_16__** %16, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %18 = call i32 @sqlite3Fts5StorageDeleteAll(%struct.TYPE_16__* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @SQLITE_OK, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %24 = call i32 @fts5StorageLoadTotals(%struct.TYPE_16__* %23, i32 1)
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %22, %1
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @SQLITE_OK, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %31 = load i32, i32* @FTS5_STMT_SCAN, align 4
  %32 = call i32 @fts5StorageGetStmt(%struct.TYPE_16__* %30, i32 %31, i32** %5, i32 0)
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %29, %25
  br label %34

34:                                               ; preds = %129, %33
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @SQLITE_OK, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load i64, i64* @SQLITE_ROW, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = call i64 @sqlite3_step(i32* %40)
  %42 = icmp eq i64 %39, %41
  br label %43

43:                                               ; preds = %38, %34
  %44 = phi i1 [ false, %34 ], [ %42, %38 ]
  br i1 %44, label %45, label %130

45:                                               ; preds = %43
  %46 = load i32*, i32** %5, align 8
  %47 = call i64 @sqlite3_column_int64(i32* %46, i32 0)
  store i64 %47, i64* %9, align 8
  %48 = call i32 @sqlite3Fts5BufferZero(%struct.TYPE_19__* %3)
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i64, i64* %9, align 8
  %53 = call i32 @sqlite3Fts5IndexBeginWrite(i32 %51, i32 0, i64 %52)
  store i32 %53, i32* %7, align 4
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %113, %45
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @SQLITE_OK, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ult i64 %61, %64
  br label %66

66:                                               ; preds = %59, %55
  %67 = phi i1 [ false, %55 ], [ %65, %59 ]
  br i1 %67, label %68, label %117

68:                                               ; preds = %66
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  store i64 0, i64* %69, align 8
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 1
  %72 = load i64*, i64** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %97

78:                                               ; preds = %68
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %80 = load i32, i32* @FTS5_TOKENIZE_DOCUMENT, align 4
  %81 = load i32*, i32** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = add i64 %83, 1
  %85 = trunc i64 %84 to i32
  %86 = call i64 @sqlite3_column_text(i32* %81, i32 %85)
  %87 = inttoptr i64 %86 to i8*
  %88 = load i32*, i32** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = add i64 %90, 1
  %92 = trunc i64 %91 to i32
  %93 = call i32 @sqlite3_column_bytes(i32* %88, i32 %92)
  %94 = bitcast %struct.TYPE_17__* %6 to i8*
  %95 = load i32, i32* @fts5StorageInsertCallback, align 4
  %96 = call i32 @sqlite3Fts5Tokenize(%struct.TYPE_18__* %79, i32 %80, i8* %87, i32 %93, i8* %94, i32 %95)
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %78, %68
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @sqlite3Fts5BufferAppendVarint(i32* %7, %struct.TYPE_19__* %3, i64 %99)
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %110, %102
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %108, align 4
  br label %113

113:                                              ; preds = %97
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %114, align 8
  br label %55

117:                                              ; preds = %66
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 8
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* @SQLITE_OK, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %117
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %127 = load i64, i64* %9, align 8
  %128 = call i32 @fts5StorageInsertDocsize(%struct.TYPE_16__* %126, i64 %127, %struct.TYPE_19__* %3)
  store i32 %128, i32* %7, align 4
  br label %129

129:                                              ; preds = %125, %117
  br label %34

130:                                              ; preds = %43
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %3, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @sqlite3_free(i32 %132)
  %134 = load i32*, i32** %5, align 8
  %135 = call i32 @sqlite3_reset(i32* %134)
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* @SQLITE_OK, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %130
  %140 = load i32, i32* %8, align 4
  store i32 %140, i32* %7, align 4
  br label %141

141:                                              ; preds = %139, %130
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* @SQLITE_OK, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %141
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %147 = call i32 @fts5StorageSaveTotals(%struct.TYPE_16__* %146)
  store i32 %147, i32* %7, align 4
  br label %148

148:                                              ; preds = %145, %141
  %149 = load i32, i32* %7, align 4
  ret i32 %149
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.TYPE_17__*, i32, i32) #2

declare dso_local i32 @sqlite3Fts5StorageDeleteAll(%struct.TYPE_16__*) #2

declare dso_local i32 @fts5StorageLoadTotals(%struct.TYPE_16__*, i32) #2

declare dso_local i32 @fts5StorageGetStmt(%struct.TYPE_16__*, i32, i32**, i32) #2

declare dso_local i64 @sqlite3_step(i32*) #2

declare dso_local i64 @sqlite3_column_int64(i32*, i32) #2

declare dso_local i32 @sqlite3Fts5BufferZero(%struct.TYPE_19__*) #2

declare dso_local i32 @sqlite3Fts5IndexBeginWrite(i32, i32, i64) #2

declare dso_local i32 @sqlite3Fts5Tokenize(%struct.TYPE_18__*, i32, i8*, i32, i8*, i32) #2

declare dso_local i64 @sqlite3_column_text(i32*, i32) #2

declare dso_local i32 @sqlite3_column_bytes(i32*, i32) #2

declare dso_local i32 @sqlite3Fts5BufferAppendVarint(i32*, %struct.TYPE_19__*, i64) #2

declare dso_local i32 @fts5StorageInsertDocsize(%struct.TYPE_16__*, i64, %struct.TYPE_19__*) #2

declare dso_local i32 @sqlite3_free(i32) #2

declare dso_local i32 @sqlite3_reset(i32*) #2

declare dso_local i32 @fts5StorageSaveTotals(%struct.TYPE_16__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
