; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_phix_manager.c_opj_write_phixfaix.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_phix_manager.c_opj_write_phixfaix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32, i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32*, i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@JPIP_FAIX = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to ppix indexing\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @opj_write_phixfaix(i32 %0, i32 %1, %struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_5__*, align 8
  %20 = alloca %struct.TYPE_6__, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca [8 x i32], align 16
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  store i32* %6, i32** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  store i32 -1, i32* %31, align 4
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store i32 -1, i32* %32, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @pow(i32 2, i32 32)
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %7
  store i64 8, i64* %18, align 8
  store i64 1, i64* %15, align 8
  br label %39

38:                                               ; preds = %7
  store i64 4, i64* %18, align 8
  store i64 0, i64* %15, align 8
  br label %39

39:                                               ; preds = %38, %37
  %40 = load i32*, i32** %12, align 8
  %41 = call i64 @opj_stream_tell(i32* %40)
  store i64 %41, i64* %29, align 8
  %42 = load i32*, i32** %12, align 8
  %43 = load i32*, i32** %13, align 8
  %44 = call i32 @opj_stream_skip(i32* %42, i32 4, i32* %43)
  %45 = getelementptr inbounds [8 x i32], [8 x i32]* %28, i64 0, i64 0
  %46 = load i64, i64* @JPIP_FAIX, align 8
  %47 = call i32 @opj_write_bytes(i32* %45, i64 %46, i32 4)
  %48 = load i32*, i32** %12, align 8
  %49 = getelementptr inbounds [8 x i32], [8 x i32]* %28, i64 0, i64 0
  %50 = load i32*, i32** %13, align 8
  %51 = call i32 @opj_stream_write_data(i32* %48, i32* %49, i32 4, i32* %50)
  %52 = getelementptr inbounds [8 x i32], [8 x i32]* %28, i64 0, i64 0
  %53 = load i64, i64* %15, align 8
  %54 = call i32 @opj_write_bytes(i32* %52, i64 %53, i32 1)
  %55 = load i32*, i32** %12, align 8
  %56 = getelementptr inbounds [8 x i32], [8 x i32]* %28, i64 0, i64 0
  %57 = load i32*, i32** %13, align 8
  %58 = call i32 @opj_stream_write_data(i32* %55, i32* %56, i32 1, i32* %57)
  store i64 0, i64* %17, align 8
  store i64 0, i64* %16, align 8
  br label %59

59:                                               ; preds = %93, %39
  %60 = load i64, i64* %16, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = icmp ule i64 %60, %67
  br i1 %68, label %69, label %96

69:                                               ; preds = %59
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 6
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* %16, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 6
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* %16, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = mul nsw i32 %77, %85
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = mul nsw i32 %86, %88
  %90 = sext i32 %89 to i64
  %91 = load i64, i64* %17, align 8
  %92 = add i64 %91, %90
  store i64 %92, i64* %17, align 8
  br label %93

93:                                               ; preds = %69
  %94 = load i64, i64* %16, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %16, align 8
  br label %59

96:                                               ; preds = %59
  %97 = getelementptr inbounds [8 x i32], [8 x i32]* %28, i64 0, i64 0
  %98 = load i64, i64* %17, align 8
  %99 = load i64, i64* %18, align 8
  %100 = trunc i64 %99 to i32
  %101 = call i32 @opj_write_bytes(i32* %97, i64 %98, i32 %100)
  %102 = load i32*, i32** %12, align 8
  %103 = getelementptr inbounds [8 x i32], [8 x i32]* %28, i64 0, i64 0
  %104 = load i64, i64* %18, align 8
  %105 = trunc i64 %104 to i32
  %106 = load i32*, i32** %13, align 8
  %107 = call i32 @opj_stream_write_data(i32* %102, i32* %103, i32 %105, i32* %106)
  %108 = getelementptr inbounds [8 x i32], [8 x i32]* %28, i64 0, i64 0
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = mul nsw i32 %110, %112
  %114 = sext i32 %113 to i64
  %115 = load i64, i64* %18, align 8
  %116 = trunc i64 %115 to i32
  %117 = call i32 @opj_write_bytes(i32* %108, i64 %114, i32 %116)
  %118 = load i32*, i32** %12, align 8
  %119 = getelementptr inbounds [8 x i32], [8 x i32]* %28, i64 0, i64 0
  %120 = load i64, i64* %18, align 8
  %121 = trunc i64 %120 to i32
  %122 = load i32*, i32** %13, align 8
  %123 = call i32 @opj_stream_write_data(i32* %118, i32* %119, i32 %121, i32* %122)
  store i64 0, i64* %14, align 8
  br label %124

124:                                              ; preds = %366, %96
  %125 = load i64, i64* %14, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = mul nsw i32 %127, %129
  %131 = sext i32 %130 to i64
  %132 = icmp ult i64 %125, %131
  br i1 %132, label %133, label %369

133:                                              ; preds = %124
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 6
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %134, align 8
  %136 = load i64, i64* %14, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i64 %136
  store %struct.TYPE_5__* %137, %struct.TYPE_5__** %19, align 8
  store i64 0, i64* %24, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %9, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %25, align 4
  store i32 0, i32* %21, align 4
  br label %145

145:                                              ; preds = %334, %133
  %146 = load i32, i32* %21, align 4
  %147 = load i32, i32* %25, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %337

149:                                              ; preds = %145
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %21, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %21, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = mul nsw i32 %156, %163
  store i32 %164, i32* %26, align 4
  store i32 0, i32* %22, align 4
  br label %165

165:                                              ; preds = %330, %149
  %166 = load i32, i32* %22, align 4
  %167 = load i32, i32* %26, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %333

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  store i32 %171, i32* %27, align 4
  store i32 0, i32* %23, align 4
  br label %172

172:                                              ; preds = %326, %169
  %173 = load i32, i32* %23, align 4
  %174 = load i32, i32* %27, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %329

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 4
  %178 = load i32, i32* %177, align 4
  switch i32 %178, label %288 [
    i32 131, label %179
    i32 129, label %201
    i32 128, label %223
    i32 130, label %245
    i32 132, label %267
  ]

179:                                              ; preds = %176
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 2
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %181, align 8
  %183 = load i32, i32* %23, align 4
  %184 = load i32, i32* %25, align 4
  %185 = mul nsw i32 %183, %184
  %186 = load i32, i32* %21, align 4
  %187 = add nsw i32 %185, %186
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 5
  %189 = load i32, i32* %188, align 8
  %190 = mul nsw i32 %187, %189
  %191 = load i32, i32* %9, align 4
  %192 = add nsw i32 %190, %191
  %193 = load i32, i32* %26, align 4
  %194 = mul nsw i32 %192, %193
  %195 = load i32, i32* %22, align 4
  %196 = add nsw i32 %194, %195
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i64 %197
  %199 = bitcast %struct.TYPE_6__* %20 to i8*
  %200 = bitcast %struct.TYPE_6__* %198 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %199, i8* align 4 %200, i64 8, i1 false)
  br label %291

201:                                              ; preds = %176
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 2
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %203, align 8
  %205 = load i32, i32* %21, align 4
  %206 = load i32, i32* %27, align 4
  %207 = mul nsw i32 %205, %206
  %208 = load i32, i32* %23, align 4
  %209 = add nsw i32 %207, %208
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 5
  %211 = load i32, i32* %210, align 8
  %212 = mul nsw i32 %209, %211
  %213 = load i32, i32* %9, align 4
  %214 = add nsw i32 %212, %213
  %215 = load i32, i32* %26, align 4
  %216 = mul nsw i32 %214, %215
  %217 = load i32, i32* %22, align 4
  %218 = add nsw i32 %216, %217
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i64 %219
  %221 = bitcast %struct.TYPE_6__* %20 to i8*
  %222 = bitcast %struct.TYPE_6__* %220 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %221, i8* align 4 %222, i64 8, i1 false)
  br label %291

223:                                              ; preds = %176
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 2
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %225, align 8
  %227 = load i32, i32* %21, align 4
  %228 = load i32, i32* %26, align 4
  %229 = mul nsw i32 %227, %228
  %230 = load i32, i32* %22, align 4
  %231 = add nsw i32 %229, %230
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 5
  %233 = load i32, i32* %232, align 8
  %234 = mul nsw i32 %231, %233
  %235 = load i32, i32* %9, align 4
  %236 = add nsw i32 %234, %235
  %237 = load i32, i32* %27, align 4
  %238 = mul nsw i32 %236, %237
  %239 = load i32, i32* %23, align 4
  %240 = add nsw i32 %238, %239
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i64 %241
  %243 = bitcast %struct.TYPE_6__* %20 to i8*
  %244 = bitcast %struct.TYPE_6__* %242 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %243, i8* align 4 %244, i64 8, i1 false)
  br label %291

245:                                              ; preds = %176
  %246 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 2
  %248 = load %struct.TYPE_6__*, %struct.TYPE_6__** %247, align 8
  %249 = load i32, i32* %22, align 4
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 5
  %251 = load i32, i32* %250, align 8
  %252 = mul nsw i32 %249, %251
  %253 = load i32, i32* %9, align 4
  %254 = add nsw i32 %252, %253
  %255 = load i32, i32* %25, align 4
  %256 = mul nsw i32 %254, %255
  %257 = load i32, i32* %21, align 4
  %258 = add nsw i32 %256, %257
  %259 = load i32, i32* %27, align 4
  %260 = mul nsw i32 %258, %259
  %261 = load i32, i32* %23, align 4
  %262 = add nsw i32 %260, %261
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i64 %263
  %265 = bitcast %struct.TYPE_6__* %20 to i8*
  %266 = bitcast %struct.TYPE_6__* %264 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %265, i8* align 4 %266, i64 8, i1 false)
  br label %291

267:                                              ; preds = %176
  %268 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %269 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %268, i32 0, i32 2
  %270 = load %struct.TYPE_6__*, %struct.TYPE_6__** %269, align 8
  %271 = load i32, i32* %9, align 4
  %272 = load i32, i32* %26, align 4
  %273 = mul nsw i32 %271, %272
  %274 = load i32, i32* %22, align 4
  %275 = add nsw i32 %273, %274
  %276 = load i32, i32* %25, align 4
  %277 = mul nsw i32 %275, %276
  %278 = load i32, i32* %21, align 4
  %279 = add nsw i32 %277, %278
  %280 = load i32, i32* %27, align 4
  %281 = mul nsw i32 %279, %280
  %282 = load i32, i32* %23, align 4
  %283 = add nsw i32 %281, %282
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i64 %284
  %286 = bitcast %struct.TYPE_6__* %20 to i8*
  %287 = bitcast %struct.TYPE_6__* %285 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %286, i8* align 4 %287, i64 8, i1 false)
  br label %291

288:                                              ; preds = %176
  %289 = load i32, i32* @stderr, align 4
  %290 = call i32 @fprintf(i32 %289, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %291

291:                                              ; preds = %288, %267, %245, %223, %201, %179
  %292 = getelementptr inbounds [8 x i32], [8 x i32]* %28, i64 0, i64 0
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* %8, align 4
  %296 = sub nsw i32 %294, %295
  %297 = sext i32 %296 to i64
  %298 = load i64, i64* %18, align 8
  %299 = trunc i64 %298 to i32
  %300 = call i32 @opj_write_bytes(i32* %292, i64 %297, i32 %299)
  %301 = load i32*, i32** %12, align 8
  %302 = getelementptr inbounds [8 x i32], [8 x i32]* %28, i64 0, i64 0
  %303 = load i64, i64* %18, align 8
  %304 = trunc i64 %303 to i32
  %305 = load i32*, i32** %13, align 8
  %306 = call i32 @opj_stream_write_data(i32* %301, i32* %302, i32 %304, i32* %305)
  %307 = getelementptr inbounds [8 x i32], [8 x i32]* %28, i64 0, i64 0
  %308 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = sub nsw i32 %309, %311
  %313 = add nsw i32 %312, 1
  %314 = sext i32 %313 to i64
  %315 = load i64, i64* %18, align 8
  %316 = trunc i64 %315 to i32
  %317 = call i32 @opj_write_bytes(i32* %307, i64 %314, i32 %316)
  %318 = load i32*, i32** %12, align 8
  %319 = getelementptr inbounds [8 x i32], [8 x i32]* %28, i64 0, i64 0
  %320 = load i64, i64* %18, align 8
  %321 = trunc i64 %320 to i32
  %322 = load i32*, i32** %13, align 8
  %323 = call i32 @opj_stream_write_data(i32* %318, i32* %319, i32 %321, i32* %322)
  %324 = load i64, i64* %24, align 8
  %325 = add i64 %324, 1
  store i64 %325, i64* %24, align 8
  br label %326

326:                                              ; preds = %291
  %327 = load i32, i32* %23, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %23, align 4
  br label %172

329:                                              ; preds = %172
  br label %330

330:                                              ; preds = %329
  %331 = load i32, i32* %22, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %22, align 4
  br label %165

333:                                              ; preds = %165
  br label %334

334:                                              ; preds = %333
  %335 = load i32, i32* %21, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %21, align 4
  br label %145

337:                                              ; preds = %145
  br label %338

338:                                              ; preds = %342, %337
  %339 = load i64, i64* %24, align 8
  %340 = load i64, i64* %17, align 8
  %341 = icmp ult i64 %339, %340
  br i1 %341, label %342, label %365

342:                                              ; preds = %338
  %343 = getelementptr inbounds [8 x i32], [8 x i32]* %28, i64 0, i64 0
  %344 = load i64, i64* %18, align 8
  %345 = trunc i64 %344 to i32
  %346 = call i32 @opj_write_bytes(i32* %343, i64 0, i32 %345)
  %347 = load i32*, i32** %12, align 8
  %348 = getelementptr inbounds [8 x i32], [8 x i32]* %28, i64 0, i64 0
  %349 = load i64, i64* %18, align 8
  %350 = trunc i64 %349 to i32
  %351 = load i32*, i32** %13, align 8
  %352 = call i32 @opj_stream_write_data(i32* %347, i32* %348, i32 %350, i32* %351)
  %353 = getelementptr inbounds [8 x i32], [8 x i32]* %28, i64 0, i64 0
  %354 = load i64, i64* %18, align 8
  %355 = trunc i64 %354 to i32
  %356 = call i32 @opj_write_bytes(i32* %353, i64 0, i32 %355)
  %357 = load i32*, i32** %12, align 8
  %358 = getelementptr inbounds [8 x i32], [8 x i32]* %28, i64 0, i64 0
  %359 = load i64, i64* %18, align 8
  %360 = trunc i64 %359 to i32
  %361 = load i32*, i32** %13, align 8
  %362 = call i32 @opj_stream_write_data(i32* %357, i32* %358, i32 %360, i32* %361)
  %363 = load i64, i64* %24, align 8
  %364 = add i64 %363, 1
  store i64 %364, i64* %24, align 8
  br label %338

365:                                              ; preds = %338
  br label %366

366:                                              ; preds = %365
  %367 = load i64, i64* %14, align 8
  %368 = add i64 %367, 1
  store i64 %368, i64* %14, align 8
  br label %124

369:                                              ; preds = %124
  %370 = load i32*, i32** %12, align 8
  %371 = call i64 @opj_stream_tell(i32* %370)
  %372 = load i64, i64* %29, align 8
  %373 = sub nsw i64 %371, %372
  store i64 %373, i64* %30, align 8
  %374 = load i32*, i32** %12, align 8
  %375 = load i64, i64* %29, align 8
  %376 = load i32*, i32** %13, align 8
  %377 = call i32 @opj_stream_seek(i32* %374, i64 %375, i32* %376)
  %378 = getelementptr inbounds [8 x i32], [8 x i32]* %28, i64 0, i64 0
  %379 = load i64, i64* %30, align 8
  %380 = call i32 @opj_write_bytes(i32* %378, i64 %379, i32 4)
  %381 = load i32*, i32** %12, align 8
  %382 = getelementptr inbounds [8 x i32], [8 x i32]* %28, i64 0, i64 0
  %383 = load i32*, i32** %13, align 8
  %384 = call i32 @opj_stream_write_data(i32* %381, i32* %382, i32 4, i32* %383)
  %385 = load i32*, i32** %12, align 8
  %386 = load i64, i64* %29, align 8
  %387 = load i64, i64* %30, align 8
  %388 = add i64 %386, %387
  %389 = load i32*, i32** %13, align 8
  %390 = call i32 @opj_stream_seek(i32* %385, i64 %388, i32* %389)
  %391 = load i64, i64* %30, align 8
  %392 = trunc i64 %391 to i32
  ret i32 %392
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
