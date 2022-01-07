; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_ShapeCharGlyphProp_BaseIndic.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_ShapeCharGlyphProp_BaseIndic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i8*, i8*, i8* }
%struct.TYPE_14__ = type { i64, i32 }

@FALSE = common dso_local global i8* null, align 8
@SCRIPT_JUSTIFY_NONE = common dso_local global i8* null, align 8
@SCRIPT_JUSTIFY_BLANK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*, i32*, i32, i32*, i32, i32*, %struct.TYPE_13__*, %struct.TYPE_12__*, i32 (i32)*, i64, i64)* @ShapeCharGlyphProp_BaseIndic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ShapeCharGlyphProp_BaseIndic(i32 %0, i32* %1, i32* %2, i32* %3, i32 %4, i32* %5, i32 %6, i32* %7, %struct.TYPE_13__* %8, %struct.TYPE_12__* %9, i32 (i32)* %10, i64 %11, i64 %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_13__*, align 8
  %23 = alloca %struct.TYPE_12__*, align 8
  %24 = alloca i32 (i32)*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca [20 x i32], align 16
  %30 = alloca i32, align 4
  %31 = alloca %struct.TYPE_14__*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i64, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store i32 %0, i32* %14, align 4
  store i32* %1, i32** %15, align 8
  store i32* %2, i32** %16, align 8
  store i32* %3, i32** %17, align 8
  store i32 %4, i32* %18, align 4
  store i32* %5, i32** %19, align 8
  store i32 %6, i32* %20, align 4
  store i32* %7, i32** %21, align 8
  store %struct.TYPE_13__* %8, %struct.TYPE_13__** %22, align 8
  store %struct.TYPE_12__* %9, %struct.TYPE_12__** %23, align 8
  store i32 (i32)* %10, i32 (i32)** %24, align 8
  store i64 %11, i64* %25, align 8
  store i64 %12, i64* %26, align 8
  %36 = load i32*, i32** %15, align 8
  %37 = load i32*, i32** %19, align 8
  %38 = load i32, i32* %20, align 4
  %39 = load i32*, i32** %21, align 8
  %40 = load i32, i32* %18, align 4
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %42 = call i32 @OpenType_GDEF_UpdateGlyphProps(i32* %36, i32* %37, i32 %38, i32* %39, i32 %40, %struct.TYPE_12__* %41)
  store i32 0, i32* %27, align 4
  br label %43

43:                                               ; preds = %220, %13
  %44 = load i32, i32* %27, align 4
  %45 = load i32, i32* %20, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %223

47:                                               ; preds = %43
  store i32 0, i32* %30, align 4
  %48 = load i32*, i32** %21, align 8
  %49 = load i32, i32* %18, align 4
  %50 = load i32, i32* %27, align 4
  %51 = call i32 @USP10_FindGlyphInLogClust(i32* %48, i32 %49, i32 %50)
  store i32 %51, i32* %28, align 4
  %52 = load i32, i32* %28, align 4
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %79

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %75, %54
  %56 = load i32, i32* %28, align 4
  %57 = load i32, i32* %18, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load i32*, i32** %21, align 8
  %61 = load i32, i32* %28, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %27, align 4
  %66 = icmp eq i32 %64, %65
  br label %67

67:                                               ; preds = %59, %55
  %68 = phi i1 [ false, %55 ], [ %66, %59 ]
  br i1 %68, label %69, label %78

69:                                               ; preds = %67
  %70 = load i32, i32* %28, align 4
  %71 = load i32, i32* %30, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %30, align 4
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds [20 x i32], [20 x i32]* %29, i64 0, i64 %73
  store i32 %70, i32* %74, align 4
  br label %75

75:                                               ; preds = %69
  %76 = load i32, i32* %28, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %28, align 4
  br label %55

78:                                               ; preds = %67
  br label %79

79:                                               ; preds = %78, %47
  %80 = load i64, i64* %26, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %79
  %83 = load i8*, i8** @FALSE, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %85 = load i32, i32* %27, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 3
  store i8* %83, i8** %89, align 8
  %90 = load i8*, i8** @FALSE, align 8
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %92 = load i32, i32* %27, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 2
  store i8* %90, i8** %96, align 8
  br label %97

97:                                               ; preds = %82, %79
  %98 = load i32, i32* %30, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %97
  %101 = load i8*, i8** @SCRIPT_JUSTIFY_NONE, align 8
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %103 = load i32, i32* %27, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  store i8* %101, i8** %107, align 8
  br label %220

108:                                              ; preds = %97
  %109 = load i32, i32* %30, align 4
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %111, label %133

111:                                              ; preds = %108
  %112 = load i32*, i32** %17, align 8
  %113 = getelementptr inbounds [20 x i32], [20 x i32]* %29, i64 0, i64 0
  %114 = load i32, i32* %113, align 16
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %117, 32
  br i1 %118, label %119, label %133

119:                                              ; preds = %111
  %120 = load i8*, i8** @SCRIPT_JUSTIFY_BLANK, align 8
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %122 = load i32, i32* %27, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 1
  store i8* %120, i8** %126, align 8
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %128 = getelementptr inbounds [20 x i32], [20 x i32]* %29, i64 0, i64 0
  %129 = load i32, i32* %128, align 16
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  store i32 1, i32* %132, align 4
  br label %141

133:                                              ; preds = %111, %108
  %134 = load i8*, i8** @SCRIPT_JUSTIFY_NONE, align 8
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %136 = load i32, i32* %27, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 1
  store i8* %134, i8** %140, align 8
  br label %141

141:                                              ; preds = %133, %119
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %143 = load i32, i32* %27, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  store i32 0, i32* %147, align 8
  store i32 0, i32* %28, align 4
  br label %148

148:                                              ; preds = %216, %141
  %149 = load i32, i32* %28, align 4
  %150 = load i32, i32* %30, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %162

152:                                              ; preds = %148
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %154 = load i32, i32* %27, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp ne i32 %159, 0
  %161 = xor i1 %160, true
  br label %162

162:                                              ; preds = %152, %148
  %163 = phi i1 [ false, %148 ], [ %161, %152 ]
  br i1 %163, label %164, label %219

164:                                              ; preds = %162
  %165 = load i32 (i32)*, i32 (i32)** %24, align 8
  %166 = load i32*, i32** %17, align 8
  %167 = load i32, i32* %28, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [20 x i32], [20 x i32]* %29, i64 0, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %166, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = call i32 %165(i32 %173)
  switch i32 %174, label %208 [
    i32 131, label %175
    i32 132, label %175
    i32 134, label %175
    i32 133, label %175
    i32 130, label %175
    i32 135, label %175
    i32 129, label %176
    i32 128, label %176
  ]

175:                                              ; preds = %164, %164, %164, %164, %164, %164
  br label %215

176:                                              ; preds = %164, %164
  %177 = load i32*, i32** %17, align 8
  %178 = load i32, i32* %28, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [20 x i32], [20 x i32]* %29, i64 0, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = sub nsw i32 %181, 1
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %177, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = icmp eq i32 %185, 32
  br i1 %186, label %198, label %187

187:                                              ; preds = %176
  %188 = load i32*, i32** %17, align 8
  %189 = load i32, i32* %28, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [20 x i32], [20 x i32]* %29, i64 0, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %192, 1
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %188, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = icmp eq i32 %196, 32
  br i1 %197, label %198, label %205

198:                                              ; preds = %187, %176
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %200 = load i32, i32* %27, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 0
  store i32 1, i32* %204, align 8
  br label %207

205:                                              ; preds = %187
  %206 = load i32, i32* %30, align 4
  store i32 %206, i32* %28, align 4
  br label %207

207:                                              ; preds = %205, %198
  br label %215

208:                                              ; preds = %164
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %210 = load i32, i32* %27, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 0
  store i32 1, i32* %214, align 8
  br label %215

215:                                              ; preds = %208, %207, %175
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %28, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %28, align 4
  br label %148

219:                                              ; preds = %162
  br label %220

220:                                              ; preds = %219, %100
  %221 = load i32, i32* %27, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %27, align 4
  br label %43

223:                                              ; preds = %43
  %224 = load i64, i64* %25, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %304

226:                                              ; preds = %223
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %31, align 8
  store i32 0, i32* %32, align 4
  %227 = load i32*, i32** %16, align 8
  %228 = load i32*, i32** %15, align 8
  %229 = call i64 @get_GSUB_Indic2(i32* %227, i32* %228)
  store i64 %229, i64* %33, align 8
  %230 = load i32, i32* %14, align 4
  %231 = load i32*, i32** %16, align 8
  %232 = load i32*, i32** %15, align 8
  %233 = load i32*, i32** %17, align 8
  %234 = load i32, i32* %18, align 4
  %235 = load i32 (i32)*, i32 (i32)** %24, align 8
  %236 = load i64, i64* %33, align 8
  %237 = call i32 @Indic_ParseSyllables(i32 %230, i32* %231, i32* %232, i32* %233, i32 %234, %struct.TYPE_14__** %31, i32* %32, i32 (i32)* %235, i64 %236)
  store i32 0, i32* %27, align 4
  br label %238

238:                                              ; preds = %298, %226
  %239 = load i32, i32* %27, align 4
  %240 = load i32, i32* %32, align 4
  %241 = icmp slt i32 %239, %240
  br i1 %241, label %242, label %301

242:                                              ; preds = %238
  %243 = load i32*, i32** %21, align 8
  %244 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %245 = load i32, i32* %27, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = getelementptr inbounds i32, i32* %243, i64 %249
  %251 = load i32, i32* %250, align 4
  store i32 %251, i32* %35, align 4
  %252 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %253 = load i32, i32* %27, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = add i64 %257, 1
  %259 = trunc i64 %258 to i32
  store i32 %259, i32* %34, align 4
  br label %260

260:                                              ; preds = %294, %242
  %261 = load i32, i32* %34, align 4
  %262 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %263 = load i32, i32* %27, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %262, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 8
  %268 = icmp sle i32 %261, %267
  br i1 %268, label %269, label %297

269:                                              ; preds = %260
  %270 = load i32*, i32** %21, align 8
  %271 = load i32, i32* %34, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %270, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* %35, align 4
  %276 = icmp ne i32 %274, %275
  br i1 %276, label %277, label %293

277:                                              ; preds = %269
  %278 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %279 = load i32*, i32** %21, align 8
  %280 = load i32, i32* %34, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %279, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %278, i64 %284
  %286 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %286, i32 0, i32 0
  store i32 0, i32* %287, align 8
  %288 = load i32, i32* %35, align 4
  %289 = load i32*, i32** %21, align 8
  %290 = load i32, i32* %34, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %289, i64 %291
  store i32 %288, i32* %292, align 4
  br label %293

293:                                              ; preds = %277, %269
  br label %294

294:                                              ; preds = %293
  %295 = load i32, i32* %34, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %34, align 4
  br label %260

297:                                              ; preds = %260
  br label %298

298:                                              ; preds = %297
  %299 = load i32, i32* %27, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %27, align 4
  br label %238

301:                                              ; preds = %238
  %302 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %303 = call i32 @heap_free(%struct.TYPE_14__* %302)
  br label %304

304:                                              ; preds = %301, %223
  %305 = load i32, i32* %20, align 4
  %306 = load i32, i32* %18, align 4
  %307 = load i32*, i32** %21, align 8
  %308 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %309 = call i32 @UpdateClustersFromGlyphProp(i32 %305, i32 %306, i32* %307, %struct.TYPE_12__* %308)
  ret void
}

declare dso_local i32 @OpenType_GDEF_UpdateGlyphProps(i32*, i32*, i32, i32*, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @USP10_FindGlyphInLogClust(i32*, i32, i32) #1

declare dso_local i64 @get_GSUB_Indic2(i32*, i32*) #1

declare dso_local i32 @Indic_ParseSyllables(i32, i32*, i32*, i32*, i32, %struct.TYPE_14__**, i32*, i32 (i32)*, i64) #1

declare dso_local i32 @heap_free(%struct.TYPE_14__*) #1

declare dso_local i32 @UpdateClustersFromGlyphProp(i32, i32, i32*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
