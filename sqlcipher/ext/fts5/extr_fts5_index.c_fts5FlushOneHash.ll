; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5FlushOneHash.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5FlushOneHash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_43__ = type { i32, %struct.TYPE_38__*, i32* }
%struct.TYPE_38__ = type { i32, i32 }
%struct.TYPE_41__ = type { i64, i32, %struct.TYPE_37__* }
%struct.TYPE_37__ = type { i32, %struct.TYPE_40__* }
%struct.TYPE_40__ = type { i32, i32, i32 }
%struct.TYPE_44__ = type { i64, i32, i64* }
%struct.TYPE_42__ = type { i64, %struct.TYPE_39__ }
%struct.TYPE_39__ = type { %struct.TYPE_44__, %struct.TYPE_44__ }

@FTS5_DATA_PADDING = common dso_local global i64 0, align 8
@SQLITE_OK = common dso_local global i32 0, align 4
@FTS5_DETAIL_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_43__*)* @fts5FlushOneHash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fts5FlushOneHash(%struct.TYPE_43__* %0) #0 {
  %2 = alloca %struct.TYPE_43__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_41__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_40__*, align 8
  %10 = alloca %struct.TYPE_44__*, align 8
  %11 = alloca %struct.TYPE_44__*, align 8
  %12 = alloca %struct.TYPE_42__, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_43__* %0, %struct.TYPE_43__** %2, align 8
  %26 = load %struct.TYPE_43__*, %struct.TYPE_43__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %3, align 8
  store i32 0, i32* %6, align 4
  %29 = load %struct.TYPE_43__*, %struct.TYPE_43__** %2, align 8
  %30 = call %struct.TYPE_41__* @fts5StructureRead(%struct.TYPE_43__* %29)
  store %struct.TYPE_41__* %30, %struct.TYPE_41__** %4, align 8
  %31 = load %struct.TYPE_43__*, %struct.TYPE_43__** %2, align 8
  %32 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %33 = call i32 @fts5AllocateSegid(%struct.TYPE_43__* %31, %struct.TYPE_41__* %32)
  store i32 %33, i32* %5, align 4
  %34 = load %struct.TYPE_43__*, %struct.TYPE_43__** %2, align 8
  %35 = call i32 @fts5StructureInvalidate(%struct.TYPE_43__* %34)
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %489

38:                                               ; preds = %1
  %39 = load %struct.TYPE_43__*, %struct.TYPE_43__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_38__*, %struct.TYPE_38__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %7, align 4
  %44 = load %struct.TYPE_43__*, %struct.TYPE_43__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_38__*, %struct.TYPE_38__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %8, align 4
  %49 = load %struct.TYPE_43__*, %struct.TYPE_43__** %2, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @fts5WriteInit(%struct.TYPE_43__* %49, %struct.TYPE_42__* %12, i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %12, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %52, i32 0, i32 1
  store %struct.TYPE_44__* %53, %struct.TYPE_44__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %12, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %54, i32 0, i32 0
  store %struct.TYPE_44__* %55, %struct.TYPE_44__** %11, align 8
  %56 = load %struct.TYPE_43__*, %struct.TYPE_43__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %38
  %61 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* @FTS5_DATA_PADDING, align 8
  %67 = add nsw i64 %65, %66
  %68 = icmp sge i64 %63, %67
  br label %69

69:                                               ; preds = %60, %38
  %70 = phi i1 [ true, %38 ], [ %68, %60 ]
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load %struct.TYPE_43__*, %struct.TYPE_43__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %69
  %78 = load %struct.TYPE_44__*, %struct.TYPE_44__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = load i64, i64* @FTS5_DATA_PADDING, align 8
  %84 = add nsw i64 %82, %83
  %85 = icmp sge i64 %80, %84
  br label %86

86:                                               ; preds = %77, %69
  %87 = phi i1 [ true, %69 ], [ %85, %77 ]
  %88 = zext i1 %87 to i32
  %89 = call i32 @assert(i32 %88)
  %90 = load %struct.TYPE_43__*, %struct.TYPE_43__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @SQLITE_OK, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %86
  %96 = load i32*, i32** %3, align 8
  %97 = call i32 @sqlite3Fts5HashScanInit(i32* %96, i32 0, i32 0)
  %98 = load %struct.TYPE_43__*, %struct.TYPE_43__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  br label %100

100:                                              ; preds = %95, %86
  br label %101

101:                                              ; preds = %433, %100
  %102 = load %struct.TYPE_43__*, %struct.TYPE_43__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @SQLITE_OK, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load i32*, i32** %3, align 8
  %109 = call i64 @sqlite3Fts5HashScanEof(i32* %108)
  %110 = icmp eq i64 0, %109
  br label %111

111:                                              ; preds = %107, %101
  %112 = phi i1 [ false, %101 ], [ %110, %107 ]
  br i1 %112, label %113, label %434

113:                                              ; preds = %111
  %114 = load i32*, i32** %3, align 8
  %115 = call i32 @sqlite3Fts5HashScanEntry(i32* %114, i8** %13, i32** %14, i32* %15)
  %116 = load %struct.TYPE_43__*, %struct.TYPE_43__** %2, align 8
  %117 = load i8*, i8** %13, align 8
  %118 = call i64 @strlen(i8* %117)
  %119 = trunc i64 %118 to i32
  %120 = load i8*, i8** %13, align 8
  %121 = bitcast i8* %120 to i32*
  %122 = call i32 @fts5WriteAppendTerm(%struct.TYPE_43__* %116, %struct.TYPE_42__* %12, i32 %119, i32* %121)
  %123 = load %struct.TYPE_43__*, %struct.TYPE_43__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @SQLITE_OK, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %113
  br label %434

129:                                              ; preds = %113
  %130 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %12, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %131, 0
  %133 = zext i1 %132 to i32
  %134 = call i32 @assert(i32 %133)
  %135 = load i32, i32* %7, align 4
  %136 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.TYPE_44__*, %struct.TYPE_44__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %138, %141
  %143 = load i32, i32* %15, align 4
  %144 = add nsw i32 %142, %143
  %145 = add nsw i32 %144, 1
  %146 = icmp sge i32 %135, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %129
  %148 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %149 = load i32*, i32** %14, align 8
  %150 = load i32, i32* %15, align 4
  %151 = call i32 @fts5BufferSafeAppendBlob(%struct.TYPE_44__* %148, i32* %149, i32 %150)
  br label %414

152:                                              ; preds = %129
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i32 0, i32* %18, align 4
  br label %153

153:                                              ; preds = %412, %152
  %154 = load %struct.TYPE_43__*, %struct.TYPE_43__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @SQLITE_OK, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %163

159:                                              ; preds = %153
  %160 = load i32, i32* %18, align 4
  %161 = load i32, i32* %15, align 4
  %162 = icmp slt i32 %160, %161
  br label %163

163:                                              ; preds = %159, %153
  %164 = phi i1 [ false, %153 ], [ %162, %159 ]
  br i1 %164, label %165, label %413

165:                                              ; preds = %163
  %166 = load i32*, i32** %14, align 8
  %167 = load i32, i32* %18, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = bitcast i64* %17 to i32*
  %171 = call i64 @fts5GetVarint(i32* %169, i32* %170)
  %172 = load i32, i32* %18, align 4
  %173 = sext i32 %172 to i64
  %174 = add nsw i64 %173, %171
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* %18, align 4
  %176 = load i64, i64* %17, align 8
  %177 = load i64, i64* %16, align 8
  %178 = add nsw i64 %177, %176
  store i64 %178, i64* %16, align 8
  %179 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %12, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %218

182:                                              ; preds = %165
  %183 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %183, i32 0, i32 2
  %185 = load i64*, i64** %184, align 8
  %186 = getelementptr inbounds i64, i64* %185, i64 0
  %187 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @fts5PutU16(i64* %186, i32 %189)
  %191 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %191, i32 0, i32 2
  %193 = load i64*, i64** %192, align 8
  %194 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %195 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i64, i64* %193, i64 %197
  %199 = load i64, i64* %16, align 8
  %200 = call i64 @sqlite3Fts5PutVarint(i64* %198, i64 %199)
  %201 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = sext i32 %203 to i64
  %205 = add nsw i64 %204, %200
  %206 = trunc i64 %205 to i32
  store i32 %206, i32* %202, align 8
  %207 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %12, i32 0, i32 0
  store i64 0, i64* %207, align 8
  %208 = load %struct.TYPE_43__*, %struct.TYPE_43__** %2, align 8
  %209 = load i64, i64* %16, align 8
  %210 = call i32 @fts5WriteDlidxAppend(%struct.TYPE_43__* %208, %struct.TYPE_42__* %12, i64 %209)
  %211 = load %struct.TYPE_43__*, %struct.TYPE_43__** %2, align 8
  %212 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @SQLITE_OK, align 4
  %215 = icmp ne i32 %213, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %182
  br label %413

217:                                              ; preds = %182
  br label %235

218:                                              ; preds = %165
  %219 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %220 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %219, i32 0, i32 2
  %221 = load i64*, i64** %220, align 8
  %222 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %223 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i64, i64* %221, i64 %225
  %227 = load i64, i64* %17, align 8
  %228 = call i64 @sqlite3Fts5PutVarint(i64* %226, i64 %227)
  %229 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %230 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 8
  %232 = sext i32 %231 to i64
  %233 = add nsw i64 %232, %228
  %234 = trunc i64 %233 to i32
  store i32 %234, i32* %230, align 8
  br label %235

235:                                              ; preds = %218, %217
  %236 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %237 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 8
  %239 = sext i32 %238 to i64
  %240 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %241 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = icmp sle i64 %239, %242
  %244 = zext i1 %243 to i32
  %245 = call i32 @assert(i32 %244)
  %246 = load i32, i32* %8, align 4
  %247 = load i32, i32* @FTS5_DETAIL_NONE, align 4
  %248 = icmp eq i32 %246, %247
  br i1 %248, label %249, label %309

249:                                              ; preds = %235
  %250 = load i32, i32* %18, align 4
  %251 = load i32, i32* %15, align 4
  %252 = icmp slt i32 %250, %251
  br i1 %252, label %253, label %295

253:                                              ; preds = %249
  %254 = load i32*, i32** %14, align 8
  %255 = load i32, i32* %18, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %295

260:                                              ; preds = %253
  %261 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %262 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %261, i32 0, i32 2
  %263 = load i64*, i64** %262, align 8
  %264 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %265 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 8
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %265, align 8
  %268 = sext i32 %266 to i64
  %269 = getelementptr inbounds i64, i64* %263, i64 %268
  store i64 0, i64* %269, align 8
  %270 = load i32, i32* %18, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %18, align 4
  %272 = load i32, i32* %18, align 4
  %273 = load i32, i32* %15, align 4
  %274 = icmp slt i32 %272, %273
  br i1 %274, label %275, label %294

275:                                              ; preds = %260
  %276 = load i32*, i32** %14, align 8
  %277 = load i32, i32* %18, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %276, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %294

282:                                              ; preds = %275
  %283 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %284 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %283, i32 0, i32 2
  %285 = load i64*, i64** %284, align 8
  %286 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %287 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 8
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %287, align 8
  %290 = sext i32 %288 to i64
  %291 = getelementptr inbounds i64, i64* %285, i64 %290
  store i64 0, i64* %291, align 8
  %292 = load i32, i32* %18, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %18, align 4
  br label %294

294:                                              ; preds = %282, %275, %260
  br label %295

295:                                              ; preds = %294, %253, %249
  %296 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %297 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 8
  %299 = load %struct.TYPE_44__*, %struct.TYPE_44__** %11, align 8
  %300 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 8
  %302 = add nsw i32 %298, %301
  %303 = load i32, i32* %7, align 4
  %304 = icmp sge i32 %302, %303
  br i1 %304, label %305, label %308

305:                                              ; preds = %295
  %306 = load %struct.TYPE_43__*, %struct.TYPE_43__** %2, align 8
  %307 = call i32 @fts5WriteFlushLeaf(%struct.TYPE_43__* %306, %struct.TYPE_42__* %12)
  br label %308

308:                                              ; preds = %305, %295
  br label %412

309:                                              ; preds = %235
  %310 = load i32*, i32** %14, align 8
  %311 = load i32, i32* %18, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %310, i64 %312
  %314 = call i32 @fts5GetPoslistSize(i32* %313, i32* %20, i32* %19)
  store i32 %314, i32* %21, align 4
  %315 = load i32, i32* %20, align 4
  %316 = load i32, i32* %21, align 4
  %317 = add nsw i32 %316, %315
  store i32 %317, i32* %21, align 4
  %318 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %319 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 8
  %321 = load %struct.TYPE_44__*, %struct.TYPE_44__** %11, align 8
  %322 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 8
  %324 = add nsw i32 %320, %323
  %325 = load i32, i32* %21, align 4
  %326 = add nsw i32 %324, %325
  %327 = load i32, i32* %7, align 4
  %328 = icmp sle i32 %326, %327
  br i1 %328, label %329, label %337

329:                                              ; preds = %309
  %330 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %331 = load i32*, i32** %14, align 8
  %332 = load i32, i32* %18, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %331, i64 %333
  %335 = load i32, i32* %21, align 4
  %336 = call i32 @fts5BufferSafeAppendBlob(%struct.TYPE_44__* %330, i32* %334, i32 %335)
  br label %408

337:                                              ; preds = %309
  %338 = load i32*, i32** %14, align 8
  %339 = load i32, i32* %18, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i32, i32* %338, i64 %340
  store i32* %341, i32** %22, align 8
  store i32 0, i32* %23, align 4
  br label %342

342:                                              ; preds = %406, %337
  %343 = load %struct.TYPE_43__*, %struct.TYPE_43__** %2, align 8
  %344 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = load i32, i32* @SQLITE_OK, align 4
  %347 = icmp eq i32 %345, %346
  br i1 %347, label %348, label %407

348:                                              ; preds = %342
  %349 = load i32, i32* %7, align 4
  %350 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %351 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 8
  %353 = sub nsw i32 %349, %352
  %354 = load %struct.TYPE_44__*, %struct.TYPE_44__** %11, align 8
  %355 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 8
  %357 = sub nsw i32 %353, %356
  store i32 %357, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %358 = load i32, i32* %21, align 4
  %359 = load i32, i32* %23, align 4
  %360 = sub nsw i32 %358, %359
  %361 = load i32, i32* %24, align 4
  %362 = icmp sle i32 %360, %361
  br i1 %362, label %363, label %367

363:                                              ; preds = %348
  %364 = load i32, i32* %21, align 4
  %365 = load i32, i32* %23, align 4
  %366 = sub nsw i32 %364, %365
  store i32 %366, i32* %25, align 4
  br label %374

367:                                              ; preds = %348
  %368 = load i32*, i32** %22, align 8
  %369 = load i32, i32* %23, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i32, i32* %368, i64 %370
  %372 = load i32, i32* %24, align 4
  %373 = call i32 @fts5PoslistPrefix(i32* %371, i32 %372)
  store i32 %373, i32* %25, align 4
  br label %374

374:                                              ; preds = %367, %363
  %375 = load i32, i32* %25, align 4
  %376 = icmp sgt i32 %375, 0
  %377 = zext i1 %376 to i32
  %378 = call i32 @assert(i32 %377)
  %379 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %380 = load i32*, i32** %22, align 8
  %381 = load i32, i32* %23, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds i32, i32* %380, i64 %382
  %384 = load i32, i32* %25, align 4
  %385 = call i32 @fts5BufferSafeAppendBlob(%struct.TYPE_44__* %379, i32* %383, i32 %384)
  %386 = load i32, i32* %25, align 4
  %387 = load i32, i32* %23, align 4
  %388 = add nsw i32 %387, %386
  store i32 %388, i32* %23, align 4
  %389 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %390 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %389, i32 0, i32 1
  %391 = load i32, i32* %390, align 8
  %392 = load %struct.TYPE_44__*, %struct.TYPE_44__** %11, align 8
  %393 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 8
  %395 = add nsw i32 %391, %394
  %396 = load i32, i32* %7, align 4
  %397 = icmp sge i32 %395, %396
  br i1 %397, label %398, label %401

398:                                              ; preds = %374
  %399 = load %struct.TYPE_43__*, %struct.TYPE_43__** %2, align 8
  %400 = call i32 @fts5WriteFlushLeaf(%struct.TYPE_43__* %399, %struct.TYPE_42__* %12)
  br label %401

401:                                              ; preds = %398, %374
  %402 = load i32, i32* %23, align 4
  %403 = load i32, i32* %21, align 4
  %404 = icmp sge i32 %402, %403
  br i1 %404, label %405, label %406

405:                                              ; preds = %401
  br label %407

406:                                              ; preds = %401
  br label %342

407:                                              ; preds = %405, %342
  br label %408

408:                                              ; preds = %407, %329
  %409 = load i32, i32* %21, align 4
  %410 = load i32, i32* %18, align 4
  %411 = add nsw i32 %410, %409
  store i32 %411, i32* %18, align 4
  br label %412

412:                                              ; preds = %408, %308
  br label %153

413:                                              ; preds = %216, %163
  br label %414

414:                                              ; preds = %413, %147
  %415 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %416 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %415, i32 0, i32 1
  %417 = load i32, i32* %416, align 8
  %418 = sext i32 %417 to i64
  %419 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %420 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %419, i32 0, i32 0
  %421 = load i64, i64* %420, align 8
  %422 = icmp sle i64 %418, %421
  %423 = zext i1 %422 to i32
  %424 = call i32 @assert(i32 %423)
  %425 = load %struct.TYPE_43__*, %struct.TYPE_43__** %2, align 8
  %426 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 8
  %428 = load i32, i32* @SQLITE_OK, align 4
  %429 = icmp eq i32 %427, %428
  br i1 %429, label %430, label %433

430:                                              ; preds = %414
  %431 = load i32*, i32** %3, align 8
  %432 = call i32 @sqlite3Fts5HashScanNext(i32* %431)
  br label %433

433:                                              ; preds = %430, %414
  br label %101

434:                                              ; preds = %128, %111
  %435 = load i32*, i32** %3, align 8
  %436 = call i32 @sqlite3Fts5HashClear(i32* %435)
  %437 = load %struct.TYPE_43__*, %struct.TYPE_43__** %2, align 8
  %438 = call i32 @fts5WriteFinish(%struct.TYPE_43__* %437, %struct.TYPE_42__* %12, i32* %6)
  %439 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %440 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %439, i32 0, i32 0
  %441 = load i64, i64* %440, align 8
  %442 = icmp eq i64 %441, 0
  br i1 %442, label %443, label %447

443:                                              ; preds = %434
  %444 = load %struct.TYPE_43__*, %struct.TYPE_43__** %2, align 8
  %445 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %444, i32 0, i32 0
  %446 = call i32 @fts5StructureAddLevel(i32* %445, %struct.TYPE_41__** %4)
  br label %447

447:                                              ; preds = %443, %434
  %448 = load %struct.TYPE_43__*, %struct.TYPE_43__** %2, align 8
  %449 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %448, i32 0, i32 0
  %450 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %451 = call i32 @fts5StructureExtendLevel(i32* %449, %struct.TYPE_41__* %450, i32 0, i32 1, i32 0)
  %452 = load %struct.TYPE_43__*, %struct.TYPE_43__** %2, align 8
  %453 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %452, i32 0, i32 0
  %454 = load i32, i32* %453, align 8
  %455 = load i32, i32* @SQLITE_OK, align 4
  %456 = icmp eq i32 %454, %455
  br i1 %456, label %457, label %485

457:                                              ; preds = %447
  %458 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %459 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %458, i32 0, i32 2
  %460 = load %struct.TYPE_37__*, %struct.TYPE_37__** %459, align 8
  %461 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %460, i64 0
  %462 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %461, i32 0, i32 1
  %463 = load %struct.TYPE_40__*, %struct.TYPE_40__** %462, align 8
  %464 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %465 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %464, i32 0, i32 2
  %466 = load %struct.TYPE_37__*, %struct.TYPE_37__** %465, align 8
  %467 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %466, i64 0
  %468 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %467, i32 0, i32 0
  %469 = load i32, i32* %468, align 8
  %470 = add nsw i32 %469, 1
  store i32 %470, i32* %468, align 8
  %471 = sext i32 %469 to i64
  %472 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %463, i64 %471
  store %struct.TYPE_40__* %472, %struct.TYPE_40__** %9, align 8
  %473 = load i32, i32* %5, align 4
  %474 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %475 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %474, i32 0, i32 0
  store i32 %473, i32* %475, align 4
  %476 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %477 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %476, i32 0, i32 1
  store i32 1, i32* %477, align 4
  %478 = load i32, i32* %6, align 4
  %479 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %480 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %479, i32 0, i32 2
  store i32 %478, i32* %480, align 4
  %481 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %482 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %481, i32 0, i32 1
  %483 = load i32, i32* %482, align 8
  %484 = add nsw i32 %483, 1
  store i32 %484, i32* %482, align 8
  br label %485

485:                                              ; preds = %457, %447
  %486 = load %struct.TYPE_43__*, %struct.TYPE_43__** %2, align 8
  %487 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %488 = call i32 @fts5StructurePromote(%struct.TYPE_43__* %486, i32 0, %struct.TYPE_41__* %487)
  br label %489

489:                                              ; preds = %485, %1
  %490 = load %struct.TYPE_43__*, %struct.TYPE_43__** %2, align 8
  %491 = load i32, i32* %6, align 4
  %492 = call i32 @fts5IndexAutomerge(%struct.TYPE_43__* %490, %struct.TYPE_41__** %4, i32 %491)
  %493 = load %struct.TYPE_43__*, %struct.TYPE_43__** %2, align 8
  %494 = call i32 @fts5IndexCrisismerge(%struct.TYPE_43__* %493, %struct.TYPE_41__** %4)
  %495 = load %struct.TYPE_43__*, %struct.TYPE_43__** %2, align 8
  %496 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %497 = call i32 @fts5StructureWrite(%struct.TYPE_43__* %495, %struct.TYPE_41__* %496)
  %498 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %499 = call i32 @fts5StructureRelease(%struct.TYPE_41__* %498)
  ret void
}

declare dso_local %struct.TYPE_41__* @fts5StructureRead(%struct.TYPE_43__*) #1

declare dso_local i32 @fts5AllocateSegid(%struct.TYPE_43__*, %struct.TYPE_41__*) #1

declare dso_local i32 @fts5StructureInvalidate(%struct.TYPE_43__*) #1

declare dso_local i32 @fts5WriteInit(%struct.TYPE_43__*, %struct.TYPE_42__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3Fts5HashScanInit(i32*, i32, i32) #1

declare dso_local i64 @sqlite3Fts5HashScanEof(i32*) #1

declare dso_local i32 @sqlite3Fts5HashScanEntry(i32*, i8**, i32**, i32*) #1

declare dso_local i32 @fts5WriteAppendTerm(%struct.TYPE_43__*, %struct.TYPE_42__*, i32, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @fts5BufferSafeAppendBlob(%struct.TYPE_44__*, i32*, i32) #1

declare dso_local i64 @fts5GetVarint(i32*, i32*) #1

declare dso_local i32 @fts5PutU16(i64*, i32) #1

declare dso_local i64 @sqlite3Fts5PutVarint(i64*, i64) #1

declare dso_local i32 @fts5WriteDlidxAppend(%struct.TYPE_43__*, %struct.TYPE_42__*, i64) #1

declare dso_local i32 @fts5WriteFlushLeaf(%struct.TYPE_43__*, %struct.TYPE_42__*) #1

declare dso_local i32 @fts5GetPoslistSize(i32*, i32*, i32*) #1

declare dso_local i32 @fts5PoslistPrefix(i32*, i32) #1

declare dso_local i32 @sqlite3Fts5HashScanNext(i32*) #1

declare dso_local i32 @sqlite3Fts5HashClear(i32*) #1

declare dso_local i32 @fts5WriteFinish(%struct.TYPE_43__*, %struct.TYPE_42__*, i32*) #1

declare dso_local i32 @fts5StructureAddLevel(i32*, %struct.TYPE_41__**) #1

declare dso_local i32 @fts5StructureExtendLevel(i32*, %struct.TYPE_41__*, i32, i32, i32) #1

declare dso_local i32 @fts5StructurePromote(%struct.TYPE_43__*, i32, %struct.TYPE_41__*) #1

declare dso_local i32 @fts5IndexAutomerge(%struct.TYPE_43__*, %struct.TYPE_41__**, i32) #1

declare dso_local i32 @fts5IndexCrisismerge(%struct.TYPE_43__*, %struct.TYPE_41__**) #1

declare dso_local i32 @fts5StructureWrite(%struct.TYPE_43__*, %struct.TYPE_41__*) #1

declare dso_local i32 @fts5StructureRelease(%struct.TYPE_41__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
