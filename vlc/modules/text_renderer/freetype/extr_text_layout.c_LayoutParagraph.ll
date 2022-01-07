; ModuleID = '/home/carl/AnghaBench/vlc/modules/text_renderer/freetype/extr_text_layout.c_LayoutParagraph.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/text_renderer/freetype/extr_text_layout.c_LayoutParagraph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i64, i64*, %struct.TYPE_20__*, %struct.TYPE_16__*, %struct.TYPE_17__** }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_17__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_19__* }

@.str = private unnamed_addr constant [72 x i8] c"LayoutParagraph() invalid parameters. Paragraph size: %d. Runs count %d\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"LayoutParagraph(): Invalid max width\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@STYLE_WRAP_DEFAULT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [71 x i8] c"LayoutParagraph(): First glyph width in line exceeds maximum, skipping\00", align 1
@STYLE_WRAP_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_18__*, i32, i32, i32, i32, %struct.TYPE_19__**)* @LayoutParagraph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LayoutParagraph(i32* %0, %struct.TYPE_18__* %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.TYPE_19__** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_19__**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_19__*, align 8
  %23 = alloca %struct.TYPE_19__**, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_17__*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca %struct.TYPE_16__*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.TYPE_19__** %6, %struct.TYPE_19__*** %15, align 8
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sle i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %7
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp sle i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %39, %7
  %45 = load i32*, i32** %9, align 8
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 (i32*, i8*, ...) @msg_Err(i32* %45, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i64 %48, i64 %51)
  %53 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %53, i32* %8, align 4
  br label %470

54:                                               ; preds = %39
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp ule i32 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i32*, i32** %9, align 8
  %60 = call i32 (i32*, i8*, ...) @msg_Err(i32* %59, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %61, i32* %8, align 4
  br label %470

62:                                               ; preds = %54
  %63 = load i32, i32* %11, align 4
  %64 = shl i32 %63, 6
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %12, align 4
  %66 = shl i32 %65, 6
  store i32 %66, i32* %12, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 -1, i32* %21, align 4
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %22, align 8
  store %struct.TYPE_19__** %22, %struct.TYPE_19__*** %23, align 8
  store i32 0, i32* %24, align 4
  br label %68

68:                                               ; preds = %99, %62
  %69 = load i32, i32* %24, align 4
  %70 = sext i32 %69 to i64
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp slt i64 %70, %73
  br i1 %74, label %75, label %102

75:                                               ; preds = %68
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %77 = load i32, i32* %24, align 4
  %78 = call i64 @IsWhitespaceAt(%struct.TYPE_18__* %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load i32, i32* %24, align 4
  %82 = load i32, i32* %21, align 4
  %83 = add nsw i32 %82, 1
  %84 = icmp ne i32 %81, %83
  br i1 %84, label %85, label %96

85:                                               ; preds = %80, %75
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 3
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %87, align 8
  %89 = load i32, i32* %24, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %19, align 4
  %95 = add i32 %94, %93
  store i32 %95, i32* %19, align 4
  br label %98

96:                                               ; preds = %80
  %97 = load i32, i32* %24, align 4
  store i32 %97, i32* %21, align 4
  br label %98

98:                                               ; preds = %96, %85
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %24, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %24, align 4
  br label %68

102:                                              ; preds = %68
  store i32 -1, i32* %21, align 4
  %103 = load i32, i32* %19, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %126

105:                                              ; preds = %102
  store i32 0, i32* %25, align 4
  br label %106

106:                                              ; preds = %121, %105
  %107 = load i32, i32* %25, align 4
  %108 = sext i32 %107 to i64
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp slt i64 %108, %111
  br i1 %112, label %113, label %124

113:                                              ; preds = %106
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 3
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %115, align 8
  %117 = load i32, i32* %25, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i64 %118
  %120 = call i32 @ReleaseGlyphBitMaps(%struct.TYPE_20__* %119)
  br label %121

121:                                              ; preds = %113
  %122 = load i32, i32* %25, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %25, align 4
  br label %106

124:                                              ; preds = %106
  %125 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %125, i32* %8, align 4
  br label %470

126:                                              ; preds = %102
  %127 = load i32, i32* %14, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %139

129:                                              ; preds = %126
  %130 = load i32, i32* %19, align 4
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* %12, align 4
  %133 = sub i32 %131, %132
  %134 = udiv i32 %130, %133
  %135 = add i32 %134, 1
  store i32 %135, i32* %26, align 4
  %136 = load i32, i32* %19, align 4
  %137 = load i32, i32* %26, align 4
  %138 = udiv i32 %136, %137
  store i32 %138, i32* %18, align 4
  br label %139

139:                                              ; preds = %129, %126
  store i32 0, i32* %27, align 4
  br label %140

140:                                              ; preds = %435, %139
  %141 = load i32, i32* %27, align 4
  %142 = sext i32 %141 to i64
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp sle i64 %142, %145
  br i1 %146, label %147, label %438

147:                                              ; preds = %140
  %148 = load i32, i32* %27, align 4
  %149 = sext i32 %148 to i64
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp eq i64 %149, %152
  br i1 %153, label %154, label %171

154:                                              ; preds = %147
  %155 = load i32, i32* %16, align 4
  %156 = load i32, i32* %27, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %170

158:                                              ; preds = %154
  %159 = load i32*, i32** %9, align 8
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %161 = load i32, i32* %16, align 4
  %162 = load i32, i32* %27, align 4
  %163 = sub nsw i32 %162, 1
  %164 = load i32, i32* %13, align 4
  %165 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %23, align 8
  %166 = call i64 @LayoutLine(i32* %159, %struct.TYPE_18__* %160, i32 %161, i32 %163, i32 %164, %struct.TYPE_19__** %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %158
  br label %442

169:                                              ; preds = %158
  br label %170

170:                                              ; preds = %169, %154
  br label %438

171:                                              ; preds = %147
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 5
  %174 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %173, align 8
  %175 = icmp ne %struct.TYPE_17__** %174, null
  br i1 %175, label %176, label %254

176:                                              ; preds = %171
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 5
  %179 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %178, align 8
  %180 = load i32, i32* %27, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %179, i64 %181
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %182, align 8
  %184 = icmp ne %struct.TYPE_17__* %183, null
  br i1 %184, label %185, label %254

185:                                              ; preds = %176
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 5
  %188 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %187, align 8
  %189 = load i32, i32* %27, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %188, i64 %190
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %193, align 8
  %195 = icmp ne %struct.TYPE_14__* %194, null
  br i1 %195, label %196, label %254

196:                                              ; preds = %185
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 5
  %199 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %198, align 8
  %200 = load i32, i32* %27, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %199, i64 %201
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %202, align 8
  store %struct.TYPE_17__* %203, %struct.TYPE_17__** %28, align 8
  store i32 0, i32* %29, align 4
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  store i32 %208, i32* %30, align 4
  br label %209

209:                                              ; preds = %230, %196
  %210 = load i32, i32* %27, align 4
  %211 = add nsw i32 %210, 1
  %212 = sext i32 %211 to i64
  %213 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = icmp slt i64 %212, %215
  br i1 %216, label %217, label %228

217:                                              ; preds = %209
  %218 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %219 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %220 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %219, i32 0, i32 5
  %221 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %220, align 8
  %222 = load i32, i32* %27, align 4
  %223 = add nsw i32 %222, 1
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %221, i64 %224
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %225, align 8
  %227 = icmp eq %struct.TYPE_17__* %218, %226
  br label %228

228:                                              ; preds = %217, %209
  %229 = phi i1 [ false, %209 ], [ %227, %217 ]
  br i1 %229, label %230, label %242

230:                                              ; preds = %228
  %231 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %232 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %231, i32 0, i32 3
  %233 = load %struct.TYPE_20__*, %struct.TYPE_20__** %232, align 8
  %234 = load i32, i32* %27, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %27, align 4
  %236 = sext i32 %234 to i64
  %237 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %233, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* %29, align 4
  %241 = add nsw i32 %240, %239
  store i32 %241, i32* %29, align 4
  br label %209

242:                                              ; preds = %228
  %243 = load i32, i32* %29, align 4
  %244 = load i32, i32* %30, align 4
  %245 = icmp slt i32 %243, %244
  br i1 %245, label %246, label %248

246:                                              ; preds = %242
  %247 = load i32, i32* %30, align 4
  br label %250

248:                                              ; preds = %242
  %249 = load i32, i32* %29, align 4
  br label %250

250:                                              ; preds = %248, %246
  %251 = phi i32 [ %247, %246 ], [ %249, %248 ]
  %252 = load i32, i32* %17, align 4
  %253 = add i32 %252, %251
  store i32 %253, i32* %17, align 4
  br label %435

254:                                              ; preds = %185, %176, %171
  %255 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %256 = load i32, i32* %27, align 4
  %257 = call i64 @IsWhitespaceAt(%struct.TYPE_18__* %255, i32 %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %283

259:                                              ; preds = %254
  %260 = load i32, i32* %16, align 4
  %261 = load i32, i32* %27, align 4
  %262 = icmp eq i32 %260, %261
  br i1 %262, label %263, label %273

263:                                              ; preds = %259
  %264 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %265 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %264, i32 0, i32 3
  %266 = load %struct.TYPE_20__*, %struct.TYPE_20__** %265, align 8
  %267 = load i32, i32* %27, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %266, i64 %268
  %270 = call i32 @ReleaseGlyphBitMaps(%struct.TYPE_20__* %269)
  %271 = load i32, i32* %27, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %16, align 4
  br label %435

273:                                              ; preds = %259
  %274 = load i32, i32* %21, align 4
  %275 = load i32, i32* %27, align 4
  %276 = sub nsw i32 %275, 1
  %277 = icmp eq i32 %274, %276
  br i1 %277, label %278, label %280

278:                                              ; preds = %273
  %279 = load i32, i32* %27, align 4
  store i32 %279, i32* %21, align 4
  br label %435

280:                                              ; preds = %273
  %281 = load i32, i32* %27, align 4
  store i32 %281, i32* %21, align 4
  %282 = load i32, i32* %17, align 4
  store i32 %282, i32* %20, align 4
  br label %283

283:                                              ; preds = %280, %254
  %284 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %285 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %284, i32 0, i32 4
  %286 = load %struct.TYPE_16__*, %struct.TYPE_16__** %285, align 8
  %287 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %288 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %287, i32 0, i32 2
  %289 = load i64*, i64** %288, align 8
  %290 = load i32, i32* %27, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i64, i64* %289, i64 %291
  %293 = load i64, i64* %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %286, i64 %293
  store %struct.TYPE_16__* %294, %struct.TYPE_16__** %31, align 8
  %295 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %296 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %295, i32 0, i32 3
  %297 = load %struct.TYPE_20__*, %struct.TYPE_20__** %296, align 8
  %298 = load i32, i32* %27, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %297, i64 %299
  %301 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  store i32 %302, i32* %32, align 4
  %303 = load i32, i32* %20, align 4
  %304 = load i32, i32* %32, align 4
  %305 = add i32 %303, %304
  %306 = load i32, i32* %18, align 4
  %307 = icmp ugt i32 %305, %306
  br i1 %307, label %308, label %316

308:                                              ; preds = %283
  %309 = load %struct.TYPE_16__*, %struct.TYPE_16__** %31, align 8
  %310 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %309, i32 0, i32 0
  %311 = load %struct.TYPE_15__*, %struct.TYPE_15__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %311, i32 0, i32 0
  %313 = load i64, i64* %312, align 8
  %314 = load i64, i64* @STYLE_WRAP_DEFAULT, align 8
  %315 = icmp eq i64 %313, %314
  br i1 %315, label %322, label %316

316:                                              ; preds = %308, %283
  %317 = load i32, i32* %17, align 4
  %318 = load i32, i32* %32, align 4
  %319 = add i32 %317, %318
  %320 = load i32, i32* %11, align 4
  %321 = icmp ugt i32 %319, %320
  br i1 %321, label %322, label %431

322:                                              ; preds = %316, %308
  %323 = load i32, i32* %16, align 4
  %324 = load i32, i32* %27, align 4
  %325 = icmp eq i32 %323, %324
  br i1 %325, label %326, label %349

326:                                              ; preds = %322
  %327 = load i32*, i32** %9, align 8
  %328 = call i32 @msg_Dbg(i32* %327, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0))
  br label %329

329:                                              ; preds = %344, %326
  %330 = load i32, i32* %27, align 4
  %331 = sext i32 %330 to i64
  %332 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %333 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %332, i32 0, i32 0
  %334 = load i64, i64* %333, align 8
  %335 = icmp slt i64 %331, %334
  br i1 %335, label %336, label %347

336:                                              ; preds = %329
  %337 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %338 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %337, i32 0, i32 3
  %339 = load %struct.TYPE_20__*, %struct.TYPE_20__** %338, align 8
  %340 = load i32, i32* %27, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %339, i64 %341
  %343 = call i32 @ReleaseGlyphBitMaps(%struct.TYPE_20__* %342)
  br label %344

344:                                              ; preds = %336
  %345 = load i32, i32* %27, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %27, align 4
  br label %329

347:                                              ; preds = %329
  %348 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %348, i32* %8, align 4
  br label %470

349:                                              ; preds = %322
  %350 = load i32, i32* %21, align 4
  %351 = load i32, i32* %16, align 4
  %352 = icmp sgt i32 %350, %351
  br i1 %352, label %353, label %363

353:                                              ; preds = %349
  %354 = load %struct.TYPE_16__*, %struct.TYPE_16__** %31, align 8
  %355 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %354, i32 0, i32 0
  %356 = load %struct.TYPE_15__*, %struct.TYPE_15__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %356, i32 0, i32 0
  %358 = load i64, i64* %357, align 8
  %359 = load i64, i64* @STYLE_WRAP_DEFAULT, align 8
  %360 = icmp eq i64 %358, %359
  br i1 %360, label %361, label %363

361:                                              ; preds = %353
  %362 = load i32, i32* %21, align 4
  store i32 %362, i32* %33, align 4
  br label %365

363:                                              ; preds = %353, %349
  %364 = load i32, i32* %27, align 4
  store i32 %364, i32* %33, align 4
  br label %365

365:                                              ; preds = %363, %361
  %366 = load i32*, i32** %9, align 8
  %367 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %368 = load i32, i32* %16, align 4
  %369 = load i32, i32* %33, align 4
  %370 = sub nsw i32 %369, 1
  %371 = load i32, i32* %13, align 4
  %372 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %23, align 8
  %373 = call i64 @LayoutLine(i32* %366, %struct.TYPE_18__* %367, i32 %368, i32 %370, i32 %371, %struct.TYPE_19__** %372)
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %375, label %376

375:                                              ; preds = %365
  br label %442

376:                                              ; preds = %365
  %377 = load %struct.TYPE_16__*, %struct.TYPE_16__** %31, align 8
  %378 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %377, i32 0, i32 0
  %379 = load %struct.TYPE_15__*, %struct.TYPE_15__** %378, align 8
  %380 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %379, i32 0, i32 0
  %381 = load i64, i64* %380, align 8
  %382 = load i64, i64* @STYLE_WRAP_NONE, align 8
  %383 = icmp eq i64 %381, %382
  br i1 %383, label %384, label %404

384:                                              ; preds = %376
  br label %385

385:                                              ; preds = %400, %384
  %386 = load i32, i32* %27, align 4
  %387 = sext i32 %386 to i64
  %388 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %389 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %388, i32 0, i32 0
  %390 = load i64, i64* %389, align 8
  %391 = icmp slt i64 %387, %390
  br i1 %391, label %392, label %403

392:                                              ; preds = %385
  %393 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %394 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %393, i32 0, i32 3
  %395 = load %struct.TYPE_20__*, %struct.TYPE_20__** %394, align 8
  %396 = load i32, i32* %27, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %395, i64 %397
  %399 = call i32 @ReleaseGlyphBitMaps(%struct.TYPE_20__* %398)
  br label %400

400:                                              ; preds = %392
  %401 = load i32, i32* %27, align 4
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* %27, align 4
  br label %385

403:                                              ; preds = %385
  br label %438

404:                                              ; preds = %376
  %405 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %23, align 8
  %406 = load %struct.TYPE_19__*, %struct.TYPE_19__** %405, align 8
  %407 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %406, i32 0, i32 0
  store %struct.TYPE_19__** %407, %struct.TYPE_19__*** %23, align 8
  %408 = load i32, i32* %33, align 4
  %409 = load i32, i32* %21, align 4
  %410 = icmp eq i32 %408, %409
  br i1 %410, label %411, label %428

411:                                              ; preds = %404
  %412 = load i32, i32* %17, align 4
  %413 = load i32, i32* %20, align 4
  %414 = sub i32 %412, %413
  store i32 %414, i32* %17, align 4
  %415 = load i32, i32* %33, align 4
  %416 = add nsw i32 %415, 1
  %417 = sext i32 %416 to i64
  %418 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %419 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %418, i32 0, i32 0
  %420 = load i64, i64* %419, align 8
  %421 = icmp slt i64 %417, %420
  br i1 %421, label %422, label %425

422:                                              ; preds = %411
  %423 = load i32, i32* %33, align 4
  %424 = add nsw i32 %423, 1
  store i32 %424, i32* %16, align 4
  br label %427

425:                                              ; preds = %411
  %426 = load i32, i32* %33, align 4
  store i32 %426, i32* %16, align 4
  br label %427

427:                                              ; preds = %425, %422
  br label %430

428:                                              ; preds = %404
  store i32 0, i32* %17, align 4
  %429 = load i32, i32* %33, align 4
  store i32 %429, i32* %16, align 4
  br label %430

430:                                              ; preds = %428, %427
  store i32 0, i32* %20, align 4
  br label %431

431:                                              ; preds = %430, %316
  %432 = load i32, i32* %32, align 4
  %433 = load i32, i32* %17, align 4
  %434 = add i32 %433, %432
  store i32 %434, i32* %17, align 4
  br label %435

435:                                              ; preds = %431, %278, %263, %250
  %436 = load i32, i32* %27, align 4
  %437 = add nsw i32 %436, 1
  store i32 %437, i32* %27, align 4
  br label %140

438:                                              ; preds = %403, %170, %140
  %439 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %440 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %15, align 8
  store %struct.TYPE_19__* %439, %struct.TYPE_19__** %440, align 8
  %441 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %441, i32* %8, align 4
  br label %470

442:                                              ; preds = %375, %168
  %443 = load i32, i32* %16, align 4
  store i32 %443, i32* %34, align 4
  br label %444

444:                                              ; preds = %459, %442
  %445 = load i32, i32* %34, align 4
  %446 = sext i32 %445 to i64
  %447 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %448 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %447, i32 0, i32 0
  %449 = load i64, i64* %448, align 8
  %450 = icmp slt i64 %446, %449
  br i1 %450, label %451, label %462

451:                                              ; preds = %444
  %452 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %453 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %452, i32 0, i32 3
  %454 = load %struct.TYPE_20__*, %struct.TYPE_20__** %453, align 8
  %455 = load i32, i32* %34, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %454, i64 %456
  %458 = call i32 @ReleaseGlyphBitMaps(%struct.TYPE_20__* %457)
  br label %459

459:                                              ; preds = %451
  %460 = load i32, i32* %34, align 4
  %461 = add nsw i32 %460, 1
  store i32 %461, i32* %34, align 4
  br label %444

462:                                              ; preds = %444
  %463 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %464 = icmp ne %struct.TYPE_19__* %463, null
  br i1 %464, label %465, label %468

465:                                              ; preds = %462
  %466 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %467 = call i32 @FreeLines(%struct.TYPE_19__* %466)
  br label %468

468:                                              ; preds = %465, %462
  %469 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %469, i32* %8, align 4
  br label %470

470:                                              ; preds = %468, %438, %347, %124, %58, %44
  %471 = load i32, i32* %8, align 4
  ret i32 %471
}

declare dso_local i32 @msg_Err(i32*, i8*, ...) #1

declare dso_local i64 @IsWhitespaceAt(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @ReleaseGlyphBitMaps(%struct.TYPE_20__*) #1

declare dso_local i64 @LayoutLine(i32*, %struct.TYPE_18__*, i32, i32, i32, %struct.TYPE_19__**) #1

declare dso_local i32 @msg_Dbg(i32*, i8*) #1

declare dso_local i32 @FreeLines(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
