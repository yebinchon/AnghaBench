; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/stlport/src/c_locale_win32/extr_c_locale_win32.c___ConvertTime.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/stlport/src/c_locale_win32/extr_c_locale_win32.c___ConvertTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @__ConvertTime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ConvertTime(i8* %0, i8* %1, i32 %2) #0 {
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

17:                                               ; preds = %363, %3
  %18 = load i8*, i8** %8, align 8
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %21, label %366

21:                                               ; preds = %17
  %22 = load i8*, i8** %8, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  switch i32 %24, label %346 [
    i32 104, label %25
    i32 72, label %82
    i32 109, label %139
    i32 115, label %196
    i32 116, label %253
    i32 37, label %285
    i32 39, label %308
  ]

25:                                               ; preds = %21
  %26 = load i8*, i8** %8, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 104
  br i1 %30, label %31, label %56

31:                                               ; preds = %25
  %32 = load i8*, i8** %9, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  %35 = load i8*, i8** %9, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 2
  %37 = load i8*, i8** %10, align 8
  %38 = icmp ugt i8* %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i8*, i8** %9, align 8
  store i8 0, i8* %40, align 1
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  store i32 %42, i32* %4, align 4
  br label %386

43:                                               ; preds = %34, %31
  %44 = load i8*, i8** %9, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i8*, i8** %9, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %9, align 8
  store i8 37, i8* %47, align 1
  %49 = load i8*, i8** %9, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %9, align 8
  store i8 73, i8* %49, align 1
  br label %51

51:                                               ; preds = %46, %43
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 2
  store i32 %53, i32* %7, align 4
  %54 = load i8*, i8** %8, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %8, align 8
  br label %81

56:                                               ; preds = %25
  %57 = load i8*, i8** %9, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %68

59:                                               ; preds = %56
  %60 = load i8*, i8** %9, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 3
  %62 = load i8*, i8** %10, align 8
  %63 = icmp ugt i8* %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i8*, i8** %9, align 8
  store i8 0, i8* %65, align 1
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  store i32 %67, i32* %4, align 4
  br label %386

68:                                               ; preds = %59, %56
  %69 = load i8*, i8** %9, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load i8*, i8** %9, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %9, align 8
  store i8 37, i8* %72, align 1
  %74 = load i8*, i8** %9, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %9, align 8
  store i8 35, i8* %74, align 1
  %76 = load i8*, i8** %9, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %9, align 8
  store i8 73, i8* %76, align 1
  br label %78

78:                                               ; preds = %71, %68
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 3
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %78, %51
  br label %357

82:                                               ; preds = %21
  %83 = load i8*, i8** %8, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 72
  br i1 %87, label %88, label %113

88:                                               ; preds = %82
  %89 = load i8*, i8** %9, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %100

91:                                               ; preds = %88
  %92 = load i8*, i8** %9, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 2
  %94 = load i8*, i8** %10, align 8
  %95 = icmp ugt i8* %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load i8*, i8** %9, align 8
  store i8 0, i8* %97, align 1
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %7, align 4
  store i32 %99, i32* %4, align 4
  br label %386

100:                                              ; preds = %91, %88
  %101 = load i8*, i8** %9, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %108

103:                                              ; preds = %100
  %104 = load i8*, i8** %9, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %9, align 8
  store i8 37, i8* %104, align 1
  %106 = load i8*, i8** %9, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %9, align 8
  store i8 72, i8* %106, align 1
  br label %108

108:                                              ; preds = %103, %100
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %109, 2
  store i32 %110, i32* %7, align 4
  %111 = load i8*, i8** %8, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %8, align 8
  br label %138

113:                                              ; preds = %82
  %114 = load i8*, i8** %9, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %125

116:                                              ; preds = %113
  %117 = load i8*, i8** %9, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 3
  %119 = load i8*, i8** %10, align 8
  %120 = icmp ugt i8* %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %116
  %122 = load i8*, i8** %9, align 8
  store i8 0, i8* %122, align 1
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %7, align 4
  store i32 %124, i32* %4, align 4
  br label %386

125:                                              ; preds = %116, %113
  %126 = load i8*, i8** %9, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %135

128:                                              ; preds = %125
  %129 = load i8*, i8** %9, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %9, align 8
  store i8 37, i8* %129, align 1
  %131 = load i8*, i8** %9, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %9, align 8
  store i8 35, i8* %131, align 1
  %133 = load i8*, i8** %9, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %9, align 8
  store i8 72, i8* %133, align 1
  br label %135

135:                                              ; preds = %128, %125
  %136 = load i32, i32* %7, align 4
  %137 = add nsw i32 %136, 3
  store i32 %137, i32* %7, align 4
  br label %138

138:                                              ; preds = %135, %108
  br label %357

139:                                              ; preds = %21
  %140 = load i8*, i8** %8, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 1
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp eq i32 %143, 109
  br i1 %144, label %145, label %170

145:                                              ; preds = %139
  %146 = load i8*, i8** %9, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %148, label %157

148:                                              ; preds = %145
  %149 = load i8*, i8** %9, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 2
  %151 = load i8*, i8** %10, align 8
  %152 = icmp ugt i8* %150, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %148
  %154 = load i8*, i8** %9, align 8
  store i8 0, i8* %154, align 1
  %155 = load i32, i32* %7, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %7, align 4
  store i32 %156, i32* %4, align 4
  br label %386

157:                                              ; preds = %148, %145
  %158 = load i8*, i8** %9, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %160, label %165

160:                                              ; preds = %157
  %161 = load i8*, i8** %9, align 8
  %162 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %162, i8** %9, align 8
  store i8 37, i8* %161, align 1
  %163 = load i8*, i8** %9, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %9, align 8
  store i8 77, i8* %163, align 1
  br label %165

165:                                              ; preds = %160, %157
  %166 = load i32, i32* %7, align 4
  %167 = add nsw i32 %166, 2
  store i32 %167, i32* %7, align 4
  %168 = load i8*, i8** %8, align 8
  %169 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %169, i8** %8, align 8
  br label %195

170:                                              ; preds = %139
  %171 = load i8*, i8** %9, align 8
  %172 = icmp ne i8* %171, null
  br i1 %172, label %173, label %182

173:                                              ; preds = %170
  %174 = load i8*, i8** %9, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 3
  %176 = load i8*, i8** %10, align 8
  %177 = icmp ugt i8* %175, %176
  br i1 %177, label %178, label %182

178:                                              ; preds = %173
  %179 = load i8*, i8** %9, align 8
  store i8 0, i8* %179, align 1
  %180 = load i32, i32* %7, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %7, align 4
  store i32 %181, i32* %4, align 4
  br label %386

182:                                              ; preds = %173, %170
  %183 = load i8*, i8** %9, align 8
  %184 = icmp ne i8* %183, null
  br i1 %184, label %185, label %192

185:                                              ; preds = %182
  %186 = load i8*, i8** %9, align 8
  %187 = getelementptr inbounds i8, i8* %186, i32 1
  store i8* %187, i8** %9, align 8
  store i8 37, i8* %186, align 1
  %188 = load i8*, i8** %9, align 8
  %189 = getelementptr inbounds i8, i8* %188, i32 1
  store i8* %189, i8** %9, align 8
  store i8 35, i8* %188, align 1
  %190 = load i8*, i8** %9, align 8
  %191 = getelementptr inbounds i8, i8* %190, i32 1
  store i8* %191, i8** %9, align 8
  store i8 77, i8* %190, align 1
  br label %192

192:                                              ; preds = %185, %182
  %193 = load i32, i32* %7, align 4
  %194 = add nsw i32 %193, 3
  store i32 %194, i32* %7, align 4
  br label %195

195:                                              ; preds = %192, %165
  br label %357

196:                                              ; preds = %21
  %197 = load i8*, i8** %8, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 1
  %199 = load i8, i8* %198, align 1
  %200 = sext i8 %199 to i32
  %201 = icmp eq i32 %200, 115
  br i1 %201, label %202, label %227

202:                                              ; preds = %196
  %203 = load i8*, i8** %9, align 8
  %204 = icmp ne i8* %203, null
  br i1 %204, label %205, label %214

205:                                              ; preds = %202
  %206 = load i8*, i8** %9, align 8
  %207 = getelementptr inbounds i8, i8* %206, i64 2
  %208 = load i8*, i8** %10, align 8
  %209 = icmp ugt i8* %207, %208
  br i1 %209, label %210, label %214

210:                                              ; preds = %205
  %211 = load i8*, i8** %9, align 8
  store i8 0, i8* %211, align 1
  %212 = load i32, i32* %7, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %7, align 4
  store i32 %213, i32* %4, align 4
  br label %386

214:                                              ; preds = %205, %202
  %215 = load i8*, i8** %9, align 8
  %216 = icmp ne i8* %215, null
  br i1 %216, label %217, label %222

217:                                              ; preds = %214
  %218 = load i8*, i8** %9, align 8
  %219 = getelementptr inbounds i8, i8* %218, i32 1
  store i8* %219, i8** %9, align 8
  store i8 37, i8* %218, align 1
  %220 = load i8*, i8** %9, align 8
  %221 = getelementptr inbounds i8, i8* %220, i32 1
  store i8* %221, i8** %9, align 8
  store i8 83, i8* %220, align 1
  br label %222

222:                                              ; preds = %217, %214
  %223 = load i32, i32* %7, align 4
  %224 = add nsw i32 %223, 2
  store i32 %224, i32* %7, align 4
  %225 = load i8*, i8** %8, align 8
  %226 = getelementptr inbounds i8, i8* %225, i32 1
  store i8* %226, i8** %8, align 8
  br label %252

227:                                              ; preds = %196
  %228 = load i8*, i8** %9, align 8
  %229 = icmp ne i8* %228, null
  br i1 %229, label %230, label %239

230:                                              ; preds = %227
  %231 = load i8*, i8** %9, align 8
  %232 = getelementptr inbounds i8, i8* %231, i64 3
  %233 = load i8*, i8** %10, align 8
  %234 = icmp ugt i8* %232, %233
  br i1 %234, label %235, label %239

235:                                              ; preds = %230
  %236 = load i8*, i8** %9, align 8
  store i8 0, i8* %236, align 1
  %237 = load i32, i32* %7, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %7, align 4
  store i32 %238, i32* %4, align 4
  br label %386

239:                                              ; preds = %230, %227
  %240 = load i8*, i8** %9, align 8
  %241 = icmp ne i8* %240, null
  br i1 %241, label %242, label %249

242:                                              ; preds = %239
  %243 = load i8*, i8** %9, align 8
  %244 = getelementptr inbounds i8, i8* %243, i32 1
  store i8* %244, i8** %9, align 8
  store i8 37, i8* %243, align 1
  %245 = load i8*, i8** %9, align 8
  %246 = getelementptr inbounds i8, i8* %245, i32 1
  store i8* %246, i8** %9, align 8
  store i8 35, i8* %245, align 1
  %247 = load i8*, i8** %9, align 8
  %248 = getelementptr inbounds i8, i8* %247, i32 1
  store i8* %248, i8** %9, align 8
  store i8 83, i8* %247, align 1
  br label %249

249:                                              ; preds = %242, %239
  %250 = load i32, i32* %7, align 4
  %251 = add nsw i32 %250, 3
  store i32 %251, i32* %7, align 4
  br label %252

252:                                              ; preds = %249, %222
  br label %357

253:                                              ; preds = %21
  %254 = load i8*, i8** %8, align 8
  %255 = getelementptr inbounds i8, i8* %254, i64 1
  %256 = load i8, i8* %255, align 1
  %257 = sext i8 %256 to i32
  %258 = icmp eq i32 %257, 116
  br i1 %258, label %259, label %262

259:                                              ; preds = %253
  %260 = load i8*, i8** %8, align 8
  %261 = getelementptr inbounds i8, i8* %260, i32 1
  store i8* %261, i8** %8, align 8
  br label %262

262:                                              ; preds = %259, %253
  %263 = load i8*, i8** %9, align 8
  %264 = icmp ne i8* %263, null
  br i1 %264, label %265, label %274

265:                                              ; preds = %262
  %266 = load i8*, i8** %9, align 8
  %267 = getelementptr inbounds i8, i8* %266, i64 2
  %268 = load i8*, i8** %10, align 8
  %269 = icmp ugt i8* %267, %268
  br i1 %269, label %270, label %274

270:                                              ; preds = %265
  %271 = load i8*, i8** %9, align 8
  store i8 0, i8* %271, align 1
  %272 = load i32, i32* %7, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %7, align 4
  store i32 %273, i32* %4, align 4
  br label %386

274:                                              ; preds = %265, %262
  %275 = load i8*, i8** %9, align 8
  %276 = icmp ne i8* %275, null
  br i1 %276, label %277, label %282

277:                                              ; preds = %274
  %278 = load i8*, i8** %9, align 8
  %279 = getelementptr inbounds i8, i8* %278, i32 1
  store i8* %279, i8** %9, align 8
  store i8 37, i8* %278, align 1
  %280 = load i8*, i8** %9, align 8
  %281 = getelementptr inbounds i8, i8* %280, i32 1
  store i8* %281, i8** %9, align 8
  store i8 112, i8* %280, align 1
  br label %282

282:                                              ; preds = %277, %274
  %283 = load i32, i32* %7, align 4
  %284 = add nsw i32 %283, 2
  store i32 %284, i32* %7, align 4
  br label %357

285:                                              ; preds = %21
  %286 = load i8*, i8** %9, align 8
  %287 = icmp ne i8* %286, null
  br i1 %287, label %288, label %297

288:                                              ; preds = %285
  %289 = load i8*, i8** %9, align 8
  %290 = getelementptr inbounds i8, i8* %289, i64 2
  %291 = load i8*, i8** %10, align 8
  %292 = icmp ugt i8* %290, %291
  br i1 %292, label %293, label %297

293:                                              ; preds = %288
  %294 = load i8*, i8** %9, align 8
  store i8 0, i8* %294, align 1
  %295 = load i32, i32* %7, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %7, align 4
  store i32 %296, i32* %4, align 4
  br label %386

297:                                              ; preds = %288, %285
  %298 = load i8*, i8** %9, align 8
  %299 = icmp ne i8* %298, null
  br i1 %299, label %300, label %305

300:                                              ; preds = %297
  %301 = load i8*, i8** %9, align 8
  %302 = getelementptr inbounds i8, i8* %301, i32 1
  store i8* %302, i8** %9, align 8
  store i8 37, i8* %301, align 1
  %303 = load i8*, i8** %9, align 8
  %304 = getelementptr inbounds i8, i8* %303, i32 1
  store i8* %304, i8** %9, align 8
  store i8 37, i8* %303, align 1
  br label %305

305:                                              ; preds = %300, %297
  %306 = load i32, i32* %7, align 4
  %307 = add nsw i32 %306, 2
  store i32 %307, i32* %7, align 4
  br label %357

308:                                              ; preds = %21
  %309 = load i8*, i8** %8, align 8
  %310 = getelementptr inbounds i8, i8* %309, i32 1
  store i8* %310, i8** %8, align 8
  br label %311

311:                                              ; preds = %340, %308
  %312 = load i8*, i8** %8, align 8
  %313 = load i8, i8* %312, align 1
  %314 = sext i8 %313 to i32
  %315 = icmp ne i32 %314, 39
  br i1 %315, label %316, label %330

316:                                              ; preds = %311
  %317 = load i8*, i8** %8, align 8
  %318 = load i8, i8* %317, align 1
  %319 = sext i8 %318 to i32
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %330

321:                                              ; preds = %316
  %322 = load i8*, i8** %9, align 8
  %323 = icmp ne i8* %322, null
  br i1 %323, label %324, label %328

324:                                              ; preds = %321
  %325 = load i8*, i8** %9, align 8
  %326 = load i8*, i8** %10, align 8
  %327 = icmp ne i8* %325, %326
  br label %328

328:                                              ; preds = %324, %321
  %329 = phi i1 [ true, %321 ], [ %327, %324 ]
  br label %330

330:                                              ; preds = %328, %316, %311
  %331 = phi i1 [ false, %316 ], [ false, %311 ], [ %329, %328 ]
  br i1 %331, label %332, label %345

332:                                              ; preds = %330
  %333 = load i8*, i8** %9, align 8
  %334 = icmp ne i8* %333, null
  br i1 %334, label %335, label %340

335:                                              ; preds = %332
  %336 = load i8*, i8** %8, align 8
  %337 = load i8, i8* %336, align 1
  %338 = load i8*, i8** %9, align 8
  %339 = getelementptr inbounds i8, i8* %338, i32 1
  store i8* %339, i8** %9, align 8
  store i8 %337, i8* %338, align 1
  br label %340

340:                                              ; preds = %335, %332
  %341 = load i8*, i8** %8, align 8
  %342 = getelementptr inbounds i8, i8* %341, i32 1
  store i8* %342, i8** %8, align 8
  %343 = load i32, i32* %7, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %7, align 4
  br label %311

345:                                              ; preds = %330
  br label %357

346:                                              ; preds = %21
  %347 = load i8*, i8** %9, align 8
  %348 = icmp ne i8* %347, null
  br i1 %348, label %349, label %354

349:                                              ; preds = %346
  %350 = load i8*, i8** %8, align 8
  %351 = load i8, i8* %350, align 1
  %352 = load i8*, i8** %9, align 8
  %353 = getelementptr inbounds i8, i8* %352, i32 1
  store i8* %353, i8** %9, align 8
  store i8 %351, i8* %352, align 1
  br label %354

354:                                              ; preds = %349, %346
  %355 = load i32, i32* %7, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %7, align 4
  br label %357

357:                                              ; preds = %354, %345, %305, %282, %252, %195, %138, %81
  %358 = load i8*, i8** %8, align 8
  %359 = load i8, i8* %358, align 1
  %360 = sext i8 %359 to i32
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %363

362:                                              ; preds = %357
  br label %366

363:                                              ; preds = %357
  %364 = load i8*, i8** %8, align 8
  %365 = getelementptr inbounds i8, i8* %364, i32 1
  store i8* %365, i8** %8, align 8
  br label %17

366:                                              ; preds = %362, %17
  %367 = load i8*, i8** %9, align 8
  %368 = icmp ne i8* %367, null
  br i1 %368, label %369, label %373

369:                                              ; preds = %366
  %370 = load i8*, i8** %9, align 8
  %371 = load i8*, i8** %10, align 8
  %372 = icmp ne i8* %370, %371
  br i1 %372, label %373, label %381

373:                                              ; preds = %369, %366
  %374 = load i8*, i8** %9, align 8
  %375 = icmp ne i8* %374, null
  br i1 %375, label %376, label %378

376:                                              ; preds = %373
  %377 = load i8*, i8** %9, align 8
  store i8 0, i8* %377, align 1
  br label %378

378:                                              ; preds = %376, %373
  %379 = load i32, i32* %7, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %7, align 4
  br label %384

381:                                              ; preds = %369
  %382 = load i8*, i8** %9, align 8
  %383 = getelementptr inbounds i8, i8* %382, i32 -1
  store i8* %383, i8** %9, align 8
  store i8 0, i8* %383, align 1
  br label %384

384:                                              ; preds = %381, %378
  %385 = load i32, i32* %7, align 4
  store i32 %385, i32* %4, align 4
  br label %386

386:                                              ; preds = %384, %293, %270, %235, %210, %178, %153, %121, %96, %64, %39
  %387 = load i32, i32* %4, align 4
  ret i32 %387
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
