; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_tcd.c_opj_tcd_update_tile_data.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_tcd.c_opj_tcd_update_tile_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32*, i32*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@OPJ_TRUE = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i64 0, align 8
@OPJ_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @opj_tcd_update_tile_data(%struct.TYPE_14__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i8**, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %11, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %12, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %13, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %30 = load i32, i32* @OPJ_TRUE, align 4
  %31 = call i64 @opj_tcd_get_decoded_tile_size(%struct.TYPE_14__* %29, i32 %30)
  store i64 %31, i64* %11, align 8
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* @UINT_MAX, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %3
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* %7, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35, %3
  %40 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %40, i32* %4, align 4
  br label %332

41:                                               ; preds = %35
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %47, align 8
  store %struct.TYPE_13__* %48, %struct.TYPE_13__** %13, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %52, align 8
  store %struct.TYPE_16__* %53, %struct.TYPE_16__** %12, align 8
  store i64 0, i64* %8, align 8
  br label %54

54:                                               ; preds = %327, %41
  %55 = load i64, i64* %8, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp slt i64 %55, %60
  br i1 %61, label %62, label %330

62:                                               ; preds = %54
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = ashr i32 %65, 3
  %67 = sext i32 %66 to i64
  store i64 %67, i64* %15, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 7
  %72 = sext i32 %71 to i64
  store i64 %72, i64* %16, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 3
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %74, align 8
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i64 %79
  store %struct.TYPE_15__* %80, %struct.TYPE_15__** %14, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %128

85:                                               ; preds = %62
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 5
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = sub nsw i64 %88, %91
  store i64 %92, i64* %18, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 7
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 6
  %98 = load i64, i64* %97, align 8
  %99 = sub nsw i64 %95, %98
  store i64 %99, i64* %19, align 8
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 3
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %101, align 8
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 5
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 3
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %112, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = sub nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = sub nsw i64 %110, %121
  %123 = load i64, i64* %18, align 8
  %124 = sub nsw i64 %122, %123
  store i64 %124, i64* %17, align 8
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 2
  %127 = load i32*, i32** %126, align 8
  store i32* %127, i32** %20, align 8
  br label %146

128:                                              ; preds = %62
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = sub nsw i64 %131, %134
  store i64 %135, i64* %18, align 8
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = sub nsw i64 %138, %141
  store i64 %142, i64* %19, align 8
  store i64 0, i64* %17, align 8
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  store i32* %145, i32** %20, align 8
  br label %146

146:                                              ; preds = %128, %85
  %147 = load i64, i64* %16, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = load i64, i64* %15, align 8
  %151 = add nsw i64 %150, 1
  store i64 %151, i64* %15, align 8
  br label %152

152:                                              ; preds = %149, %146
  %153 = load i64, i64* %15, align 8
  %154 = icmp eq i64 %153, 3
  br i1 %154, label %155, label %156

155:                                              ; preds = %152
  store i64 4, i64* %15, align 8
  br label %156

156:                                              ; preds = %155, %152
  %157 = load i64, i64* %15, align 8
  switch i64 %157, label %322 [
    i64 1, label %158
    i64 2, label %228
    i64 4, label %296
  ]

158:                                              ; preds = %156
  %159 = load i32*, i32** %6, align 8
  %160 = bitcast i32* %159 to i8**
  store i8** %160, i8*** %21, align 8
  %161 = load i32*, i32** %20, align 8
  store i32* %161, i32** %22, align 8
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %195

166:                                              ; preds = %158
  store i64 0, i64* %9, align 8
  br label %167

167:                                              ; preds = %191, %166
  %168 = load i64, i64* %9, align 8
  %169 = load i64, i64* %19, align 8
  %170 = icmp slt i64 %168, %169
  br i1 %170, label %171, label %194

171:                                              ; preds = %167
  store i64 0, i64* %10, align 8
  br label %172

172:                                              ; preds = %184, %171
  %173 = load i64, i64* %10, align 8
  %174 = load i64, i64* %18, align 8
  %175 = icmp slt i64 %173, %174
  br i1 %175, label %176, label %187

176:                                              ; preds = %172
  %177 = load i32*, i32** %22, align 8
  %178 = getelementptr inbounds i32, i32* %177, i32 1
  store i32* %178, i32** %22, align 8
  %179 = load i32, i32* %177, align 4
  %180 = sext i32 %179 to i64
  %181 = inttoptr i64 %180 to i8*
  %182 = load i8**, i8*** %21, align 8
  %183 = getelementptr inbounds i8*, i8** %182, i32 1
  store i8** %183, i8*** %21, align 8
  store i8* %181, i8** %182, align 8
  br label %184

184:                                              ; preds = %176
  %185 = load i64, i64* %10, align 8
  %186 = add nsw i64 %185, 1
  store i64 %186, i64* %10, align 8
  br label %172

187:                                              ; preds = %172
  %188 = load i64, i64* %17, align 8
  %189 = load i32*, i32** %22, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 %188
  store i32* %190, i32** %22, align 8
  br label %191

191:                                              ; preds = %187
  %192 = load i64, i64* %9, align 8
  %193 = add nsw i64 %192, 1
  store i64 %193, i64* %9, align 8
  br label %167

194:                                              ; preds = %167
  br label %225

195:                                              ; preds = %158
  store i64 0, i64* %9, align 8
  br label %196

196:                                              ; preds = %221, %195
  %197 = load i64, i64* %9, align 8
  %198 = load i64, i64* %19, align 8
  %199 = icmp slt i64 %197, %198
  br i1 %199, label %200, label %224

200:                                              ; preds = %196
  store i64 0, i64* %10, align 8
  br label %201

201:                                              ; preds = %214, %200
  %202 = load i64, i64* %10, align 8
  %203 = load i64, i64* %18, align 8
  %204 = icmp slt i64 %202, %203
  br i1 %204, label %205, label %217

205:                                              ; preds = %201
  %206 = load i32*, i32** %22, align 8
  %207 = getelementptr inbounds i32, i32* %206, i32 1
  store i32* %207, i32** %22, align 8
  %208 = load i32, i32* %206, align 4
  %209 = and i32 %208, 255
  %210 = sext i32 %209 to i64
  %211 = inttoptr i64 %210 to i8*
  %212 = load i8**, i8*** %21, align 8
  %213 = getelementptr inbounds i8*, i8** %212, i32 1
  store i8** %213, i8*** %21, align 8
  store i8* %211, i8** %212, align 8
  br label %214

214:                                              ; preds = %205
  %215 = load i64, i64* %10, align 8
  %216 = add nsw i64 %215, 1
  store i64 %216, i64* %10, align 8
  br label %201

217:                                              ; preds = %201
  %218 = load i64, i64* %17, align 8
  %219 = load i32*, i32** %22, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 %218
  store i32* %220, i32** %22, align 8
  br label %221

221:                                              ; preds = %217
  %222 = load i64, i64* %9, align 8
  %223 = add nsw i64 %222, 1
  store i64 %223, i64* %9, align 8
  br label %196

224:                                              ; preds = %196
  br label %225

225:                                              ; preds = %224, %194
  %226 = load i8**, i8*** %21, align 8
  %227 = bitcast i8** %226 to i32*
  store i32* %227, i32** %6, align 8
  br label %322

228:                                              ; preds = %156
  %229 = load i32*, i32** %20, align 8
  store i32* %229, i32** %23, align 8
  %230 = load i32*, i32** %6, align 8
  store i32* %230, i32** %24, align 8
  %231 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %264

235:                                              ; preds = %228
  store i64 0, i64* %9, align 8
  br label %236

236:                                              ; preds = %260, %235
  %237 = load i64, i64* %9, align 8
  %238 = load i64, i64* %19, align 8
  %239 = icmp slt i64 %237, %238
  br i1 %239, label %240, label %263

240:                                              ; preds = %236
  store i64 0, i64* %10, align 8
  br label %241

241:                                              ; preds = %253, %240
  %242 = load i64, i64* %10, align 8
  %243 = load i64, i64* %18, align 8
  %244 = icmp slt i64 %242, %243
  br i1 %244, label %245, label %256

245:                                              ; preds = %241
  %246 = load i32*, i32** %23, align 8
  %247 = getelementptr inbounds i32, i32* %246, i32 1
  store i32* %247, i32** %23, align 8
  %248 = load i32, i32* %246, align 4
  store i32 %248, i32* %25, align 4
  %249 = load i32*, i32** %24, align 8
  %250 = call i32 @memcpy(i32* %249, i32* %25, i64 4)
  %251 = load i32*, i32** %24, align 8
  %252 = getelementptr inbounds i32, i32* %251, i32 1
  store i32* %252, i32** %24, align 8
  br label %253

253:                                              ; preds = %245
  %254 = load i64, i64* %10, align 8
  %255 = add nsw i64 %254, 1
  store i64 %255, i64* %10, align 8
  br label %241

256:                                              ; preds = %241
  %257 = load i64, i64* %17, align 8
  %258 = load i32*, i32** %23, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 %257
  store i32* %259, i32** %23, align 8
  br label %260

260:                                              ; preds = %256
  %261 = load i64, i64* %9, align 8
  %262 = add nsw i64 %261, 1
  store i64 %262, i64* %9, align 8
  br label %236

263:                                              ; preds = %236
  br label %294

264:                                              ; preds = %228
  store i64 0, i64* %9, align 8
  br label %265

265:                                              ; preds = %290, %264
  %266 = load i64, i64* %9, align 8
  %267 = load i64, i64* %19, align 8
  %268 = icmp slt i64 %266, %267
  br i1 %268, label %269, label %293

269:                                              ; preds = %265
  store i64 0, i64* %10, align 8
  br label %270

270:                                              ; preds = %283, %269
  %271 = load i64, i64* %10, align 8
  %272 = load i64, i64* %18, align 8
  %273 = icmp slt i64 %271, %272
  br i1 %273, label %274, label %286

274:                                              ; preds = %270
  %275 = load i32*, i32** %23, align 8
  %276 = getelementptr inbounds i32, i32* %275, i32 1
  store i32* %276, i32** %23, align 8
  %277 = load i32, i32* %275, align 4
  %278 = and i32 %277, 65535
  store i32 %278, i32* %26, align 4
  %279 = load i32*, i32** %24, align 8
  %280 = call i32 @memcpy(i32* %279, i32* %26, i64 4)
  %281 = load i32*, i32** %24, align 8
  %282 = getelementptr inbounds i32, i32* %281, i32 1
  store i32* %282, i32** %24, align 8
  br label %283

283:                                              ; preds = %274
  %284 = load i64, i64* %10, align 8
  %285 = add nsw i64 %284, 1
  store i64 %285, i64* %10, align 8
  br label %270

286:                                              ; preds = %270
  %287 = load i64, i64* %17, align 8
  %288 = load i32*, i32** %23, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 %287
  store i32* %289, i32** %23, align 8
  br label %290

290:                                              ; preds = %286
  %291 = load i64, i64* %9, align 8
  %292 = add nsw i64 %291, 1
  store i64 %292, i64* %9, align 8
  br label %265

293:                                              ; preds = %265
  br label %294

294:                                              ; preds = %293, %263
  %295 = load i32*, i32** %24, align 8
  store i32* %295, i32** %6, align 8
  br label %322

296:                                              ; preds = %156
  %297 = load i32*, i32** %6, align 8
  store i32* %297, i32** %27, align 8
  %298 = load i32*, i32** %20, align 8
  store i32* %298, i32** %28, align 8
  store i64 0, i64* %9, align 8
  br label %299

299:                                              ; preds = %317, %296
  %300 = load i64, i64* %9, align 8
  %301 = load i64, i64* %19, align 8
  %302 = icmp slt i64 %300, %301
  br i1 %302, label %303, label %320

303:                                              ; preds = %299
  %304 = load i32*, i32** %27, align 8
  %305 = load i32*, i32** %28, align 8
  %306 = load i64, i64* %18, align 8
  %307 = mul i64 %306, 4
  %308 = call i32 @memcpy(i32* %304, i32* %305, i64 %307)
  %309 = load i64, i64* %18, align 8
  %310 = load i32*, i32** %27, align 8
  %311 = getelementptr inbounds i32, i32* %310, i64 %309
  store i32* %311, i32** %27, align 8
  %312 = load i64, i64* %18, align 8
  %313 = load i64, i64* %17, align 8
  %314 = add nsw i64 %312, %313
  %315 = load i32*, i32** %28, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 %314
  store i32* %316, i32** %28, align 8
  br label %317

317:                                              ; preds = %303
  %318 = load i64, i64* %9, align 8
  %319 = add nsw i64 %318, 1
  store i64 %319, i64* %9, align 8
  br label %299

320:                                              ; preds = %299
  %321 = load i32*, i32** %27, align 8
  store i32* %321, i32** %6, align 8
  br label %322

322:                                              ; preds = %156, %320, %294, %225
  %323 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %324 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %323, i32 1
  store %struct.TYPE_16__* %324, %struct.TYPE_16__** %12, align 8
  %325 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %326 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %325, i32 1
  store %struct.TYPE_13__* %326, %struct.TYPE_13__** %13, align 8
  br label %327

327:                                              ; preds = %322
  %328 = load i64, i64* %8, align 8
  %329 = add nsw i64 %328, 1
  store i64 %329, i64* %8, align 8
  br label %54

330:                                              ; preds = %54
  %331 = load i32, i32* @OPJ_TRUE, align 4
  store i32 %331, i32* %4, align 4
  br label %332

332:                                              ; preds = %330, %39
  %333 = load i32, i32* %4, align 4
  ret i32 %333
}

declare dso_local i64 @opj_tcd_get_decoded_tile_size(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
