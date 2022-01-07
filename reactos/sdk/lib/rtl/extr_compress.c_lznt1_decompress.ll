; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_compress.c_lznt1_decompress.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_compress.c_lznt1_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STATUS_BAD_COMPRESSION_BUFFER = common dso_local global i32 0, align 4
@STATUS_ACCESS_VIOLATION = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32, i32, i32*, i32*)* @lznt1_decompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lznt1_decompress(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %24 = load i32*, i32** %11, align 8
  store i32* %24, i32** %16, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32* %28, i32** %17, align 8
  %29 = load i32*, i32** %9, align 8
  store i32* %29, i32** %18, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32* %33, i32** %19, align 8
  %34 = load i32*, i32** %16, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 4
  %36 = load i32*, i32** %17, align 8
  %37 = icmp ugt i32* %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %7
  %39 = load i32, i32* @STATUS_BAD_COMPRESSION_BUFFER, align 4
  store i32 %39, i32* %8, align 4
  br label %325

40:                                               ; preds = %7
  br label %41

41:                                               ; preds = %71, %40
  %42 = load i32, i32* %13, align 4
  %43 = icmp sge i32 %42, 4096
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i32*, i32** %16, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 4
  %47 = load i32*, i32** %17, align 8
  %48 = icmp ule i32* %46, %47
  br label %49

49:                                               ; preds = %44, %41
  %50 = phi i1 [ false, %41 ], [ %48, %44 ]
  br i1 %50, label %51, label %78

51:                                               ; preds = %49
  %52 = load i32*, i32** %16, align 8
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %22, align 4
  %54 = load i32*, i32** %16, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 4
  store i32* %55, i32** %16, align 8
  %56 = load i32, i32* %22, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %51
  br label %311

59:                                               ; preds = %51
  %60 = load i32, i32* %22, align 4
  %61 = and i32 %60, 4095
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %20, align 4
  %63 = load i32*, i32** %16, align 8
  %64 = load i32, i32* %20, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32*, i32** %17, align 8
  %68 = icmp ugt i32* %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %59
  %70 = load i32, i32* @STATUS_BAD_COMPRESSION_BUFFER, align 4
  store i32 %70, i32* %8, align 4
  br label %325

71:                                               ; preds = %59
  %72 = load i32, i32* %20, align 4
  %73 = load i32*, i32** %16, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32* %75, i32** %16, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sub nsw i32 %76, 4096
  store i32 %77, i32* %13, align 4
  br label %41

78:                                               ; preds = %49
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %203

81:                                               ; preds = %78
  %82 = load i32*, i32** %16, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 4
  %84 = load i32*, i32** %17, align 8
  %85 = icmp ule i32* %83, %84
  br i1 %85, label %86, label %203

86:                                               ; preds = %81
  %87 = load i32*, i32** %16, align 8
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %22, align 4
  %89 = load i32*, i32** %16, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 4
  store i32* %90, i32** %16, align 8
  %91 = load i32, i32* %22, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %86
  br label %311

94:                                               ; preds = %86
  %95 = load i32, i32* %22, align 4
  %96 = and i32 %95, 4095
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %20, align 4
  %98 = load i32*, i32** %16, align 8
  %99 = load i32, i32* %20, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32*, i32** %17, align 8
  %103 = icmp ugt i32* %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %94
  %105 = load i32, i32* @STATUS_BAD_COMPRESSION_BUFFER, align 4
  store i32 %105, i32* %8, align 4
  br label %325

106:                                              ; preds = %94
  %107 = load i32*, i32** %18, align 8
  %108 = load i32*, i32** %19, align 8
  %109 = icmp uge i32* %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  br label %311

111:                                              ; preds = %106
  %112 = load i32, i32* %22, align 4
  %113 = and i32 %112, 32768
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %170

115:                                              ; preds = %111
  %116 = load i32*, i32** %15, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %120, label %118

118:                                              ; preds = %115
  %119 = load i32, i32* @STATUS_ACCESS_VIOLATION, align 4
  store i32 %119, i32* %8, align 4
  br label %325

120:                                              ; preds = %115
  %121 = load i32*, i32** %15, align 8
  %122 = load i32*, i32** %16, align 8
  %123 = load i32, i32* %20, align 4
  %124 = call i32* @lznt1_decompress_chunk(i32* %121, i32 4096, i32* %122, i32 %123)
  store i32* %124, i32** %23, align 8
  %125 = load i32*, i32** %23, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %129, label %127

127:                                              ; preds = %120
  %128 = load i32, i32* @STATUS_BAD_COMPRESSION_BUFFER, align 4
  store i32 %128, i32* %8, align 4
  br label %325

129:                                              ; preds = %120
  %130 = load i32*, i32** %23, align 8
  %131 = load i32*, i32** %15, align 8
  %132 = ptrtoint i32* %130 to i64
  %133 = ptrtoint i32* %131 to i64
  %134 = sub i64 %132, %133
  %135 = sdiv exact i64 %134, 4
  %136 = load i32, i32* %13, align 4
  %137 = sext i32 %136 to i64
  %138 = icmp sgt i64 %135, %137
  br i1 %138, label %139, label %169

139:                                              ; preds = %129
  %140 = load i32*, i32** %23, align 8
  %141 = load i32*, i32** %15, align 8
  %142 = ptrtoint i32* %140 to i64
  %143 = ptrtoint i32* %141 to i64
  %144 = sub i64 %142, %143
  %145 = sdiv exact i64 %144, 4
  %146 = load i32, i32* %13, align 4
  %147 = sext i32 %146 to i64
  %148 = sub nsw i64 %145, %147
  %149 = trunc i64 %148 to i32
  %150 = load i32*, i32** %19, align 8
  %151 = load i32*, i32** %18, align 8
  %152 = ptrtoint i32* %150 to i64
  %153 = ptrtoint i32* %151 to i64
  %154 = sub i64 %152, %153
  %155 = sdiv exact i64 %154, 4
  %156 = trunc i64 %155 to i32
  %157 = call i32 @min(i32 %149, i32 %156)
  store i32 %157, i32* %21, align 4
  %158 = load i32*, i32** %18, align 8
  %159 = load i32*, i32** %15, align 8
  %160 = load i32, i32* %13, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %21, align 4
  %164 = call i32 @memcpy(i32* %158, i32* %162, i32 %163)
  %165 = load i32, i32* %21, align 4
  %166 = load i32*, i32** %18, align 8
  %167 = sext i32 %165 to i64
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  store i32* %168, i32** %18, align 8
  br label %169

169:                                              ; preds = %139, %129
  br label %198

170:                                              ; preds = %111
  %171 = load i32, i32* %20, align 4
  %172 = load i32, i32* %13, align 4
  %173 = icmp sgt i32 %171, %172
  br i1 %173, label %174, label %197

174:                                              ; preds = %170
  %175 = load i32, i32* %20, align 4
  %176 = load i32, i32* %13, align 4
  %177 = sub nsw i32 %175, %176
  %178 = load i32*, i32** %19, align 8
  %179 = load i32*, i32** %18, align 8
  %180 = ptrtoint i32* %178 to i64
  %181 = ptrtoint i32* %179 to i64
  %182 = sub i64 %180, %181
  %183 = sdiv exact i64 %182, 4
  %184 = trunc i64 %183 to i32
  %185 = call i32 @min(i32 %177, i32 %184)
  store i32 %185, i32* %21, align 4
  %186 = load i32*, i32** %18, align 8
  %187 = load i32*, i32** %16, align 8
  %188 = load i32, i32* %13, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = load i32, i32* %21, align 4
  %192 = call i32 @memcpy(i32* %186, i32* %190, i32 %191)
  %193 = load i32, i32* %21, align 4
  %194 = load i32*, i32** %18, align 8
  %195 = sext i32 %193 to i64
  %196 = getelementptr inbounds i32, i32* %194, i64 %195
  store i32* %196, i32** %18, align 8
  br label %197

197:                                              ; preds = %174, %170
  br label %198

198:                                              ; preds = %197, %169
  %199 = load i32, i32* %20, align 4
  %200 = load i32*, i32** %16, align 8
  %201 = sext i32 %199 to i64
  %202 = getelementptr inbounds i32, i32* %200, i64 %201
  store i32* %202, i32** %16, align 8
  br label %203

203:                                              ; preds = %198, %81, %78
  br label %204

204:                                              ; preds = %305, %203
  %205 = load i32*, i32** %16, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 4
  %207 = load i32*, i32** %17, align 8
  %208 = icmp ule i32* %206, %207
  br i1 %208, label %209, label %310

209:                                              ; preds = %204
  %210 = load i32*, i32** %16, align 8
  %211 = load i32, i32* %210, align 4
  store i32 %211, i32* %22, align 4
  %212 = load i32*, i32** %16, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 4
  store i32* %213, i32** %16, align 8
  %214 = load i32, i32* %22, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %217, label %216

216:                                              ; preds = %209
  br label %311

217:                                              ; preds = %209
  %218 = load i32, i32* %22, align 4
  %219 = and i32 %218, 4095
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %20, align 4
  %221 = load i32*, i32** %16, align 8
  %222 = load i32, i32* %20, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  %225 = load i32*, i32** %17, align 8
  %226 = icmp ugt i32* %224, %225
  br i1 %226, label %227, label %229

227:                                              ; preds = %217
  %228 = load i32, i32* @STATUS_BAD_COMPRESSION_BUFFER, align 4
  store i32 %228, i32* %8, align 4
  br label %325

229:                                              ; preds = %217
  %230 = load i32*, i32** %18, align 8
  %231 = load i32*, i32** %9, align 8
  %232 = ptrtoint i32* %230 to i64
  %233 = ptrtoint i32* %231 to i64
  %234 = sub i64 %232, %233
  %235 = sdiv exact i64 %234, 4
  %236 = load i32, i32* %13, align 4
  %237 = sext i32 %236 to i64
  %238 = add nsw i64 %235, %237
  %239 = and i64 %238, 4095
  %240 = trunc i64 %239 to i32
  store i32 %240, i32* %21, align 4
  %241 = load i32, i32* %21, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %261

243:                                              ; preds = %229
  %244 = load i32, i32* %21, align 4
  %245 = sub nsw i32 4096, %244
  store i32 %245, i32* %21, align 4
  %246 = load i32*, i32** %18, align 8
  %247 = load i32, i32* %21, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  %250 = load i32*, i32** %19, align 8
  %251 = icmp uge i32* %249, %250
  br i1 %251, label %252, label %253

252:                                              ; preds = %243
  br label %311

253:                                              ; preds = %243
  %254 = load i32*, i32** %18, align 8
  %255 = load i32, i32* %21, align 4
  %256 = call i32 @memset(i32* %254, i32 0, i32 %255)
  %257 = load i32, i32* %21, align 4
  %258 = load i32*, i32** %18, align 8
  %259 = sext i32 %257 to i64
  %260 = getelementptr inbounds i32, i32* %258, i64 %259
  store i32* %260, i32** %18, align 8
  br label %261

261:                                              ; preds = %253, %229
  %262 = load i32*, i32** %18, align 8
  %263 = load i32*, i32** %19, align 8
  %264 = icmp uge i32* %262, %263
  br i1 %264, label %265, label %266

265:                                              ; preds = %261
  br label %311

266:                                              ; preds = %261
  %267 = load i32, i32* %22, align 4
  %268 = and i32 %267, 32768
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %287

270:                                              ; preds = %266
  %271 = load i32*, i32** %18, align 8
  %272 = load i32*, i32** %19, align 8
  %273 = load i32*, i32** %18, align 8
  %274 = ptrtoint i32* %272 to i64
  %275 = ptrtoint i32* %273 to i64
  %276 = sub i64 %274, %275
  %277 = sdiv exact i64 %276, 4
  %278 = trunc i64 %277 to i32
  %279 = load i32*, i32** %16, align 8
  %280 = load i32, i32* %20, align 4
  %281 = call i32* @lznt1_decompress_chunk(i32* %271, i32 %278, i32* %279, i32 %280)
  store i32* %281, i32** %18, align 8
  %282 = load i32*, i32** %18, align 8
  %283 = icmp ne i32* %282, null
  br i1 %283, label %286, label %284

284:                                              ; preds = %270
  %285 = load i32, i32* @STATUS_BAD_COMPRESSION_BUFFER, align 4
  store i32 %285, i32* %8, align 4
  br label %325

286:                                              ; preds = %270
  br label %305

287:                                              ; preds = %266
  %288 = load i32, i32* %20, align 4
  %289 = load i32*, i32** %19, align 8
  %290 = load i32*, i32** %18, align 8
  %291 = ptrtoint i32* %289 to i64
  %292 = ptrtoint i32* %290 to i64
  %293 = sub i64 %291, %292
  %294 = sdiv exact i64 %293, 4
  %295 = trunc i64 %294 to i32
  %296 = call i32 @min(i32 %288, i32 %295)
  store i32 %296, i32* %21, align 4
  %297 = load i32*, i32** %18, align 8
  %298 = load i32*, i32** %16, align 8
  %299 = load i32, i32* %21, align 4
  %300 = call i32 @memcpy(i32* %297, i32* %298, i32 %299)
  %301 = load i32, i32* %21, align 4
  %302 = load i32*, i32** %18, align 8
  %303 = sext i32 %301 to i64
  %304 = getelementptr inbounds i32, i32* %302, i64 %303
  store i32* %304, i32** %18, align 8
  br label %305

305:                                              ; preds = %287, %286
  %306 = load i32, i32* %20, align 4
  %307 = load i32*, i32** %16, align 8
  %308 = sext i32 %306 to i64
  %309 = getelementptr inbounds i32, i32* %307, i64 %308
  store i32* %309, i32** %16, align 8
  br label %204

310:                                              ; preds = %204
  br label %311

311:                                              ; preds = %310, %265, %252, %216, %110, %93, %58
  %312 = load i32*, i32** %14, align 8
  %313 = icmp ne i32* %312, null
  br i1 %313, label %314, label %323

314:                                              ; preds = %311
  %315 = load i32*, i32** %18, align 8
  %316 = load i32*, i32** %9, align 8
  %317 = ptrtoint i32* %315 to i64
  %318 = ptrtoint i32* %316 to i64
  %319 = sub i64 %317, %318
  %320 = sdiv exact i64 %319, 4
  %321 = trunc i64 %320 to i32
  %322 = load i32*, i32** %14, align 8
  store i32 %321, i32* %322, align 4
  br label %323

323:                                              ; preds = %314, %311
  %324 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %324, i32* %8, align 4
  br label %325

325:                                              ; preds = %323, %284, %227, %127, %118, %104, %69, %38
  %326 = load i32, i32* %8, align 4
  ret i32 %326
}

declare dso_local i32* @lznt1_decompress_chunk(i32*, i32, i32*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
