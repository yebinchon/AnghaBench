; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_fse_compress.c_FSE_writeNCount_generic.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_fse_compress.c_FSE_writeNCount_generic.c"
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
  %28 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i16* %2, i16** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = bitcast i8* %29 to i64*
  store i64* %30, i64** %14, align 8
  %31 = load i64*, i64** %14, align 8
  store i64* %31, i64** %15, align 8
  %32 = load i64*, i64** %14, align 8
  %33 = load i64, i64* %9, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  store i64* %34, i64** %16, align 8
  %35 = load i32, i32* %12, align 4
  %36 = shl i32 1, %35
  store i32 %36, i32* %18, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %37 = load i32, i32* %11, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @FSE_MIN_TABLELOG, align 4
  %41 = sub i32 %39, %40
  %42 = load i32, i32* %22, align 4
  %43 = shl i32 %41, %42
  %44 = load i32, i32* %21, align 4
  %45 = add i32 %44, %43
  store i32 %45, i32* %21, align 4
  %46 = load i32, i32* %22, align 4
  %47 = add nsw i32 %46, 4
  store i32 %47, i32* %22, align 4
  %48 = load i32, i32* %18, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %19, align 4
  %50 = load i32, i32* %18, align 4
  store i32 %50, i32* %20, align 4
  %51 = load i32, i32* %12, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %17, align 4
  br label %53

53:                                               ; preds = %277, %6
  %54 = load i32, i32* %23, align 4
  %55 = load i32, i32* %24, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32, i32* %19, align 4
  %59 = icmp sgt i32 %58, 1
  br label %60

60:                                               ; preds = %57, %53
  %61 = phi i1 [ false, %53 ], [ %59, %57 ]
  br i1 %61, label %62, label %278

62:                                               ; preds = %60
  %63 = load i32, i32* %25, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %181

65:                                               ; preds = %62
  %66 = load i32, i32* %23, align 4
  store i32 %66, i32* %26, align 4
  br label %67

67:                                               ; preds = %81, %65
  %68 = load i32, i32* %23, align 4
  %69 = load i32, i32* %24, align 4
  %70 = icmp ult i32 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %67
  %72 = load i16*, i16** %10, align 8
  %73 = load i32, i32* %23, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i16, i16* %72, i64 %74
  %76 = load i16, i16* %75, align 2
  %77 = icmp ne i16 %76, 0
  %78 = xor i1 %77, true
  br label %79

79:                                               ; preds = %71, %67
  %80 = phi i1 [ false, %67 ], [ %78, %71 ]
  br i1 %80, label %81, label %84

81:                                               ; preds = %79
  %82 = load i32, i32* %23, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %23, align 4
  br label %67

84:                                               ; preds = %79
  %85 = load i32, i32* %23, align 4
  %86 = load i32, i32* %24, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  br label %278

89:                                               ; preds = %84
  br label %90

90:                                               ; preds = %112, %89
  %91 = load i32, i32* %23, align 4
  %92 = load i32, i32* %26, align 4
  %93 = add i32 %92, 24
  %94 = icmp uge i32 %91, %93
  br i1 %94, label %95, label %126

95:                                               ; preds = %90
  %96 = load i32, i32* %26, align 4
  %97 = add i32 %96, 24
  store i32 %97, i32* %26, align 4
  %98 = load i32, i32* %22, align 4
  %99 = shl i32 65535, %98
  %100 = load i32, i32* %21, align 4
  %101 = add i32 %100, %99
  store i32 %101, i32* %21, align 4
  %102 = load i32, i32* %13, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %112, label %104

104:                                              ; preds = %95
  %105 = load i64*, i64** %15, align 8
  %106 = load i64*, i64** %16, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 -2
  %108 = icmp ugt i64* %105, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load i32, i32* @dstSize_tooSmall, align 4
  %111 = call i64 @ERROR(i32 %110)
  store i64 %111, i64* %7, align 8
  br label %322

112:                                              ; preds = %104, %95
  %113 = load i32, i32* %21, align 4
  %114 = zext i32 %113 to i64
  %115 = load i64*, i64** %15, align 8
  %116 = getelementptr inbounds i64, i64* %115, i64 0
  store i64 %114, i64* %116, align 8
  %117 = load i32, i32* %21, align 4
  %118 = lshr i32 %117, 8
  %119 = zext i32 %118 to i64
  %120 = load i64*, i64** %15, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 1
  store i64 %119, i64* %121, align 8
  %122 = load i64*, i64** %15, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 2
  store i64* %123, i64** %15, align 8
  %124 = load i32, i32* %21, align 4
  %125 = lshr i32 %124, 16
  store i32 %125, i32* %21, align 4
  br label %90

126:                                              ; preds = %90
  br label %127

127:                                              ; preds = %132, %126
  %128 = load i32, i32* %23, align 4
  %129 = load i32, i32* %26, align 4
  %130 = add i32 %129, 3
  %131 = icmp uge i32 %128, %130
  br i1 %131, label %132, label %141

132:                                              ; preds = %127
  %133 = load i32, i32* %26, align 4
  %134 = add i32 %133, 3
  store i32 %134, i32* %26, align 4
  %135 = load i32, i32* %22, align 4
  %136 = shl i32 3, %135
  %137 = load i32, i32* %21, align 4
  %138 = add i32 %137, %136
  store i32 %138, i32* %21, align 4
  %139 = load i32, i32* %22, align 4
  %140 = add nsw i32 %139, 2
  store i32 %140, i32* %22, align 4
  br label %127

141:                                              ; preds = %127
  %142 = load i32, i32* %23, align 4
  %143 = load i32, i32* %26, align 4
  %144 = sub i32 %142, %143
  %145 = load i32, i32* %22, align 4
  %146 = shl i32 %144, %145
  %147 = load i32, i32* %21, align 4
  %148 = add i32 %147, %146
  store i32 %148, i32* %21, align 4
  %149 = load i32, i32* %22, align 4
  %150 = add nsw i32 %149, 2
  store i32 %150, i32* %22, align 4
  %151 = load i32, i32* %22, align 4
  %152 = icmp sgt i32 %151, 16
  br i1 %152, label %153, label %180

153:                                              ; preds = %141
  %154 = load i32, i32* %13, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %164, label %156

156:                                              ; preds = %153
  %157 = load i64*, i64** %15, align 8
  %158 = load i64*, i64** %16, align 8
  %159 = getelementptr inbounds i64, i64* %158, i64 -2
  %160 = icmp ugt i64* %157, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = load i32, i32* @dstSize_tooSmall, align 4
  %163 = call i64 @ERROR(i32 %162)
  store i64 %163, i64* %7, align 8
  br label %322

164:                                              ; preds = %156, %153
  %165 = load i32, i32* %21, align 4
  %166 = zext i32 %165 to i64
  %167 = load i64*, i64** %15, align 8
  %168 = getelementptr inbounds i64, i64* %167, i64 0
  store i64 %166, i64* %168, align 8
  %169 = load i32, i32* %21, align 4
  %170 = lshr i32 %169, 8
  %171 = zext i32 %170 to i64
  %172 = load i64*, i64** %15, align 8
  %173 = getelementptr inbounds i64, i64* %172, i64 1
  store i64 %171, i64* %173, align 8
  %174 = load i64*, i64** %15, align 8
  %175 = getelementptr inbounds i64, i64* %174, i64 2
  store i64* %175, i64** %15, align 8
  %176 = load i32, i32* %21, align 4
  %177 = lshr i32 %176, 16
  store i32 %177, i32* %21, align 4
  %178 = load i32, i32* %22, align 4
  %179 = sub nsw i32 %178, 16
  store i32 %179, i32* %22, align 4
  br label %180

180:                                              ; preds = %164, %141
  br label %181

181:                                              ; preds = %180, %62
  %182 = load i16*, i16** %10, align 8
  %183 = load i32, i32* %23, align 4
  %184 = add i32 %183, 1
  store i32 %184, i32* %23, align 4
  %185 = zext i32 %183 to i64
  %186 = getelementptr inbounds i16, i16* %182, i64 %185
  %187 = load i16, i16* %186, align 2
  %188 = sext i16 %187 to i32
  store i32 %188, i32* %27, align 4
  %189 = load i32, i32* %20, align 4
  %190 = mul nsw i32 2, %189
  %191 = sub nsw i32 %190, 1
  %192 = load i32, i32* %19, align 4
  %193 = sub nsw i32 %191, %192
  store i32 %193, i32* %28, align 4
  %194 = load i32, i32* %27, align 4
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %181
  %197 = load i32, i32* %27, align 4
  %198 = sub nsw i32 0, %197
  br label %201

199:                                              ; preds = %181
  %200 = load i32, i32* %27, align 4
  br label %201

201:                                              ; preds = %199, %196
  %202 = phi i32 [ %198, %196 ], [ %200, %199 ]
  %203 = load i32, i32* %19, align 4
  %204 = sub nsw i32 %203, %202
  store i32 %204, i32* %19, align 4
  %205 = load i32, i32* %27, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %27, align 4
  %207 = load i32, i32* %27, align 4
  %208 = load i32, i32* %20, align 4
  %209 = icmp sge i32 %207, %208
  br i1 %209, label %210, label %214

210:                                              ; preds = %201
  %211 = load i32, i32* %28, align 4
  %212 = load i32, i32* %27, align 4
  %213 = add nsw i32 %212, %211
  store i32 %213, i32* %27, align 4
  br label %214

214:                                              ; preds = %210, %201
  %215 = load i32, i32* %27, align 4
  %216 = load i32, i32* %22, align 4
  %217 = shl i32 %215, %216
  %218 = load i32, i32* %21, align 4
  %219 = add i32 %218, %217
  store i32 %219, i32* %21, align 4
  %220 = load i32, i32* %17, align 4
  %221 = load i32, i32* %22, align 4
  %222 = add nsw i32 %221, %220
  store i32 %222, i32* %22, align 4
  %223 = load i32, i32* %27, align 4
  %224 = load i32, i32* %28, align 4
  %225 = icmp slt i32 %223, %224
  %226 = zext i1 %225 to i32
  %227 = load i32, i32* %22, align 4
  %228 = sub nsw i32 %227, %226
  store i32 %228, i32* %22, align 4
  %229 = load i32, i32* %27, align 4
  %230 = icmp eq i32 %229, 1
  %231 = zext i1 %230 to i32
  store i32 %231, i32* %25, align 4
  %232 = load i32, i32* %19, align 4
  %233 = icmp slt i32 %232, 1
  br i1 %233, label %234, label %237

234:                                              ; preds = %214
  %235 = load i32, i32* @GENERIC, align 4
  %236 = call i64 @ERROR(i32 %235)
  store i64 %236, i64* %7, align 8
  br label %322

237:                                              ; preds = %214
  br label %238

238:                                              ; preds = %242, %237
  %239 = load i32, i32* %19, align 4
  %240 = load i32, i32* %20, align 4
  %241 = icmp slt i32 %239, %240
  br i1 %241, label %242, label %247

242:                                              ; preds = %238
  %243 = load i32, i32* %17, align 4
  %244 = add nsw i32 %243, -1
  store i32 %244, i32* %17, align 4
  %245 = load i32, i32* %20, align 4
  %246 = ashr i32 %245, 1
  store i32 %246, i32* %20, align 4
  br label %238

247:                                              ; preds = %238
  %248 = load i32, i32* %22, align 4
  %249 = icmp sgt i32 %248, 16
  br i1 %249, label %250, label %277

250:                                              ; preds = %247
  %251 = load i32, i32* %13, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %261, label %253

253:                                              ; preds = %250
  %254 = load i64*, i64** %15, align 8
  %255 = load i64*, i64** %16, align 8
  %256 = getelementptr inbounds i64, i64* %255, i64 -2
  %257 = icmp ugt i64* %254, %256
  br i1 %257, label %258, label %261

258:                                              ; preds = %253
  %259 = load i32, i32* @dstSize_tooSmall, align 4
  %260 = call i64 @ERROR(i32 %259)
  store i64 %260, i64* %7, align 8
  br label %322

261:                                              ; preds = %253, %250
  %262 = load i32, i32* %21, align 4
  %263 = zext i32 %262 to i64
  %264 = load i64*, i64** %15, align 8
  %265 = getelementptr inbounds i64, i64* %264, i64 0
  store i64 %263, i64* %265, align 8
  %266 = load i32, i32* %21, align 4
  %267 = lshr i32 %266, 8
  %268 = zext i32 %267 to i64
  %269 = load i64*, i64** %15, align 8
  %270 = getelementptr inbounds i64, i64* %269, i64 1
  store i64 %268, i64* %270, align 8
  %271 = load i64*, i64** %15, align 8
  %272 = getelementptr inbounds i64, i64* %271, i64 2
  store i64* %272, i64** %15, align 8
  %273 = load i32, i32* %21, align 4
  %274 = lshr i32 %273, 16
  store i32 %274, i32* %21, align 4
  %275 = load i32, i32* %22, align 4
  %276 = sub nsw i32 %275, 16
  store i32 %276, i32* %22, align 4
  br label %277

277:                                              ; preds = %261, %247
  br label %53

278:                                              ; preds = %88, %60
  %279 = load i32, i32* %19, align 4
  %280 = icmp ne i32 %279, 1
  br i1 %280, label %281, label %284

281:                                              ; preds = %278
  %282 = load i32, i32* @GENERIC, align 4
  %283 = call i64 @ERROR(i32 %282)
  store i64 %283, i64* %7, align 8
  br label %322

284:                                              ; preds = %278
  %285 = load i32, i32* %23, align 4
  %286 = load i32, i32* %24, align 4
  %287 = icmp ule i32 %285, %286
  %288 = zext i1 %287 to i32
  %289 = call i32 @assert(i32 %288)
  %290 = load i32, i32* %13, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %300, label %292

292:                                              ; preds = %284
  %293 = load i64*, i64** %15, align 8
  %294 = load i64*, i64** %16, align 8
  %295 = getelementptr inbounds i64, i64* %294, i64 -2
  %296 = icmp ugt i64* %293, %295
  br i1 %296, label %297, label %300

297:                                              ; preds = %292
  %298 = load i32, i32* @dstSize_tooSmall, align 4
  %299 = call i64 @ERROR(i32 %298)
  store i64 %299, i64* %7, align 8
  br label %322

300:                                              ; preds = %292, %284
  %301 = load i32, i32* %21, align 4
  %302 = zext i32 %301 to i64
  %303 = load i64*, i64** %15, align 8
  %304 = getelementptr inbounds i64, i64* %303, i64 0
  store i64 %302, i64* %304, align 8
  %305 = load i32, i32* %21, align 4
  %306 = lshr i32 %305, 8
  %307 = zext i32 %306 to i64
  %308 = load i64*, i64** %15, align 8
  %309 = getelementptr inbounds i64, i64* %308, i64 1
  store i64 %307, i64* %309, align 8
  %310 = load i32, i32* %22, align 4
  %311 = add nsw i32 %310, 7
  %312 = sdiv i32 %311, 8
  %313 = load i64*, i64** %15, align 8
  %314 = sext i32 %312 to i64
  %315 = getelementptr inbounds i64, i64* %313, i64 %314
  store i64* %315, i64** %15, align 8
  %316 = load i64*, i64** %15, align 8
  %317 = load i64*, i64** %14, align 8
  %318 = ptrtoint i64* %316 to i64
  %319 = ptrtoint i64* %317 to i64
  %320 = sub i64 %318, %319
  %321 = sdiv exact i64 %320, 8
  store i64 %321, i64* %7, align 8
  br label %322

322:                                              ; preds = %300, %297, %281, %258, %234, %161, %109
  %323 = load i64, i64* %7, align 8
  ret i64 %323
}

declare dso_local i64 @ERROR(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
