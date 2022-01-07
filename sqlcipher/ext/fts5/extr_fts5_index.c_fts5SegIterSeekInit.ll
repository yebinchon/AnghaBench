; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5SegIterSeekInit.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5SegIterSeekInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i64, i32, i32, %struct.TYPE_19__* }

@FTS5INDEX_QUERY_SCAN = common dso_local global i32 0, align 4
@FTS5INDEX_QUERY_DESC = common dso_local global i32 0, align 4
@SQLITE_STATIC = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i64 0, align 8
@SQLITE_OK = common dso_local global i32 0, align 4
@FTS5_SEGITER_ONETERM = common dso_local global i32 0, align 4
@FTS5_SEGITER_REVERSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, i32*, i32, i32, %struct.TYPE_19__*, %struct.TYPE_20__*)* @fts5SegIterSeekInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fts5SegIterSeekInit(%struct.TYPE_21__* %0, i32* %1, i32 %2, i32 %3, %struct.TYPE_19__* %4, %struct.TYPE_20__* %5) #0 {
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_19__* %4, %struct.TYPE_19__** %11, align 8
  store %struct.TYPE_20__* %5, %struct.TYPE_20__** %12, align 8
  store i32 1, i32* %13, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @FTS5INDEX_QUERY_SCAN, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32* null, i32** %16, align 8
  %21 = load i32, i32* %14, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %6
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @FTS5INDEX_QUERY_DESC, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br label %28

28:                                               ; preds = %23, %6
  %29 = phi i1 [ true, %6 ], [ %27, %23 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i32*, i32** %8, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br label %37

37:                                               ; preds = %34, %28
  %38 = phi i1 [ false, %28 ], [ %36, %34 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %42 = call i32 @memset(%struct.TYPE_20__* %41, i32 0, i32 32)
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 4
  store %struct.TYPE_19__* %43, %struct.TYPE_19__** %45, align 8
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %47 = call i32* @fts5IdxSelectStmt(%struct.TYPE_21__* %46)
  store i32* %47, i32** %16, align 8
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %37
  br label %195

53:                                               ; preds = %37
  %54 = load i32*, i32** %16, align 8
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @sqlite3_bind_int(i32* %54, i32 1, i32 %57)
  %59 = load i32*, i32** %16, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @SQLITE_STATIC, align 4
  %63 = call i32 @sqlite3_bind_blob(i32* %59, i32 2, i32* %60, i32 %61, i32 %62)
  %64 = load i64, i64* @SQLITE_ROW, align 8
  %65 = load i32*, i32** %16, align 8
  %66 = call i64 @sqlite3_step(i32* %65)
  %67 = icmp eq i64 %64, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %53
  %69 = load i32*, i32** %16, align 8
  %70 = call i32 @sqlite3_column_int(i32* %69, i32 0)
  store i32 %70, i32* %17, align 4
  %71 = load i32, i32* %17, align 4
  %72 = ashr i32 %71, 1
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %17, align 4
  %74 = and i32 %73, 1
  store i32 %74, i32* %15, align 4
  br label %75

75:                                               ; preds = %68, %53
  %76 = load i32*, i32** %16, align 8
  %77 = call i32 @sqlite3_reset(i32* %76)
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  %80 = load i32*, i32** %16, align 8
  %81 = call i32 @sqlite3_bind_null(i32* %80, i32 2)
  %82 = load i32, i32* %13, align 4
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %75
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %13, align 4
  store i32 0, i32* %15, align 4
  br label %91

91:                                               ; preds = %87, %75
  %92 = load i32, i32* %13, align 4
  %93 = sub nsw i32 %92, 1
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %98 = call i32 @fts5SegIterNextPage(%struct.TYPE_21__* %96, %struct.TYPE_20__* %97)
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %91
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %105 = load i32, i32* %14, align 4
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %107 = load i32*, i32** %8, align 8
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @fts5LeafSeek(%struct.TYPE_21__* %104, i32 %105, %struct.TYPE_20__* %106, i32* %107, i32 %108)
  br label %110

110:                                              ; preds = %103, %91
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @SQLITE_OK, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %158

116:                                              ; preds = %110
  %117 = load i32, i32* %14, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %158

119:                                              ; preds = %116
  %120 = load i32, i32* @FTS5_SEGITER_ONETERM, align 4
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 4
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %157

129:                                              ; preds = %119
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* @FTS5INDEX_QUERY_DESC, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %129
  %135 = load i32, i32* @FTS5_SEGITER_REVERSE, align 4
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %134, %129
  %141 = load i32, i32* %15, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %140
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %146 = call i32 @fts5SegIterLoadDlidx(%struct.TYPE_21__* %144, %struct.TYPE_20__* %145)
  br label %147

147:                                              ; preds = %143, %140
  %148 = load i32, i32* %10, align 4
  %149 = load i32, i32* @FTS5INDEX_QUERY_DESC, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %147
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %155 = call i32 @fts5SegIterReverse(%struct.TYPE_21__* %153, %struct.TYPE_20__* %154)
  br label %156

156:                                              ; preds = %152, %147
  br label %157

157:                                              ; preds = %156, %119
  br label %158

158:                                              ; preds = %157, %116, %110
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %161 = call i32 @fts5SegIterSetNext(%struct.TYPE_21__* %159, %struct.TYPE_20__* %160)
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @SQLITE_OK, align 4
  %166 = icmp ne i32 %164, %165
  br i1 %166, label %191, label %167

167:                                              ; preds = %158
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %191, label %172

172:                                              ; preds = %167
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 2
  %175 = load i32*, i32** %8, align 8
  %176 = load i32, i32* %9, align 4
  %177 = call i64 @fts5BufferCompareBlob(i32* %174, i32* %175, i32 %176)
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %191, label %179

179:                                              ; preds = %172
  %180 = load i32, i32* %14, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %189

182:                                              ; preds = %179
  %183 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %184 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %183, i32 0, i32 2
  %185 = load i32*, i32** %8, align 8
  %186 = load i32, i32* %9, align 4
  %187 = call i64 @fts5BufferCompareBlob(i32* %184, i32* %185, i32 %186)
  %188 = icmp sgt i64 %187, 0
  br label %189

189:                                              ; preds = %182, %179
  %190 = phi i1 [ false, %179 ], [ %188, %182 ]
  br label %191

191:                                              ; preds = %189, %172, %167, %158
  %192 = phi i1 [ true, %172 ], [ true, %167 ], [ true, %158 ], [ %190, %189 ]
  %193 = zext i1 %192 to i32
  %194 = call i32 @assert_nc(i32 %193)
  br label %195

195:                                              ; preds = %191, %52
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32* @fts5IdxSelectStmt(%struct.TYPE_21__*) #1

declare dso_local i32 @sqlite3_bind_int(i32*, i32, i32) #1

declare dso_local i32 @sqlite3_bind_blob(i32*, i32, i32*, i32, i32) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_column_int(i32*, i32) #1

declare dso_local i32 @sqlite3_reset(i32*) #1

declare dso_local i32 @sqlite3_bind_null(i32*, i32) #1

declare dso_local i32 @fts5SegIterNextPage(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

declare dso_local i32 @fts5LeafSeek(%struct.TYPE_21__*, i32, %struct.TYPE_20__*, i32*, i32) #1

declare dso_local i32 @fts5SegIterLoadDlidx(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

declare dso_local i32 @fts5SegIterReverse(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

declare dso_local i32 @fts5SegIterSetNext(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

declare dso_local i32 @assert_nc(i32) #1

declare dso_local i64 @fts5BufferCompareBlob(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
