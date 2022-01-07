; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_tcd.c_opj_tcd_dc_level_shift_decode.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_tcd.c_opj_tcd_dc_level_shift_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32*, %struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32*, i32, i32*, i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@INT_MAX = common dso_local global i64 0, align 8
@INT_MIN = common dso_local global i64 0, align 8
@OPJ_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @opj_tcd_dc_level_shift_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opj_tcd_dc_level_shift_decode(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %6, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %7, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  store %struct.TYPE_15__* %23, %struct.TYPE_15__** %8, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  store %struct.TYPE_14__* %26, %struct.TYPE_14__** %4, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %30, align 8
  store %struct.TYPE_18__* %31, %struct.TYPE_18__** %5, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %35, align 8
  store %struct.TYPE_19__* %36, %struct.TYPE_19__** %6, align 8
  store i64 0, i64* %3, align 8
  br label %37

37:                                               ; preds = %268, %1
  %38 = load i64, i64* %3, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ult i64 %38, %41
  br i1 %42, label %43, label %277

43:                                               ; preds = %37
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* %3, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %48
  br label %268

57:                                               ; preds = %48, %43
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 4
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %59, align 8
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i64 %64
  store %struct.TYPE_17__* %65, %struct.TYPE_17__** %7, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %88, label %70

70:                                               ; preds = %57
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = sub i64 %73, %76
  store i64 %77, i64* %9, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = sub i64 %80, %83
  store i64 %84, i64* %10, align 8
  store i64 0, i64* %16, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  store i32* %87, i32** %13, align 8
  br label %147

88:                                               ; preds = %57
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = sub nsw i64 %91, %94
  store i64 %95, i64* %9, align 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 7
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 6
  %101 = load i64, i64* %100, align 8
  %102 = sub nsw i64 %98, %101
  store i64 %102, i64* %10, align 8
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 4
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %104, align 8
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = sub nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 5
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 4
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %115, align 8
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = sub nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = sub nsw i64 %113, %124
  %126 = load i64, i64* %9, align 8
  %127 = sub i64 %125, %126
  store i64 %127, i64* %16, align 8
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  store i32* %130, i32** %13, align 8
  %131 = load i64, i64* %10, align 8
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %143, label %133

133:                                              ; preds = %88
  %134 = load i64, i64* %9, align 8
  %135 = load i64, i64* %16, align 8
  %136 = add i64 %134, %135
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* %10, align 8
  %141 = udiv i64 %139, %140
  %142 = icmp ule i64 %136, %141
  br label %143

143:                                              ; preds = %133, %88
  %144 = phi i1 [ true, %88 ], [ %142, %133 ]
  %145 = zext i1 %144 to i32
  %146 = call i32 @assert(i32 %145)
  br label %147

147:                                              ; preds = %143, %70
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %165

152:                                              ; preds = %147
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = sub nsw i32 %155, 1
  %157 = shl i32 1, %156
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %14, align 4
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = sub nsw i32 %161, 1
  %163 = shl i32 1, %162
  %164 = sub nsw i32 %163, 1
  store i32 %164, i32* %15, align 4
  br label %171

165:                                              ; preds = %147
  store i32 0, i32* %14, align 4
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = shl i32 1, %168
  %170 = sub i32 %169, 1
  store i32 %170, i32* %15, align 4
  br label %171

171:                                              ; preds = %165, %152
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = icmp eq i32 %174, 1
  br i1 %175, label %176, label %211

176:                                              ; preds = %171
  store i64 0, i64* %12, align 8
  br label %177

177:                                              ; preds = %207, %176
  %178 = load i64, i64* %12, align 8
  %179 = load i64, i64* %10, align 8
  %180 = icmp ult i64 %178, %179
  br i1 %180, label %181, label %210

181:                                              ; preds = %177
  store i64 0, i64* %11, align 8
  br label %182

182:                                              ; preds = %200, %181
  %183 = load i64, i64* %11, align 8
  %184 = load i64, i64* %9, align 8
  %185 = icmp ult i64 %183, %184
  br i1 %185, label %186, label %203

186:                                              ; preds = %182
  %187 = load i32*, i32** %13, align 8
  %188 = load i32, i32* %187, align 4
  %189 = sext i32 %188 to i64
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = add nsw i64 %189, %192
  %194 = load i32, i32* %14, align 4
  %195 = load i32, i32* %15, align 4
  %196 = call i32 @opj_int_clamp(i64 %193, i32 %194, i32 %195)
  %197 = load i32*, i32** %13, align 8
  store i32 %196, i32* %197, align 4
  %198 = load i32*, i32** %13, align 8
  %199 = getelementptr inbounds i32, i32* %198, i32 1
  store i32* %199, i32** %13, align 8
  br label %200

200:                                              ; preds = %186
  %201 = load i64, i64* %11, align 8
  %202 = add i64 %201, 1
  store i64 %202, i64* %11, align 8
  br label %182

203:                                              ; preds = %182
  %204 = load i64, i64* %16, align 8
  %205 = load i32*, i32** %13, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 %204
  store i32* %206, i32** %13, align 8
  br label %207

207:                                              ; preds = %203
  %208 = load i64, i64* %12, align 8
  %209 = add i64 %208, 1
  store i64 %209, i64* %12, align 8
  br label %177

210:                                              ; preds = %177
  br label %267

211:                                              ; preds = %171
  store i64 0, i64* %12, align 8
  br label %212

212:                                              ; preds = %263, %211
  %213 = load i64, i64* %12, align 8
  %214 = load i64, i64* %10, align 8
  %215 = icmp ult i64 %213, %214
  br i1 %215, label %216, label %266

216:                                              ; preds = %212
  store i64 0, i64* %11, align 8
  br label %217

217:                                              ; preds = %256, %216
  %218 = load i64, i64* %11, align 8
  %219 = load i64, i64* %9, align 8
  %220 = icmp ult i64 %218, %219
  br i1 %220, label %221, label %259

221:                                              ; preds = %217
  %222 = load i32*, i32** %13, align 8
  %223 = bitcast i32* %222 to i64*
  %224 = load i64, i64* %223, align 8
  store i64 %224, i64* %17, align 8
  %225 = load i64, i64* %17, align 8
  %226 = load i64, i64* @INT_MAX, align 8
  %227 = icmp sgt i64 %225, %226
  br i1 %227, label %228, label %231

228:                                              ; preds = %221
  %229 = load i32, i32* %15, align 4
  %230 = load i32*, i32** %13, align 8
  store i32 %229, i32* %230, align 4
  br label %253

231:                                              ; preds = %221
  %232 = load i64, i64* %17, align 8
  %233 = load i64, i64* @INT_MIN, align 8
  %234 = icmp slt i64 %232, %233
  br i1 %234, label %235, label %238

235:                                              ; preds = %231
  %236 = load i32, i32* %14, align 4
  %237 = load i32*, i32** %13, align 8
  store i32 %236, i32* %237, align 4
  br label %252

238:                                              ; preds = %231
  %239 = load i64, i64* %17, align 8
  %240 = call i32 @opj_lrintf(i64 %239)
  %241 = sext i32 %240 to i64
  store i64 %241, i64* %18, align 8
  %242 = load i64, i64* %18, align 8
  %243 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = add nsw i64 %242, %245
  %247 = load i32, i32* %14, align 4
  %248 = load i32, i32* %15, align 4
  %249 = call i64 @opj_int64_clamp(i64 %246, i32 %247, i32 %248)
  %250 = trunc i64 %249 to i32
  %251 = load i32*, i32** %13, align 8
  store i32 %250, i32* %251, align 4
  br label %252

252:                                              ; preds = %238, %235
  br label %253

253:                                              ; preds = %252, %228
  %254 = load i32*, i32** %13, align 8
  %255 = getelementptr inbounds i32, i32* %254, i32 1
  store i32* %255, i32** %13, align 8
  br label %256

256:                                              ; preds = %253
  %257 = load i64, i64* %11, align 8
  %258 = add i64 %257, 1
  store i64 %258, i64* %11, align 8
  br label %217

259:                                              ; preds = %217
  %260 = load i64, i64* %16, align 8
  %261 = load i32*, i32** %13, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 %260
  store i32* %262, i32** %13, align 8
  br label %263

263:                                              ; preds = %259
  %264 = load i64, i64* %12, align 8
  %265 = add i64 %264, 1
  store i64 %265, i64* %12, align 8
  br label %212

266:                                              ; preds = %212
  br label %267

267:                                              ; preds = %266, %210
  br label %268

268:                                              ; preds = %267, %56
  %269 = load i64, i64* %3, align 8
  %270 = add i64 %269, 1
  store i64 %270, i64* %3, align 8
  %271 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %272 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %271, i32 1
  store %struct.TYPE_19__* %272, %struct.TYPE_19__** %6, align 8
  %273 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %274 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %273, i32 1
  store %struct.TYPE_18__* %274, %struct.TYPE_18__** %5, align 8
  %275 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %275, i32 1
  store %struct.TYPE_14__* %276, %struct.TYPE_14__** %4, align 8
  br label %37

277:                                              ; preds = %37
  %278 = load i32, i32* @OPJ_TRUE, align 4
  ret i32 %278
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @opj_int_clamp(i64, i32, i32) #1

declare dso_local i32 @opj_lrintf(i64) #1

declare dso_local i64 @opj_int64_clamp(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
