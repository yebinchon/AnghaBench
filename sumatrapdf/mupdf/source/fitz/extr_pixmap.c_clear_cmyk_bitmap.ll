; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_pixmap.c_clear_cmyk_bitmap.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_pixmap.c_clear_cmyk_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { [5 x i64] }
%union.anon.0 = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32, i32, i32, i32)* @clear_cmyk_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_cmyk_bitmap(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %union.anon, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca %union.anon.0, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %31 = load i8*, i8** %8, align 8
  %32 = bitcast i8* %31 to i64*
  store i64* %32, i64** %15, align 8
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %7
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35, %7
  br label %317

39:                                               ; preds = %35
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %92

42:                                               ; preds = %39
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, 4
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %14, align 4
  %48 = add nsw i32 %46, %47
  %49 = mul nsw i32 %45, %48
  %50 = load i32, i32* %12, align 4
  %51 = sub nsw i32 %50, %49
  store i32 %51, i32* %12, align 4
  br label %52

52:                                               ; preds = %88, %42
  %53 = load i32, i32* %10, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %91

55:                                               ; preds = %52
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %17, align 4
  br label %57

57:                                               ; preds = %80, %55
  %58 = load i32, i32* %17, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %83

60:                                               ; preds = %57
  %61 = load i32, i32* %11, align 4
  store i32 %61, i32* %18, align 4
  br label %62

62:                                               ; preds = %70, %60
  %63 = load i32, i32* %18, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %62
  %66 = load i32, i32* %13, align 4
  %67 = trunc i32 %66 to i8
  %68 = load i8*, i8** %8, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %8, align 8
  store i8 %67, i8* %68, align 1
  br label %70

70:                                               ; preds = %65
  %71 = load i32, i32* %18, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %18, align 4
  br label %62

73:                                               ; preds = %62
  %74 = load i32, i32* %14, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i8*, i8** %8, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %8, align 8
  store i8 -1, i8* %77, align 1
  br label %79

79:                                               ; preds = %76, %73
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %17, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %17, align 4
  br label %57

83:                                               ; preds = %57
  %84 = load i32, i32* %12, align 4
  %85 = load i8*, i8** %8, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  store i8* %87, i8** %8, align 8
  br label %88

88:                                               ; preds = %83
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %10, align 4
  br label %52

91:                                               ; preds = %52
  br label %317

92:                                               ; preds = %39
  %93 = load i32, i32* %14, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %216

95:                                               ; preds = %92
  %96 = load i32, i32* %9, align 4
  store i32 %96, i32* %19, align 4
  %97 = load i32, i32* %9, align 4
  %98 = mul nsw i32 %97, 5
  %99 = load i32, i32* %12, align 4
  %100 = sub nsw i32 %99, %98
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %182

103:                                              ; preds = %95
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %19, align 4
  %106 = mul nsw i32 %105, %104
  store i32 %106, i32* %19, align 4
  store i32 1, i32* %10, align 4
  %107 = bitcast %union.anon* %20 to [5 x i64]*
  %108 = getelementptr inbounds [5 x i64], [5 x i64]* %107, i64 0, i64 0
  store i64 0, i64* %108, align 8
  %109 = bitcast %union.anon* %20 to [5 x i64]*
  %110 = getelementptr inbounds [5 x i64], [5 x i64]* %109, i64 0, i64 1
  store i64 0, i64* %110, align 8
  %111 = bitcast %union.anon* %20 to [5 x i64]*
  %112 = getelementptr inbounds [5 x i64], [5 x i64]* %111, i64 0, i64 2
  store i64 0, i64* %112, align 8
  %113 = bitcast %union.anon* %20 to [5 x i64]*
  %114 = getelementptr inbounds [5 x i64], [5 x i64]* %113, i64 0, i64 3
  store i64 0, i64* %114, align 8
  %115 = bitcast %union.anon* %20 to [5 x i64]*
  %116 = getelementptr inbounds [5 x i64], [5 x i64]* %115, i64 0, i64 4
  store i64 0, i64* %116, align 8
  %117 = load i32, i32* %13, align 4
  %118 = trunc i32 %117 to i8
  %119 = bitcast %union.anon* %20 to [20 x i8]*
  %120 = getelementptr inbounds [20 x i8], [20 x i8]* %119, i64 0, i64 3
  store i8 %118, i8* %120, align 1
  %121 = bitcast %union.anon* %20 to [20 x i8]*
  %122 = getelementptr inbounds [20 x i8], [20 x i8]* %121, i64 0, i64 4
  store i8 -1, i8* %122, align 4
  %123 = load i32, i32* %13, align 4
  %124 = trunc i32 %123 to i8
  %125 = bitcast %union.anon* %20 to [20 x i8]*
  %126 = getelementptr inbounds [20 x i8], [20 x i8]* %125, i64 0, i64 8
  store i8 %124, i8* %126, align 8
  %127 = bitcast %union.anon* %20 to [20 x i8]*
  %128 = getelementptr inbounds [20 x i8], [20 x i8]* %127, i64 0, i64 9
  store i8 -1, i8* %128, align 1
  %129 = load i32, i32* %13, align 4
  %130 = trunc i32 %129 to i8
  %131 = bitcast %union.anon* %20 to [20 x i8]*
  %132 = getelementptr inbounds [20 x i8], [20 x i8]* %131, i64 0, i64 13
  store i8 %130, i8* %132, align 1
  %133 = bitcast %union.anon* %20 to [20 x i8]*
  %134 = getelementptr inbounds [20 x i8], [20 x i8]* %133, i64 0, i64 14
  store i8 -1, i8* %134, align 2
  %135 = load i32, i32* %13, align 4
  %136 = trunc i32 %135 to i8
  %137 = bitcast %union.anon* %20 to [20 x i8]*
  %138 = getelementptr inbounds [20 x i8], [20 x i8]* %137, i64 0, i64 18
  store i8 %136, i8* %138, align 2
  %139 = bitcast %union.anon* %20 to [20 x i8]*
  %140 = getelementptr inbounds [20 x i8], [20 x i8]* %139, i64 0, i64 19
  store i8 -1, i8* %140, align 1
  %141 = load i32, i32* %19, align 4
  %142 = sub nsw i32 %141, 3
  store i32 %142, i32* %19, align 4
  %143 = bitcast %union.anon* %20 to [5 x i64]*
  %144 = getelementptr inbounds [5 x i64], [5 x i64]* %143, i64 0, i64 0
  %145 = load i64, i64* %144, align 8
  store i64 %145, i64* %21, align 8
  %146 = bitcast %union.anon* %20 to [5 x i64]*
  %147 = getelementptr inbounds [5 x i64], [5 x i64]* %146, i64 0, i64 1
  %148 = load i64, i64* %147, align 8
  store i64 %148, i64* %22, align 8
  %149 = bitcast %union.anon* %20 to [5 x i64]*
  %150 = getelementptr inbounds [5 x i64], [5 x i64]* %149, i64 0, i64 2
  %151 = load i64, i64* %150, align 8
  store i64 %151, i64* %23, align 8
  %152 = bitcast %union.anon* %20 to [5 x i64]*
  %153 = getelementptr inbounds [5 x i64], [5 x i64]* %152, i64 0, i64 3
  %154 = load i64, i64* %153, align 8
  store i64 %154, i64* %24, align 8
  %155 = bitcast %union.anon* %20 to [5 x i64]*
  %156 = getelementptr inbounds [5 x i64], [5 x i64]* %155, i64 0, i64 4
  %157 = load i64, i64* %156, align 8
  store i64 %157, i64* %25, align 8
  br label %158

158:                                              ; preds = %161, %103
  %159 = load i32, i32* %19, align 4
  %160 = icmp sgt i32 %159, 0
  br i1 %160, label %161, label %179

161:                                              ; preds = %158
  %162 = load i64, i64* %21, align 8
  %163 = load i64*, i64** %15, align 8
  %164 = getelementptr inbounds i64, i64* %163, i32 1
  store i64* %164, i64** %15, align 8
  store i64 %162, i64* %163, align 8
  %165 = load i64, i64* %22, align 8
  %166 = load i64*, i64** %15, align 8
  %167 = getelementptr inbounds i64, i64* %166, i32 1
  store i64* %167, i64** %15, align 8
  store i64 %165, i64* %166, align 8
  %168 = load i64, i64* %23, align 8
  %169 = load i64*, i64** %15, align 8
  %170 = getelementptr inbounds i64, i64* %169, i32 1
  store i64* %170, i64** %15, align 8
  store i64 %168, i64* %169, align 8
  %171 = load i64, i64* %24, align 8
  %172 = load i64*, i64** %15, align 8
  %173 = getelementptr inbounds i64, i64* %172, i32 1
  store i64* %173, i64** %15, align 8
  store i64 %171, i64* %172, align 8
  %174 = load i64, i64* %25, align 8
  %175 = load i64*, i64** %15, align 8
  %176 = getelementptr inbounds i64, i64* %175, i32 1
  store i64* %176, i64** %15, align 8
  store i64 %174, i64* %175, align 8
  %177 = load i32, i32* %19, align 4
  %178 = sub nsw i32 %177, 4
  store i32 %178, i32* %19, align 4
  br label %158

179:                                              ; preds = %158
  %180 = load i32, i32* %19, align 4
  %181 = add nsw i32 %180, 3
  store i32 %181, i32* %19, align 4
  br label %182

182:                                              ; preds = %179, %95
  %183 = load i64*, i64** %15, align 8
  %184 = bitcast i64* %183 to i8*
  store i8* %184, i8** %16, align 8
  %185 = load i32, i32* %19, align 4
  store i32 %185, i32* %9, align 4
  br label %186

186:                                              ; preds = %210, %182
  %187 = load i32, i32* %10, align 4
  %188 = add nsw i32 %187, -1
  store i32 %188, i32* %10, align 4
  %189 = icmp ne i32 %187, 0
  br i1 %189, label %190, label %215

190:                                              ; preds = %186
  %191 = load i32, i32* %9, align 4
  store i32 %191, i32* %19, align 4
  br label %192

192:                                              ; preds = %195, %190
  %193 = load i32, i32* %19, align 4
  %194 = icmp sgt i32 %193, 0
  br i1 %194, label %195, label %210

195:                                              ; preds = %192
  %196 = load i8*, i8** %16, align 8
  %197 = getelementptr inbounds i8, i8* %196, i32 1
  store i8* %197, i8** %16, align 8
  store i8 0, i8* %196, align 1
  %198 = load i8*, i8** %16, align 8
  %199 = getelementptr inbounds i8, i8* %198, i32 1
  store i8* %199, i8** %16, align 8
  store i8 0, i8* %198, align 1
  %200 = load i8*, i8** %16, align 8
  %201 = getelementptr inbounds i8, i8* %200, i32 1
  store i8* %201, i8** %16, align 8
  store i8 0, i8* %200, align 1
  %202 = load i32, i32* %13, align 4
  %203 = trunc i32 %202 to i8
  %204 = load i8*, i8** %16, align 8
  %205 = getelementptr inbounds i8, i8* %204, i32 1
  store i8* %205, i8** %16, align 8
  store i8 %203, i8* %204, align 1
  %206 = load i8*, i8** %16, align 8
  %207 = getelementptr inbounds i8, i8* %206, i32 1
  store i8* %207, i8** %16, align 8
  store i8 -1, i8* %206, align 1
  %208 = load i32, i32* %19, align 4
  %209 = add nsw i32 %208, -1
  store i32 %209, i32* %19, align 4
  br label %192

210:                                              ; preds = %192
  %211 = load i32, i32* %12, align 4
  %212 = load i8*, i8** %16, align 8
  %213 = sext i32 %211 to i64
  %214 = getelementptr inbounds i8, i8* %212, i64 %213
  store i8* %214, i8** %16, align 8
  br label %186

215:                                              ; preds = %186
  br label %317

216:                                              ; preds = %92
  %217 = load i32, i32* %9, align 4
  %218 = mul nsw i32 %217, 4
  %219 = load i32, i32* %12, align 4
  %220 = sub nsw i32 %219, %218
  store i32 %220, i32* %12, align 4
  %221 = load i32, i32* %12, align 4
  %222 = and i32 %221, 3
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %285

224:                                              ; preds = %216
  %225 = load i32, i32* %9, align 4
  %226 = sext i32 %225 to i64
  store i64 %226, i64* %26, align 8
  %227 = load i32, i32* %12, align 4
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %224
  %230 = load i32, i32* %10, align 4
  %231 = sext i32 %230 to i64
  %232 = load i64, i64* %26, align 8
  %233 = mul i64 %232, %231
  store i64 %233, i64* %26, align 8
  store i32 1, i32* %10, align 4
  br label %234

234:                                              ; preds = %229, %224
  %235 = load i64, i64* %26, align 8
  %236 = mul i64 %235, 4
  store i64 %236, i64* %26, align 8
  %237 = load i32, i32* %13, align 4
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %254

239:                                              ; preds = %234
  br label %240

240:                                              ; preds = %244, %239
  %241 = load i32, i32* %10, align 4
  %242 = add nsw i32 %241, -1
  store i32 %242, i32* %10, align 4
  %243 = icmp ne i32 %241, 0
  br i1 %243, label %244, label %253

244:                                              ; preds = %240
  %245 = load i64*, i64** %15, align 8
  %246 = load i64, i64* %26, align 8
  %247 = call i32 @memset(i64* %245, i32 0, i64 %246)
  %248 = load i32, i32* %12, align 4
  %249 = ashr i32 %248, 2
  %250 = load i64*, i64** %15, align 8
  %251 = sext i32 %249 to i64
  %252 = getelementptr inbounds i64, i64* %250, i64 %251
  store i64* %252, i64** %15, align 8
  br label %240

253:                                              ; preds = %240
  br label %284

254:                                              ; preds = %234
  %255 = bitcast %union.anon.0* %27 to i64*
  store i64 0, i64* %255, align 8
  %256 = load i32, i32* %13, align 4
  %257 = trunc i32 %256 to i8
  %258 = bitcast %union.anon.0* %27 to [4 x i8]*
  %259 = getelementptr inbounds [4 x i8], [4 x i8]* %258, i64 0, i64 3
  store i8 %257, i8* %259, align 1
  %260 = bitcast %union.anon.0* %27 to i64*
  %261 = load i64, i64* %260, align 8
  store i64 %261, i64* %28, align 8
  br label %262

262:                                              ; preds = %277, %254
  %263 = load i32, i32* %10, align 4
  %264 = add nsw i32 %263, -1
  store i32 %264, i32* %10, align 4
  %265 = icmp ne i32 %263, 0
  br i1 %265, label %266, label %283

266:                                              ; preds = %262
  %267 = load i64, i64* %26, align 8
  %268 = lshr i64 %267, 2
  store i64 %268, i64* %29, align 8
  br label %269

269:                                              ; preds = %273, %266
  %270 = load i64, i64* %29, align 8
  %271 = add i64 %270, -1
  store i64 %271, i64* %29, align 8
  %272 = icmp ne i64 %270, 0
  br i1 %272, label %273, label %277

273:                                              ; preds = %269
  %274 = load i64, i64* %28, align 8
  %275 = load i64*, i64** %15, align 8
  %276 = getelementptr inbounds i64, i64* %275, i32 1
  store i64* %276, i64** %15, align 8
  store i64 %274, i64* %275, align 8
  br label %269

277:                                              ; preds = %269
  %278 = load i32, i32* %12, align 4
  %279 = ashr i32 %278, 2
  %280 = load i64*, i64** %15, align 8
  %281 = sext i32 %279 to i64
  %282 = getelementptr inbounds i64, i64* %280, i64 %281
  store i64* %282, i64** %15, align 8
  br label %262

283:                                              ; preds = %262
  br label %284

284:                                              ; preds = %283, %253
  br label %316

285:                                              ; preds = %216
  %286 = load i64*, i64** %15, align 8
  %287 = bitcast i64* %286 to i8*
  store i8* %287, i8** %16, align 8
  br label %288

288:                                              ; preds = %310, %285
  %289 = load i32, i32* %10, align 4
  %290 = add nsw i32 %289, -1
  store i32 %290, i32* %10, align 4
  %291 = icmp ne i32 %289, 0
  br i1 %291, label %292, label %315

292:                                              ; preds = %288
  %293 = load i32, i32* %9, align 4
  store i32 %293, i32* %30, align 4
  br label %294

294:                                              ; preds = %297, %292
  %295 = load i32, i32* %30, align 4
  %296 = icmp sgt i32 %295, 0
  br i1 %296, label %297, label %310

297:                                              ; preds = %294
  %298 = load i8*, i8** %16, align 8
  %299 = getelementptr inbounds i8, i8* %298, i32 1
  store i8* %299, i8** %16, align 8
  store i8 0, i8* %298, align 1
  %300 = load i8*, i8** %16, align 8
  %301 = getelementptr inbounds i8, i8* %300, i32 1
  store i8* %301, i8** %16, align 8
  store i8 0, i8* %300, align 1
  %302 = load i8*, i8** %16, align 8
  %303 = getelementptr inbounds i8, i8* %302, i32 1
  store i8* %303, i8** %16, align 8
  store i8 0, i8* %302, align 1
  %304 = load i32, i32* %13, align 4
  %305 = trunc i32 %304 to i8
  %306 = load i8*, i8** %16, align 8
  %307 = getelementptr inbounds i8, i8* %306, i32 1
  store i8* %307, i8** %16, align 8
  store i8 %305, i8* %306, align 1
  %308 = load i32, i32* %30, align 4
  %309 = add nsw i32 %308, -1
  store i32 %309, i32* %30, align 4
  br label %294

310:                                              ; preds = %294
  %311 = load i32, i32* %12, align 4
  %312 = load i8*, i8** %16, align 8
  %313 = sext i32 %311 to i64
  %314 = getelementptr inbounds i8, i8* %312, i64 %313
  store i8* %314, i8** %16, align 8
  br label %288

315:                                              ; preds = %288
  br label %316

316:                                              ; preds = %315, %284
  br label %317

317:                                              ; preds = %38, %91, %316, %215
  ret void
}

declare dso_local i32 @memset(i64*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
