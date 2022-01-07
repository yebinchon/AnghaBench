; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_ppix_manager.c_opj_write_ppixfaix.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_ppix_manager.c_opj_write_ppixfaix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32, i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32*, i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32 }

@JPIP_FAIX = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to ppix indexing\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @opj_write_ppixfaix(i32 %0, i32 %1, %struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca [8 x i32], align 16
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_5__*, align 8
  %23 = alloca %struct.TYPE_6__, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  store i32* %6, i32** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  store i32 -1, i32* %31, align 4
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  store i32 -1, i32* %32, align 4
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i32 -1, i32* %33, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @pow(i32 2, i32 32)
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %7
  store i64 8, i64* %19, align 8
  store i64 1, i64* %16, align 8
  br label %40

39:                                               ; preds = %7
  store i64 4, i64* %19, align 8
  store i64 0, i64* %16, align 8
  br label %40

40:                                               ; preds = %39, %38
  %41 = load i32*, i32** %12, align 8
  %42 = call i64 @opj_stream_tell(i32* %41)
  store i64 %42, i64* %21, align 8
  %43 = load i32*, i32** %12, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = call i32 @opj_stream_skip(i32* %43, i32 4, i32* %44)
  %46 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %47 = load i64, i64* @JPIP_FAIX, align 8
  %48 = call i32 @opj_write_bytes(i32* %46, i64 %47, i32 4)
  %49 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %50 = load i64, i64* %16, align 8
  %51 = call i32 @opj_write_bytes(i32* %49, i64 %50, i32 1)
  %52 = load i32*, i32** %12, align 8
  %53 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %54 = load i32*, i32** %13, align 8
  %55 = call i32 @opj_stream_write_data(i32* %52, i32* %53, i32 1, i32* %54)
  store i64 0, i64* %18, align 8
  store i64 0, i64* %17, align 8
  br label %56

56:                                               ; preds = %90, %40
  %57 = load i64, i64* %17, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = icmp ule i64 %57, %64
  br i1 %65, label %66, label %93

66:                                               ; preds = %56
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 6
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i64 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* %17, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 6
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i64 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* %17, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 %74, %82
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = mul nsw i32 %83, %85
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* %18, align 8
  %89 = add i64 %88, %87
  store i64 %89, i64* %18, align 8
  br label %90

90:                                               ; preds = %66
  %91 = load i64, i64* %17, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %17, align 8
  br label %56

93:                                               ; preds = %56
  %94 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %95 = load i64, i64* %18, align 8
  %96 = load i64, i64* %19, align 8
  %97 = trunc i64 %96 to i32
  %98 = call i32 @opj_write_bytes(i32* %94, i64 %95, i32 %97)
  %99 = load i32*, i32** %12, align 8
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %101 = load i64, i64* %19, align 8
  %102 = trunc i64 %101 to i32
  %103 = load i32*, i32** %13, align 8
  %104 = call i32 @opj_stream_write_data(i32* %99, i32* %100, i32 %102, i32* %103)
  %105 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = mul nsw i32 %107, %109
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* %19, align 8
  %113 = trunc i64 %112 to i32
  %114 = call i32 @opj_write_bytes(i32* %105, i64 %111, i32 %113)
  %115 = load i32*, i32** %12, align 8
  %116 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %117 = load i64, i64* %19, align 8
  %118 = trunc i64 %117 to i32
  %119 = load i32*, i32** %13, align 8
  %120 = call i32 @opj_stream_write_data(i32* %115, i32* %116, i32 %118, i32* %119)
  store i64 0, i64* %15, align 8
  br label %121

121:                                              ; preds = %363, %93
  %122 = load i64, i64* %15, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = mul nsw i32 %124, %126
  %128 = sext i32 %127 to i64
  %129 = icmp ult i64 %122, %128
  br i1 %129, label %130, label %366

130:                                              ; preds = %121
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 6
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %131, align 8
  %133 = load i64, i64* %15, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i64 %133
  store %struct.TYPE_5__* %134, %struct.TYPE_5__** %22, align 8
  store i64 0, i64* %27, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %9, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %28, align 4
  store i32 0, i32* %24, align 4
  br label %142

142:                                              ; preds = %331, %130
  %143 = load i32, i32* %24, align 4
  %144 = load i32, i32* %28, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %334

146:                                              ; preds = %142
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %24, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %24, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = mul nsw i32 %153, %160
  store i32 %161, i32* %29, align 4
  store i32 0, i32* %25, align 4
  br label %162

162:                                              ; preds = %327, %146
  %163 = load i32, i32* %25, align 4
  %164 = load i32, i32* %29, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %166, label %330

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  store i32 %168, i32* %30, align 4
  store i32 0, i32* %26, align 4
  br label %169

169:                                              ; preds = %323, %166
  %170 = load i32, i32* %26, align 4
  %171 = load i32, i32* %30, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %326

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 4
  %175 = load i32, i32* %174, align 4
  switch i32 %175, label %285 [
    i32 131, label %176
    i32 129, label %198
    i32 128, label %220
    i32 130, label %242
    i32 132, label %264
  ]

176:                                              ; preds = %173
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 2
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %178, align 8
  %180 = load i32, i32* %26, align 4
  %181 = load i32, i32* %28, align 4
  %182 = mul nsw i32 %180, %181
  %183 = load i32, i32* %24, align 4
  %184 = add nsw i32 %182, %183
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 5
  %186 = load i32, i32* %185, align 8
  %187 = mul nsw i32 %184, %186
  %188 = load i32, i32* %9, align 4
  %189 = add nsw i32 %187, %188
  %190 = load i32, i32* %29, align 4
  %191 = mul nsw i32 %189, %190
  %192 = load i32, i32* %25, align 4
  %193 = add nsw i32 %191, %192
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i64 %194
  %196 = bitcast %struct.TYPE_6__* %23 to i8*
  %197 = bitcast %struct.TYPE_6__* %195 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %196, i8* align 4 %197, i64 12, i1 false)
  br label %288

198:                                              ; preds = %173
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 2
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %200, align 8
  %202 = load i32, i32* %24, align 4
  %203 = load i32, i32* %30, align 4
  %204 = mul nsw i32 %202, %203
  %205 = load i32, i32* %26, align 4
  %206 = add nsw i32 %204, %205
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 5
  %208 = load i32, i32* %207, align 8
  %209 = mul nsw i32 %206, %208
  %210 = load i32, i32* %9, align 4
  %211 = add nsw i32 %209, %210
  %212 = load i32, i32* %29, align 4
  %213 = mul nsw i32 %211, %212
  %214 = load i32, i32* %25, align 4
  %215 = add nsw i32 %213, %214
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i64 %216
  %218 = bitcast %struct.TYPE_6__* %23 to i8*
  %219 = bitcast %struct.TYPE_6__* %217 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %218, i8* align 4 %219, i64 12, i1 false)
  br label %288

220:                                              ; preds = %173
  %221 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 2
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %222, align 8
  %224 = load i32, i32* %24, align 4
  %225 = load i32, i32* %29, align 4
  %226 = mul nsw i32 %224, %225
  %227 = load i32, i32* %25, align 4
  %228 = add nsw i32 %226, %227
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 5
  %230 = load i32, i32* %229, align 8
  %231 = mul nsw i32 %228, %230
  %232 = load i32, i32* %9, align 4
  %233 = add nsw i32 %231, %232
  %234 = load i32, i32* %30, align 4
  %235 = mul nsw i32 %233, %234
  %236 = load i32, i32* %26, align 4
  %237 = add nsw i32 %235, %236
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i64 %238
  %240 = bitcast %struct.TYPE_6__* %23 to i8*
  %241 = bitcast %struct.TYPE_6__* %239 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %240, i8* align 4 %241, i64 12, i1 false)
  br label %288

242:                                              ; preds = %173
  %243 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i32 0, i32 2
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** %244, align 8
  %246 = load i32, i32* %25, align 4
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 5
  %248 = load i32, i32* %247, align 8
  %249 = mul nsw i32 %246, %248
  %250 = load i32, i32* %9, align 4
  %251 = add nsw i32 %249, %250
  %252 = load i32, i32* %28, align 4
  %253 = mul nsw i32 %251, %252
  %254 = load i32, i32* %24, align 4
  %255 = add nsw i32 %253, %254
  %256 = load i32, i32* %30, align 4
  %257 = mul nsw i32 %255, %256
  %258 = load i32, i32* %26, align 4
  %259 = add nsw i32 %257, %258
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i64 %260
  %262 = bitcast %struct.TYPE_6__* %23 to i8*
  %263 = bitcast %struct.TYPE_6__* %261 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %262, i8* align 4 %263, i64 12, i1 false)
  br label %288

264:                                              ; preds = %173
  %265 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %266 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %265, i32 0, i32 2
  %267 = load %struct.TYPE_6__*, %struct.TYPE_6__** %266, align 8
  %268 = load i32, i32* %9, align 4
  %269 = load i32, i32* %29, align 4
  %270 = mul nsw i32 %268, %269
  %271 = load i32, i32* %25, align 4
  %272 = add nsw i32 %270, %271
  %273 = load i32, i32* %28, align 4
  %274 = mul nsw i32 %272, %273
  %275 = load i32, i32* %24, align 4
  %276 = add nsw i32 %274, %275
  %277 = load i32, i32* %30, align 4
  %278 = mul nsw i32 %276, %277
  %279 = load i32, i32* %26, align 4
  %280 = add nsw i32 %278, %279
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i64 %281
  %283 = bitcast %struct.TYPE_6__* %23 to i8*
  %284 = bitcast %struct.TYPE_6__* %282 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %283, i8* align 4 %284, i64 12, i1 false)
  br label %288

285:                                              ; preds = %173
  %286 = load i32, i32* @stderr, align 4
  %287 = call i32 @fprintf(i32 %286, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %288

288:                                              ; preds = %285, %264, %242, %220, %198, %176
  %289 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %290 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* %8, align 4
  %293 = sub nsw i32 %291, %292
  %294 = sext i32 %293 to i64
  %295 = load i64, i64* %19, align 8
  %296 = trunc i64 %295 to i32
  %297 = call i32 @opj_write_bytes(i32* %289, i64 %294, i32 %296)
  %298 = load i32*, i32** %12, align 8
  %299 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %300 = load i64, i64* %19, align 8
  %301 = trunc i64 %300 to i32
  %302 = load i32*, i32** %13, align 8
  %303 = call i32 @opj_stream_write_data(i32* %298, i32* %299, i32 %301, i32* %302)
  %304 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %305 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %308 = load i32, i32* %307, align 4
  %309 = sub nsw i32 %306, %308
  %310 = add nsw i32 %309, 1
  %311 = sext i32 %310 to i64
  %312 = load i64, i64* %19, align 8
  %313 = trunc i64 %312 to i32
  %314 = call i32 @opj_write_bytes(i32* %304, i64 %311, i32 %313)
  %315 = load i32*, i32** %12, align 8
  %316 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %317 = load i64, i64* %19, align 8
  %318 = trunc i64 %317 to i32
  %319 = load i32*, i32** %13, align 8
  %320 = call i32 @opj_stream_write_data(i32* %315, i32* %316, i32 %318, i32* %319)
  %321 = load i64, i64* %27, align 8
  %322 = add i64 %321, 1
  store i64 %322, i64* %27, align 8
  br label %323

323:                                              ; preds = %288
  %324 = load i32, i32* %26, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %26, align 4
  br label %169

326:                                              ; preds = %169
  br label %327

327:                                              ; preds = %326
  %328 = load i32, i32* %25, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %25, align 4
  br label %162

330:                                              ; preds = %162
  br label %331

331:                                              ; preds = %330
  %332 = load i32, i32* %24, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %24, align 4
  br label %142

334:                                              ; preds = %142
  br label %335

335:                                              ; preds = %339, %334
  %336 = load i64, i64* %27, align 8
  %337 = load i64, i64* %18, align 8
  %338 = icmp ult i64 %336, %337
  br i1 %338, label %339, label %362

339:                                              ; preds = %335
  %340 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %341 = load i64, i64* %19, align 8
  %342 = trunc i64 %341 to i32
  %343 = call i32 @opj_write_bytes(i32* %340, i64 0, i32 %342)
  %344 = load i32*, i32** %12, align 8
  %345 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %346 = load i64, i64* %19, align 8
  %347 = trunc i64 %346 to i32
  %348 = load i32*, i32** %13, align 8
  %349 = call i32 @opj_stream_write_data(i32* %344, i32* %345, i32 %347, i32* %348)
  %350 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %351 = load i64, i64* %19, align 8
  %352 = trunc i64 %351 to i32
  %353 = call i32 @opj_write_bytes(i32* %350, i64 0, i32 %352)
  %354 = load i32*, i32** %12, align 8
  %355 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %356 = load i64, i64* %19, align 8
  %357 = trunc i64 %356 to i32
  %358 = load i32*, i32** %13, align 8
  %359 = call i32 @opj_stream_write_data(i32* %354, i32* %355, i32 %357, i32* %358)
  %360 = load i64, i64* %27, align 8
  %361 = add i64 %360, 1
  store i64 %361, i64* %27, align 8
  br label %335

362:                                              ; preds = %335
  br label %363

363:                                              ; preds = %362
  %364 = load i64, i64* %15, align 8
  %365 = add i64 %364, 1
  store i64 %365, i64* %15, align 8
  br label %121

366:                                              ; preds = %121
  %367 = load i32*, i32** %12, align 8
  %368 = call i64 @opj_stream_tell(i32* %367)
  %369 = load i64, i64* %21, align 8
  %370 = sub nsw i64 %368, %369
  store i64 %370, i64* %20, align 8
  %371 = load i32*, i32** %12, align 8
  %372 = load i64, i64* %21, align 8
  %373 = load i32*, i32** %13, align 8
  %374 = call i32 @opj_stream_seek(i32* %371, i64 %372, i32* %373)
  %375 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %376 = load i64, i64* %20, align 8
  %377 = call i32 @opj_write_bytes(i32* %375, i64 %376, i32 4)
  %378 = load i32*, i32** %12, align 8
  %379 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %380 = load i32*, i32** %13, align 8
  %381 = call i32 @opj_stream_write_data(i32* %378, i32* %379, i32 4, i32* %380)
  %382 = load i32*, i32** %12, align 8
  %383 = load i64, i64* %21, align 8
  %384 = load i64, i64* %20, align 8
  %385 = add i64 %383, %384
  %386 = load i32*, i32** %13, align 8
  %387 = call i32 @opj_stream_seek(i32* %382, i64 %385, i32* %386)
  %388 = load i64, i64* %20, align 8
  %389 = trunc i64 %388 to i32
  ret i32 %389
}

declare dso_local i32 @pow(i32, i32) #1

declare dso_local i64 @opj_stream_tell(i32*) #1

declare dso_local i32 @opj_stream_skip(i32*, i32, i32*) #1

declare dso_local i32 @opj_write_bytes(i32*, i64, i32) #1

declare dso_local i32 @opj_stream_write_data(i32*, i32*, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @opj_stream_seek(i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
