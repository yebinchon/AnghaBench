; ModuleID = '/home/carl/AnghaBench/zstd/contrib/linux-kernel/lib/zstd/extr_fse_compress.c_FSE_writeNCount_generic.c'
source_filename = "/home/carl/AnghaBench/zstd/contrib/linux-kernel/lib/zstd/extr_fse_compress.c_FSE_writeNCount_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FSE_MIN_TABLELOG = common dso_local global i32 0, align 4
@dstSize_tooSmall = common dso_local global i32 0, align 4
@GENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i16*, i32, i32, i32)* @FSE_writeNCount_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @FSE_writeNCount_generic(i8* %0, i64 %1, i16* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i16*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i16* %2, i16** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = bitcast i8* %28 to i64*
  store i64* %29, i64** %14, align 8
  %30 = load i64*, i64** %14, align 8
  store i64* %30, i64** %15, align 8
  %31 = load i64*, i64** %14, align 8
  %32 = load i64, i64* %9, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  store i64* %33, i64** %16, align 8
  %34 = load i32, i32* %12, align 4
  %35 = shl i32 1, %34
  store i32 %35, i32* %18, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* @FSE_MIN_TABLELOG, align 4
  %38 = sub i32 %36, %37
  %39 = load i32, i32* %22, align 4
  %40 = shl i32 %38, %39
  %41 = load i32, i32* %21, align 4
  %42 = add i32 %41, %40
  store i32 %42, i32* %21, align 4
  %43 = load i32, i32* %22, align 4
  %44 = add nsw i32 %43, 4
  store i32 %44, i32* %22, align 4
  %45 = load i32, i32* %18, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %19, align 4
  %47 = load i32, i32* %18, align 4
  store i32 %47, i32* %20, align 4
  %48 = load i32, i32* %12, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %17, align 4
  br label %50

50:                                               ; preds = %257, %6
  %51 = load i32, i32* %19, align 4
  %52 = icmp sgt i32 %51, 1
  br i1 %52, label %53, label %258

53:                                               ; preds = %50
  %54 = load i32, i32* %24, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %161

56:                                               ; preds = %53
  %57 = load i32, i32* %23, align 4
  store i32 %57, i32* %25, align 4
  br label %58

58:                                               ; preds = %66, %56
  %59 = load i16*, i16** %10, align 8
  %60 = load i32, i32* %23, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i16, i16* %59, i64 %61
  %63 = load i16, i16* %62, align 2
  %64 = icmp ne i16 %63, 0
  %65 = xor i1 %64, true
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = load i32, i32* %23, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %23, align 4
  br label %58

69:                                               ; preds = %58
  br label %70

70:                                               ; preds = %92, %69
  %71 = load i32, i32* %23, align 4
  %72 = load i32, i32* %25, align 4
  %73 = add i32 %72, 24
  %74 = icmp uge i32 %71, %73
  br i1 %74, label %75, label %106

75:                                               ; preds = %70
  %76 = load i32, i32* %25, align 4
  %77 = add i32 %76, 24
  store i32 %77, i32* %25, align 4
  %78 = load i32, i32* %22, align 4
  %79 = shl i32 65535, %78
  %80 = load i32, i32* %21, align 4
  %81 = add i32 %80, %79
  store i32 %81, i32* %21, align 4
  %82 = load i32, i32* %13, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %75
  %85 = load i64*, i64** %15, align 8
  %86 = load i64*, i64** %16, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 -2
  %88 = icmp ugt i64* %85, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32, i32* @dstSize_tooSmall, align 4
  %91 = call i64 @ERROR(i32 %90)
  store i64 %91, i64* %7, align 8
  br label %299

92:                                               ; preds = %84, %75
  %93 = load i32, i32* %21, align 4
  %94 = zext i32 %93 to i64
  %95 = load i64*, i64** %15, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 0
  store i64 %94, i64* %96, align 8
  %97 = load i32, i32* %21, align 4
  %98 = lshr i32 %97, 8
  %99 = zext i32 %98 to i64
  %100 = load i64*, i64** %15, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 1
  store i64 %99, i64* %101, align 8
  %102 = load i64*, i64** %15, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 2
  store i64* %103, i64** %15, align 8
  %104 = load i32, i32* %21, align 4
  %105 = lshr i32 %104, 16
  store i32 %105, i32* %21, align 4
  br label %70

106:                                              ; preds = %70
  br label %107

107:                                              ; preds = %112, %106
  %108 = load i32, i32* %23, align 4
  %109 = load i32, i32* %25, align 4
  %110 = add i32 %109, 3
  %111 = icmp uge i32 %108, %110
  br i1 %111, label %112, label %121

112:                                              ; preds = %107
  %113 = load i32, i32* %25, align 4
  %114 = add i32 %113, 3
  store i32 %114, i32* %25, align 4
  %115 = load i32, i32* %22, align 4
  %116 = shl i32 3, %115
  %117 = load i32, i32* %21, align 4
  %118 = add i32 %117, %116
  store i32 %118, i32* %21, align 4
  %119 = load i32, i32* %22, align 4
  %120 = add nsw i32 %119, 2
  store i32 %120, i32* %22, align 4
  br label %107

121:                                              ; preds = %107
  %122 = load i32, i32* %23, align 4
  %123 = load i32, i32* %25, align 4
  %124 = sub i32 %122, %123
  %125 = load i32, i32* %22, align 4
  %126 = shl i32 %124, %125
  %127 = load i32, i32* %21, align 4
  %128 = add i32 %127, %126
  store i32 %128, i32* %21, align 4
  %129 = load i32, i32* %22, align 4
  %130 = add nsw i32 %129, 2
  store i32 %130, i32* %22, align 4
  %131 = load i32, i32* %22, align 4
  %132 = icmp sgt i32 %131, 16
  br i1 %132, label %133, label %160

133:                                              ; preds = %121
  %134 = load i32, i32* %13, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %144, label %136

136:                                              ; preds = %133
  %137 = load i64*, i64** %15, align 8
  %138 = load i64*, i64** %16, align 8
  %139 = getelementptr inbounds i64, i64* %138, i64 -2
  %140 = icmp ugt i64* %137, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load i32, i32* @dstSize_tooSmall, align 4
  %143 = call i64 @ERROR(i32 %142)
  store i64 %143, i64* %7, align 8
  br label %299

144:                                              ; preds = %136, %133
  %145 = load i32, i32* %21, align 4
  %146 = zext i32 %145 to i64
  %147 = load i64*, i64** %15, align 8
  %148 = getelementptr inbounds i64, i64* %147, i64 0
  store i64 %146, i64* %148, align 8
  %149 = load i32, i32* %21, align 4
  %150 = lshr i32 %149, 8
  %151 = zext i32 %150 to i64
  %152 = load i64*, i64** %15, align 8
  %153 = getelementptr inbounds i64, i64* %152, i64 1
  store i64 %151, i64* %153, align 8
  %154 = load i64*, i64** %15, align 8
  %155 = getelementptr inbounds i64, i64* %154, i64 2
  store i64* %155, i64** %15, align 8
  %156 = load i32, i32* %21, align 4
  %157 = lshr i32 %156, 16
  store i32 %157, i32* %21, align 4
  %158 = load i32, i32* %22, align 4
  %159 = sub nsw i32 %158, 16
  store i32 %159, i32* %22, align 4
  br label %160

160:                                              ; preds = %144, %121
  br label %161

161:                                              ; preds = %160, %53
  %162 = load i16*, i16** %10, align 8
  %163 = load i32, i32* %23, align 4
  %164 = add i32 %163, 1
  store i32 %164, i32* %23, align 4
  %165 = zext i32 %163 to i64
  %166 = getelementptr inbounds i16, i16* %162, i64 %165
  %167 = load i16, i16* %166, align 2
  %168 = sext i16 %167 to i32
  store i32 %168, i32* %26, align 4
  %169 = load i32, i32* %20, align 4
  %170 = mul nsw i32 2, %169
  %171 = sub nsw i32 %170, 1
  %172 = load i32, i32* %19, align 4
  %173 = sub nsw i32 %171, %172
  store i32 %173, i32* %27, align 4
  %174 = load i32, i32* %26, align 4
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %161
  %177 = load i32, i32* %26, align 4
  %178 = sub nsw i32 0, %177
  br label %181

179:                                              ; preds = %161
  %180 = load i32, i32* %26, align 4
  br label %181

181:                                              ; preds = %179, %176
  %182 = phi i32 [ %178, %176 ], [ %180, %179 ]
  %183 = load i32, i32* %19, align 4
  %184 = sub nsw i32 %183, %182
  store i32 %184, i32* %19, align 4
  %185 = load i32, i32* %26, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %26, align 4
  %187 = load i32, i32* %26, align 4
  %188 = load i32, i32* %20, align 4
  %189 = icmp sge i32 %187, %188
  br i1 %189, label %190, label %194

190:                                              ; preds = %181
  %191 = load i32, i32* %27, align 4
  %192 = load i32, i32* %26, align 4
  %193 = add nsw i32 %192, %191
  store i32 %193, i32* %26, align 4
  br label %194

194:                                              ; preds = %190, %181
  %195 = load i32, i32* %26, align 4
  %196 = load i32, i32* %22, align 4
  %197 = shl i32 %195, %196
  %198 = load i32, i32* %21, align 4
  %199 = add i32 %198, %197
  store i32 %199, i32* %21, align 4
  %200 = load i32, i32* %17, align 4
  %201 = load i32, i32* %22, align 4
  %202 = add nsw i32 %201, %200
  store i32 %202, i32* %22, align 4
  %203 = load i32, i32* %26, align 4
  %204 = load i32, i32* %27, align 4
  %205 = icmp slt i32 %203, %204
  %206 = zext i1 %205 to i32
  %207 = load i32, i32* %22, align 4
  %208 = sub nsw i32 %207, %206
  store i32 %208, i32* %22, align 4
  %209 = load i32, i32* %26, align 4
  %210 = icmp eq i32 %209, 1
  %211 = zext i1 %210 to i32
  store i32 %211, i32* %24, align 4
  %212 = load i32, i32* %19, align 4
  %213 = icmp slt i32 %212, 1
  br i1 %213, label %214, label %217

214:                                              ; preds = %194
  %215 = load i32, i32* @GENERIC, align 4
  %216 = call i64 @ERROR(i32 %215)
  store i64 %216, i64* %7, align 8
  br label %299

217:                                              ; preds = %194
  br label %218

218:                                              ; preds = %222, %217
  %219 = load i32, i32* %19, align 4
  %220 = load i32, i32* %20, align 4
  %221 = icmp slt i32 %219, %220
  br i1 %221, label %222, label %227

222:                                              ; preds = %218
  %223 = load i32, i32* %17, align 4
  %224 = add nsw i32 %223, -1
  store i32 %224, i32* %17, align 4
  %225 = load i32, i32* %20, align 4
  %226 = ashr i32 %225, 1
  store i32 %226, i32* %20, align 4
  br label %218

227:                                              ; preds = %218
  %228 = load i32, i32* %22, align 4
  %229 = icmp sgt i32 %228, 16
  br i1 %229, label %230, label %257

230:                                              ; preds = %227
  %231 = load i32, i32* %13, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %241, label %233

233:                                              ; preds = %230
  %234 = load i64*, i64** %15, align 8
  %235 = load i64*, i64** %16, align 8
  %236 = getelementptr inbounds i64, i64* %235, i64 -2
  %237 = icmp ugt i64* %234, %236
  br i1 %237, label %238, label %241

238:                                              ; preds = %233
  %239 = load i32, i32* @dstSize_tooSmall, align 4
  %240 = call i64 @ERROR(i32 %239)
  store i64 %240, i64* %7, align 8
  br label %299

241:                                              ; preds = %233, %230
  %242 = load i32, i32* %21, align 4
  %243 = zext i32 %242 to i64
  %244 = load i64*, i64** %15, align 8
  %245 = getelementptr inbounds i64, i64* %244, i64 0
  store i64 %243, i64* %245, align 8
  %246 = load i32, i32* %21, align 4
  %247 = lshr i32 %246, 8
  %248 = zext i32 %247 to i64
  %249 = load i64*, i64** %15, align 8
  %250 = getelementptr inbounds i64, i64* %249, i64 1
  store i64 %248, i64* %250, align 8
  %251 = load i64*, i64** %15, align 8
  %252 = getelementptr inbounds i64, i64* %251, i64 2
  store i64* %252, i64** %15, align 8
  %253 = load i32, i32* %21, align 4
  %254 = lshr i32 %253, 16
  store i32 %254, i32* %21, align 4
  %255 = load i32, i32* %22, align 4
  %256 = sub nsw i32 %255, 16
  store i32 %256, i32* %22, align 4
  br label %257

257:                                              ; preds = %241, %227
  br label %50

258:                                              ; preds = %50
  %259 = load i32, i32* %13, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %269, label %261

261:                                              ; preds = %258
  %262 = load i64*, i64** %15, align 8
  %263 = load i64*, i64** %16, align 8
  %264 = getelementptr inbounds i64, i64* %263, i64 -2
  %265 = icmp ugt i64* %262, %264
  br i1 %265, label %266, label %269

266:                                              ; preds = %261
  %267 = load i32, i32* @dstSize_tooSmall, align 4
  %268 = call i64 @ERROR(i32 %267)
  store i64 %268, i64* %7, align 8
  br label %299

269:                                              ; preds = %261, %258
  %270 = load i32, i32* %21, align 4
  %271 = zext i32 %270 to i64
  %272 = load i64*, i64** %15, align 8
  %273 = getelementptr inbounds i64, i64* %272, i64 0
  store i64 %271, i64* %273, align 8
  %274 = load i32, i32* %21, align 4
  %275 = lshr i32 %274, 8
  %276 = zext i32 %275 to i64
  %277 = load i64*, i64** %15, align 8
  %278 = getelementptr inbounds i64, i64* %277, i64 1
  store i64 %276, i64* %278, align 8
  %279 = load i32, i32* %22, align 4
  %280 = add nsw i32 %279, 7
  %281 = sdiv i32 %280, 8
  %282 = load i64*, i64** %15, align 8
  %283 = sext i32 %281 to i64
  %284 = getelementptr inbounds i64, i64* %282, i64 %283
  store i64* %284, i64** %15, align 8
  %285 = load i32, i32* %23, align 4
  %286 = load i32, i32* %11, align 4
  %287 = add i32 %286, 1
  %288 = icmp ugt i32 %285, %287
  br i1 %288, label %289, label %292

289:                                              ; preds = %269
  %290 = load i32, i32* @GENERIC, align 4
  %291 = call i64 @ERROR(i32 %290)
  store i64 %291, i64* %7, align 8
  br label %299

292:                                              ; preds = %269
  %293 = load i64*, i64** %15, align 8
  %294 = load i64*, i64** %14, align 8
  %295 = ptrtoint i64* %293 to i64
  %296 = ptrtoint i64* %294 to i64
  %297 = sub i64 %295, %296
  %298 = sdiv exact i64 %297, 8
  store i64 %298, i64* %7, align 8
  br label %299

299:                                              ; preds = %292, %289, %266, %238, %214, %141, %89
  %300 = load i64, i64* %7, align 8
  ret i64 %300
}

declare dso_local i64 @ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
