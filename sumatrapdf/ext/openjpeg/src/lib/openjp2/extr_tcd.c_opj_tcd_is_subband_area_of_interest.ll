; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_tcd.c_opj_tcd_is_subband_area_of_interest.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_tcd.c_opj_tcd_is_subband_area_of_interest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, i32, %struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_11__* }
%struct.TYPE_14__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i64, i64, i64, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @opj_tcd_is_subband_area_of_interest(%struct.TYPE_16__* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7) #0 {
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_15__*, align 8
  %19 = alloca %struct.TYPE_17__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  store i64 %7, i64* %16, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 6
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = load i64, i64* %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 1
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 2, i32 3
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %17, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 5
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %50, align 8
  %52 = load i64, i64* %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i64 %52
  store %struct.TYPE_15__* %53, %struct.TYPE_15__** %18, align 8
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 4
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %57, align 8
  %59 = load i64, i64* %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i64 %59
  store %struct.TYPE_17__* %60, %struct.TYPE_17__** %19, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @opj_uint_ceildiv(i32 %66, i32 %69)
  %71 = call i64 @opj_uint_max(i64 %63, i32 %70)
  store i64 %71, i64* %20, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @opj_uint_ceildiv(i32 %77, i32 %80)
  %82 = call i64 @opj_uint_max(i64 %74, i32 %81)
  store i64 %82, i64* %21, align 8
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @opj_uint_ceildiv(i32 %88, i32 %91)
  %93 = call i64 @opj_uint_min(i64 %85, i32 %92)
  store i64 %93, i64* %22, align 8
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @opj_uint_ceildiv(i32 %99, i32 %102)
  %104 = call i64 @opj_uint_min(i64 %96, i32 %103)
  store i64 %104, i64* %23, align 8
  %105 = load i64, i64* %11, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %8
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = sub i64 %110, 1
  br label %118

112:                                              ; preds = %8
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %11, align 8
  %117 = sub i64 %115, %116
  br label %118

118:                                              ; preds = %112, %107
  %119 = phi i64 [ %111, %107 ], [ %117, %112 ]
  store i64 %119, i64* %24, align 8
  %120 = load i64, i64* %12, align 8
  %121 = and i64 %120, 1
  store i64 %121, i64* %25, align 8
  %122 = load i64, i64* %12, align 8
  %123 = lshr i64 %122, 1
  store i64 %123, i64* %26, align 8
  %124 = load i64, i64* %24, align 8
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %118
  %127 = load i64, i64* %20, align 8
  br label %153

128:                                              ; preds = %118
  %129 = load i64, i64* %20, align 8
  %130 = load i64, i64* %24, align 8
  %131 = sub i64 %130, 1
  %132 = trunc i64 %131 to i32
  %133 = shl i32 1, %132
  %134 = zext i32 %133 to i64
  %135 = load i64, i64* %25, align 8
  %136 = mul i64 %134, %135
  %137 = icmp ule i64 %129, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %128
  br label %151

139:                                              ; preds = %128
  %140 = load i64, i64* %20, align 8
  %141 = load i64, i64* %24, align 8
  %142 = sub i64 %141, 1
  %143 = trunc i64 %142 to i32
  %144 = shl i32 1, %143
  %145 = zext i32 %144 to i64
  %146 = load i64, i64* %25, align 8
  %147 = mul i64 %145, %146
  %148 = sub i64 %140, %147
  %149 = load i64, i64* %24, align 8
  %150 = call i64 @opj_uint_ceildivpow2(i64 %148, i64 %149)
  br label %151

151:                                              ; preds = %139, %138
  %152 = phi i64 [ 0, %138 ], [ %150, %139 ]
  br label %153

153:                                              ; preds = %151, %126
  %154 = phi i64 [ %127, %126 ], [ %152, %151 ]
  store i64 %154, i64* %27, align 8
  %155 = load i64, i64* %24, align 8
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %153
  %158 = load i64, i64* %21, align 8
  br label %184

159:                                              ; preds = %153
  %160 = load i64, i64* %21, align 8
  %161 = load i64, i64* %24, align 8
  %162 = sub i64 %161, 1
  %163 = trunc i64 %162 to i32
  %164 = shl i32 1, %163
  %165 = zext i32 %164 to i64
  %166 = load i64, i64* %26, align 8
  %167 = mul i64 %165, %166
  %168 = icmp ule i64 %160, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %159
  br label %182

170:                                              ; preds = %159
  %171 = load i64, i64* %21, align 8
  %172 = load i64, i64* %24, align 8
  %173 = sub i64 %172, 1
  %174 = trunc i64 %173 to i32
  %175 = shl i32 1, %174
  %176 = zext i32 %175 to i64
  %177 = load i64, i64* %26, align 8
  %178 = mul i64 %176, %177
  %179 = sub i64 %171, %178
  %180 = load i64, i64* %24, align 8
  %181 = call i64 @opj_uint_ceildivpow2(i64 %179, i64 %180)
  br label %182

182:                                              ; preds = %170, %169
  %183 = phi i64 [ 0, %169 ], [ %181, %170 ]
  br label %184

184:                                              ; preds = %182, %157
  %185 = phi i64 [ %158, %157 ], [ %183, %182 ]
  store i64 %185, i64* %28, align 8
  %186 = load i64, i64* %24, align 8
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %184
  %189 = load i64, i64* %22, align 8
  br label %215

190:                                              ; preds = %184
  %191 = load i64, i64* %22, align 8
  %192 = load i64, i64* %24, align 8
  %193 = sub i64 %192, 1
  %194 = trunc i64 %193 to i32
  %195 = shl i32 1, %194
  %196 = zext i32 %195 to i64
  %197 = load i64, i64* %25, align 8
  %198 = mul i64 %196, %197
  %199 = icmp ule i64 %191, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %190
  br label %213

201:                                              ; preds = %190
  %202 = load i64, i64* %22, align 8
  %203 = load i64, i64* %24, align 8
  %204 = sub i64 %203, 1
  %205 = trunc i64 %204 to i32
  %206 = shl i32 1, %205
  %207 = zext i32 %206 to i64
  %208 = load i64, i64* %25, align 8
  %209 = mul i64 %207, %208
  %210 = sub i64 %202, %209
  %211 = load i64, i64* %24, align 8
  %212 = call i64 @opj_uint_ceildivpow2(i64 %210, i64 %211)
  br label %213

213:                                              ; preds = %201, %200
  %214 = phi i64 [ 0, %200 ], [ %212, %201 ]
  br label %215

215:                                              ; preds = %213, %188
  %216 = phi i64 [ %189, %188 ], [ %214, %213 ]
  store i64 %216, i64* %29, align 8
  %217 = load i64, i64* %24, align 8
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %215
  %220 = load i64, i64* %23, align 8
  br label %246

221:                                              ; preds = %215
  %222 = load i64, i64* %23, align 8
  %223 = load i64, i64* %24, align 8
  %224 = sub i64 %223, 1
  %225 = trunc i64 %224 to i32
  %226 = shl i32 1, %225
  %227 = zext i32 %226 to i64
  %228 = load i64, i64* %26, align 8
  %229 = mul i64 %227, %228
  %230 = icmp ule i64 %222, %229
  br i1 %230, label %231, label %232

231:                                              ; preds = %221
  br label %244

232:                                              ; preds = %221
  %233 = load i64, i64* %23, align 8
  %234 = load i64, i64* %24, align 8
  %235 = sub i64 %234, 1
  %236 = trunc i64 %235 to i32
  %237 = shl i32 1, %236
  %238 = zext i32 %237 to i64
  %239 = load i64, i64* %26, align 8
  %240 = mul i64 %238, %239
  %241 = sub i64 %233, %240
  %242 = load i64, i64* %24, align 8
  %243 = call i64 @opj_uint_ceildivpow2(i64 %241, i64 %242)
  br label %244

244:                                              ; preds = %232, %231
  %245 = phi i64 [ 0, %231 ], [ %243, %232 ]
  br label %246

246:                                              ; preds = %244, %219
  %247 = phi i64 [ %220, %219 ], [ %245, %244 ]
  store i64 %247, i64* %30, align 8
  %248 = load i64, i64* %27, align 8
  %249 = load i64, i64* %17, align 8
  %250 = icmp ult i64 %248, %249
  br i1 %250, label %251, label %252

251:                                              ; preds = %246
  store i64 0, i64* %27, align 8
  br label %256

252:                                              ; preds = %246
  %253 = load i64, i64* %17, align 8
  %254 = load i64, i64* %27, align 8
  %255 = sub i64 %254, %253
  store i64 %255, i64* %27, align 8
  br label %256

256:                                              ; preds = %252, %251
  %257 = load i64, i64* %28, align 8
  %258 = load i64, i64* %17, align 8
  %259 = icmp ult i64 %257, %258
  br i1 %259, label %260, label %261

260:                                              ; preds = %256
  store i64 0, i64* %28, align 8
  br label %265

261:                                              ; preds = %256
  %262 = load i64, i64* %17, align 8
  %263 = load i64, i64* %28, align 8
  %264 = sub i64 %263, %262
  store i64 %264, i64* %28, align 8
  br label %265

265:                                              ; preds = %261, %260
  %266 = load i64, i64* %29, align 8
  %267 = load i64, i64* %17, align 8
  %268 = call i64 @opj_uint_adds(i64 %266, i64 %267)
  store i64 %268, i64* %29, align 8
  %269 = load i64, i64* %30, align 8
  %270 = load i64, i64* %17, align 8
  %271 = call i64 @opj_uint_adds(i64 %269, i64 %270)
  store i64 %271, i64* %30, align 8
  %272 = load i64, i64* %13, align 8
  %273 = load i64, i64* %29, align 8
  %274 = icmp ult i64 %272, %273
  br i1 %274, label %275, label %287

275:                                              ; preds = %265
  %276 = load i64, i64* %14, align 8
  %277 = load i64, i64* %30, align 8
  %278 = icmp ult i64 %276, %277
  br i1 %278, label %279, label %287

279:                                              ; preds = %275
  %280 = load i64, i64* %15, align 8
  %281 = load i64, i64* %27, align 8
  %282 = icmp ugt i64 %280, %281
  br i1 %282, label %283, label %287

283:                                              ; preds = %279
  %284 = load i64, i64* %16, align 8
  %285 = load i64, i64* %28, align 8
  %286 = icmp ugt i64 %284, %285
  br label %287

287:                                              ; preds = %283, %279, %275, %265
  %288 = phi i1 [ false, %279 ], [ false, %275 ], [ false, %265 ], [ %286, %283 ]
  %289 = zext i1 %288 to i32
  store i32 %289, i32* %31, align 4
  %290 = load i32, i32* %31, align 4
  ret i32 %290
}

declare dso_local i64 @opj_uint_max(i64, i32) #1

declare dso_local i32 @opj_uint_ceildiv(i32, i32) #1

declare dso_local i64 @opj_uint_min(i64, i32) #1

declare dso_local i64 @opj_uint_ceildivpow2(i64, i64) #1

declare dso_local i64 @opj_uint_adds(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
