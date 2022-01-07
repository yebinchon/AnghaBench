; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/pshinter/extr_pshalgo.c_psh_hint_table_find_strong_points.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/pshinter/extr_pshalgo.c_psh_hint_table_find_strong_points.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_11__** }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i64, %struct.TYPE_11__* }

@PSH_POINT_EDGE_MIN = common dso_local global i64 0, align 8
@PSH_POINT_EDGE_MAX = common dso_local global i64 0, align 8
@PSH_DIR_HORIZONTAL = common dso_local global i32 0, align 4
@PSH_POINT_POSITIVE = common dso_local global i64 0, align 8
@PSH_POINT_NEGATIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_9__*, i64, i32, i32)* @psh_hint_table_find_strong_points to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psh_hint_table_find_strong_points(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_11__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.TYPE_11__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_11__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %30, align 8
  store %struct.TYPE_11__** %31, %struct.TYPE_11__*** %11, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %12, align 8
  br label %35

35:                                               ; preds = %318, %5
  %36 = load i64, i64* %8, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %323

38:                                               ; preds = %35
  store i32 0, i32* %13, align 4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %14, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %43 = call i64 @psh_point_is_strong(%struct.TYPE_9__* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %318

46:                                               ; preds = %38
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i64 @PSH_DIR_COMPARE(i32 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %13, align 4
  br label %69

57:                                               ; preds = %46
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call i64 @PSH_DIR_COMPARE(i32 %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %13, align 4
  br label %68

68:                                               ; preds = %64, %57
  br label %69

69:                                               ; preds = %68, %53
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %165

72:                                               ; preds = %69
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %115

76:                                               ; preds = %72
  store i64 0, i64* %15, align 8
  br label %77

77:                                               ; preds = %111, %76
  %78 = load i64, i64* %15, align 8
  %79 = load i64, i64* %12, align 8
  %80 = icmp slt i64 %78, %79
  br i1 %80, label %81, label %114

81:                                               ; preds = %77
  %82 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %11, align 8
  %83 = load i64, i64* %15, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %82, i64 %83
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  store %struct.TYPE_11__* %85, %struct.TYPE_11__** %16, align 8
  %86 = load i32, i32* %14, align 4
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = sub nsw i32 %86, %89
  store i32 %90, i32* %17, align 4
  %91 = load i32, i32* %17, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %110

94:                                               ; preds = %81
  %95 = load i32, i32* %17, align 4
  %96 = sub nsw i32 0, %95
  %97 = load i32, i32* %9, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %110

99:                                               ; preds = %94
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %101 = call i32 @psh_point_set_strong(%struct.TYPE_9__* %100)
  %102 = load i64, i64* @PSH_POINT_EDGE_MIN, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = or i64 %105, %102
  store i64 %106, i64* %104, align 8
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 4
  store %struct.TYPE_11__* %107, %struct.TYPE_11__** %109, align 8
  br label %114

110:                                              ; preds = %94, %81
  br label %111

111:                                              ; preds = %110
  %112 = load i64, i64* %15, align 8
  %113 = add nsw i64 %112, 1
  store i64 %113, i64* %15, align 8
  br label %77

114:                                              ; preds = %99, %77
  br label %164

115:                                              ; preds = %72
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* %10, align 4
  %118 = sub nsw i32 0, %117
  %119 = icmp eq i32 %116, %118
  br i1 %119, label %120, label %163

120:                                              ; preds = %115
  store i64 0, i64* %18, align 8
  br label %121

121:                                              ; preds = %159, %120
  %122 = load i64, i64* %18, align 8
  %123 = load i64, i64* %12, align 8
  %124 = icmp slt i64 %122, %123
  br i1 %124, label %125, label %162

125:                                              ; preds = %121
  %126 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %11, align 8
  %127 = load i64, i64* %18, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %126, i64 %127
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %128, align 8
  store %struct.TYPE_11__* %129, %struct.TYPE_11__** %19, align 8
  %130 = load i32, i32* %14, align 4
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = sub nsw i32 %130, %133
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = sub nsw i32 %134, %137
  store i32 %138, i32* %20, align 4
  %139 = load i32, i32* %20, align 4
  %140 = load i32, i32* %9, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %158

142:                                              ; preds = %125
  %143 = load i32, i32* %20, align 4
  %144 = sub nsw i32 0, %143
  %145 = load i32, i32* %9, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %158

147:                                              ; preds = %142
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %149 = call i32 @psh_point_set_strong(%struct.TYPE_9__* %148)
  %150 = load i64, i64* @PSH_POINT_EDGE_MAX, align 8
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = or i64 %153, %150
  store i64 %154, i64* %152, align 8
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 4
  store %struct.TYPE_11__* %155, %struct.TYPE_11__** %157, align 8
  br label %162

158:                                              ; preds = %142, %125
  br label %159

159:                                              ; preds = %158
  %160 = load i64, i64* %18, align 8
  %161 = add nsw i64 %160, 1
  store i64 %161, i64* %18, align 8
  br label %121

162:                                              ; preds = %147, %121
  br label %163

163:                                              ; preds = %162, %115
  br label %164

164:                                              ; preds = %163, %114
  br label %317

165:                                              ; preds = %69
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %167 = call i64 @psh_point_is_extremum(%struct.TYPE_9__* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %316

169:                                              ; preds = %165
  %170 = load i32, i32* %10, align 4
  %171 = load i32, i32* @PSH_DIR_HORIZONTAL, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %169
  %174 = load i64, i64* @PSH_POINT_POSITIVE, align 8
  store i64 %174, i64* %22, align 8
  %175 = load i64, i64* @PSH_POINT_NEGATIVE, align 8
  store i64 %175, i64* %23, align 8
  br label %179

176:                                              ; preds = %169
  %177 = load i64, i64* @PSH_POINT_NEGATIVE, align 8
  store i64 %177, i64* %22, align 8
  %178 = load i64, i64* @PSH_POINT_POSITIVE, align 8
  store i64 %178, i64* %23, align 8
  br label %179

179:                                              ; preds = %176, %173
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 3
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* %22, align 8
  %184 = and i64 %182, %183
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %225

186:                                              ; preds = %179
  store i64 0, i64* %21, align 8
  br label %187

187:                                              ; preds = %221, %186
  %188 = load i64, i64* %21, align 8
  %189 = load i64, i64* %12, align 8
  %190 = icmp slt i64 %188, %189
  br i1 %190, label %191, label %224

191:                                              ; preds = %187
  %192 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %11, align 8
  %193 = load i64, i64* %21, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %192, i64 %193
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %194, align 8
  store %struct.TYPE_11__* %195, %struct.TYPE_11__** %24, align 8
  %196 = load i32, i32* %14, align 4
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = sub nsw i32 %196, %199
  store i32 %200, i32* %25, align 4
  %201 = load i32, i32* %25, align 4
  %202 = load i32, i32* %9, align 4
  %203 = icmp slt i32 %201, %202
  br i1 %203, label %204, label %220

204:                                              ; preds = %191
  %205 = load i32, i32* %25, align 4
  %206 = sub nsw i32 0, %205
  %207 = load i32, i32* %9, align 4
  %208 = icmp slt i32 %206, %207
  br i1 %208, label %209, label %220

209:                                              ; preds = %204
  %210 = load i64, i64* @PSH_POINT_EDGE_MIN, align 8
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 3
  %213 = load i64, i64* %212, align 8
  %214 = or i64 %213, %210
  store i64 %214, i64* %212, align 8
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 4
  store %struct.TYPE_11__* %215, %struct.TYPE_11__** %217, align 8
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %219 = call i32 @psh_point_set_strong(%struct.TYPE_9__* %218)
  br label %224

220:                                              ; preds = %204, %191
  br label %221

221:                                              ; preds = %220
  %222 = load i64, i64* %21, align 8
  %223 = add nsw i64 %222, 1
  store i64 %223, i64* %21, align 8
  br label %187

224:                                              ; preds = %209, %187
  br label %276

225:                                              ; preds = %179
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 3
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* %23, align 8
  %230 = and i64 %228, %229
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %275

232:                                              ; preds = %225
  store i64 0, i64* %21, align 8
  br label %233

233:                                              ; preds = %271, %232
  %234 = load i64, i64* %21, align 8
  %235 = load i64, i64* %12, align 8
  %236 = icmp slt i64 %234, %235
  br i1 %236, label %237, label %274

237:                                              ; preds = %233
  %238 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %11, align 8
  %239 = load i64, i64* %21, align 8
  %240 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %238, i64 %239
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %240, align 8
  store %struct.TYPE_11__* %241, %struct.TYPE_11__** %26, align 8
  %242 = load i32, i32* %14, align 4
  %243 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = sub nsw i32 %242, %245
  %247 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = sub nsw i32 %246, %249
  store i32 %250, i32* %27, align 4
  %251 = load i32, i32* %27, align 4
  %252 = load i32, i32* %9, align 4
  %253 = icmp slt i32 %251, %252
  br i1 %253, label %254, label %270

254:                                              ; preds = %237
  %255 = load i32, i32* %27, align 4
  %256 = sub nsw i32 0, %255
  %257 = load i32, i32* %9, align 4
  %258 = icmp slt i32 %256, %257
  br i1 %258, label %259, label %270

259:                                              ; preds = %254
  %260 = load i64, i64* @PSH_POINT_EDGE_MAX, align 8
  %261 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 3
  %263 = load i64, i64* %262, align 8
  %264 = or i64 %263, %260
  store i64 %264, i64* %262, align 8
  %265 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %266 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %266, i32 0, i32 4
  store %struct.TYPE_11__* %265, %struct.TYPE_11__** %267, align 8
  %268 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %269 = call i32 @psh_point_set_strong(%struct.TYPE_9__* %268)
  br label %274

270:                                              ; preds = %254, %237
  br label %271

271:                                              ; preds = %270
  %272 = load i64, i64* %21, align 8
  %273 = add nsw i64 %272, 1
  store i64 %273, i64* %21, align 8
  br label %233

274:                                              ; preds = %259, %233
  br label %275

275:                                              ; preds = %274, %225
  br label %276

276:                                              ; preds = %275, %224
  %277 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %278 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %277, i32 0, i32 4
  %279 = load %struct.TYPE_11__*, %struct.TYPE_11__** %278, align 8
  %280 = icmp ne %struct.TYPE_11__* %279, null
  br i1 %280, label %315, label %281

281:                                              ; preds = %276
  store i64 0, i64* %21, align 8
  br label %282

282:                                              ; preds = %311, %281
  %283 = load i64, i64* %21, align 8
  %284 = load i64, i64* %12, align 8
  %285 = icmp slt i64 %283, %284
  br i1 %285, label %286, label %314

286:                                              ; preds = %282
  %287 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %11, align 8
  %288 = load i64, i64* %21, align 8
  %289 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %287, i64 %288
  %290 = load %struct.TYPE_11__*, %struct.TYPE_11__** %289, align 8
  store %struct.TYPE_11__* %290, %struct.TYPE_11__** %28, align 8
  %291 = load i32, i32* %14, align 4
  %292 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %293 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = icmp sge i32 %291, %294
  br i1 %295, label %296, label %310

296:                                              ; preds = %286
  %297 = load i32, i32* %14, align 4
  %298 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %299 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %302 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = add nsw i32 %300, %303
  %305 = icmp sle i32 %297, %304
  br i1 %305, label %306, label %310

306:                                              ; preds = %296
  %307 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %308 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %309 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %308, i32 0, i32 4
  store %struct.TYPE_11__* %307, %struct.TYPE_11__** %309, align 8
  br label %314

310:                                              ; preds = %296, %286
  br label %311

311:                                              ; preds = %310
  %312 = load i64, i64* %21, align 8
  %313 = add nsw i64 %312, 1
  store i64 %313, i64* %21, align 8
  br label %282

314:                                              ; preds = %306, %282
  br label %315

315:                                              ; preds = %314, %276
  br label %316

316:                                              ; preds = %315, %165
  br label %317

317:                                              ; preds = %316, %164
  br label %318

318:                                              ; preds = %317, %45
  %319 = load i64, i64* %8, align 8
  %320 = add nsw i64 %319, -1
  store i64 %320, i64* %8, align 8
  %321 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %322 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %321, i32 1
  store %struct.TYPE_9__* %322, %struct.TYPE_9__** %7, align 8
  br label %35

323:                                              ; preds = %35
  ret void
}

declare dso_local i64 @psh_point_is_strong(%struct.TYPE_9__*) #1

declare dso_local i64 @PSH_DIR_COMPARE(i32, i32) #1

declare dso_local i32 @psh_point_set_strong(%struct.TYPE_9__*) #1

declare dso_local i64 @psh_point_is_extremum(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
