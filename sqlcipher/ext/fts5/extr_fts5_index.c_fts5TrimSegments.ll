; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5TrimSegments.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5TrimSegments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64, i32, i32, i32, i32, i64, %struct.TYPE_22__*, %struct.TYPE_21__ }
%struct.TYPE_22__ = type { i32, i32, i64 }
%struct.TYPE_21__ = type { i32, i32* }
%struct.TYPE_27__ = type { i32, i32* }
%struct.TYPE_26__ = type { i32, i64, i32* }

@SQLITE_OK = common dso_local global i64 0, align 8
@FTS5_CORRUPT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_25__*, %struct.TYPE_24__*)* @fts5TrimSegments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fts5TrimSegments(%struct.TYPE_25__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_27__, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [4 x i32], align 16
  %13 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %4, align 8
  %14 = call i32 @memset(%struct.TYPE_27__* %6, i32 0, i32 16)
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %229, %2
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SQLITE_OK, align 8
  %26 = icmp eq i64 %24, %25
  br label %27

27:                                               ; preds = %21, %15
  %28 = phi i1 [ false, %15 ], [ %26, %21 ]
  br i1 %28, label %29, label %232

29:                                               ; preds = %27
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i64 %34
  store %struct.TYPE_23__* %35, %struct.TYPE_23__** %7, align 8
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 6
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %37, align 8
  %39 = icmp eq %struct.TYPE_22__* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  br label %228

41:                                               ; preds = %29
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 6
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 2
  store i64 0, i64* %50, align 8
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 6
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  br label %227

55:                                               ; preds = %41
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %8, align 4
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 6
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %11, align 4
  %64 = bitcast [4 x i32]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %64, i8 0, i64 16, i1 false)
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @FTS5_SEGMENT_ROWID(i32 %65, i32 %68)
  store i32 %69, i32* %9, align 4
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call %struct.TYPE_26__* @fts5LeafRead(%struct.TYPE_25__* %70, i32 %71)
  store %struct.TYPE_26__* %72, %struct.TYPE_26__** %10, align 8
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %74 = icmp ne %struct.TYPE_26__* %73, null
  br i1 %74, label %75, label %226

75:                                               ; preds = %55
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp sgt i32 %76, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load i64, i64* @FTS5_CORRUPT, align 8
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  br label %223

85:                                               ; preds = %75
  %86 = call i32 @fts5BufferZero(%struct.TYPE_27__* %6)
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @fts5BufferGrow(i64* %88, %struct.TYPE_27__* %6, i64 %91)
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 0
  %95 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %96 = call i32 @fts5BufferAppendBlob(i64* %94, %struct.TYPE_27__* %6, i32 16, i32* %95)
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 7
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @fts5BufferAppendVarint(i64* %98, %struct.TYPE_27__* %6, i32 %102)
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 7
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 7
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @fts5BufferAppendBlob(i64* %105, %struct.TYPE_27__* %6, i32 %109, i32* %113)
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %8, align 4
  %121 = sub nsw i32 %119, %120
  %122 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = call i32 @fts5BufferAppendBlob(i64* %116, %struct.TYPE_27__* %6, i32 %121, i32* %127)
  %129 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @SQLITE_OK, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %141

134:                                              ; preds = %85
  %135 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %6, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 2
  %138 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %6, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @fts5PutU16(i32* %137, i32 %139)
  br label %141

141:                                              ; preds = %134, %85
  %142 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %142, i32 0, i32 0
  %144 = call i32 @fts5BufferAppendVarint(i64* %143, %struct.TYPE_27__* %6, i32 4)
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %147, %150
  br i1 %151, label %152, label %203

152:                                              ; preds = %141
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = icmp slt i32 %155, %158
  br i1 %159, label %160, label %203

160:                                              ; preds = %152
  %161 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %161, i32 0, i32 5
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = icmp ule i64 %163, %166
  br i1 %167, label %168, label %203

168:                                              ; preds = %160
  %169 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 4
  %175 = sub nsw i32 %171, %174
  store i32 %175, i32* %13, align 4
  %176 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %6, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = sub nsw i32 %179, 1
  %181 = load i32, i32* %13, align 4
  %182 = sub nsw i32 %180, %181
  %183 = sub nsw i32 %182, 4
  %184 = call i32 @fts5BufferAppendVarint(i64* %177, %struct.TYPE_27__* %6, i32 %183)
  %185 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %190, i32 0, i32 5
  %192 = load i64, i64* %191, align 8
  %193 = sub i64 %189, %192
  %194 = trunc i64 %193 to i32
  %195 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %196 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %195, i32 0, i32 2
  %197 = load i32*, i32** %196, align 8
  %198 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %198, i32 0, i32 5
  %200 = load i64, i64* %199, align 8
  %201 = getelementptr inbounds i32, i32* %197, i64 %200
  %202 = call i32 @fts5BufferAppendBlob(i64* %186, %struct.TYPE_27__* %6, i32 %194, i32* %201)
  br label %203

203:                                              ; preds = %168, %160, %152, %141
  %204 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %207, i32 0, i32 6
  %209 = load %struct.TYPE_22__*, %struct.TYPE_22__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %209, i32 0, i32 0
  store i32 %206, i32* %210, align 8
  %211 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %212 = load i32, i32* %11, align 4
  %213 = call i32 @FTS5_SEGMENT_ROWID(i32 %212, i32 1)
  %214 = load i32, i32* %9, align 4
  %215 = call i32 @fts5DataDelete(%struct.TYPE_25__* %211, i32 %213, i32 %214)
  %216 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %217 = load i32, i32* %9, align 4
  %218 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %6, i32 0, i32 1
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %6, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @fts5DataWrite(%struct.TYPE_25__* %216, i32 %217, i32* %219, i32 %221)
  br label %223

223:                                              ; preds = %203, %81
  %224 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %225 = call i32 @fts5DataRelease(%struct.TYPE_26__* %224)
  br label %226

226:                                              ; preds = %223, %55
  br label %227

227:                                              ; preds = %226, %46
  br label %228

228:                                              ; preds = %227, %40
  br label %229

229:                                              ; preds = %228
  %230 = load i32, i32* %5, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %5, align 4
  br label %15

232:                                              ; preds = %27
  %233 = call i32 @fts5BufferFree(%struct.TYPE_27__* %6)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_27__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @FTS5_SEGMENT_ROWID(i32, i32) #1

declare dso_local %struct.TYPE_26__* @fts5LeafRead(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @fts5BufferZero(%struct.TYPE_27__*) #1

declare dso_local i32 @fts5BufferGrow(i64*, %struct.TYPE_27__*, i64) #1

declare dso_local i32 @fts5BufferAppendBlob(i64*, %struct.TYPE_27__*, i32, i32*) #1

declare dso_local i32 @fts5BufferAppendVarint(i64*, %struct.TYPE_27__*, i32) #1

declare dso_local i32 @fts5PutU16(i32*, i32) #1

declare dso_local i32 @fts5DataDelete(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @fts5DataWrite(%struct.TYPE_25__*, i32, i32*, i32) #1

declare dso_local i32 @fts5DataRelease(%struct.TYPE_26__*) #1

declare dso_local i32 @fts5BufferFree(%struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
