; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/stlport/src/c_locale_win32/extr_c_locale_win32.c___ConvertDate.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/stlport/src/c_locale_win32/extr_c_locale_win32.c___ConvertDate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @__ConvertDate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ConvertDate(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %8, align 8
  %12 = load i8*, i8** %6, align 8
  store i8* %12, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  store i8* %16, i8** %10, align 8
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %388, %3
  %18 = load i8*, i8** %8, align 8
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %21, label %391

21:                                               ; preds = %17
  %22 = load i8*, i8** %9, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i8*, i8** %9, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = icmp eq i8* %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %391

29:                                               ; preds = %24, %21
  %30 = load i8*, i8** %8, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  switch i32 %32, label %371 [
    i32 100, label %33
    i32 77, label %130
    i32 121, label %227
    i32 37, label %310
    i32 39, label %333
  ]

33:                                               ; preds = %29
  %34 = load i8*, i8** %8, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 100
  br i1 %38, label %39, label %104

39:                                               ; preds = %33
  %40 = load i8*, i8** %9, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %51

42:                                               ; preds = %39
  %43 = load i8*, i8** %9, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 2
  %45 = load i8*, i8** %10, align 8
  %46 = icmp ugt i8* %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i8*, i8** %9, align 8
  store i8 0, i8* %48, align 1
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  store i32 %50, i32* %4, align 4
  br label %411

51:                                               ; preds = %42, %39
  %52 = load i8*, i8** %8, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 2
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 100
  br i1 %56, label %57, label %90

57:                                               ; preds = %51
  %58 = load i8*, i8** %8, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 3
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 100
  br i1 %62, label %63, label %76

63:                                               ; preds = %57
  %64 = load i8*, i8** %9, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load i8*, i8** %9, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %9, align 8
  store i8 37, i8* %67, align 1
  %69 = load i8*, i8** %9, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %9, align 8
  store i8 65, i8* %69, align 1
  br label %71

71:                                               ; preds = %66, %63
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 2
  store i32 %73, i32* %7, align 4
  %74 = load i8*, i8** %8, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 3
  store i8* %75, i8** %8, align 8
  br label %89

76:                                               ; preds = %57
  %77 = load i8*, i8** %9, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load i8*, i8** %9, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %9, align 8
  store i8 37, i8* %80, align 1
  %82 = load i8*, i8** %9, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %9, align 8
  store i8 97, i8* %82, align 1
  br label %84

84:                                               ; preds = %79, %76
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 2
  store i32 %86, i32* %7, align 4
  %87 = load i8*, i8** %8, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 2
  store i8* %88, i8** %8, align 8
  br label %89

89:                                               ; preds = %84, %71
  br label %103

90:                                               ; preds = %51
  %91 = load i8*, i8** %9, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load i8*, i8** %9, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %9, align 8
  store i8 37, i8* %94, align 1
  %96 = load i8*, i8** %9, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %9, align 8
  store i8 100, i8* %96, align 1
  br label %98

98:                                               ; preds = %93, %90
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 2
  store i32 %100, i32* %7, align 4
  %101 = load i8*, i8** %8, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %8, align 8
  br label %103

103:                                              ; preds = %98, %89
  br label %129

104:                                              ; preds = %33
  %105 = load i8*, i8** %9, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %116

107:                                              ; preds = %104
  %108 = load i8*, i8** %9, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 3
  %110 = load i8*, i8** %10, align 8
  %111 = icmp ugt i8* %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %107
  %113 = load i8*, i8** %9, align 8
  store i8 0, i8* %113, align 1
  %114 = load i32, i32* %7, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %7, align 4
  store i32 %115, i32* %4, align 4
  br label %411

116:                                              ; preds = %107, %104
  %117 = load i8*, i8** %9, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %126

119:                                              ; preds = %116
  %120 = load i8*, i8** %9, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %9, align 8
  store i8 37, i8* %120, align 1
  %122 = load i8*, i8** %9, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %9, align 8
  store i8 35, i8* %122, align 1
  %124 = load i8*, i8** %9, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %9, align 8
  store i8 100, i8* %124, align 1
  br label %126

126:                                              ; preds = %119, %116
  %127 = load i32, i32* %7, align 4
  %128 = add nsw i32 %127, 3
  store i32 %128, i32* %7, align 4
  br label %129

129:                                              ; preds = %126, %103
  br label %382

130:                                              ; preds = %29
  %131 = load i8*, i8** %8, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 1
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 77
  br i1 %135, label %136, label %201

136:                                              ; preds = %130
  %137 = load i8*, i8** %9, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %148

139:                                              ; preds = %136
  %140 = load i8*, i8** %9, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 2
  %142 = load i8*, i8** %10, align 8
  %143 = icmp ugt i8* %141, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %139
  %145 = load i8*, i8** %9, align 8
  store i8 0, i8* %145, align 1
  %146 = load i32, i32* %7, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %7, align 4
  store i32 %147, i32* %4, align 4
  br label %411

148:                                              ; preds = %139, %136
  %149 = load i8*, i8** %8, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 2
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp eq i32 %152, 77
  br i1 %153, label %154, label %187

154:                                              ; preds = %148
  %155 = load i8*, i8** %8, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 3
  %157 = load i8, i8* %156, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp eq i32 %158, 77
  br i1 %159, label %160, label %173

160:                                              ; preds = %154
  %161 = load i8*, i8** %9, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %163, label %168

163:                                              ; preds = %160
  %164 = load i8*, i8** %9, align 8
  %165 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %165, i8** %9, align 8
  store i8 37, i8* %164, align 1
  %166 = load i8*, i8** %9, align 8
  %167 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %167, i8** %9, align 8
  store i8 66, i8* %166, align 1
  br label %168

168:                                              ; preds = %163, %160
  %169 = load i32, i32* %7, align 4
  %170 = add nsw i32 %169, 2
  store i32 %170, i32* %7, align 4
  %171 = load i8*, i8** %8, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 3
  store i8* %172, i8** %8, align 8
  br label %186

173:                                              ; preds = %154
  %174 = load i8*, i8** %9, align 8
  %175 = icmp ne i8* %174, null
  br i1 %175, label %176, label %181

176:                                              ; preds = %173
  %177 = load i8*, i8** %9, align 8
  %178 = getelementptr inbounds i8, i8* %177, i32 1
  store i8* %178, i8** %9, align 8
  store i8 37, i8* %177, align 1
  %179 = load i8*, i8** %9, align 8
  %180 = getelementptr inbounds i8, i8* %179, i32 1
  store i8* %180, i8** %9, align 8
  store i8 98, i8* %179, align 1
  br label %181

181:                                              ; preds = %176, %173
  %182 = load i32, i32* %7, align 4
  %183 = add nsw i32 %182, 2
  store i32 %183, i32* %7, align 4
  %184 = load i8*, i8** %8, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 2
  store i8* %185, i8** %8, align 8
  br label %186

186:                                              ; preds = %181, %168
  br label %200

187:                                              ; preds = %148
  %188 = load i8*, i8** %9, align 8
  %189 = icmp ne i8* %188, null
  br i1 %189, label %190, label %195

190:                                              ; preds = %187
  %191 = load i8*, i8** %9, align 8
  %192 = getelementptr inbounds i8, i8* %191, i32 1
  store i8* %192, i8** %9, align 8
  store i8 37, i8* %191, align 1
  %193 = load i8*, i8** %9, align 8
  %194 = getelementptr inbounds i8, i8* %193, i32 1
  store i8* %194, i8** %9, align 8
  store i8 109, i8* %193, align 1
  br label %195

195:                                              ; preds = %190, %187
  %196 = load i32, i32* %7, align 4
  %197 = add nsw i32 %196, 2
  store i32 %197, i32* %7, align 4
  %198 = load i8*, i8** %8, align 8
  %199 = getelementptr inbounds i8, i8* %198, i32 1
  store i8* %199, i8** %8, align 8
  br label %200

200:                                              ; preds = %195, %186
  br label %226

201:                                              ; preds = %130
  %202 = load i8*, i8** %9, align 8
  %203 = icmp ne i8* %202, null
  br i1 %203, label %204, label %213

204:                                              ; preds = %201
  %205 = load i8*, i8** %9, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 3
  %207 = load i8*, i8** %10, align 8
  %208 = icmp ugt i8* %206, %207
  br i1 %208, label %209, label %213

209:                                              ; preds = %204
  %210 = load i8*, i8** %9, align 8
  store i8 0, i8* %210, align 1
  %211 = load i32, i32* %7, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %7, align 4
  store i32 %212, i32* %4, align 4
  br label %411

213:                                              ; preds = %204, %201
  %214 = load i8*, i8** %9, align 8
  %215 = icmp ne i8* %214, null
  br i1 %215, label %216, label %223

216:                                              ; preds = %213
  %217 = load i8*, i8** %9, align 8
  %218 = getelementptr inbounds i8, i8* %217, i32 1
  store i8* %218, i8** %9, align 8
  store i8 37, i8* %217, align 1
  %219 = load i8*, i8** %9, align 8
  %220 = getelementptr inbounds i8, i8* %219, i32 1
  store i8* %220, i8** %9, align 8
  store i8 35, i8* %219, align 1
  %221 = load i8*, i8** %9, align 8
  %222 = getelementptr inbounds i8, i8* %221, i32 1
  store i8* %222, i8** %9, align 8
  store i8 109, i8* %221, align 1
  br label %223

223:                                              ; preds = %216, %213
  %224 = load i32, i32* %7, align 4
  %225 = add nsw i32 %224, 3
  store i32 %225, i32* %7, align 4
  br label %226

226:                                              ; preds = %223, %200
  br label %382

227:                                              ; preds = %29
  %228 = load i8*, i8** %8, align 8
  %229 = getelementptr inbounds i8, i8* %228, i64 1
  %230 = load i8, i8* %229, align 1
  %231 = sext i8 %230 to i32
  %232 = icmp eq i32 %231, 121
  br i1 %232, label %233, label %284

233:                                              ; preds = %227
  %234 = load i8*, i8** %9, align 8
  %235 = icmp ne i8* %234, null
  br i1 %235, label %236, label %245

236:                                              ; preds = %233
  %237 = load i8*, i8** %9, align 8
  %238 = getelementptr inbounds i8, i8* %237, i64 2
  %239 = load i8*, i8** %10, align 8
  %240 = icmp ugt i8* %238, %239
  br i1 %240, label %241, label %245

241:                                              ; preds = %236
  %242 = load i8*, i8** %9, align 8
  store i8 0, i8* %242, align 1
  %243 = load i32, i32* %7, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %7, align 4
  store i32 %244, i32* %4, align 4
  br label %411

245:                                              ; preds = %236, %233
  %246 = load i8*, i8** %8, align 8
  %247 = getelementptr inbounds i8, i8* %246, i64 2
  %248 = load i8, i8* %247, align 1
  %249 = sext i8 %248 to i32
  %250 = icmp eq i32 %249, 121
  br i1 %250, label %251, label %270

251:                                              ; preds = %245
  %252 = load i8*, i8** %8, align 8
  %253 = getelementptr inbounds i8, i8* %252, i64 3
  %254 = load i8, i8* %253, align 1
  %255 = sext i8 %254 to i32
  %256 = icmp eq i32 %255, 121
  br i1 %256, label %257, label %270

257:                                              ; preds = %251
  %258 = load i8*, i8** %9, align 8
  %259 = icmp ne i8* %258, null
  br i1 %259, label %260, label %265

260:                                              ; preds = %257
  %261 = load i8*, i8** %9, align 8
  %262 = getelementptr inbounds i8, i8* %261, i32 1
  store i8* %262, i8** %9, align 8
  store i8 37, i8* %261, align 1
  %263 = load i8*, i8** %9, align 8
  %264 = getelementptr inbounds i8, i8* %263, i32 1
  store i8* %264, i8** %9, align 8
  store i8 89, i8* %263, align 1
  br label %265

265:                                              ; preds = %260, %257
  %266 = load i32, i32* %7, align 4
  %267 = add nsw i32 %266, 2
  store i32 %267, i32* %7, align 4
  %268 = load i8*, i8** %8, align 8
  %269 = getelementptr inbounds i8, i8* %268, i64 3
  store i8* %269, i8** %8, align 8
  br label %283

270:                                              ; preds = %251, %245
  %271 = load i8*, i8** %9, align 8
  %272 = icmp ne i8* %271, null
  br i1 %272, label %273, label %278

273:                                              ; preds = %270
  %274 = load i8*, i8** %9, align 8
  %275 = getelementptr inbounds i8, i8* %274, i32 1
  store i8* %275, i8** %9, align 8
  store i8 37, i8* %274, align 1
  %276 = load i8*, i8** %9, align 8
  %277 = getelementptr inbounds i8, i8* %276, i32 1
  store i8* %277, i8** %9, align 8
  store i8 121, i8* %276, align 1
  br label %278

278:                                              ; preds = %273, %270
  %279 = load i32, i32* %7, align 4
  %280 = add nsw i32 %279, 2
  store i32 %280, i32* %7, align 4
  %281 = load i8*, i8** %8, align 8
  %282 = getelementptr inbounds i8, i8* %281, i32 1
  store i8* %282, i8** %8, align 8
  br label %283

283:                                              ; preds = %278, %265
  br label %309

284:                                              ; preds = %227
  %285 = load i8*, i8** %9, align 8
  %286 = icmp ne i8* %285, null
  br i1 %286, label %287, label %296

287:                                              ; preds = %284
  %288 = load i8*, i8** %9, align 8
  %289 = getelementptr inbounds i8, i8* %288, i64 3
  %290 = load i8*, i8** %10, align 8
  %291 = icmp ugt i8* %289, %290
  br i1 %291, label %292, label %296

292:                                              ; preds = %287
  %293 = load i8*, i8** %9, align 8
  store i8 0, i8* %293, align 1
  %294 = load i32, i32* %7, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %7, align 4
  store i32 %295, i32* %4, align 4
  br label %411

296:                                              ; preds = %287, %284
  %297 = load i8*, i8** %9, align 8
  %298 = icmp ne i8* %297, null
  br i1 %298, label %299, label %306

299:                                              ; preds = %296
  %300 = load i8*, i8** %9, align 8
  %301 = getelementptr inbounds i8, i8* %300, i32 1
  store i8* %301, i8** %9, align 8
  store i8 37, i8* %300, align 1
  %302 = load i8*, i8** %9, align 8
  %303 = getelementptr inbounds i8, i8* %302, i32 1
  store i8* %303, i8** %9, align 8
  store i8 35, i8* %302, align 1
  %304 = load i8*, i8** %9, align 8
  %305 = getelementptr inbounds i8, i8* %304, i32 1
  store i8* %305, i8** %9, align 8
  store i8 121, i8* %304, align 1
  br label %306

306:                                              ; preds = %299, %296
  %307 = load i32, i32* %7, align 4
  %308 = add nsw i32 %307, 3
  store i32 %308, i32* %7, align 4
  br label %309

309:                                              ; preds = %306, %283
  br label %382

310:                                              ; preds = %29
  %311 = load i8*, i8** %9, align 8
  %312 = icmp ne i8* %311, null
  br i1 %312, label %313, label %322

313:                                              ; preds = %310
  %314 = load i8*, i8** %9, align 8
  %315 = getelementptr inbounds i8, i8* %314, i64 2
  %316 = load i8*, i8** %10, align 8
  %317 = icmp ugt i8* %315, %316
  br i1 %317, label %318, label %322

318:                                              ; preds = %313
  %319 = load i8*, i8** %9, align 8
  store i8 0, i8* %319, align 1
  %320 = load i32, i32* %7, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %7, align 4
  store i32 %321, i32* %4, align 4
  br label %411

322:                                              ; preds = %313, %310
  %323 = load i8*, i8** %9, align 8
  %324 = icmp ne i8* %323, null
  br i1 %324, label %325, label %330

325:                                              ; preds = %322
  %326 = load i8*, i8** %9, align 8
  %327 = getelementptr inbounds i8, i8* %326, i32 1
  store i8* %327, i8** %9, align 8
  store i8 37, i8* %326, align 1
  %328 = load i8*, i8** %9, align 8
  %329 = getelementptr inbounds i8, i8* %328, i32 1
  store i8* %329, i8** %9, align 8
  store i8 37, i8* %328, align 1
  br label %330

330:                                              ; preds = %325, %322
  %331 = load i32, i32* %7, align 4
  %332 = add nsw i32 %331, 2
  store i32 %332, i32* %7, align 4
  br label %382

333:                                              ; preds = %29
  %334 = load i8*, i8** %8, align 8
  %335 = getelementptr inbounds i8, i8* %334, i32 1
  store i8* %335, i8** %8, align 8
  br label %336

336:                                              ; preds = %365, %333
  %337 = load i8*, i8** %8, align 8
  %338 = load i8, i8* %337, align 1
  %339 = sext i8 %338 to i32
  %340 = icmp ne i32 %339, 39
  br i1 %340, label %341, label %355

341:                                              ; preds = %336
  %342 = load i8*, i8** %8, align 8
  %343 = load i8, i8* %342, align 1
  %344 = sext i8 %343 to i32
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %355

346:                                              ; preds = %341
  %347 = load i8*, i8** %9, align 8
  %348 = icmp eq i8* %347, null
  br i1 %348, label %353, label %349

349:                                              ; preds = %346
  %350 = load i8*, i8** %9, align 8
  %351 = load i8*, i8** %10, align 8
  %352 = icmp ne i8* %350, %351
  br label %353

353:                                              ; preds = %349, %346
  %354 = phi i1 [ true, %346 ], [ %352, %349 ]
  br label %355

355:                                              ; preds = %353, %341, %336
  %356 = phi i1 [ false, %341 ], [ false, %336 ], [ %354, %353 ]
  br i1 %356, label %357, label %370

357:                                              ; preds = %355
  %358 = load i8*, i8** %9, align 8
  %359 = icmp ne i8* %358, null
  br i1 %359, label %360, label %365

360:                                              ; preds = %357
  %361 = load i8*, i8** %8, align 8
  %362 = load i8, i8* %361, align 1
  %363 = load i8*, i8** %9, align 8
  %364 = getelementptr inbounds i8, i8* %363, i32 1
  store i8* %364, i8** %9, align 8
  store i8 %362, i8* %363, align 1
  br label %365

365:                                              ; preds = %360, %357
  %366 = load i8*, i8** %8, align 8
  %367 = getelementptr inbounds i8, i8* %366, i32 1
  store i8* %367, i8** %8, align 8
  %368 = load i32, i32* %7, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %7, align 4
  br label %336

370:                                              ; preds = %355
  br label %382

371:                                              ; preds = %29
  %372 = load i8*, i8** %9, align 8
  %373 = icmp ne i8* %372, null
  br i1 %373, label %374, label %379

374:                                              ; preds = %371
  %375 = load i8*, i8** %8, align 8
  %376 = load i8, i8* %375, align 1
  %377 = load i8*, i8** %9, align 8
  %378 = getelementptr inbounds i8, i8* %377, i32 1
  store i8* %378, i8** %9, align 8
  store i8 %376, i8* %377, align 1
  br label %379

379:                                              ; preds = %374, %371
  %380 = load i32, i32* %7, align 4
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %7, align 4
  br label %382

382:                                              ; preds = %379, %370, %330, %309, %226, %129
  %383 = load i8*, i8** %8, align 8
  %384 = load i8, i8* %383, align 1
  %385 = sext i8 %384 to i32
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %387, label %388

387:                                              ; preds = %382
  br label %391

388:                                              ; preds = %382
  %389 = load i8*, i8** %8, align 8
  %390 = getelementptr inbounds i8, i8* %389, i32 1
  store i8* %390, i8** %8, align 8
  br label %17

391:                                              ; preds = %387, %28, %17
  %392 = load i8*, i8** %9, align 8
  %393 = icmp ne i8* %392, null
  br i1 %393, label %394, label %398

394:                                              ; preds = %391
  %395 = load i8*, i8** %9, align 8
  %396 = load i8*, i8** %10, align 8
  %397 = icmp ne i8* %395, %396
  br i1 %397, label %398, label %406

398:                                              ; preds = %394, %391
  %399 = load i8*, i8** %9, align 8
  %400 = icmp ne i8* %399, null
  br i1 %400, label %401, label %403

401:                                              ; preds = %398
  %402 = load i8*, i8** %9, align 8
  store i8 0, i8* %402, align 1
  br label %403

403:                                              ; preds = %401, %398
  %404 = load i32, i32* %7, align 4
  %405 = add nsw i32 %404, 1
  store i32 %405, i32* %7, align 4
  br label %409

406:                                              ; preds = %394
  %407 = load i8*, i8** %9, align 8
  %408 = getelementptr inbounds i8, i8* %407, i32 -1
  store i8* %408, i8** %9, align 8
  store i8 0, i8* %408, align 1
  br label %409

409:                                              ; preds = %406, %403
  %410 = load i32, i32* %7, align 4
  store i32 %410, i32* %4, align 4
  br label %411

411:                                              ; preds = %409, %318, %292, %241, %209, %144, %112, %47
  %412 = load i32, i32* %4, align 4
  ret i32 %412
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
