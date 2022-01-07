; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_opentype.c_GPOS_apply_ChainContextPos.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_opentype.c_GPOS_apply_ChainContextPos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32*, i32 }
%struct.TYPE_17__ = type { i32*, i32 }
%struct.TYPE_16__ = type { i32*, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"Chaining Contextual Positioning Subtable\0A\00", align 1
@GPOS_apply_ChainContextPos.once = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"  TODO: subtype 1 (Simple Chaining Context Glyph Positioning)\0A\00", align 1
@GPOS_apply_ChainContextPos.once.2 = internal global i32 0, align 4
@.str.3 = private unnamed_addr constant [68 x i8] c"  TODO: subtype 2 (Class-based Chaining Context Glyph Positioning)\0A\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"  subtype 3 (Coverage-based Chaining Context Glyph Positioning)\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Matched Backtrack\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Matched IndexGlyphs\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Matched LookAhead\0A\00", align 1
@.str.8 = private unnamed_addr constant [68 x i8] c"Skipping invalid sequence index %u (glyph index %u, write dir %d).\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"Position: %u -> %u %u.\0A\00", align 1
@.str.10 = private unnamed_addr constant [55 x i8] c"Unhandled Chaining Contextual Positioning Format %#x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, %struct.TYPE_13__*, i32*, i32*, %struct.TYPE_14__*, i32*, i32, i32, i32*)* @GPOS_apply_ChainContextPos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GPOS_apply_ChainContextPos(i32* %0, i32* %1, i32* %2, %struct.TYPE_13__* %3, i32* %4, i32* %5, %struct.TYPE_14__* %6, i32* %7, i32 %8, i32 %9, i32* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_14__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_18__*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca %struct.TYPE_17__*, align 8
  %36 = alloca %struct.TYPE_16__*, align 8
  %37 = alloca %struct.TYPE_15__*, align 8
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  store i32* %0, i32** %13, align 8
  store i32* %1, i32** %14, align 8
  store i32* %2, i32** %15, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %16, align 8
  store i32* %4, i32** %17, align 8
  store i32* %5, i32** %18, align 8
  store %struct.TYPE_14__* %6, %struct.TYPE_14__** %19, align 8
  store i32* %7, i32** %20, align 8
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32* %10, i32** %23, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %11
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  br label %51

51:                                               ; preds = %45, %11
  %52 = phi i1 [ false, %11 ], [ %50, %45 ]
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 -1, i32 1
  store i32 %54, i32* %25, align 4
  %55 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %24, align 4
  br label %56

56:                                               ; preds = %382, %51
  %57 = load i32, i32* %24, align 4
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @GET_BE_WORD(i32 %60)
  %62 = icmp slt i32 %57, %61
  br i1 %62, label %63, label %385

63:                                               ; preds = %56
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %65 = load i32, i32* %24, align 4
  %66 = call i64 @GPOS_get_subtable(%struct.TYPE_14__* %64, i32 %65)
  %67 = inttoptr i64 %66 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %67, %struct.TYPE_18__** %27, align 8
  %68 = load i32, i32* %25, align 4
  store i32 %68, i32* %28, align 4
  %69 = load i32, i32* %25, align 4
  %70 = mul nsw i32 -1, %69
  store i32 %70, i32* %29, align 4
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %27, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @GET_BE_WORD(i32 %73)
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %83

76:                                               ; preds = %63
  %77 = load i32, i32* @GPOS_apply_ChainContextPos.once, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* @GPOS_apply_ChainContextPos.once, align 4
  %79 = icmp ne i32 %77, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %76
  %81 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %76
  br label %382

83:                                               ; preds = %63
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %27, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @GET_BE_WORD(i32 %86)
  %88 = icmp eq i32 %87, 2
  br i1 %88, label %89, label %96

89:                                               ; preds = %83
  %90 = load i32, i32* @GPOS_apply_ChainContextPos.once.2, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* @GPOS_apply_ChainContextPos.once.2, align 4
  %92 = icmp ne i32 %90, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %89
  %94 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %89
  br label %382

96:                                               ; preds = %83
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %27, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @GET_BE_WORD(i32 %99)
  %101 = icmp eq i32 %100, 3
  br i1 %101, label %102, label %373

102:                                              ; preds = %96
  %103 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0))
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %27, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @GET_BE_WORD(i32 %106)
  store i32 %107, i32* %30, align 4
  %108 = load i32, i32* %21, align 4
  %109 = load i32, i32* %29, align 4
  %110 = load i32, i32* %30, align 4
  %111 = mul nsw i32 %109, %110
  %112 = add i32 %108, %111
  store i32 %112, i32* %34, align 4
  %113 = load i32, i32* %34, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %102
  %116 = load i32, i32* %34, align 4
  %117 = load i32, i32* %22, align 4
  %118 = icmp uge i32 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %115, %102
  br label %382

120:                                              ; preds = %115
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %27, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %30, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = bitcast i32* %126 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %127, %struct.TYPE_17__** %35, align 8
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @GET_BE_WORD(i32 %130)
  store i32 %131, i32* %31, align 4
  %132 = load i32, i32* %21, align 4
  %133 = load i32, i32* %25, align 4
  %134 = load i32, i32* %31, align 4
  %135 = sub nsw i32 %134, 1
  %136 = mul nsw i32 %133, %135
  %137 = add i32 %132, %136
  store i32 %137, i32* %34, align 4
  %138 = load i32, i32* %34, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %120
  %141 = load i32, i32* %34, align 4
  %142 = load i32, i32* %22, align 4
  %143 = icmp uge i32 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %140, %120
  br label %382

145:                                              ; preds = %140
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %31, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = bitcast i32* %151 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %152, %struct.TYPE_16__** %36, align 8
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %36, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @GET_BE_WORD(i32 %155)
  store i32 %156, i32* %32, align 4
  %157 = load i32, i32* %21, align 4
  %158 = load i32, i32* %28, align 4
  %159 = load i32, i32* %31, align 4
  %160 = load i32, i32* %32, align 4
  %161 = add nsw i32 %159, %160
  %162 = sub nsw i32 %161, 1
  %163 = mul nsw i32 %158, %162
  %164 = add i32 %157, %163
  store i32 %164, i32* %34, align 4
  %165 = load i32, i32* %34, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %171, label %167

167:                                              ; preds = %145
  %168 = load i32, i32* %34, align 4
  %169 = load i32, i32* %22, align 4
  %170 = icmp uge i32 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %167, %145
  br label %382

172:                                              ; preds = %167
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %36, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %32, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = bitcast i32* %178 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %179, %struct.TYPE_15__** %37, align 8
  store i32 0, i32* %34, align 4
  br label %180

180:                                              ; preds = %212, %172
  %181 = load i32, i32* %34, align 4
  %182 = load i32, i32* %30, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %215

184:                                              ; preds = %180
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %27, align 8
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 1
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* %34, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @GET_BE_WORD(i32 %191)
  store i32 %192, i32* %26, align 4
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %27, align 8
  %194 = bitcast %struct.TYPE_18__* %193 to i32*
  %195 = load i32, i32* %26, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  %198 = load i32*, i32** %20, align 8
  %199 = load i32, i32* %21, align 4
  %200 = load i32, i32* %29, align 4
  %201 = load i32, i32* %34, align 4
  %202 = add nsw i32 %201, 1
  %203 = mul nsw i32 %200, %202
  %204 = add i32 %199, %203
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %198, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @GSUB_is_glyph_covered(i32* %197, i32 %207)
  %209 = icmp eq i32 %208, -1
  br i1 %209, label %210, label %211

210:                                              ; preds = %184
  br label %215

211:                                              ; preds = %184
  br label %212

212:                                              ; preds = %211
  %213 = load i32, i32* %34, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %34, align 4
  br label %180

215:                                              ; preds = %210, %180
  %216 = load i32, i32* %34, align 4
  %217 = load i32, i32* %30, align 4
  %218 = icmp ne i32 %216, %217
  br i1 %218, label %219, label %220

219:                                              ; preds = %215
  br label %382

220:                                              ; preds = %215
  %221 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %34, align 4
  br label %222

222:                                              ; preds = %253, %220
  %223 = load i32, i32* %34, align 4
  %224 = load i32, i32* %31, align 4
  %225 = icmp slt i32 %223, %224
  br i1 %225, label %226, label %256

226:                                              ; preds = %222
  %227 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %228 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %227, i32 0, i32 0
  %229 = load i32*, i32** %228, align 8
  %230 = load i32, i32* %34, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @GET_BE_WORD(i32 %233)
  store i32 %234, i32* %26, align 4
  %235 = load %struct.TYPE_18__*, %struct.TYPE_18__** %27, align 8
  %236 = bitcast %struct.TYPE_18__* %235 to i32*
  %237 = load i32, i32* %26, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = load i32*, i32** %20, align 8
  %241 = load i32, i32* %21, align 4
  %242 = load i32, i32* %25, align 4
  %243 = load i32, i32* %34, align 4
  %244 = mul nsw i32 %242, %243
  %245 = add i32 %241, %244
  %246 = zext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %240, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @GSUB_is_glyph_covered(i32* %239, i32 %248)
  %250 = icmp eq i32 %249, -1
  br i1 %250, label %251, label %252

251:                                              ; preds = %226
  br label %256

252:                                              ; preds = %226
  br label %253

253:                                              ; preds = %252
  %254 = load i32, i32* %34, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %34, align 4
  br label %222

256:                                              ; preds = %251, %222
  %257 = load i32, i32* %34, align 4
  %258 = load i32, i32* %31, align 4
  %259 = icmp ne i32 %257, %258
  br i1 %259, label %260, label %261

260:                                              ; preds = %256
  br label %382

261:                                              ; preds = %256
  %262 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %34, align 4
  br label %263

263:                                              ; preds = %296, %261
  %264 = load i32, i32* %34, align 4
  %265 = load i32, i32* %32, align 4
  %266 = icmp slt i32 %264, %265
  br i1 %266, label %267, label %299

267:                                              ; preds = %263
  %268 = load %struct.TYPE_16__*, %struct.TYPE_16__** %36, align 8
  %269 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %268, i32 0, i32 0
  %270 = load i32*, i32** %269, align 8
  %271 = load i32, i32* %34, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %270, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @GET_BE_WORD(i32 %274)
  store i32 %275, i32* %26, align 4
  %276 = load %struct.TYPE_18__*, %struct.TYPE_18__** %27, align 8
  %277 = bitcast %struct.TYPE_18__* %276 to i32*
  %278 = load i32, i32* %26, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %277, i64 %279
  %281 = load i32*, i32** %20, align 8
  %282 = load i32, i32* %21, align 4
  %283 = load i32, i32* %28, align 4
  %284 = load i32, i32* %31, align 4
  %285 = load i32, i32* %34, align 4
  %286 = add nsw i32 %284, %285
  %287 = mul nsw i32 %283, %286
  %288 = add i32 %282, %287
  %289 = zext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %281, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = call i32 @GSUB_is_glyph_covered(i32* %280, i32 %291)
  %293 = icmp eq i32 %292, -1
  br i1 %293, label %294, label %295

294:                                              ; preds = %267
  br label %299

295:                                              ; preds = %267
  br label %296

296:                                              ; preds = %295
  %297 = load i32, i32* %34, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %34, align 4
  br label %263

299:                                              ; preds = %294, %263
  %300 = load i32, i32* %34, align 4
  %301 = load i32, i32* %32, align 4
  %302 = icmp ne i32 %300, %301
  br i1 %302, label %303, label %304

303:                                              ; preds = %299
  br label %382

304:                                              ; preds = %299
  %305 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %306 = load %struct.TYPE_15__*, %struct.TYPE_15__** %37, align 8
  %307 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 8
  %309 = call i32 @GET_BE_WORD(i32 %308)
  store i32 %309, i32* %33, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %312, label %311

311:                                              ; preds = %304
  store i32 1, i32* %12, align 4
  br label %386

312:                                              ; preds = %304
  store i32 0, i32* %34, align 4
  br label %313

313:                                              ; preds = %366, %312
  %314 = load i32, i32* %34, align 4
  %315 = load i32, i32* %33, align 4
  %316 = icmp slt i32 %314, %315
  br i1 %316, label %317, label %369

317:                                              ; preds = %313
  %318 = load %struct.TYPE_15__*, %struct.TYPE_15__** %37, align 8
  %319 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %318, i32 0, i32 0
  %320 = load %struct.TYPE_12__*, %struct.TYPE_12__** %319, align 8
  %321 = load i32, i32* %34, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %320, i64 %322
  %324 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = call i32 @GET_BE_WORD(i32 %325)
  store i32 %326, i32* %38, align 4
  %327 = load %struct.TYPE_15__*, %struct.TYPE_15__** %37, align 8
  %328 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %327, i32 0, i32 0
  %329 = load %struct.TYPE_12__*, %struct.TYPE_12__** %328, align 8
  %330 = load i32, i32* %34, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %329, i64 %331
  %333 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = call i32 @GET_BE_WORD(i32 %334)
  store i32 %335, i32* %39, align 4
  %336 = load i32, i32* %21, align 4
  %337 = load i32, i32* %25, align 4
  %338 = load i32, i32* %39, align 4
  %339 = mul i32 %337, %338
  %340 = add i32 %336, %339
  store i32 %340, i32* %40, align 4
  %341 = load i32, i32* %40, align 4
  %342 = load i32, i32* %22, align 4
  %343 = icmp uge i32 %341, %342
  br i1 %343, label %344, label %349

344:                                              ; preds = %317
  %345 = load i32, i32* %39, align 4
  %346 = load i32, i32* %21, align 4
  %347 = load i32, i32* %25, align 4
  %348 = call i32 @WARN(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.8, i64 0, i64 0), i32 %345, i32 %346, i32 %347)
  br label %366

349:                                              ; preds = %317
  %350 = load i32, i32* %34, align 4
  %351 = load i32, i32* %39, align 4
  %352 = load i32, i32* %38, align 4
  %353 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 %350, i32 %351, i32 %352)
  %354 = load i32*, i32** %13, align 8
  %355 = load i32*, i32** %14, align 8
  %356 = load i32*, i32** %15, align 8
  %357 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %358 = load i32*, i32** %17, align 8
  %359 = load i32*, i32** %18, align 8
  %360 = load i32, i32* %38, align 4
  %361 = load i32*, i32** %20, align 8
  %362 = load i32, i32* %40, align 4
  %363 = load i32, i32* %22, align 4
  %364 = load i32*, i32** %23, align 8
  %365 = call i32 @GPOS_apply_lookup(i32* %354, i32* %355, i32* %356, %struct.TYPE_13__* %357, i32* %358, i32* %359, i32 %360, i32* %361, i32 %362, i32 %363, i32* %364)
  br label %366

366:                                              ; preds = %349, %344
  %367 = load i32, i32* %34, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %34, align 4
  br label %313

369:                                              ; preds = %313
  %370 = load i32, i32* %31, align 4
  %371 = load i32, i32* %32, align 4
  %372 = add nsw i32 %370, %371
  store i32 %372, i32* %12, align 4
  br label %386

373:                                              ; preds = %96
  %374 = load %struct.TYPE_18__*, %struct.TYPE_18__** %27, align 8
  %375 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = call i32 @GET_BE_WORD(i32 %376)
  %378 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.10, i64 0, i64 0), i32 %377)
  br label %379

379:                                              ; preds = %373
  br label %380

380:                                              ; preds = %379
  br label %381

381:                                              ; preds = %380
  br label %382

382:                                              ; preds = %381, %303, %260, %219, %171, %144, %119, %95, %82
  %383 = load i32, i32* %24, align 4
  %384 = add nsw i32 %383, 1
  store i32 %384, i32* %24, align 4
  br label %56

385:                                              ; preds = %56
  store i32 1, i32* %12, align 4
  br label %386

386:                                              ; preds = %385, %369, %311
  %387 = load i32, i32* %12, align 4
  ret i32 %387
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @GET_BE_WORD(i32) #1

declare dso_local i64 @GPOS_get_subtable(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local i32 @GSUB_is_glyph_covered(i32*, i32) #1

declare dso_local i32 @WARN(i8*, i32, i32, i32) #1

declare dso_local i32 @GPOS_apply_lookup(i32*, i32*, i32*, %struct.TYPE_13__*, i32*, i32*, i32, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
