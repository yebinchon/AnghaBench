; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_expr.c_sqlite3Fts5ParseTerm.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_expr.c_sqlite3Fts5ParseTerm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_16__**, i32* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_16__* }

@SQLITE_OK = common dso_local global i32 0, align 4
@FTS5_TOKENIZE_QUERY = common dso_local global i32 0, align 4
@FTS5_TOKENIZE_PREFIX = common dso_local global i32 0, align 4
@fts5ParseTokenize = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_16__* @sqlite3Fts5ParseTerm(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_14__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_16__**, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %10, align 8
  store i8* null, i8** %13, align 8
  %21 = call i32 @memset(%struct.TYPE_14__* %11, i32 0, i32 16)
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  store %struct.TYPE_16__* %22, %struct.TYPE_16__** %23, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @fts5ParseStringFromToken(i32* %24, i8** %13)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @SQLITE_OK, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %4
  %30 = load i32, i32* @FTS5_TOKENIZE_QUERY, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @FTS5_TOKENIZE_PREFIX, align 4
  br label %36

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35, %33
  %37 = phi i32 [ %34, %33 ], [ 0, %35 ]
  %38 = or i32 %30, %37
  store i32 %38, i32* %14, align 4
  %39 = load i8*, i8** %13, align 8
  %40 = call i32 @sqlite3Fts5Dequote(i8* %39)
  %41 = load i8*, i8** %13, align 8
  %42 = call i64 @strlen(i8* %41)
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %15, align 4
  %44 = load i32*, i32** %10, align 8
  %45 = load i32, i32* %14, align 4
  %46 = load i8*, i8** %13, align 8
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* @fts5ParseTokenize, align 4
  %49 = call i32 @sqlite3Fts5Tokenize(i32* %44, i32 %45, i8* %46, i32 %47, %struct.TYPE_14__* %11, i32 %48)
  store i32 %49, i32* %12, align 4
  br label %50

50:                                               ; preds = %36, %4
  %51 = load i8*, i8** %13, align 8
  %52 = call i32 @sqlite3_free(i8* %51)
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %55, %50
  %60 = load i32, i32* %12, align 4
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %63, align 8
  %65 = call i32 @fts5ExprPhraseFree(%struct.TYPE_16__* %64)
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %66, align 8
  br label %151

67:                                               ; preds = %55
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %69 = icmp eq %struct.TYPE_16__* %68, null
  br i1 %69, label %70, label %108

70:                                               ; preds = %67
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = srem i32 %73, 8
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %103

76:                                               ; preds = %70
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 8
  %81 = sext i32 %80 to i64
  %82 = mul i64 8, %81
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %16, align 4
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %85, align 8
  %87 = load i32, i32* %16, align 4
  %88 = call i64 @sqlite3_realloc64(%struct.TYPE_16__** %86, i32 %87)
  %89 = inttoptr i64 %88 to %struct.TYPE_16__**
  store %struct.TYPE_16__** %89, %struct.TYPE_16__*** %17, align 8
  %90 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %17, align 8
  %91 = icmp eq %struct.TYPE_16__** %90, null
  br i1 %91, label %92, label %99

92:                                               ; preds = %76
  %93 = load i32, i32* @SQLITE_NOMEM, align 4
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %96, align 8
  %98 = call i32 @fts5ExprPhraseFree(%struct.TYPE_16__* %97)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %5, align 8
  br label %154

99:                                               ; preds = %76
  %100 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %17, align 8
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 2
  store %struct.TYPE_16__** %100, %struct.TYPE_16__*** %102, align 8
  br label %103

103:                                              ; preds = %99, %70
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %103, %67
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %109, align 8
  %111 = icmp eq %struct.TYPE_16__* %110, null
  br i1 %111, label %112, label %117

112:                                              ; preds = %108
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  %115 = call %struct.TYPE_16__* @sqlite3Fts5MallocZero(i32* %114, i32 16)
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  store %struct.TYPE_16__* %115, %struct.TYPE_16__** %116, align 8
  br label %139

117:                                              ; preds = %108
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %138

123:                                              ; preds = %117
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sub nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  store i64 %125, i64* %137, align 8
  br label %138

138:                                              ; preds = %123, %117
  br label %139

139:                                              ; preds = %138, %112
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %140, align 8
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 2
  %144 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %143, align 8
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = sub nsw i32 %147, 1
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %144, i64 %149
  store %struct.TYPE_16__* %141, %struct.TYPE_16__** %150, align 8
  br label %151

151:                                              ; preds = %139, %59
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %152, align 8
  store %struct.TYPE_16__* %153, %struct.TYPE_16__** %5, align 8
  br label %154

154:                                              ; preds = %151, %92
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  ret %struct.TYPE_16__* %155
}

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @fts5ParseStringFromToken(i32*, i8**) #1

declare dso_local i32 @sqlite3Fts5Dequote(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sqlite3Fts5Tokenize(i32*, i32, i8*, i32, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @fts5ExprPhraseFree(%struct.TYPE_16__*) #1

declare dso_local i64 @sqlite3_realloc64(%struct.TYPE_16__**, i32) #1

declare dso_local %struct.TYPE_16__* @sqlite3Fts5MallocZero(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
