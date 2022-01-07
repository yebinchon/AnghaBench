; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/synctex/extr_synctex_parser.c__synctex_node_distance_to_point.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/synctex/extr_synctex_parser.c__synctex_node_distance_to_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }

@INT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_synctex_node_distance_to_point(i64 %0, %struct.TYPE_14__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_13__, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = bitcast %struct.TYPE_13__* %4 to i64*
  store i64 %0, i64* %12, align 4
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* @INT_MAX, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %15 = icmp ne %struct.TYPE_14__* %14, null
  br i1 %15, label %16, label %311

16:                                               ; preds = %3
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %310 [
    i32 130, label %22
    i32 128, label %22
    i32 133, label %22
    i32 129, label %22
    i32 132, label %147
    i32 134, label %248
    i32 131, label %248
  ]

22:                                               ; preds = %16, %16, %16, %16
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %24 = call i32 @SYNCTEX_HORIZ(%struct.TYPE_14__* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %27 = call i32 @SYNCTEX_ABS_WIDTH(%struct.TYPE_14__* %26)
  %28 = add nsw i32 %25, %27
  store i32 %28, i32* %9, align 4
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %30 = call i32 @SYNCTEX_VERT(%struct.TYPE_14__* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %33 = call i32 @SYNCTEX_ABS_DEPTH(%struct.TYPE_14__* %32)
  %34 = add nsw i32 %31, %33
  store i32 %34, i32* %11, align 4
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %36 = call i32 @SYNCTEX_ABS_HEIGHT(%struct.TYPE_14__* %35)
  %37 = load i32, i32* %10, align 4
  %38 = sub nsw i32 %37, %36
  store i32 %38, i32* %10, align 4
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %80

43:                                               ; preds = %22
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %43
  %49 = load i32, i32* %10, align 4
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %49, %51
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %52, %53
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %54, %56
  store i32 %57, i32* %7, align 4
  br label %79

58:                                               ; preds = %43
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp sle i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load i32, i32* %10, align 4
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %64, %66
  store i32 %67, i32* %7, align 4
  br label %78

68:                                               ; preds = %58
  %69 = load i32, i32* %10, align 4
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %69, %71
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %72, %74
  %76 = load i32, i32* %9, align 4
  %77 = sub nsw i32 %75, %76
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %68, %63
  br label %79

79:                                               ; preds = %78, %48
  br label %146

80:                                               ; preds = %22
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp sle i32 %82, %83
  br i1 %84, label %85, label %108

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load i32, i32* %8, align 4
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = sub nsw i32 %91, %93
  store i32 %94, i32* %7, align 4
  br label %107

95:                                               ; preds = %85
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp sle i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  store i32 0, i32* %7, align 4
  br label %106

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %9, align 4
  %105 = sub nsw i32 %103, %104
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %101, %100
  br label %107

107:                                              ; preds = %106, %90
  br label %145

108:                                              ; preds = %80
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %123

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %11, align 4
  %117 = sub nsw i32 %115, %116
  %118 = load i32, i32* %8, align 4
  %119 = add nsw i32 %117, %118
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = sub nsw i32 %119, %121
  store i32 %122, i32* %7, align 4
  br label %144

123:                                              ; preds = %108
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %9, align 4
  %127 = icmp sle i32 %125, %126
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %11, align 4
  %132 = sub nsw i32 %130, %131
  store i32 %132, i32* %7, align 4
  br label %143

133:                                              ; preds = %123
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %11, align 4
  %137 = sub nsw i32 %135, %136
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %137, %139
  %141 = load i32, i32* %9, align 4
  %142 = sub nsw i32 %140, %141
  store i32 %142, i32* %7, align 4
  br label %143

143:                                              ; preds = %133, %128
  br label %144

144:                                              ; preds = %143, %113
  br label %145

145:                                              ; preds = %144, %107
  br label %146

146:                                              ; preds = %145, %79
  br label %310

147:                                              ; preds = %16
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %149 = call i32 @SYNCTEX_WIDTH(%struct.TYPE_14__* %148)
  store i32 %149, i32* %9, align 4
  %150 = load i32, i32* %9, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %147
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %154 = call i32 @SYNCTEX_HORIZ(%struct.TYPE_14__* %153)
  store i32 %154, i32* %8, align 4
  %155 = load i32, i32* %8, align 4
  %156 = load i32, i32* %9, align 4
  %157 = sub nsw i32 %155, %156
  store i32 %157, i32* %9, align 4
  br label %166

158:                                              ; preds = %147
  %159 = load i32, i32* %9, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %8, align 4
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %162 = call i32 @SYNCTEX_HORIZ(%struct.TYPE_14__* %161)
  store i32 %162, i32* %9, align 4
  %163 = load i32, i32* %9, align 4
  %164 = load i32, i32* %8, align 4
  %165 = add nsw i32 %164, %163
  store i32 %165, i32* %8, align 4
  br label %166

166:                                              ; preds = %158, %152
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %168 = call i32 @SYNCTEX_VERT(%struct.TYPE_14__* %167)
  store i32 %168, i32* %10, align 4
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %8, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %199

173:                                              ; preds = %166
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %10, align 4
  %177 = icmp sgt i32 %175, %176
  br i1 %177, label %178, label %188

178:                                              ; preds = %173
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %10, align 4
  %182 = sub nsw i32 %180, %181
  %183 = load i32, i32* %8, align 4
  %184 = add nsw i32 %182, %183
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = sub nsw i32 %184, %186
  store i32 %187, i32* %7, align 4
  br label %198

188:                                              ; preds = %173
  %189 = load i32, i32* %10, align 4
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = sub nsw i32 %189, %191
  %193 = load i32, i32* %8, align 4
  %194 = add nsw i32 %192, %193
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = sub nsw i32 %194, %196
  store i32 %197, i32* %7, align 4
  br label %198

198:                                              ; preds = %188, %178
  br label %247

199:                                              ; preds = %166
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %9, align 4
  %203 = icmp sgt i32 %201, %202
  br i1 %203, label %204, label %230

204:                                              ; preds = %199
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* %10, align 4
  %208 = icmp sgt i32 %206, %207
  br i1 %208, label %209, label %219

209:                                              ; preds = %204
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* %10, align 4
  %213 = sub nsw i32 %211, %212
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = add nsw i32 %213, %215
  %217 = load i32, i32* %9, align 4
  %218 = sub nsw i32 %216, %217
  store i32 %218, i32* %7, align 4
  br label %229

219:                                              ; preds = %204
  %220 = load i32, i32* %10, align 4
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = sub nsw i32 %220, %222
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = add nsw i32 %223, %225
  %227 = load i32, i32* %9, align 4
  %228 = sub nsw i32 %226, %227
  store i32 %228, i32* %7, align 4
  br label %229

229:                                              ; preds = %219, %209
  br label %246

230:                                              ; preds = %199
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* %10, align 4
  %234 = icmp sgt i32 %232, %233
  br i1 %234, label %235, label %240

235:                                              ; preds = %230
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* %10, align 4
  %239 = sub nsw i32 %237, %238
  store i32 %239, i32* %7, align 4
  br label %245

240:                                              ; preds = %230
  %241 = load i32, i32* %10, align 4
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = sub nsw i32 %241, %243
  store i32 %244, i32* %7, align 4
  br label %245

245:                                              ; preds = %240, %235
  br label %246

246:                                              ; preds = %245, %229
  br label %247

247:                                              ; preds = %246, %198
  br label %310

248:                                              ; preds = %16, %16
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %250 = call i32 @SYNCTEX_HORIZ(%struct.TYPE_14__* %249)
  store i32 %250, i32* %8, align 4
  %251 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %252 = call i32 @SYNCTEX_VERT(%struct.TYPE_14__* %251)
  store i32 %252, i32* %10, align 4
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* %8, align 4
  %256 = icmp slt i32 %254, %255
  br i1 %256, label %257, label %283

257:                                              ; preds = %248
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* %10, align 4
  %261 = icmp sgt i32 %259, %260
  br i1 %261, label %262, label %272

262:                                              ; preds = %257
  %263 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* %10, align 4
  %266 = sub nsw i32 %264, %265
  %267 = load i32, i32* %8, align 4
  %268 = add nsw i32 %266, %267
  %269 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = sub nsw i32 %268, %270
  store i32 %271, i32* %7, align 4
  br label %282

272:                                              ; preds = %257
  %273 = load i32, i32* %10, align 4
  %274 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = sub nsw i32 %273, %275
  %277 = load i32, i32* %8, align 4
  %278 = add nsw i32 %276, %277
  %279 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = sub nsw i32 %278, %280
  store i32 %281, i32* %7, align 4
  br label %282

282:                                              ; preds = %272, %262
  br label %309

283:                                              ; preds = %248
  %284 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* %10, align 4
  %287 = icmp sgt i32 %285, %286
  br i1 %287, label %288, label %298

288:                                              ; preds = %283
  %289 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* %10, align 4
  %292 = sub nsw i32 %290, %291
  %293 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = add nsw i32 %292, %294
  %296 = load i32, i32* %8, align 4
  %297 = sub nsw i32 %295, %296
  store i32 %297, i32* %7, align 4
  br label %308

298:                                              ; preds = %283
  %299 = load i32, i32* %10, align 4
  %300 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = sub nsw i32 %299, %301
  %303 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = add nsw i32 %302, %304
  %306 = load i32, i32* %8, align 4
  %307 = sub nsw i32 %305, %306
  store i32 %307, i32* %7, align 4
  br label %308

308:                                              ; preds = %298, %288
  br label %309

309:                                              ; preds = %308, %282
  br label %310

310:                                              ; preds = %16, %309, %247, %146
  br label %311

311:                                              ; preds = %310, %3
  %312 = load i32, i32* %7, align 4
  ret i32 %312
}

declare dso_local i32 @SYNCTEX_HORIZ(%struct.TYPE_14__*) #1

declare dso_local i32 @SYNCTEX_ABS_WIDTH(%struct.TYPE_14__*) #1

declare dso_local i32 @SYNCTEX_VERT(%struct.TYPE_14__*) #1

declare dso_local i32 @SYNCTEX_ABS_DEPTH(%struct.TYPE_14__*) #1

declare dso_local i32 @SYNCTEX_ABS_HEIGHT(%struct.TYPE_14__*) #1

declare dso_local i32 @SYNCTEX_WIDTH(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
