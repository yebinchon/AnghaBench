; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_sortkey.c_wine_get_sortkey.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_sortkey.c_wine_get_sortkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NORM_IGNORESYMBOLS = common dso_local global i32 0, align 4
@C1_PUNCT = common dso_local global i32 0, align 4
@C1_SPACE = common dso_local global i32 0, align 4
@NORM_IGNORECASE = common dso_local global i32 0, align 4
@collation_table = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wine_get_sortkey(i32 %0, i32* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [4 x i32], align 16
  %13 = alloca [4 x i32], align 16
  %14 = alloca [4 x i8*], align 16
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %26 = load i32*, i32** %8, align 8
  store i32* %26, i32** %15, align 8
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %16, align 4
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 3
  store i32 0, i32* %28, align 4
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  store i32 0, i32* %29, align 8
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  store i32 0, i32* %30, align 4
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  store i32 0, i32* %31, align 16
  br label %32

32:                                               ; preds = %157, %5
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %162

35:                                               ; preds = %32
  store i32 1, i32* %18, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  store i32 %37, i32* %38, align 16
  %39 = load i32, i32* %18, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %156

41:                                               ; preds = %35
  store i32 0, i32* %17, align 4
  br label %42

42:                                               ; preds = %152, %41
  %43 = load i32, i32* %17, align 4
  %44 = load i32, i32* %18, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %155

46:                                               ; preds = %42
  %47 = load i32, i32* %17, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %19, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @NORM_IGNORESYMBOLS, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %46
  %56 = load i32, i32* %19, align 4
  %57 = call i32 @get_char_typeW(i32 %56)
  %58 = load i32, i32* @C1_PUNCT, align 4
  %59 = load i32, i32* @C1_SPACE, align 4
  %60 = or i32 %58, %59
  %61 = and i32 %57, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %152

64:                                               ; preds = %55, %46
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @NORM_IGNORECASE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32, i32* %19, align 4
  %71 = call i32 @tolowerW(i32 %70)
  store i32 %71, i32* %19, align 4
  br label %72

72:                                               ; preds = %69, %64
  %73 = load i32*, i32** @collation_table, align 8
  %74 = load i32*, i32** @collation_table, align 8
  %75 = load i32, i32* %19, align 4
  %76 = ashr i32 %75, 8
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %19, align 4
  %81 = and i32 %80, 255
  %82 = add nsw i32 %79, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %73, i64 %83
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %20, align 4
  %86 = load i32, i32* %20, align 4
  %87 = icmp ne i32 %86, -1
  br i1 %87, label %88, label %131

88:                                               ; preds = %72
  %89 = load i32, i32* %20, align 4
  %90 = lshr i32 %89, 16
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  %93 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %94 = load i32, i32* %93, align 16
  %95 = add nsw i32 %94, 2
  store i32 %95, i32* %93, align 16
  br label %96

96:                                               ; preds = %92, %88
  %97 = load i32, i32* %20, align 4
  %98 = lshr i32 %97, 8
  %99 = and i32 %98, 255
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %101, %96
  %106 = load i32, i32* %20, align 4
  %107 = lshr i32 %106, 4
  %108 = and i32 %107, 15
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  %112 = load i32, i32* %111, align 8
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 8
  br label %114

114:                                              ; preds = %110, %105
  %115 = load i32, i32* %20, align 4
  %116 = and i32 %115, 1
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %130

118:                                              ; preds = %114
  %119 = load i32, i32* %19, align 4
  %120 = ashr i32 %119, 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 3
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 4
  br label %126

126:                                              ; preds = %122, %118
  %127 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 3
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 4
  br label %130

130:                                              ; preds = %126, %114
  br label %151

131:                                              ; preds = %72
  %132 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %133 = load i32, i32* %132, align 16
  %134 = add nsw i32 %133, 2
  store i32 %134, i32* %132, align 16
  %135 = load i32, i32* %19, align 4
  %136 = ashr i32 %135, 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %131
  %139 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %140 = load i32, i32* %139, align 16
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 16
  br label %142

142:                                              ; preds = %138, %131
  %143 = load i32, i32* %19, align 4
  %144 = and i32 %143, 255
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %142
  %147 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %148 = load i32, i32* %147, align 16
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 16
  br label %150

150:                                              ; preds = %146, %142
  br label %151

151:                                              ; preds = %150, %130
  br label %152

152:                                              ; preds = %151, %63
  %153 = load i32, i32* %17, align 4
  %154 = add i32 %153, 1
  store i32 %154, i32* %17, align 4
  br label %42

155:                                              ; preds = %42
  br label %156

156:                                              ; preds = %155, %35
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %9, align 4
  %159 = add nsw i32 %158, -1
  store i32 %159, i32* %9, align 4
  %160 = load i32*, i32** %8, align 8
  %161 = getelementptr inbounds i32, i32* %160, i32 1
  store i32* %161, i32** %8, align 8
  br label %32

162:                                              ; preds = %32
  %163 = load i32, i32* %11, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %179, label %165

165:                                              ; preds = %162
  %166 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %167 = load i32, i32* %166, align 16
  %168 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %167, %169
  %171 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  %172 = load i32, i32* %171, align 8
  %173 = add nsw i32 %170, %172
  %174 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 3
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %173, %175
  %177 = add nsw i32 %176, 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %6, align 4
  br label %409

179:                                              ; preds = %162
  %180 = load i32, i32* %11, align 4
  %181 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %182 = load i32, i32* %181, align 16
  %183 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  %184 = load i32, i32* %183, align 4
  %185 = add nsw i32 %182, %184
  %186 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  %187 = load i32, i32* %186, align 8
  %188 = add nsw i32 %185, %187
  %189 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 3
  %190 = load i32, i32* %189, align 4
  %191 = add nsw i32 %188, %190
  %192 = add nsw i32 %191, 4
  %193 = add nsw i32 %192, 1
  %194 = icmp slt i32 %180, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %179
  store i32 0, i32* %6, align 4
  br label %409

196:                                              ; preds = %179
  %197 = load i32*, i32** %15, align 8
  store i32* %197, i32** %8, align 8
  %198 = load i32, i32* %16, align 4
  store i32 %198, i32* %9, align 4
  %199 = load i8*, i8** %10, align 8
  %200 = getelementptr inbounds [4 x i8*], [4 x i8*]* %14, i64 0, i64 0
  store i8* %199, i8** %200, align 16
  %201 = getelementptr inbounds [4 x i8*], [4 x i8*]* %14, i64 0, i64 0
  %202 = load i8*, i8** %201, align 16
  %203 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %204 = load i32, i32* %203, align 16
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8, i8* %202, i64 %205
  %207 = getelementptr inbounds i8, i8* %206, i64 1
  %208 = getelementptr inbounds [4 x i8*], [4 x i8*]* %14, i64 0, i64 1
  store i8* %207, i8** %208, align 8
  %209 = getelementptr inbounds [4 x i8*], [4 x i8*]* %14, i64 0, i64 1
  %210 = load i8*, i8** %209, align 8
  %211 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  %212 = load i32, i32* %211, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i8, i8* %210, i64 %213
  %215 = getelementptr inbounds i8, i8* %214, i64 1
  %216 = getelementptr inbounds [4 x i8*], [4 x i8*]* %14, i64 0, i64 2
  store i8* %215, i8** %216, align 16
  %217 = getelementptr inbounds [4 x i8*], [4 x i8*]* %14, i64 0, i64 2
  %218 = load i8*, i8** %217, align 16
  %219 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  %220 = load i32, i32* %219, align 8
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i8, i8* %218, i64 %221
  %223 = getelementptr inbounds i8, i8* %222, i64 1
  %224 = getelementptr inbounds [4 x i8*], [4 x i8*]* %14, i64 0, i64 3
  store i8* %223, i8** %224, align 8
  br label %225

225:                                              ; preds = %385, %196
  %226 = load i32, i32* %9, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %390

228:                                              ; preds = %225
  store i32 1, i32* %22, align 4
  %229 = load i32*, i32** %8, align 8
  %230 = load i32, i32* %229, align 4
  %231 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  store i32 %230, i32* %231, align 16
  %232 = load i32, i32* %22, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %384

234:                                              ; preds = %228
  store i32 0, i32* %21, align 4
  br label %235

235:                                              ; preds = %380, %234
  %236 = load i32, i32* %21, align 4
  %237 = load i32, i32* %22, align 4
  %238 = icmp ult i32 %236, %237
  br i1 %238, label %239, label %383

239:                                              ; preds = %235
  %240 = load i32, i32* %21, align 4
  %241 = zext i32 %240 to i64
  %242 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %241
  %243 = load i32, i32* %242, align 4
  store i32 %243, i32* %23, align 4
  %244 = load i32, i32* %7, align 4
  %245 = load i32, i32* @NORM_IGNORESYMBOLS, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %257

248:                                              ; preds = %239
  %249 = load i32, i32* %23, align 4
  %250 = call i32 @get_char_typeW(i32 %249)
  %251 = load i32, i32* @C1_PUNCT, align 4
  %252 = load i32, i32* @C1_SPACE, align 4
  %253 = or i32 %251, %252
  %254 = and i32 %250, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %248
  br label %380

257:                                              ; preds = %248, %239
  %258 = load i32, i32* %7, align 4
  %259 = load i32, i32* @NORM_IGNORECASE, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %265

262:                                              ; preds = %257
  %263 = load i32, i32* %23, align 4
  %264 = call i32 @tolowerW(i32 %263)
  store i32 %264, i32* %23, align 4
  br label %265

265:                                              ; preds = %262, %257
  %266 = load i32*, i32** @collation_table, align 8
  %267 = load i32*, i32** @collation_table, align 8
  %268 = load i32, i32* %23, align 4
  %269 = ashr i32 %268, 8
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %267, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* %23, align 4
  %274 = and i32 %273, 255
  %275 = add nsw i32 %272, %274
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %266, i64 %276
  %278 = load i32, i32* %277, align 4
  store i32 %278, i32* %24, align 4
  %279 = load i32, i32* %24, align 4
  %280 = icmp ne i32 %279, -1
  br i1 %280, label %281, label %350

281:                                              ; preds = %265
  %282 = load i32, i32* %24, align 4
  %283 = lshr i32 %282, 16
  store i32 %283, i32* %25, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %298

285:                                              ; preds = %281
  %286 = load i32, i32* %25, align 4
  %287 = ashr i32 %286, 8
  %288 = trunc i32 %287 to i8
  %289 = getelementptr inbounds [4 x i8*], [4 x i8*]* %14, i64 0, i64 0
  %290 = load i8*, i8** %289, align 16
  %291 = getelementptr inbounds i8, i8* %290, i32 1
  store i8* %291, i8** %289, align 16
  store i8 %288, i8* %290, align 1
  %292 = load i32, i32* %25, align 4
  %293 = and i32 %292, 255
  %294 = trunc i32 %293 to i8
  %295 = getelementptr inbounds [4 x i8*], [4 x i8*]* %14, i64 0, i64 0
  %296 = load i8*, i8** %295, align 16
  %297 = getelementptr inbounds i8, i8* %296, i32 1
  store i8* %297, i8** %295, align 16
  store i8 %294, i8* %296, align 1
  br label %298

298:                                              ; preds = %285, %281
  %299 = load i32, i32* %24, align 4
  %300 = lshr i32 %299, 8
  %301 = and i32 %300, 255
  store i32 %301, i32* %25, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %310

303:                                              ; preds = %298
  %304 = load i32, i32* %25, align 4
  %305 = add nsw i32 %304, 1
  %306 = trunc i32 %305 to i8
  %307 = getelementptr inbounds [4 x i8*], [4 x i8*]* %14, i64 0, i64 1
  %308 = load i8*, i8** %307, align 8
  %309 = getelementptr inbounds i8, i8* %308, i32 1
  store i8* %309, i8** %307, align 8
  store i8 %306, i8* %308, align 1
  br label %310

310:                                              ; preds = %303, %298
  %311 = load i32, i32* %24, align 4
  %312 = lshr i32 %311, 4
  %313 = and i32 %312, 15
  store i32 %313, i32* %25, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %322

315:                                              ; preds = %310
  %316 = load i32, i32* %25, align 4
  %317 = add nsw i32 %316, 1
  %318 = trunc i32 %317 to i8
  %319 = getelementptr inbounds [4 x i8*], [4 x i8*]* %14, i64 0, i64 2
  %320 = load i8*, i8** %319, align 16
  %321 = getelementptr inbounds i8, i8* %320, i32 1
  store i8* %321, i8** %319, align 16
  store i8 %318, i8* %320, align 1
  br label %322

322:                                              ; preds = %315, %310
  %323 = load i32, i32* %24, align 4
  %324 = and i32 %323, 1
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %349

326:                                              ; preds = %322
  %327 = load i32, i32* %23, align 4
  %328 = ashr i32 %327, 8
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %337

330:                                              ; preds = %326
  %331 = load i32, i32* %23, align 4
  %332 = ashr i32 %331, 8
  %333 = trunc i32 %332 to i8
  %334 = getelementptr inbounds [4 x i8*], [4 x i8*]* %14, i64 0, i64 3
  %335 = load i8*, i8** %334, align 8
  %336 = getelementptr inbounds i8, i8* %335, i32 1
  store i8* %336, i8** %334, align 8
  store i8 %333, i8* %335, align 1
  br label %337

337:                                              ; preds = %330, %326
  %338 = load i32, i32* %23, align 4
  %339 = and i32 %338, 255
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %348

341:                                              ; preds = %337
  %342 = load i32, i32* %23, align 4
  %343 = and i32 %342, 255
  %344 = trunc i32 %343 to i8
  %345 = getelementptr inbounds [4 x i8*], [4 x i8*]* %14, i64 0, i64 3
  %346 = load i8*, i8** %345, align 8
  %347 = getelementptr inbounds i8, i8* %346, i32 1
  store i8* %347, i8** %345, align 8
  store i8 %344, i8* %346, align 1
  br label %348

348:                                              ; preds = %341, %337
  br label %349

349:                                              ; preds = %348, %322
  br label %379

350:                                              ; preds = %265
  %351 = getelementptr inbounds [4 x i8*], [4 x i8*]* %14, i64 0, i64 0
  %352 = load i8*, i8** %351, align 16
  %353 = getelementptr inbounds i8, i8* %352, i32 1
  store i8* %353, i8** %351, align 16
  store i8 -1, i8* %352, align 1
  %354 = getelementptr inbounds [4 x i8*], [4 x i8*]* %14, i64 0, i64 0
  %355 = load i8*, i8** %354, align 16
  %356 = getelementptr inbounds i8, i8* %355, i32 1
  store i8* %356, i8** %354, align 16
  store i8 -2, i8* %355, align 1
  %357 = load i32, i32* %23, align 4
  %358 = ashr i32 %357, 8
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %367

360:                                              ; preds = %350
  %361 = load i32, i32* %23, align 4
  %362 = ashr i32 %361, 8
  %363 = trunc i32 %362 to i8
  %364 = getelementptr inbounds [4 x i8*], [4 x i8*]* %14, i64 0, i64 0
  %365 = load i8*, i8** %364, align 16
  %366 = getelementptr inbounds i8, i8* %365, i32 1
  store i8* %366, i8** %364, align 16
  store i8 %363, i8* %365, align 1
  br label %367

367:                                              ; preds = %360, %350
  %368 = load i32, i32* %23, align 4
  %369 = and i32 %368, 255
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %378

371:                                              ; preds = %367
  %372 = load i32, i32* %23, align 4
  %373 = and i32 %372, 255
  %374 = trunc i32 %373 to i8
  %375 = getelementptr inbounds [4 x i8*], [4 x i8*]* %14, i64 0, i64 0
  %376 = load i8*, i8** %375, align 16
  %377 = getelementptr inbounds i8, i8* %376, i32 1
  store i8* %377, i8** %375, align 16
  store i8 %374, i8* %376, align 1
  br label %378

378:                                              ; preds = %371, %367
  br label %379

379:                                              ; preds = %378, %349
  br label %380

380:                                              ; preds = %379, %256
  %381 = load i32, i32* %21, align 4
  %382 = add i32 %381, 1
  store i32 %382, i32* %21, align 4
  br label %235

383:                                              ; preds = %235
  br label %384

384:                                              ; preds = %383, %228
  br label %385

385:                                              ; preds = %384
  %386 = load i32, i32* %9, align 4
  %387 = add nsw i32 %386, -1
  store i32 %387, i32* %9, align 4
  %388 = load i32*, i32** %8, align 8
  %389 = getelementptr inbounds i32, i32* %388, i32 1
  store i32* %389, i32** %8, align 8
  br label %225

390:                                              ; preds = %225
  %391 = getelementptr inbounds [4 x i8*], [4 x i8*]* %14, i64 0, i64 0
  %392 = load i8*, i8** %391, align 16
  store i8 1, i8* %392, align 1
  %393 = getelementptr inbounds [4 x i8*], [4 x i8*]* %14, i64 0, i64 1
  %394 = load i8*, i8** %393, align 8
  store i8 1, i8* %394, align 1
  %395 = getelementptr inbounds [4 x i8*], [4 x i8*]* %14, i64 0, i64 2
  %396 = load i8*, i8** %395, align 16
  store i8 1, i8* %396, align 1
  %397 = getelementptr inbounds [4 x i8*], [4 x i8*]* %14, i64 0, i64 3
  %398 = load i8*, i8** %397, align 8
  %399 = getelementptr inbounds i8, i8* %398, i32 1
  store i8* %399, i8** %397, align 8
  store i8 1, i8* %398, align 1
  %400 = getelementptr inbounds [4 x i8*], [4 x i8*]* %14, i64 0, i64 3
  %401 = load i8*, i8** %400, align 8
  store i8 0, i8* %401, align 1
  %402 = getelementptr inbounds [4 x i8*], [4 x i8*]* %14, i64 0, i64 3
  %403 = load i8*, i8** %402, align 8
  %404 = load i8*, i8** %10, align 8
  %405 = ptrtoint i8* %403 to i64
  %406 = ptrtoint i8* %404 to i64
  %407 = sub i64 %405, %406
  %408 = trunc i64 %407 to i32
  store i32 %408, i32* %6, align 4
  br label %409

409:                                              ; preds = %390, %195, %165
  %410 = load i32, i32* %6, align 4
  ret i32 %410
}

declare dso_local i32 @get_char_typeW(i32) #1

declare dso_local i32 @tolowerW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
