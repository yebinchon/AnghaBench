; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-bmp.c_bmp_decompress_rle24.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-bmp.c_bmp_decompress_rle24.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.info = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"buffer overflow in bitmap data in bmp image\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"premature end of bitmap data in bmp image\00", align 1
@BI_RGB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, %struct.info*, i8*, i8**)* @bmp_decompress_rle24 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @bmp_decompress_rle24(i32* %0, %struct.info* %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.info* %1, %struct.info** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8** %3, i8*** %8, align 8
  %23 = load %struct.info*, %struct.info** %6, align 8
  %24 = getelementptr inbounds %struct.info, %struct.info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %13, align 4
  %26 = load %struct.info*, %struct.info** %6, align 8
  %27 = getelementptr inbounds %struct.info, %struct.info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %13, align 4
  %30 = mul nsw i32 %29, 3
  %31 = add nsw i32 %30, 3
  %32 = sdiv i32 %31, 4
  %33 = mul nsw i32 %32, 4
  store i32 %33, i32* %15, align 4
  %34 = load i8*, i8** %7, align 8
  store i8* %34, i8** %9, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* %15, align 4
  %38 = call i8* @fz_calloc(i32* %35, i32 %36, i32 %37)
  store i8* %38, i8** %12, align 8
  store i8* %38, i8** %10, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %15, align 4
  %42 = mul nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %39, i64 %43
  store i8* %44, i8** %11, align 8
  store i32 0, i32* %16, align 4
  br label %45

45:                                               ; preds = %284, %4
  %46 = load i8*, i8** %9, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 2
  %48 = load i8**, i8*** %8, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ule i8* %47, %49
  br i1 %50, label %51, label %285

51:                                               ; preds = %45
  %52 = load i8*, i8** %9, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %79

57:                                               ; preds = %51
  %58 = load i8*, i8** %9, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %57
  %64 = load i32, i32* %16, align 4
  %65 = mul nsw i32 %64, 3
  %66 = load i32, i32* %15, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* %16, align 4
  %71 = mul nsw i32 %70, 3
  %72 = sub nsw i32 %69, %71
  %73 = load i8*, i8** %10, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  store i8* %75, i8** %10, align 8
  br label %76

76:                                               ; preds = %68, %63
  %77 = load i8*, i8** %9, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 2
  store i8* %78, i8** %9, align 8
  store i32 0, i32* %16, align 4
  br label %284

79:                                               ; preds = %57, %51
  %80 = load i8*, i8** %9, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 0
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %79
  %86 = load i8*, i8** %9, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 1
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i8*, i8** %11, align 8
  store i8* %92, i8** %10, align 8
  br label %285

93:                                               ; preds = %85, %79
  %94 = load i8*, i8** %9, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 0
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %135

99:                                               ; preds = %93
  %100 = load i8*, i8** %9, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 1
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp eq i32 %103, 2
  br i1 %104, label %105, label %135

105:                                              ; preds = %99
  %106 = load i8*, i8** %9, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 4
  %108 = load i8**, i8*** %8, align 8
  %109 = load i8*, i8** %108, align 8
  %110 = icmp ugt i8* %107, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  br label %285

112:                                              ; preds = %105
  %113 = load i8*, i8** %9, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 2
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  store i32 %116, i32* %18, align 4
  %117 = load i8*, i8** %9, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 3
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  store i32 %120, i32* %19, align 4
  %121 = load i32, i32* %18, align 4
  %122 = mul nsw i32 %121, 3
  %123 = load i32, i32* %19, align 4
  %124 = load i32, i32* %15, align 4
  %125 = mul nsw i32 %123, %124
  %126 = add nsw i32 %122, %125
  %127 = load i8*, i8** %10, align 8
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i8, i8* %127, i64 %128
  store i8* %129, i8** %10, align 8
  %130 = load i8*, i8** %9, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 4
  store i8* %131, i8** %9, align 8
  %132 = load i32, i32* %18, align 4
  %133 = load i32, i32* %16, align 4
  %134 = add nsw i32 %133, %132
  store i32 %134, i32* %16, align 4
  br label %282

135:                                              ; preds = %99, %93
  %136 = load i8*, i8** %9, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 0
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %211

141:                                              ; preds = %135
  %142 = load i8*, i8** %9, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 1
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i32
  %146 = icmp sge i32 %145, 3
  br i1 %146, label %147, label %211

147:                                              ; preds = %141
  %148 = load i8*, i8** %9, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 1
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  %152 = mul nsw i32 %151, 3
  store i32 %152, i32* %20, align 4
  %153 = load i32, i32* %20, align 4
  %154 = add nsw i32 %153, 1
  %155 = sdiv i32 %154, 2
  %156 = mul nsw i32 %155, 2
  store i32 %156, i32* %21, align 4
  %157 = load i8*, i8** %9, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 2
  %159 = load i32, i32* %21, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* %158, i64 %160
  %162 = load i8**, i8*** %8, align 8
  %163 = load i8*, i8** %162, align 8
  %164 = icmp ugt i8* %161, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %147
  br label %285

166:                                              ; preds = %147
  %167 = load i8*, i8** %10, align 8
  %168 = load i32, i32* %20, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %167, i64 %169
  %171 = load i8*, i8** %11, align 8
  %172 = icmp ugt i8* %170, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %166
  %174 = load i32*, i32** %5, align 8
  %175 = call i32 @fz_warn(i32* %174, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %285

176:                                              ; preds = %166
  %177 = load i8*, i8** %9, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 2
  store i8* %178, i8** %9, align 8
  store i32 0, i32* %17, align 4
  br label %179

179:                                              ; preds = %193, %176
  %180 = load i32, i32* %17, align 4
  %181 = load i32, i32* %20, align 4
  %182 = icmp slt i32 %180, %181
  br i1 %182, label %183, label %196

183:                                              ; preds = %179
  %184 = load i8*, i8** %9, align 8
  %185 = load i32, i32* %17, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %184, i64 %186
  %188 = load i8, i8* %187, align 1
  %189 = load i8*, i8** %10, align 8
  %190 = load i32, i32* %17, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8, i8* %189, i64 %191
  store i8 %188, i8* %192, align 1
  br label %193

193:                                              ; preds = %183
  %194 = load i32, i32* %17, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %17, align 4
  br label %179

196:                                              ; preds = %179
  %197 = load i32, i32* %20, align 4
  %198 = load i8*, i8** %10, align 8
  %199 = sext i32 %197 to i64
  %200 = getelementptr inbounds i8, i8* %198, i64 %199
  store i8* %200, i8** %10, align 8
  %201 = load i32, i32* %20, align 4
  %202 = add nsw i32 %201, 1
  %203 = sdiv i32 %202, 2
  %204 = mul nsw i32 %203, 2
  %205 = load i8*, i8** %9, align 8
  %206 = sext i32 %204 to i64
  %207 = getelementptr inbounds i8, i8* %205, i64 %206
  store i8* %207, i8** %9, align 8
  %208 = load i32, i32* %20, align 4
  %209 = load i32, i32* %16, align 4
  %210 = add nsw i32 %209, %208
  store i32 %210, i32* %16, align 4
  br label %281

211:                                              ; preds = %141, %135
  %212 = load i8*, i8** %9, align 8
  %213 = getelementptr inbounds i8, i8* %212, i64 0
  %214 = load i8, i8* %213, align 1
  %215 = zext i8 %214 to i32
  %216 = mul nsw i32 %215, 3
  store i32 %216, i32* %22, align 4
  %217 = load i8*, i8** %9, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 1
  %219 = getelementptr inbounds i8, i8* %218, i64 3
  %220 = load i8**, i8*** %8, align 8
  %221 = load i8*, i8** %220, align 8
  %222 = icmp ugt i8* %219, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %211
  br label %285

224:                                              ; preds = %211
  %225 = load i8*, i8** %10, align 8
  %226 = load i32, i32* %22, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i8, i8* %225, i64 %227
  %229 = load i8*, i8** %11, align 8
  %230 = icmp ugt i8* %228, %229
  br i1 %230, label %231, label %234

231:                                              ; preds = %224
  %232 = load i32*, i32** %5, align 8
  %233 = call i32 @fz_warn(i32* %232, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %285

234:                                              ; preds = %224
  store i32 0, i32* %17, align 4
  br label %235

235:                                              ; preds = %268, %234
  %236 = load i32, i32* %17, align 4
  %237 = load i32, i32* %22, align 4
  %238 = sdiv i32 %237, 3
  %239 = icmp slt i32 %236, %238
  br i1 %239, label %240, label %271

240:                                              ; preds = %235
  %241 = load i8*, i8** %9, align 8
  %242 = getelementptr inbounds i8, i8* %241, i64 1
  %243 = load i8, i8* %242, align 1
  %244 = load i8*, i8** %10, align 8
  %245 = load i32, i32* %17, align 4
  %246 = mul nsw i32 %245, 3
  %247 = add nsw i32 %246, 0
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i8, i8* %244, i64 %248
  store i8 %243, i8* %249, align 1
  %250 = load i8*, i8** %9, align 8
  %251 = getelementptr inbounds i8, i8* %250, i64 2
  %252 = load i8, i8* %251, align 1
  %253 = load i8*, i8** %10, align 8
  %254 = load i32, i32* %17, align 4
  %255 = mul nsw i32 %254, 3
  %256 = add nsw i32 %255, 1
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i8, i8* %253, i64 %257
  store i8 %252, i8* %258, align 1
  %259 = load i8*, i8** %9, align 8
  %260 = getelementptr inbounds i8, i8* %259, i64 3
  %261 = load i8, i8* %260, align 1
  %262 = load i8*, i8** %10, align 8
  %263 = load i32, i32* %17, align 4
  %264 = mul nsw i32 %263, 3
  %265 = add nsw i32 %264, 2
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i8, i8* %262, i64 %266
  store i8 %261, i8* %267, align 1
  br label %268

268:                                              ; preds = %240
  %269 = load i32, i32* %17, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %17, align 4
  br label %235

271:                                              ; preds = %235
  %272 = load i32, i32* %22, align 4
  %273 = load i8*, i8** %10, align 8
  %274 = sext i32 %272 to i64
  %275 = getelementptr inbounds i8, i8* %273, i64 %274
  store i8* %275, i8** %10, align 8
  %276 = load i8*, i8** %9, align 8
  %277 = getelementptr inbounds i8, i8* %276, i64 4
  store i8* %277, i8** %9, align 8
  %278 = load i32, i32* %22, align 4
  %279 = load i32, i32* %16, align 4
  %280 = add nsw i32 %279, %278
  store i32 %280, i32* %16, align 4
  br label %281

281:                                              ; preds = %271, %196
  br label %282

282:                                              ; preds = %281, %112
  br label %283

283:                                              ; preds = %282
  br label %284

284:                                              ; preds = %283, %76
  br label %45

285:                                              ; preds = %231, %223, %173, %165, %111, %91, %45
  %286 = load i8*, i8** %10, align 8
  %287 = load i8*, i8** %11, align 8
  %288 = icmp ult i8* %286, %287
  br i1 %288, label %289, label %292

289:                                              ; preds = %285
  %290 = load i32*, i32** %5, align 8
  %291 = call i32 @fz_warn(i32* %290, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %292

292:                                              ; preds = %289, %285
  %293 = load i32, i32* @BI_RGB, align 4
  %294 = load %struct.info*, %struct.info** %6, align 8
  %295 = getelementptr inbounds %struct.info, %struct.info* %294, i32 0, i32 3
  store i32 %293, i32* %295, align 4
  %296 = load %struct.info*, %struct.info** %6, align 8
  %297 = getelementptr inbounds %struct.info, %struct.info* %296, i32 0, i32 2
  store i32 24, i32* %297, align 4
  %298 = load i8*, i8** %11, align 8
  %299 = load i8**, i8*** %8, align 8
  store i8* %298, i8** %299, align 8
  %300 = load i8*, i8** %12, align 8
  ret i8* %300
}

declare dso_local i8* @fz_calloc(i32*, i32, i32) #1

declare dso_local i32 @fz_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
