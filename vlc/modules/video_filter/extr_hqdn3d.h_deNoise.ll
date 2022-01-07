; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_hqdn3d.h_deNoise.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_hqdn3d.h_deNoise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32*, i16**, i32, i32, i32, i32, i32*, i32*, i32*)* @deNoise to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deNoise(i8* %0, i8* %1, i32* %2, i16** %3, i32 %4, i32 %5, i32 %6, i32 %7, i32* %8, i32* %9, i32* %10) #0 {
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i16**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i16*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i16*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i16*, align 8
  %35 = alloca i64, align 8
  store i8* %0, i8** %12, align 8
  store i8* %1, i8** %13, align 8
  store i32* %2, i32** %14, align 8
  store i16** %3, i16*** %15, align 8
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  store i32* %10, i32** %22, align 8
  store i64 0, i64* %23, align 8
  store i64 0, i64* %24, align 8
  %36 = load i16**, i16*** %15, align 8
  %37 = load i16*, i16** %36, align 8
  store i16* %37, i16** %27, align 8
  %38 = load i16*, i16** %27, align 8
  %39 = icmp ne i16* %38, null
  br i1 %39, label %95, label %40

40:                                               ; preds = %11
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* %17, align 4
  %43 = mul nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 2
  %46 = trunc i64 %45 to i32
  %47 = call i16* @malloc(i32 %46)
  store i16* %47, i16** %27, align 8
  %48 = load i16**, i16*** %15, align 8
  store i16* %47, i16** %48, align 8
  %49 = load i16*, i16** %27, align 8
  %50 = icmp ne i16* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %40
  br label %331

52:                                               ; preds = %40
  store i64 0, i64* %28, align 8
  br label %53

53:                                               ; preds = %91, %52
  %54 = load i64, i64* %28, align 8
  %55 = load i32, i32* %17, align 4
  %56 = sext i32 %55 to i64
  %57 = icmp slt i64 %54, %56
  br i1 %57, label %58, label %94

58:                                               ; preds = %53
  %59 = load i16*, i16** %27, align 8
  %60 = load i64, i64* %28, align 8
  %61 = load i32, i32* %16, align 4
  %62 = sext i32 %61 to i64
  %63 = mul nsw i64 %60, %62
  %64 = getelementptr inbounds i16, i16* %59, i64 %63
  store i16* %64, i16** %29, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = load i64, i64* %28, align 8
  %67 = load i32, i32* %18, align 4
  %68 = sext i32 %67 to i64
  %69 = mul nsw i64 %66, %68
  %70 = getelementptr inbounds i8, i8* %65, i64 %69
  store i8* %70, i8** %30, align 8
  store i64 0, i64* %31, align 8
  br label %71

71:                                               ; preds = %87, %58
  %72 = load i64, i64* %31, align 8
  %73 = load i32, i32* %16, align 4
  %74 = sext i32 %73 to i64
  %75 = icmp slt i64 %72, %74
  br i1 %75, label %76, label %90

76:                                               ; preds = %71
  %77 = load i8*, i8** %30, align 8
  %78 = load i64, i64* %31, align 8
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = shl i32 %81, 8
  %83 = trunc i32 %82 to i16
  %84 = load i16*, i16** %29, align 8
  %85 = load i64, i64* %31, align 8
  %86 = getelementptr inbounds i16, i16* %84, i64 %85
  store i16 %83, i16* %86, align 2
  br label %87

87:                                               ; preds = %76
  %88 = load i64, i64* %31, align 8
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* %31, align 8
  br label %71

90:                                               ; preds = %71
  br label %91

91:                                               ; preds = %90
  %92 = load i64, i64* %28, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %28, align 8
  br label %53

94:                                               ; preds = %53
  br label %95

95:                                               ; preds = %94, %11
  %96 = load i32*, i32** %20, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %115, label %100

100:                                              ; preds = %95
  %101 = load i32*, i32** %21, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %115, label %105

105:                                              ; preds = %100
  %106 = load i8*, i8** %12, align 8
  %107 = load i8*, i8** %13, align 8
  %108 = load i16*, i16** %27, align 8
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* %17, align 4
  %111 = load i32, i32* %18, align 4
  %112 = load i32, i32* %19, align 4
  %113 = load i32*, i32** %22, align 8
  %114 = call i32 @deNoiseTemporal(i8* %106, i8* %107, i16* %108, i32 %109, i32 %110, i32 %111, i32 %112, i32* %113)
  br label %331

115:                                              ; preds = %100, %95
  %116 = load i32*, i32** %22, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %131, label %120

120:                                              ; preds = %115
  %121 = load i8*, i8** %12, align 8
  %122 = load i8*, i8** %13, align 8
  %123 = load i32*, i32** %14, align 8
  %124 = load i32, i32* %16, align 4
  %125 = load i32, i32* %17, align 4
  %126 = load i32, i32* %18, align 4
  %127 = load i32, i32* %19, align 4
  %128 = load i32*, i32** %20, align 8
  %129 = load i32*, i32** %21, align 8
  %130 = call i32 @deNoiseSpacial(i8* %121, i8* %122, i32* %123, i32 %124, i32 %125, i32 %126, i32 %127, i32* %128, i32* %129)
  br label %331

131:                                              ; preds = %115
  %132 = load i8*, i8** %12, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 0
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i32
  %136 = shl i32 %135, 16
  store i32 %136, i32* %25, align 4
  %137 = load i32*, i32** %14, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  store i32 %136, i32* %138, align 4
  %139 = load i16*, i16** %27, align 8
  %140 = getelementptr inbounds i16, i16* %139, i64 0
  %141 = load i16, i16* %140, align 2
  %142 = zext i16 %141 to i32
  %143 = shl i32 %142, 8
  %144 = trunc i32 %143 to i16
  %145 = load i32, i32* %25, align 4
  %146 = load i32*, i32** %22, align 8
  %147 = call i32 @LowPassMul(i16 zeroext %144, i32 %145, i32* %146)
  store i32 %147, i32* %26, align 4
  %148 = load i32, i32* %26, align 4
  %149 = add i32 %148, 268435583
  %150 = lshr i32 %149, 8
  %151 = trunc i32 %150 to i16
  %152 = load i16*, i16** %27, align 8
  %153 = getelementptr inbounds i16, i16* %152, i64 0
  store i16 %151, i16* %153, align 2
  %154 = load i32, i32* %26, align 4
  %155 = add i32 %154, 268468223
  %156 = lshr i32 %155, 16
  %157 = trunc i32 %156 to i8
  %158 = load i8*, i8** %13, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 0
  store i8 %157, i8* %159, align 1
  store i64 1, i64* %32, align 8
  br label %160

160:                                              ; preds = %203, %131
  %161 = load i64, i64* %32, align 8
  %162 = load i32, i32* %16, align 4
  %163 = sext i32 %162 to i64
  %164 = icmp slt i64 %161, %163
  br i1 %164, label %165, label %206

165:                                              ; preds = %160
  %166 = load i32, i32* %25, align 4
  %167 = trunc i32 %166 to i16
  %168 = load i8*, i8** %12, align 8
  %169 = load i64, i64* %32, align 8
  %170 = getelementptr inbounds i8, i8* %168, i64 %169
  %171 = load i8, i8* %170, align 1
  %172 = zext i8 %171 to i32
  %173 = shl i32 %172, 16
  %174 = load i32*, i32** %20, align 8
  %175 = call i32 @LowPassMul(i16 zeroext %167, i32 %173, i32* %174)
  store i32 %175, i32* %25, align 4
  %176 = load i32*, i32** %14, align 8
  %177 = load i64, i64* %32, align 8
  %178 = getelementptr inbounds i32, i32* %176, i64 %177
  store i32 %175, i32* %178, align 4
  %179 = load i16*, i16** %27, align 8
  %180 = load i64, i64* %32, align 8
  %181 = getelementptr inbounds i16, i16* %179, i64 %180
  %182 = load i16, i16* %181, align 2
  %183 = zext i16 %182 to i32
  %184 = shl i32 %183, 8
  %185 = trunc i32 %184 to i16
  %186 = load i32, i32* %25, align 4
  %187 = load i32*, i32** %22, align 8
  %188 = call i32 @LowPassMul(i16 zeroext %185, i32 %186, i32* %187)
  store i32 %188, i32* %26, align 4
  %189 = load i32, i32* %26, align 4
  %190 = add i32 %189, 268435583
  %191 = lshr i32 %190, 8
  %192 = trunc i32 %191 to i16
  %193 = load i16*, i16** %27, align 8
  %194 = load i64, i64* %32, align 8
  %195 = getelementptr inbounds i16, i16* %193, i64 %194
  store i16 %192, i16* %195, align 2
  %196 = load i32, i32* %26, align 4
  %197 = add i32 %196, 268468223
  %198 = lshr i32 %197, 16
  %199 = trunc i32 %198 to i8
  %200 = load i8*, i8** %13, align 8
  %201 = load i64, i64* %32, align 8
  %202 = getelementptr inbounds i8, i8* %200, i64 %201
  store i8 %199, i8* %202, align 1
  br label %203

203:                                              ; preds = %165
  %204 = load i64, i64* %32, align 8
  %205 = add nsw i64 %204, 1
  store i64 %205, i64* %32, align 8
  br label %160

206:                                              ; preds = %160
  store i64 1, i64* %33, align 8
  br label %207

207:                                              ; preds = %328, %206
  %208 = load i64, i64* %33, align 8
  %209 = load i32, i32* %17, align 4
  %210 = sext i32 %209 to i64
  %211 = icmp slt i64 %208, %210
  br i1 %211, label %212, label %331

212:                                              ; preds = %207
  %213 = load i16*, i16** %27, align 8
  %214 = load i64, i64* %33, align 8
  %215 = load i32, i32* %16, align 4
  %216 = sext i32 %215 to i64
  %217 = mul nsw i64 %214, %216
  %218 = getelementptr inbounds i16, i16* %213, i64 %217
  store i16* %218, i16** %34, align 8
  %219 = load i32, i32* %18, align 4
  %220 = sext i32 %219 to i64
  %221 = load i64, i64* %23, align 8
  %222 = add nsw i64 %221, %220
  store i64 %222, i64* %23, align 8
  %223 = load i32, i32* %19, align 4
  %224 = sext i32 %223 to i64
  %225 = load i64, i64* %24, align 8
  %226 = add nsw i64 %225, %224
  store i64 %226, i64* %24, align 8
  %227 = load i8*, i8** %12, align 8
  %228 = load i64, i64* %23, align 8
  %229 = getelementptr inbounds i8, i8* %227, i64 %228
  %230 = load i8, i8* %229, align 1
  %231 = zext i8 %230 to i32
  %232 = shl i32 %231, 16
  store i32 %232, i32* %25, align 4
  %233 = load i32*, i32** %14, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 0
  %235 = load i32, i32* %234, align 4
  %236 = trunc i32 %235 to i16
  %237 = load i32, i32* %25, align 4
  %238 = load i32*, i32** %21, align 8
  %239 = call i32 @LowPassMul(i16 zeroext %236, i32 %237, i32* %238)
  %240 = load i32*, i32** %14, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 0
  store i32 %239, i32* %241, align 4
  %242 = load i16*, i16** %34, align 8
  %243 = getelementptr inbounds i16, i16* %242, i64 0
  %244 = load i16, i16* %243, align 2
  %245 = zext i16 %244 to i32
  %246 = shl i32 %245, 8
  %247 = trunc i32 %246 to i16
  %248 = load i32*, i32** %14, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 0
  %250 = load i32, i32* %249, align 4
  %251 = load i32*, i32** %22, align 8
  %252 = call i32 @LowPassMul(i16 zeroext %247, i32 %250, i32* %251)
  store i32 %252, i32* %26, align 4
  %253 = load i32, i32* %26, align 4
  %254 = add i32 %253, 268435583
  %255 = lshr i32 %254, 8
  %256 = trunc i32 %255 to i16
  %257 = load i16*, i16** %34, align 8
  %258 = getelementptr inbounds i16, i16* %257, i64 0
  store i16 %256, i16* %258, align 2
  %259 = load i32, i32* %26, align 4
  %260 = add i32 %259, 268468223
  %261 = lshr i32 %260, 16
  %262 = trunc i32 %261 to i8
  %263 = load i8*, i8** %13, align 8
  %264 = load i64, i64* %24, align 8
  %265 = getelementptr inbounds i8, i8* %263, i64 %264
  store i8 %262, i8* %265, align 1
  store i64 1, i64* %35, align 8
  br label %266

266:                                              ; preds = %324, %212
  %267 = load i64, i64* %35, align 8
  %268 = load i32, i32* %16, align 4
  %269 = sext i32 %268 to i64
  %270 = icmp slt i64 %267, %269
  br i1 %270, label %271, label %327

271:                                              ; preds = %266
  %272 = load i32, i32* %25, align 4
  %273 = trunc i32 %272 to i16
  %274 = load i8*, i8** %12, align 8
  %275 = load i64, i64* %23, align 8
  %276 = load i64, i64* %35, align 8
  %277 = add nsw i64 %275, %276
  %278 = getelementptr inbounds i8, i8* %274, i64 %277
  %279 = load i8, i8* %278, align 1
  %280 = zext i8 %279 to i32
  %281 = shl i32 %280, 16
  %282 = load i32*, i32** %20, align 8
  %283 = call i32 @LowPassMul(i16 zeroext %273, i32 %281, i32* %282)
  store i32 %283, i32* %25, align 4
  %284 = load i32*, i32** %14, align 8
  %285 = load i64, i64* %35, align 8
  %286 = getelementptr inbounds i32, i32* %284, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = trunc i32 %287 to i16
  %289 = load i32, i32* %25, align 4
  %290 = load i32*, i32** %21, align 8
  %291 = call i32 @LowPassMul(i16 zeroext %288, i32 %289, i32* %290)
  %292 = load i32*, i32** %14, align 8
  %293 = load i64, i64* %35, align 8
  %294 = getelementptr inbounds i32, i32* %292, i64 %293
  store i32 %291, i32* %294, align 4
  %295 = load i16*, i16** %34, align 8
  %296 = load i64, i64* %35, align 8
  %297 = getelementptr inbounds i16, i16* %295, i64 %296
  %298 = load i16, i16* %297, align 2
  %299 = zext i16 %298 to i32
  %300 = shl i32 %299, 8
  %301 = trunc i32 %300 to i16
  %302 = load i32*, i32** %14, align 8
  %303 = load i64, i64* %35, align 8
  %304 = getelementptr inbounds i32, i32* %302, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = load i32*, i32** %22, align 8
  %307 = call i32 @LowPassMul(i16 zeroext %301, i32 %305, i32* %306)
  store i32 %307, i32* %26, align 4
  %308 = load i32, i32* %26, align 4
  %309 = add i32 %308, 268435583
  %310 = lshr i32 %309, 8
  %311 = trunc i32 %310 to i16
  %312 = load i16*, i16** %34, align 8
  %313 = load i64, i64* %35, align 8
  %314 = getelementptr inbounds i16, i16* %312, i64 %313
  store i16 %311, i16* %314, align 2
  %315 = load i32, i32* %26, align 4
  %316 = add i32 %315, 268468223
  %317 = lshr i32 %316, 16
  %318 = trunc i32 %317 to i8
  %319 = load i8*, i8** %13, align 8
  %320 = load i64, i64* %24, align 8
  %321 = load i64, i64* %35, align 8
  %322 = add nsw i64 %320, %321
  %323 = getelementptr inbounds i8, i8* %319, i64 %322
  store i8 %318, i8* %323, align 1
  br label %324

324:                                              ; preds = %271
  %325 = load i64, i64* %35, align 8
  %326 = add nsw i64 %325, 1
  store i64 %326, i64* %35, align 8
  br label %266

327:                                              ; preds = %266
  br label %328

328:                                              ; preds = %327
  %329 = load i64, i64* %33, align 8
  %330 = add nsw i64 %329, 1
  store i64 %330, i64* %33, align 8
  br label %207

331:                                              ; preds = %51, %105, %120, %207
  ret void
}

declare dso_local i16* @malloc(i32) #1

declare dso_local i32 @deNoiseTemporal(i8*, i8*, i16*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @deNoiseSpacial(i8*, i8*, i32*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @LowPassMul(i16 zeroext, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
