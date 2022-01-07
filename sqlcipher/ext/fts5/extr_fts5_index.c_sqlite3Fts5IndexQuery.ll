; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_sqlite3Fts5IndexQuery.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_sqlite3Fts5IndexQuery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64, i32, i32* }
%struct.TYPE_22__ = type { i64, i32 (%struct.TYPE_22__*, %struct.TYPE_21__*)*, %struct.TYPE_20__*, %struct.TYPE_21__* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_25__ = type { i64*, i32, i32, i32 }

@FTS5INDEX_QUERY_SCAN = common dso_local global i32 0, align 4
@FTS5INDEX_QUERY_PREFIX = common dso_local global i32 0, align 4
@FTS5_MAIN_PREFIX = common dso_local global i64 0, align 8
@FTS5INDEX_QUERY_SKIPEMPTY = common dso_local global i32 0, align 4
@FTS5INDEX_QUERY_DESC = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i64 0, align 8
@FTS5INDEX_QUERY_TEST_NOIDX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3Fts5IndexQuery(%struct.TYPE_23__* %0, i8* %1, i32 %2, i32 %3, i32* %4, i32** %5) #0 {
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca %struct.TYPE_24__*, align 8
  %14 = alloca %struct.TYPE_22__*, align 8
  %15 = alloca %struct.TYPE_25__, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32** %5, i32*** %12, align 8
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  store %struct.TYPE_24__* %23, %struct.TYPE_24__** %13, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %14, align 8
  %24 = bitcast %struct.TYPE_25__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %24, i8 0, i64 24, i1 false)
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @FTS5INDEX_QUERY_SCAN, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %6
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @FTS5INDEX_QUERY_SCAN, align 4
  %32 = icmp eq i32 %30, %31
  br label %33

33:                                               ; preds = %29, %6
  %34 = phi i1 [ true, %6 ], [ %32, %29 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i32 0, i32 0
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 1
  %41 = call i64 @sqlite3Fts5BufferSize(i64* %38, %struct.TYPE_25__* %15, i32 %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %199

43:                                               ; preds = %33
  store i32 0, i32* %16, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 1
  %50 = load i8*, i8** %8, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @memcpy(i64* %49, i8* %50, i32 %51)
  br label %53

53:                                               ; preds = %46, %43
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @FTS5INDEX_QUERY_PREFIX, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %85

58:                                               ; preds = %53
  %59 = load i8*, i8** %8, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @fts5IndexCharlen(i8* %59, i32 %60)
  store i32 %61, i32* %17, align 4
  store i32 1, i32* %16, align 4
  br label %62

62:                                               ; preds = %81, %58
  %63 = load i32, i32* %16, align 4
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp sle i32 %63, %66
  br i1 %67, label %68, label %84

68:                                               ; preds = %62
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %16, align 4
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %17, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %68
  br label %84

80:                                               ; preds = %68
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %16, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %16, align 4
  br label %62

84:                                               ; preds = %79, %62
  br label %85

85:                                               ; preds = %84, %53
  %86 = load i32, i32* %16, align 4
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = icmp sle i32 %86, %89
  br i1 %90, label %91, label %118

91:                                               ; preds = %85
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %93 = call i32* @fts5StructureRead(%struct.TYPE_23__* %92)
  store i32* %93, i32** %18, align 8
  %94 = load i64, i64* @FTS5_MAIN_PREFIX, align 8
  %95 = load i32, i32* %16, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %94, %96
  %98 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 0
  %99 = load i64*, i64** %98, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 0
  store i64 %97, i64* %100, align 8
  %101 = load i32*, i32** %18, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %117

103:                                              ; preds = %91
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %105 = load i32*, i32** %18, align 8
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* @FTS5INDEX_QUERY_SKIPEMPTY, align 4
  %108 = or i32 %106, %107
  %109 = load i32*, i32** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 0
  %111 = load i64*, i64** %110, align 8
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, 1
  %114 = call i32 @fts5MultiIterNew(%struct.TYPE_23__* %104, i32* %105, i32 %108, i32* %109, i64* %111, i32 %113, i32 -1, i32 0, %struct.TYPE_22__** %14)
  %115 = load i32*, i32** %18, align 8
  %116 = call i32 @fts5StructureRelease(i32* %115)
  br label %117

117:                                              ; preds = %103, %91
  br label %183

118:                                              ; preds = %85
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* @FTS5INDEX_QUERY_DESC, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  %123 = zext i1 %122 to i32
  store i32 %123, i32* %19, align 4
  %124 = load i64, i64* @FTS5_MAIN_PREFIX, align 8
  %125 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 0
  %126 = load i64*, i64** %125, align 8
  %127 = getelementptr inbounds i64, i64* %126, i64 0
  store i64 %124, i64* %127, align 8
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %129 = load i32, i32* %19, align 4
  %130 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 0
  %131 = load i64*, i64** %130, align 8
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, 1
  %134 = load i32*, i32** %11, align 8
  %135 = call i32 @fts5SetupPrefixIter(%struct.TYPE_23__* %128, i32 %129, i64* %131, i32 %133, i32* %134, %struct.TYPE_22__** %14)
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @SQLITE_OK, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %146, label %141

141:                                              ; preds = %118
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp eq i64 %144, 0
  br label %146

146:                                              ; preds = %141, %118
  %147 = phi i1 [ true, %118 ], [ %145, %141 ]
  %148 = zext i1 %147 to i32
  %149 = call i32 @assert(i32 %148)
  %150 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %153 = call i32 @fts5IterSetOutputCb(i64* %151, %struct.TYPE_22__* %152)
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @SQLITE_OK, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %182

159:                                              ; preds = %146
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i32 0, i32 3
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %161, align 8
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 2
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i64 1
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i64 %168
  store %struct.TYPE_21__* %169, %struct.TYPE_21__** %20, align 8
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %171 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %181

174:                                              ; preds = %159
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %175, i32 0, i32 1
  %177 = load i32 (%struct.TYPE_22__*, %struct.TYPE_21__*)*, i32 (%struct.TYPE_22__*, %struct.TYPE_21__*)** %176, align 8
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %180 = call i32 %177(%struct.TYPE_22__* %178, %struct.TYPE_21__* %179)
  br label %181

181:                                              ; preds = %174, %159
  br label %182

182:                                              ; preds = %181, %146
  br label %183

183:                                              ; preds = %182, %117
  %184 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %183
  %189 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %190 = bitcast %struct.TYPE_22__* %189 to i32*
  %191 = call i32 @sqlite3Fts5IterClose(i32* %190)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %14, align 8
  %192 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %193 = call i32 @fts5CloseReader(%struct.TYPE_23__* %192)
  br label %194

194:                                              ; preds = %188, %183
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %196 = bitcast %struct.TYPE_22__* %195 to i32*
  %197 = load i32**, i32*** %12, align 8
  store i32* %196, i32** %197, align 8
  %198 = call i32 @sqlite3Fts5BufferFree(%struct.TYPE_25__* %15)
  br label %199

199:                                              ; preds = %194, %33
  %200 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %201 = call i32 @fts5IndexReturn(%struct.TYPE_23__* %200)
  ret i32 %201
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @sqlite3Fts5BufferSize(i64*, %struct.TYPE_25__*, i32) #2

declare dso_local i32 @memcpy(i64*, i8*, i32) #2

declare dso_local i32 @fts5IndexCharlen(i8*, i32) #2

declare dso_local i32* @fts5StructureRead(%struct.TYPE_23__*) #2

declare dso_local i32 @fts5MultiIterNew(%struct.TYPE_23__*, i32*, i32, i32*, i64*, i32, i32, i32, %struct.TYPE_22__**) #2

declare dso_local i32 @fts5StructureRelease(i32*) #2

declare dso_local i32 @fts5SetupPrefixIter(%struct.TYPE_23__*, i32, i64*, i32, i32*, %struct.TYPE_22__**) #2

declare dso_local i32 @fts5IterSetOutputCb(i64*, %struct.TYPE_22__*) #2

declare dso_local i32 @sqlite3Fts5IterClose(i32*) #2

declare dso_local i32 @fts5CloseReader(%struct.TYPE_23__*) #2

declare dso_local i32 @sqlite3Fts5BufferFree(%struct.TYPE_25__*) #2

declare dso_local i32 @fts5IndexReturn(%struct.TYPE_23__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
