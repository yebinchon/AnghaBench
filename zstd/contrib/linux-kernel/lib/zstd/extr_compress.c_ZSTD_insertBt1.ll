; ModuleID = '/home/carl/AnghaBench/zstd/contrib/linux-kernel/lib/zstd/extr_compress.c_ZSTD_insertBt1.c'
source_filename = "/home/carl/AnghaBench/zstd/contrib/linux-kernel/lib/zstd/extr_compress.c_ZSTD_insertBt1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32*, i64*, i64*, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i64*, i32, i64*, i32, i32)* @ZSTD_insertBt1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ZSTD_insertBt1(%struct.TYPE_7__* %0, i64* %1, i32 %2, i64* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64*, align 8
  %24 = alloca i64*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64*, align 8
  %27 = alloca i64*, align 8
  %28 = alloca i64*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i64, align 8
  %37 = alloca i32*, align 8
  %38 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i64* %1, i64** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64* %3, i64** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %14, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 6
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %15, align 4
  %47 = load i64*, i64** %9, align 8
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i64 @ZSTD_hashPtr(i64* %47, i32 %48, i32 %49)
  store i64 %50, i64* %16, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %17, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 6
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %58, 1
  store i32 %59, i32* %18, align 4
  %60 = load i32, i32* %18, align 4
  %61 = shl i32 1, %60
  %62 = sub nsw i32 %61, 1
  store i32 %62, i32* %19, align 4
  %63 = load i32*, i32** %14, align 8
  %64 = load i64, i64* %16, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %20, align 4
  store i64 0, i64* %21, align 8
  store i64 0, i64* %22, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 2
  %69 = load i64*, i64** %68, align 8
  store i64* %69, i64** %23, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 3
  %72 = load i64*, i64** %71, align 8
  store i64* %72, i64** %24, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %25, align 4
  %76 = load i64*, i64** %24, align 8
  %77 = load i32, i32* %25, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  store i64* %79, i64** %26, align 8
  %80 = load i64*, i64** %23, align 8
  %81 = load i32, i32* %25, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  store i64* %83, i64** %27, align 8
  %84 = load i64*, i64** %9, align 8
  %85 = load i64*, i64** %23, align 8
  %86 = ptrtoint i64* %84 to i64
  %87 = ptrtoint i64* %85 to i64
  %88 = sub i64 %86, %87
  %89 = sdiv exact i64 %88, 8
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %29, align 4
  %91 = load i32, i32* %19, align 4
  %92 = load i32, i32* %29, align 4
  %93 = icmp sge i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %6
  br label %99

95:                                               ; preds = %6
  %96 = load i32, i32* %29, align 4
  %97 = load i32, i32* %19, align 4
  %98 = sub nsw i32 %96, %97
  br label %99

99:                                               ; preds = %95, %94
  %100 = phi i32 [ 0, %94 ], [ %98, %95 ]
  store i32 %100, i32* %30, align 4
  %101 = load i32*, i32** %17, align 8
  %102 = load i32, i32* %29, align 4
  %103 = load i32, i32* %19, align 4
  %104 = and i32 %102, %103
  %105 = mul nsw i32 2, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %101, i64 %106
  store i32* %107, i32** %31, align 8
  %108 = load i32*, i32** %31, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  store i32* %109, i32** %32, align 8
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %34, align 4
  %113 = load i32, i32* %29, align 4
  %114 = add nsw i32 %113, 8
  store i32 %114, i32* %35, align 4
  store i64 8, i64* %36, align 8
  %115 = load i32, i32* %29, align 4
  %116 = load i32*, i32** %14, align 8
  %117 = load i64, i64* %16, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  store i32 %115, i32* %118, align 4
  br label %119

119:                                              ; preds = %274, %99
  %120 = load i32, i32* %12, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %12, align 4
  %122 = icmp ne i32 %120, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = load i32, i32* %20, align 4
  %125 = load i32, i32* %34, align 4
  %126 = icmp sgt i32 %124, %125
  br label %127

127:                                              ; preds = %123, %119
  %128 = phi i1 [ false, %119 ], [ %126, %123 ]
  br i1 %128, label %129, label %275

129:                                              ; preds = %127
  %130 = load i32*, i32** %17, align 8
  %131 = load i32, i32* %20, align 4
  %132 = load i32, i32* %19, align 4
  %133 = and i32 %131, %132
  %134 = mul nsw i32 2, %133
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %130, i64 %135
  store i32* %136, i32** %37, align 8
  %137 = load i64, i64* %21, align 8
  %138 = trunc i64 %137 to i32
  %139 = load i64, i64* %22, align 8
  %140 = trunc i64 %139 to i32
  %141 = call i32 @MIN(i32 %138, i32 %140)
  %142 = sext i32 %141 to i64
  store i64 %142, i64* %38, align 8
  %143 = load i32, i32* %13, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %129
  %146 = load i32, i32* %20, align 4
  %147 = sext i32 %146 to i64
  %148 = load i64, i64* %38, align 8
  %149 = add i64 %147, %148
  %150 = load i32, i32* %25, align 4
  %151 = sext i32 %150 to i64
  %152 = icmp uge i64 %149, %151
  br i1 %152, label %153, label %182

153:                                              ; preds = %145, %129
  %154 = load i64*, i64** %23, align 8
  %155 = load i32, i32* %20, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i64, i64* %154, i64 %156
  store i64* %157, i64** %28, align 8
  %158 = load i64*, i64** %28, align 8
  %159 = load i64, i64* %38, align 8
  %160 = getelementptr inbounds i64, i64* %158, i64 %159
  %161 = load i64, i64* %160, align 8
  %162 = load i64*, i64** %9, align 8
  %163 = load i64, i64* %38, align 8
  %164 = getelementptr inbounds i64, i64* %162, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = icmp eq i64 %161, %165
  br i1 %166, label %167, label %181

167:                                              ; preds = %153
  %168 = load i64*, i64** %9, align 8
  %169 = load i64, i64* %38, align 8
  %170 = getelementptr inbounds i64, i64* %168, i64 %169
  %171 = getelementptr inbounds i64, i64* %170, i64 1
  %172 = load i64*, i64** %28, align 8
  %173 = load i64, i64* %38, align 8
  %174 = getelementptr inbounds i64, i64* %172, i64 %173
  %175 = getelementptr inbounds i64, i64* %174, i64 1
  %176 = load i64*, i64** %11, align 8
  %177 = call i64 @ZSTD_count(i64* %171, i64* %175, i64* %176)
  %178 = add nsw i64 %177, 1
  %179 = load i64, i64* %38, align 8
  %180 = add i64 %179, %178
  store i64 %180, i64* %38, align 8
  br label %181

181:                                              ; preds = %167, %153
  br label %212

182:                                              ; preds = %145
  %183 = load i64*, i64** %24, align 8
  %184 = load i32, i32* %20, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i64, i64* %183, i64 %185
  store i64* %186, i64** %28, align 8
  %187 = load i64*, i64** %9, align 8
  %188 = load i64, i64* %38, align 8
  %189 = getelementptr inbounds i64, i64* %187, i64 %188
  %190 = load i64*, i64** %28, align 8
  %191 = load i64, i64* %38, align 8
  %192 = getelementptr inbounds i64, i64* %190, i64 %191
  %193 = load i64*, i64** %11, align 8
  %194 = load i64*, i64** %26, align 8
  %195 = load i64*, i64** %27, align 8
  %196 = call i64 @ZSTD_count_2segments(i64* %189, i64* %192, i64* %193, i64* %194, i64* %195)
  %197 = load i64, i64* %38, align 8
  %198 = add i64 %197, %196
  store i64 %198, i64* %38, align 8
  %199 = load i32, i32* %20, align 4
  %200 = sext i32 %199 to i64
  %201 = load i64, i64* %38, align 8
  %202 = add i64 %200, %201
  %203 = load i32, i32* %25, align 4
  %204 = sext i32 %203 to i64
  %205 = icmp uge i64 %202, %204
  br i1 %205, label %206, label %211

206:                                              ; preds = %182
  %207 = load i64*, i64** %23, align 8
  %208 = load i32, i32* %20, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i64, i64* %207, i64 %209
  store i64* %210, i64** %28, align 8
  br label %211

211:                                              ; preds = %206, %182
  br label %212

212:                                              ; preds = %211, %181
  %213 = load i64, i64* %38, align 8
  %214 = load i64, i64* %36, align 8
  %215 = icmp ugt i64 %213, %214
  br i1 %215, label %216, label %230

216:                                              ; preds = %212
  %217 = load i64, i64* %38, align 8
  store i64 %217, i64* %36, align 8
  %218 = load i64, i64* %38, align 8
  %219 = load i32, i32* %35, align 4
  %220 = load i32, i32* %20, align 4
  %221 = sub nsw i32 %219, %220
  %222 = sext i32 %221 to i64
  %223 = icmp ugt i64 %218, %222
  br i1 %223, label %224, label %229

224:                                              ; preds = %216
  %225 = load i32, i32* %20, align 4
  %226 = load i64, i64* %38, align 8
  %227 = trunc i64 %226 to i32
  %228 = add nsw i32 %225, %227
  store i32 %228, i32* %35, align 4
  br label %229

229:                                              ; preds = %224, %216
  br label %230

230:                                              ; preds = %229, %212
  %231 = load i64*, i64** %9, align 8
  %232 = load i64, i64* %38, align 8
  %233 = getelementptr inbounds i64, i64* %231, i64 %232
  %234 = load i64*, i64** %11, align 8
  %235 = icmp eq i64* %233, %234
  br i1 %235, label %236, label %237

236:                                              ; preds = %230
  br label %275

237:                                              ; preds = %230
  %238 = load i64*, i64** %28, align 8
  %239 = load i64, i64* %38, align 8
  %240 = getelementptr inbounds i64, i64* %238, i64 %239
  %241 = load i64, i64* %240, align 8
  %242 = load i64*, i64** %9, align 8
  %243 = load i64, i64* %38, align 8
  %244 = getelementptr inbounds i64, i64* %242, i64 %243
  %245 = load i64, i64* %244, align 8
  %246 = icmp slt i64 %241, %245
  br i1 %246, label %247, label %261

247:                                              ; preds = %237
  %248 = load i32, i32* %20, align 4
  %249 = load i32*, i32** %31, align 8
  store i32 %248, i32* %249, align 4
  %250 = load i64, i64* %38, align 8
  store i64 %250, i64* %21, align 8
  %251 = load i32, i32* %20, align 4
  %252 = load i32, i32* %30, align 4
  %253 = icmp sle i32 %251, %252
  br i1 %253, label %254, label %255

254:                                              ; preds = %247
  store i32* %33, i32** %31, align 8
  br label %275

255:                                              ; preds = %247
  %256 = load i32*, i32** %37, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 1
  store i32* %257, i32** %31, align 8
  %258 = load i32*, i32** %37, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 1
  %260 = load i32, i32* %259, align 4
  store i32 %260, i32* %20, align 4
  br label %274

261:                                              ; preds = %237
  %262 = load i32, i32* %20, align 4
  %263 = load i32*, i32** %32, align 8
  store i32 %262, i32* %263, align 4
  %264 = load i64, i64* %38, align 8
  store i64 %264, i64* %22, align 8
  %265 = load i32, i32* %20, align 4
  %266 = load i32, i32* %30, align 4
  %267 = icmp sle i32 %265, %266
  br i1 %267, label %268, label %269

268:                                              ; preds = %261
  store i32* %33, i32** %32, align 8
  br label %275

269:                                              ; preds = %261
  %270 = load i32*, i32** %37, align 8
  store i32* %270, i32** %32, align 8
  %271 = load i32*, i32** %37, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 0
  %273 = load i32, i32* %272, align 4
  store i32 %273, i32* %20, align 4
  br label %274

274:                                              ; preds = %269, %255
  br label %119

275:                                              ; preds = %268, %254, %236, %127
  %276 = load i32*, i32** %32, align 8
  store i32 0, i32* %276, align 4
  %277 = load i32*, i32** %31, align 8
  store i32 0, i32* %277, align 4
  %278 = load i64, i64* %36, align 8
  %279 = icmp ugt i64 %278, 384
  br i1 %279, label %280, label %285

280:                                              ; preds = %275
  %281 = load i64, i64* %36, align 8
  %282 = sub i64 %281, 384
  %283 = trunc i64 %282 to i32
  %284 = call i32 @MIN(i32 192, i32 %283)
  store i32 %284, i32* %7, align 4
  br label %296

285:                                              ; preds = %275
  %286 = load i32, i32* %35, align 4
  %287 = load i32, i32* %29, align 4
  %288 = add nsw i32 %287, 8
  %289 = icmp sgt i32 %286, %288
  br i1 %289, label %290, label %295

290:                                              ; preds = %285
  %291 = load i32, i32* %35, align 4
  %292 = load i32, i32* %29, align 4
  %293 = sub nsw i32 %291, %292
  %294 = sub nsw i32 %293, 8
  store i32 %294, i32* %7, align 4
  br label %296

295:                                              ; preds = %285
  store i32 1, i32* %7, align 4
  br label %296

296:                                              ; preds = %295, %290, %280
  %297 = load i32, i32* %7, align 4
  ret i32 %297
}

declare dso_local i64 @ZSTD_hashPtr(i64*, i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i64 @ZSTD_count(i64*, i64*, i64*) #1

declare dso_local i64 @ZSTD_count_2segments(i64*, i64*, i64*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
