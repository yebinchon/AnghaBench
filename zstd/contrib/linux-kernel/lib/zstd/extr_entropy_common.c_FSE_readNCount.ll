; ModuleID = '/home/carl/AnghaBench/zstd/contrib/linux-kernel/lib/zstd/extr_entropy_common.c_FSE_readNCount.c'
source_filename = "/home/carl/AnghaBench/zstd/contrib/linux-kernel/lib/zstd/extr_entropy_common.c_FSE_readNCount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@srcSize_wrong = common dso_local global i32 0, align 4
@FSE_MIN_TABLELOG = common dso_local global i32 0, align 4
@FSE_TABLELOG_ABSOLUTE_MAX = common dso_local global i32 0, align 4
@tableLog_tooLarge = common dso_local global i32 0, align 4
@maxSymbolValue_tooSmall = common dso_local global i32 0, align 4
@corruption_detected = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FSE_readNCount(i16* %0, i32* %1, i32* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i16* %0, i16** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = bitcast i8* %25 to i32*
  store i32* %26, i32** %12, align 8
  %27 = load i32*, i32** %12, align 8
  %28 = load i64, i64* %11, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  store i32* %29, i32** %13, align 8
  %30 = load i32*, i32** %12, align 8
  store i32* %30, i32** %14, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %31 = load i64, i64* %11, align 8
  %32 = icmp ult i64 %31, 4
  br i1 %32, label %33, label %36

33:                                               ; preds = %5
  %34 = load i32, i32* @srcSize_wrong, align 4
  %35 = call i64 @ERROR(i32 %34)
  store i64 %35, i64* %6, align 8
  br label %310

36:                                               ; preds = %5
  %37 = load i32*, i32** %14, align 8
  %38 = call i32 @ZSTD_readLE32(i32* %37)
  store i32 %38, i32* %18, align 4
  %39 = load i32, i32* %18, align 4
  %40 = and i32 %39, 15
  %41 = load i32, i32* @FSE_MIN_TABLELOG, align 4
  %42 = add nsw i32 %40, %41
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* @FSE_TABLELOG_ABSOLUTE_MAX, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %36
  %47 = load i32, i32* @tableLog_tooLarge, align 4
  %48 = call i64 @ERROR(i32 %47)
  store i64 %48, i64* %6, align 8
  br label %310

49:                                               ; preds = %36
  %50 = load i32, i32* %18, align 4
  %51 = ashr i32 %50, 4
  store i32 %51, i32* %18, align 4
  store i32 4, i32* %19, align 4
  %52 = load i32, i32* %15, align 4
  %53 = load i32*, i32** %9, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* %15, align 4
  %55 = shl i32 1, %54
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* %15, align 4
  %58 = shl i32 1, %57
  store i32 %58, i32* %17, align 4
  %59 = load i32, i32* %15, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %15, align 4
  br label %61

61:                                               ; preds = %276, %49
  %62 = load i32, i32* %16, align 4
  %63 = icmp sgt i32 %62, 1
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* %20, align 4
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %66, align 4
  %68 = icmp ule i32 %65, %67
  %69 = zext i1 %68 to i32
  %70 = and i32 %64, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %282

72:                                               ; preds = %61
  %73 = load i32, i32* %21, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %168

75:                                               ; preds = %72
  %76 = load i32, i32* %20, align 4
  store i32 %76, i32* %22, align 4
  br label %77

77:                                               ; preds = %100, %75
  %78 = load i32, i32* %18, align 4
  %79 = and i32 %78, 65535
  %80 = icmp eq i32 %79, 65535
  br i1 %80, label %81, label %101

81:                                               ; preds = %77
  %82 = load i32, i32* %22, align 4
  %83 = add i32 %82, 24
  store i32 %83, i32* %22, align 4
  %84 = load i32*, i32** %14, align 8
  %85 = load i32*, i32** %13, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 -5
  %87 = icmp ult i32* %84, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %81
  %89 = load i32*, i32** %14, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 2
  store i32* %90, i32** %14, align 8
  %91 = load i32*, i32** %14, align 8
  %92 = call i32 @ZSTD_readLE32(i32* %91)
  %93 = load i32, i32* %19, align 4
  %94 = ashr i32 %92, %93
  store i32 %94, i32* %18, align 4
  br label %100

95:                                               ; preds = %81
  %96 = load i32, i32* %18, align 4
  %97 = ashr i32 %96, 16
  store i32 %97, i32* %18, align 4
  %98 = load i32, i32* %19, align 4
  %99 = add nsw i32 %98, 16
  store i32 %99, i32* %19, align 4
  br label %100

100:                                              ; preds = %95, %88
  br label %77

101:                                              ; preds = %77
  br label %102

102:                                              ; preds = %106, %101
  %103 = load i32, i32* %18, align 4
  %104 = and i32 %103, 3
  %105 = icmp eq i32 %104, 3
  br i1 %105, label %106, label %113

106:                                              ; preds = %102
  %107 = load i32, i32* %22, align 4
  %108 = add i32 %107, 3
  store i32 %108, i32* %22, align 4
  %109 = load i32, i32* %18, align 4
  %110 = ashr i32 %109, 2
  store i32 %110, i32* %18, align 4
  %111 = load i32, i32* %19, align 4
  %112 = add nsw i32 %111, 2
  store i32 %112, i32* %19, align 4
  br label %102

113:                                              ; preds = %102
  %114 = load i32, i32* %18, align 4
  %115 = and i32 %114, 3
  %116 = load i32, i32* %22, align 4
  %117 = add i32 %116, %115
  store i32 %117, i32* %22, align 4
  %118 = load i32, i32* %19, align 4
  %119 = add nsw i32 %118, 2
  store i32 %119, i32* %19, align 4
  %120 = load i32, i32* %22, align 4
  %121 = load i32*, i32** %8, align 8
  %122 = load i32, i32* %121, align 4
  %123 = icmp ugt i32 %120, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %113
  %125 = load i32, i32* @maxSymbolValue_tooSmall, align 4
  %126 = call i64 @ERROR(i32 %125)
  store i64 %126, i64* %6, align 8
  br label %310

127:                                              ; preds = %113
  br label %128

128:                                              ; preds = %132, %127
  %129 = load i32, i32* %20, align 4
  %130 = load i32, i32* %22, align 4
  %131 = icmp ult i32 %129, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %128
  %133 = load i16*, i16** %7, align 8
  %134 = load i32, i32* %20, align 4
  %135 = add i32 %134, 1
  store i32 %135, i32* %20, align 4
  %136 = zext i32 %134 to i64
  %137 = getelementptr inbounds i16, i16* %133, i64 %136
  store i16 0, i16* %137, align 2
  br label %128

138:                                              ; preds = %128
  %139 = load i32*, i32** %14, align 8
  %140 = load i32*, i32** %13, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 -7
  %142 = icmp ule i32* %139, %141
  br i1 %142, label %152, label %143

143:                                              ; preds = %138
  %144 = load i32*, i32** %14, align 8
  %145 = load i32, i32* %19, align 4
  %146 = ashr i32 %145, 3
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %144, i64 %147
  %149 = load i32*, i32** %13, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 -4
  %151 = icmp ule i32* %148, %150
  br i1 %151, label %152, label %164

152:                                              ; preds = %143, %138
  %153 = load i32, i32* %19, align 4
  %154 = ashr i32 %153, 3
  %155 = load i32*, i32** %14, align 8
  %156 = sext i32 %154 to i64
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  store i32* %157, i32** %14, align 8
  %158 = load i32, i32* %19, align 4
  %159 = and i32 %158, 7
  store i32 %159, i32* %19, align 4
  %160 = load i32*, i32** %14, align 8
  %161 = call i32 @ZSTD_readLE32(i32* %160)
  %162 = load i32, i32* %19, align 4
  %163 = ashr i32 %161, %162
  store i32 %163, i32* %18, align 4
  br label %167

164:                                              ; preds = %143
  %165 = load i32, i32* %18, align 4
  %166 = ashr i32 %165, 2
  store i32 %166, i32* %18, align 4
  br label %167

167:                                              ; preds = %164, %152
  br label %168

168:                                              ; preds = %167, %72
  %169 = load i32, i32* %17, align 4
  %170 = mul nsw i32 2, %169
  %171 = sub nsw i32 %170, 1
  %172 = load i32, i32* %16, align 4
  %173 = sub nsw i32 %171, %172
  store i32 %173, i32* %23, align 4
  %174 = load i32, i32* %18, align 4
  %175 = load i32, i32* %17, align 4
  %176 = sub nsw i32 %175, 1
  %177 = and i32 %174, %176
  %178 = load i32, i32* %23, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %189

180:                                              ; preds = %168
  %181 = load i32, i32* %18, align 4
  %182 = load i32, i32* %17, align 4
  %183 = sub nsw i32 %182, 1
  %184 = and i32 %181, %183
  store i32 %184, i32* %24, align 4
  %185 = load i32, i32* %15, align 4
  %186 = sub nsw i32 %185, 1
  %187 = load i32, i32* %19, align 4
  %188 = add nsw i32 %187, %186
  store i32 %188, i32* %19, align 4
  br label %206

189:                                              ; preds = %168
  %190 = load i32, i32* %18, align 4
  %191 = load i32, i32* %17, align 4
  %192 = mul nsw i32 2, %191
  %193 = sub nsw i32 %192, 1
  %194 = and i32 %190, %193
  store i32 %194, i32* %24, align 4
  %195 = load i32, i32* %24, align 4
  %196 = load i32, i32* %17, align 4
  %197 = icmp sge i32 %195, %196
  br i1 %197, label %198, label %202

198:                                              ; preds = %189
  %199 = load i32, i32* %23, align 4
  %200 = load i32, i32* %24, align 4
  %201 = sub nsw i32 %200, %199
  store i32 %201, i32* %24, align 4
  br label %202

202:                                              ; preds = %198, %189
  %203 = load i32, i32* %15, align 4
  %204 = load i32, i32* %19, align 4
  %205 = add nsw i32 %204, %203
  store i32 %205, i32* %19, align 4
  br label %206

206:                                              ; preds = %202, %180
  %207 = load i32, i32* %24, align 4
  %208 = add nsw i32 %207, -1
  store i32 %208, i32* %24, align 4
  %209 = load i32, i32* %24, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %206
  %212 = load i32, i32* %24, align 4
  %213 = sub nsw i32 0, %212
  br label %216

214:                                              ; preds = %206
  %215 = load i32, i32* %24, align 4
  br label %216

216:                                              ; preds = %214, %211
  %217 = phi i32 [ %213, %211 ], [ %215, %214 ]
  %218 = load i32, i32* %16, align 4
  %219 = sub nsw i32 %218, %217
  store i32 %219, i32* %16, align 4
  %220 = load i32, i32* %24, align 4
  %221 = trunc i32 %220 to i16
  %222 = load i16*, i16** %7, align 8
  %223 = load i32, i32* %20, align 4
  %224 = add i32 %223, 1
  store i32 %224, i32* %20, align 4
  %225 = zext i32 %223 to i64
  %226 = getelementptr inbounds i16, i16* %222, i64 %225
  store i16 %221, i16* %226, align 2
  %227 = load i32, i32* %24, align 4
  %228 = icmp ne i32 %227, 0
  %229 = xor i1 %228, true
  %230 = zext i1 %229 to i32
  store i32 %230, i32* %21, align 4
  br label %231

231:                                              ; preds = %235, %216
  %232 = load i32, i32* %16, align 4
  %233 = load i32, i32* %17, align 4
  %234 = icmp slt i32 %232, %233
  br i1 %234, label %235, label %240

235:                                              ; preds = %231
  %236 = load i32, i32* %15, align 4
  %237 = add nsw i32 %236, -1
  store i32 %237, i32* %15, align 4
  %238 = load i32, i32* %17, align 4
  %239 = ashr i32 %238, 1
  store i32 %239, i32* %17, align 4
  br label %231

240:                                              ; preds = %231
  %241 = load i32*, i32** %14, align 8
  %242 = load i32*, i32** %13, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 -7
  %244 = icmp ule i32* %241, %243
  br i1 %244, label %254, label %245

245:                                              ; preds = %240
  %246 = load i32*, i32** %14, align 8
  %247 = load i32, i32* %19, align 4
  %248 = ashr i32 %247, 3
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %246, i64 %249
  %251 = load i32*, i32** %13, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 -4
  %253 = icmp ule i32* %250, %252
  br i1 %253, label %254, label %262

254:                                              ; preds = %245, %240
  %255 = load i32, i32* %19, align 4
  %256 = ashr i32 %255, 3
  %257 = load i32*, i32** %14, align 8
  %258 = sext i32 %256 to i64
  %259 = getelementptr inbounds i32, i32* %257, i64 %258
  store i32* %259, i32** %14, align 8
  %260 = load i32, i32* %19, align 4
  %261 = and i32 %260, 7
  store i32 %261, i32* %19, align 4
  br label %276

262:                                              ; preds = %245
  %263 = load i32*, i32** %13, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 -4
  %265 = load i32*, i32** %14, align 8
  %266 = ptrtoint i32* %264 to i64
  %267 = ptrtoint i32* %265 to i64
  %268 = sub i64 %266, %267
  %269 = sdiv exact i64 %268, 4
  %270 = mul nsw i64 8, %269
  %271 = trunc i64 %270 to i32
  %272 = load i32, i32* %19, align 4
  %273 = sub nsw i32 %272, %271
  store i32 %273, i32* %19, align 4
  %274 = load i32*, i32** %13, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 -4
  store i32* %275, i32** %14, align 8
  br label %276

276:                                              ; preds = %262, %254
  %277 = load i32*, i32** %14, align 8
  %278 = call i32 @ZSTD_readLE32(i32* %277)
  %279 = load i32, i32* %19, align 4
  %280 = and i32 %279, 31
  %281 = ashr i32 %278, %280
  store i32 %281, i32* %18, align 4
  br label %61

282:                                              ; preds = %61
  %283 = load i32, i32* %16, align 4
  %284 = icmp ne i32 %283, 1
  br i1 %284, label %285, label %288

285:                                              ; preds = %282
  %286 = load i32, i32* @corruption_detected, align 4
  %287 = call i64 @ERROR(i32 %286)
  store i64 %287, i64* %6, align 8
  br label %310

288:                                              ; preds = %282
  %289 = load i32, i32* %19, align 4
  %290 = icmp sgt i32 %289, 32
  br i1 %290, label %291, label %294

291:                                              ; preds = %288
  %292 = load i32, i32* @corruption_detected, align 4
  %293 = call i64 @ERROR(i32 %292)
  store i64 %293, i64* %6, align 8
  br label %310

294:                                              ; preds = %288
  %295 = load i32, i32* %20, align 4
  %296 = sub i32 %295, 1
  %297 = load i32*, i32** %8, align 8
  store i32 %296, i32* %297, align 4
  %298 = load i32, i32* %19, align 4
  %299 = add nsw i32 %298, 7
  %300 = ashr i32 %299, 3
  %301 = load i32*, i32** %14, align 8
  %302 = sext i32 %300 to i64
  %303 = getelementptr inbounds i32, i32* %301, i64 %302
  store i32* %303, i32** %14, align 8
  %304 = load i32*, i32** %14, align 8
  %305 = load i32*, i32** %12, align 8
  %306 = ptrtoint i32* %304 to i64
  %307 = ptrtoint i32* %305 to i64
  %308 = sub i64 %306, %307
  %309 = sdiv exact i64 %308, 4
  store i64 %309, i64* %6, align 8
  br label %310

310:                                              ; preds = %294, %291, %285, %124, %46, %33
  %311 = load i64, i64* %6, align 8
  ret i64 %311
}

declare dso_local i64 @ERROR(i32) #1

declare dso_local i32 @ZSTD_readLE32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
