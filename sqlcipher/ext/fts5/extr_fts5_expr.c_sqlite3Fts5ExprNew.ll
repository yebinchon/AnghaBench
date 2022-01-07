; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_expr.c_sqlite3Fts5ExprNew.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_expr.c_sqlite3Fts5ExprNew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32, i64, %struct.TYPE_19__*, i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i64, i8*, i64, %struct.TYPE_17__*, i32, %struct.TYPE_19__* }
%struct.TYPE_20__ = type { i32, i32* }

@fts5ParseAlloc = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i64 0, align 8
@FTS5_EOF = common dso_local global i32 0, align 4
@fts5ParseFree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3Fts5ExprNew(%struct.TYPE_19__* %0, i32 %1, i8* %2, %struct.TYPE_18__** %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_18__**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.TYPE_16__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_18__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_20__*, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store %struct.TYPE_18__** %3, %struct.TYPE_18__*** %10, align 8
  store i8** %4, i8*** %11, align 8
  %21 = load i8*, i8** %9, align 8
  store i8* %21, i8** %14, align 8
  %22 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %10, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %22, align 8
  %23 = load i8**, i8*** %11, align 8
  store i8* null, i8** %23, align 8
  %24 = call i32 @memset(%struct.TYPE_16__* %12, i32 0, i32 48)
  %25 = load i32, i32* @fts5ParseAlloc, align 4
  %26 = call i8* @sqlite3Fts5ParserAlloc(i32 %25)
  store i8* %26, i8** %16, align 8
  %27 = load i8*, i8** %16, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %5
  %30 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %30, i32* %6, align 4
  br label %173

31:                                               ; preds = %5
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 5
  store %struct.TYPE_19__* %32, %struct.TYPE_19__** %33, align 8
  br label %34

34:                                               ; preds = %49, %31
  %35 = call i32 @fts5ExprGetToken(%struct.TYPE_16__* %12, i8** %14, i32* %13)
  store i32 %35, i32* %15, align 4
  %36 = load i8*, i8** %16, align 8
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* %13, align 4
  %39 = call i32 @sqlite3Fts5Parser(i8* %36, i32 %37, i32 %38, %struct.TYPE_16__* %12)
  br label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SQLITE_OK, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* @FTS5_EOF, align 4
  %48 = icmp ne i32 %46, %47
  br label %49

49:                                               ; preds = %45, %40
  %50 = phi i1 [ false, %40 ], [ %48, %45 ]
  br i1 %50, label %34, label %51

51:                                               ; preds = %49
  %52 = load i8*, i8** %16, align 8
  %53 = load i32, i32* @fts5ParseFree, align 4
  %54 = call i32 @sqlite3Fts5ParserFree(i8* %52, i32 %53)
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %89

60:                                               ; preds = %51
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 3
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %61, align 8
  %63 = icmp ne %struct.TYPE_17__* %62, null
  br i1 %63, label %64, label %89

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @SQLITE_OK, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %89

69:                                               ; preds = %64
  store i32 16, i32* %18, align 4
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %71 = load i32, i32* %18, align 4
  %72 = call i64 @sqlite3Fts5MallocZero(i64* %70, i32 %71)
  %73 = inttoptr i64 %72 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %73, %struct.TYPE_20__** %19, align 8
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %75 = icmp ne %struct.TYPE_20__* %74, null
  br i1 %75, label %76, label %88

76:                                               ; preds = %69
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  store i32 %79, i32* %83, align 4
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 3
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %84, align 8
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %87 = call i32 @sqlite3Fts5ParseSetColset(%struct.TYPE_16__* %12, %struct.TYPE_17__* %85, %struct.TYPE_20__* %86)
  br label %88

88:                                               ; preds = %76, %69
  br label %89

89:                                               ; preds = %88, %64, %60, %51
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @SQLITE_OK, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %98, label %94

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = icmp eq i8* %96, null
  br label %98

98:                                               ; preds = %94, %89
  %99 = phi i1 [ true, %89 ], [ %97, %94 ]
  %100 = zext i1 %99 to i32
  %101 = call i32 @assert(i32 %100)
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @SQLITE_OK, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %159

106:                                              ; preds = %98
  %107 = call %struct.TYPE_18__* @sqlite3_malloc(i32 40)
  store %struct.TYPE_18__* %107, %struct.TYPE_18__** %17, align 8
  %108 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %10, align 8
  store %struct.TYPE_18__* %107, %struct.TYPE_18__** %108, align 8
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %110 = icmp eq %struct.TYPE_18__* %109, null
  br i1 %110, label %111, label %118

111:                                              ; preds = %106
  %112 = load i32, i32* @SQLITE_NOMEM, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  store i64 %113, i64* %114, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 3
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %115, align 8
  %117 = call i32 @sqlite3Fts5ParseNodeFree(%struct.TYPE_17__* %116)
  br label %158

118:                                              ; preds = %106
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 3
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %119, align 8
  %121 = icmp ne %struct.TYPE_17__* %120, null
  br i1 %121, label %138, label %122

122:                                              ; preds = %118
  store i32 4, i32* %20, align 4
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %124 = call i64 @sqlite3Fts5MallocZero(i64* %123, i32 4)
  %125 = inttoptr i64 %124 to %struct.TYPE_17__*
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 4
  store %struct.TYPE_17__* %125, %struct.TYPE_17__** %127, align 8
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 4
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %129, align 8
  %131 = icmp ne %struct.TYPE_17__* %130, null
  br i1 %131, label %132, label %137

132:                                              ; preds = %122
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 4
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 0
  store i32 1, i32* %136, align 4
  br label %137

137:                                              ; preds = %132, %122
  br label %143

138:                                              ; preds = %118
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 3
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %139, align 8
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 4
  store %struct.TYPE_17__* %140, %struct.TYPE_17__** %142, align 8
  br label %143

143:                                              ; preds = %138, %137
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 3
  store i64 0, i64* %145, align 8
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 2
  store %struct.TYPE_19__* %146, %struct.TYPE_19__** %148, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 1
  store i64 %150, i64* %152, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 2
  store i64 0, i64* %157, align 8
  br label %158

158:                                              ; preds = %143, %111
  br label %163

159:                                              ; preds = %98
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 3
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %160, align 8
  %162 = call i32 @sqlite3Fts5ParseNodeFree(%struct.TYPE_17__* %161)
  br label %163

163:                                              ; preds = %159, %158
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = call i32 @sqlite3_free(i64 %165)
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 1
  %168 = load i8*, i8** %167, align 8
  %169 = load i8**, i8*** %11, align 8
  store i8* %168, i8** %169, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = trunc i64 %171 to i32
  store i32 %172, i32* %6, align 4
  br label %173

173:                                              ; preds = %163, %29
  %174 = load i32, i32* %6, align 4
  ret i32 %174
}

declare dso_local i32 @memset(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i8* @sqlite3Fts5ParserAlloc(i32) #1

declare dso_local i32 @fts5ExprGetToken(%struct.TYPE_16__*, i8**, i32*) #1

declare dso_local i32 @sqlite3Fts5Parser(i8*, i32, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @sqlite3Fts5ParserFree(i8*, i32) #1

declare dso_local i64 @sqlite3Fts5MallocZero(i64*, i32) #1

declare dso_local i32 @sqlite3Fts5ParseSetColset(%struct.TYPE_16__*, %struct.TYPE_17__*, %struct.TYPE_20__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_18__* @sqlite3_malloc(i32) #1

declare dso_local i32 @sqlite3Fts5ParseNodeFree(%struct.TYPE_17__*) #1

declare dso_local i32 @sqlite3_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
