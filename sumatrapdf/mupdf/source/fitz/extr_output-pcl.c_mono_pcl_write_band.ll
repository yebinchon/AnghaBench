; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_output-pcl.c_mono_pcl_write_band.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_output-pcl.c_mono_pcl_write_band.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, i8*, i8*, i64, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32* }

@PCL_ANY_SPACING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"\1B*p+%dY\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"\1B*r1A\00", align 1
@PCL_MODE_3_COMPRESSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"\1B*b0W\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"\1B*bW\00", align 1
@MIN_SKIP_LINES = common dso_local global i32 0, align 4
@from3to2 = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"\1B*b1Y\00", align 1
@PCL3_SPACING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"\1B*b%dY\00", align 1
@penalty_from2to3 = common dso_local global i32 0, align 4
@penalty_from3to2 = common dso_local global i32 0, align 4
@from2to3 = common dso_local global i8* null, align 8
@PCL_MODE_2_COMPRESSION = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"\1B*b%dW\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32, i8*)* @mono_pcl_write_band to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mono_pcl_write_band(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_6__*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = bitcast i32* %34 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %35, %struct.TYPE_5__** %13, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 6
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %14, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %15, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 6
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %16, align 4
  store i32 -1, i32* %22, align 4
  store i8* null, i8** %23, align 8
  store i8* null, i8** %24, align 8
  store i8* null, i8** %25, align 8
  %48 = load i32*, i32** %14, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %6
  br label %390

51:                                               ; preds = %6
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %21, align 4
  %55 = load i32, i32* %15, align 4
  %56 = sub nsw i32 0, %55
  %57 = and i32 %56, 7
  %58 = shl i32 -1, %57
  store i32 %58, i32* %19, align 4
  %59 = load i32, i32* %15, align 4
  %60 = add nsw i32 %59, 7
  %61 = sdiv i32 %60, 8
  store i32 %61, i32* %20, align 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %23, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  %67 = load i8*, i8** %66, align 8
  store i8* %67, i8** %24, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 3
  %70 = load i8*, i8** %69, align 8
  store i8* %70, i8** %25, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 5
  store %struct.TYPE_6__* %72, %struct.TYPE_6__** %27, align 8
  store i32 0, i32* %18, align 4
  br label %73

73:                                               ; preds = %379, %51
  %74 = load i32, i32* %18, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %386

77:                                               ; preds = %73
  %78 = load i8*, i8** %12, align 8
  %79 = load i32, i32* %20, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  store i8* %81, i8** %28, align 8
  %82 = load i8*, i8** %28, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 -1
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = load i32, i32* %19, align 4
  %87 = and i32 %85, %86
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %108

89:                                               ; preds = %77
  %90 = load i8*, i8** %28, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 -1
  store i8* %91, i8** %28, align 8
  br label %92

92:                                               ; preds = %104, %89
  %93 = load i8*, i8** %28, align 8
  %94 = load i8*, i8** %12, align 8
  %95 = icmp ugt i8* %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %92
  %97 = load i8*, i8** %28, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 -1
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = icmp eq i32 %100, 0
  br label %102

102:                                              ; preds = %96, %92
  %103 = phi i1 [ false, %92 ], [ %101, %96 ]
  br i1 %103, label %104, label %107

104:                                              ; preds = %102
  %105 = load i8*, i8** %28, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 -1
  store i8* %106, i8** %28, align 8
  br label %92

107:                                              ; preds = %102
  br label %108

108:                                              ; preds = %107, %77
  %109 = load i8*, i8** %28, align 8
  %110 = load i8*, i8** %12, align 8
  %111 = icmp eq i8* %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load i32, i32* %21, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %21, align 4
  br label %379

115:                                              ; preds = %108
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %180

120:                                              ; preds = %115
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 4
  store i64 0, i64* %122, align 8
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @PCL_ANY_SPACING, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %141

129:                                              ; preds = %120
  %130 = load i32, i32* %21, align 4
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %129
  %133 = load i32*, i32** %7, align 8
  %134 = load i32*, i32** %14, align 8
  %135 = load i32, i32* %21, align 4
  %136 = call i32 @fz_write_printf(i32* %133, i32* %134, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %135)
  br label %137

137:                                              ; preds = %132, %129
  %138 = load i32*, i32** %7, align 8
  %139 = load i32*, i32** %14, align 8
  %140 = call i32 @fz_write_string(i32* %138, i32* %139, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %179

141:                                              ; preds = %120
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @PCL_MODE_3_COMPRESSION, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %163

148:                                              ; preds = %141
  %149 = load i32*, i32** %7, align 8
  %150 = load i32*, i32** %14, align 8
  %151 = call i32 @fz_write_string(i32* %149, i32* %150, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %152

152:                                              ; preds = %159, %148
  %153 = load i32, i32* %21, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %152
  %156 = load i32*, i32** %7, align 8
  %157 = load i32*, i32** %14, align 8
  %158 = call i32 @fz_write_string(i32* %156, i32* %157, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %159

159:                                              ; preds = %155
  %160 = load i32, i32* %21, align 4
  %161 = add nsw i32 %160, -1
  store i32 %161, i32* %21, align 4
  br label %152

162:                                              ; preds = %152
  br label %178

163:                                              ; preds = %141
  %164 = load i32*, i32** %7, align 8
  %165 = load i32*, i32** %14, align 8
  %166 = call i32 @fz_write_string(i32* %164, i32* %165, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %167

167:                                              ; preds = %174, %163
  %168 = load i32, i32* %21, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %167
  %171 = load i32*, i32** %7, align 8
  %172 = load i32*, i32** %14, align 8
  %173 = call i32 @fz_write_string(i32* %171, i32* %172, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %174

174:                                              ; preds = %170
  %175 = load i32, i32* %21, align 4
  %176 = add nsw i32 %175, -1
  store i32 %176, i32* %21, align 4
  br label %167

177:                                              ; preds = %167
  br label %178

178:                                              ; preds = %177, %162
  br label %179

179:                                              ; preds = %178, %137
  br label %291

180:                                              ; preds = %115
  %181 = load i32, i32* %21, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %290

183:                                              ; preds = %180
  %184 = load i32, i32* %21, align 4
  %185 = load i32, i32* @MIN_SKIP_LINES, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %190

187:                                              ; preds = %183
  %188 = load i32, i32* %22, align 4
  %189 = icmp ne i32 %188, 3
  br i1 %189, label %197, label %190

190:                                              ; preds = %187, %183
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @PCL_ANY_SPACING, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %266, label %197

197:                                              ; preds = %190, %187
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @PCL_MODE_3_COMPRESSION, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %212

204:                                              ; preds = %197
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @PCL_ANY_SPACING, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  %211 = xor i1 %210, true
  br label %212

212:                                              ; preds = %204, %197
  %213 = phi i1 [ false, %197 ], [ %211, %204 ]
  %214 = zext i1 %213 to i32
  store i32 %214, i32* %29, align 4
  %215 = load i32, i32* %29, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %225

217:                                              ; preds = %212
  %218 = load i32, i32* %22, align 4
  %219 = icmp ne i32 %218, 2
  br i1 %219, label %220, label %225

220:                                              ; preds = %217
  %221 = load i32*, i32** %7, align 8
  %222 = load i32*, i32** %14, align 8
  %223 = load i8*, i8** @from3to2, align 8
  %224 = call i32 @fz_write_string(i32* %221, i32* %222, i8* %223)
  store i32 2, i32* %22, align 4
  br label %225

225:                                              ; preds = %220, %217, %212
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @PCL_MODE_3_COMPRESSION, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %238

232:                                              ; preds = %225
  %233 = load i32*, i32** %7, align 8
  %234 = load i32*, i32** %14, align 8
  %235 = call i32 @fz_write_string(i32* %233, i32* %234, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %236 = load i32, i32* %21, align 4
  %237 = add nsw i32 %236, -1
  store i32 %237, i32* %21, align 4
  br label %238

238:                                              ; preds = %232, %225
  %239 = load i32, i32* %29, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %253

241:                                              ; preds = %238
  br label %242

242:                                              ; preds = %249, %241
  %243 = load i32, i32* %21, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %252

245:                                              ; preds = %242
  %246 = load i32*, i32** %7, align 8
  %247 = load i32*, i32** %14, align 8
  %248 = call i32 @fz_write_string(i32* %246, i32* %247, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %249

249:                                              ; preds = %245
  %250 = load i32, i32* %21, align 4
  %251 = add nsw i32 %250, -1
  store i32 %251, i32* %21, align 4
  br label %242

252:                                              ; preds = %242
  br label %265

253:                                              ; preds = %238
  br label %254

254:                                              ; preds = %261, %253
  %255 = load i32, i32* %21, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %264

257:                                              ; preds = %254
  %258 = load i32*, i32** %7, align 8
  %259 = load i32*, i32** %14, align 8
  %260 = call i32 @fz_write_string(i32* %258, i32* %259, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %261

261:                                              ; preds = %257
  %262 = load i32, i32* %21, align 4
  %263 = add nsw i32 %262, -1
  store i32 %263, i32* %21, align 4
  br label %254

264:                                              ; preds = %254
  br label %265

265:                                              ; preds = %264, %252
  br label %286

266:                                              ; preds = %190
  %267 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* @PCL3_SPACING, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %280

273:                                              ; preds = %266
  %274 = load i32*, i32** %7, align 8
  %275 = load i32*, i32** %14, align 8
  %276 = load i32, i32* %21, align 4
  %277 = load i32, i32* %16, align 4
  %278 = mul nsw i32 %276, %277
  %279 = call i32 @fz_write_printf(i32* %274, i32* %275, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %278)
  br label %285

280:                                              ; preds = %266
  %281 = load i32*, i32** %7, align 8
  %282 = load i32*, i32** %14, align 8
  %283 = load i32, i32* %21, align 4
  %284 = call i32 @fz_write_printf(i32* %281, i32* %282, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %283)
  br label %285

285:                                              ; preds = %280, %273
  br label %286

286:                                              ; preds = %285, %265
  %287 = load i8*, i8** %23, align 8
  %288 = load i32, i32* %20, align 4
  %289 = call i32 @memset(i8* %287, i32 0, i32 %288)
  br label %290

290:                                              ; preds = %286, %180
  br label %291

291:                                              ; preds = %290, %179
  store i32 0, i32* %21, align 4
  %292 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* @PCL_MODE_3_COMPRESSION, align 4
  %296 = and i32 %294, %295
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %352

298:                                              ; preds = %291
  %299 = load i8*, i8** %25, align 8
  %300 = load i8*, i8** %12, align 8
  %301 = load i8*, i8** %23, align 8
  %302 = load i32, i32* %20, align 4
  %303 = call i32 @mode3compress(i8* %299, i8* %300, i8* %301, i32 %302)
  store i32 %303, i32* %30, align 4
  %304 = load i8*, i8** %24, align 8
  %305 = load i8*, i8** %12, align 8
  %306 = load i32, i32* %20, align 4
  %307 = call i32 @mode2compress(i8* %304, i8* %305, i32 %306)
  store i32 %307, i32* %31, align 4
  %308 = load i32, i32* %22, align 4
  %309 = icmp eq i32 %308, 3
  br i1 %309, label %310, label %311

310:                                              ; preds = %298
  br label %313

311:                                              ; preds = %298
  %312 = load i32, i32* @penalty_from2to3, align 4
  br label %313

313:                                              ; preds = %311, %310
  %314 = phi i32 [ 0, %310 ], [ %312, %311 ]
  store i32 %314, i32* %32, align 4
  %315 = load i32, i32* %22, align 4
  %316 = icmp eq i32 %315, 2
  br i1 %316, label %317, label %318

317:                                              ; preds = %313
  br label %320

318:                                              ; preds = %313
  %319 = load i32, i32* @penalty_from3to2, align 4
  br label %320

320:                                              ; preds = %318, %317
  %321 = phi i32 [ 0, %317 ], [ %319, %318 ]
  store i32 %321, i32* %33, align 4
  %322 = load i32, i32* %30, align 4
  %323 = load i32, i32* %32, align 4
  %324 = add nsw i32 %322, %323
  %325 = load i32, i32* %31, align 4
  %326 = load i32, i32* %33, align 4
  %327 = add nsw i32 %325, %326
  %328 = icmp slt i32 %324, %327
  br i1 %328, label %329, label %340

329:                                              ; preds = %320
  %330 = load i32, i32* %22, align 4
  %331 = icmp ne i32 %330, 3
  br i1 %331, label %332, label %337

332:                                              ; preds = %329
  %333 = load i32*, i32** %7, align 8
  %334 = load i32*, i32** %14, align 8
  %335 = load i8*, i8** @from2to3, align 8
  %336 = call i32 @fz_write_string(i32* %333, i32* %334, i8* %335)
  br label %337

337:                                              ; preds = %332, %329
  store i32 3, i32* %22, align 4
  %338 = load i8*, i8** %25, align 8
  store i8* %338, i8** %17, align 8
  %339 = load i32, i32* %30, align 4
  store i32 %339, i32* %26, align 4
  br label %351

340:                                              ; preds = %320
  %341 = load i32, i32* %22, align 4
  %342 = icmp ne i32 %341, 2
  br i1 %342, label %343, label %348

343:                                              ; preds = %340
  %344 = load i32*, i32** %7, align 8
  %345 = load i32*, i32** %14, align 8
  %346 = load i8*, i8** @from3to2, align 8
  %347 = call i32 @fz_write_string(i32* %344, i32* %345, i8* %346)
  br label %348

348:                                              ; preds = %343, %340
  store i32 2, i32* %22, align 4
  %349 = load i8*, i8** %24, align 8
  store i8* %349, i8** %17, align 8
  %350 = load i32, i32* %31, align 4
  store i32 %350, i32* %26, align 4
  br label %351

351:                                              ; preds = %348, %337
  br label %369

352:                                              ; preds = %291
  %353 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %354 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 4
  %356 = load i32, i32* @PCL_MODE_2_COMPRESSION, align 4
  %357 = and i32 %355, %356
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %365

359:                                              ; preds = %352
  %360 = load i8*, i8** %24, align 8
  store i8* %360, i8** %17, align 8
  %361 = load i8*, i8** %24, align 8
  %362 = load i8*, i8** %12, align 8
  %363 = load i32, i32* %20, align 4
  %364 = call i32 @mode2compress(i8* %361, i8* %362, i32 %363)
  store i32 %364, i32* %26, align 4
  br label %368

365:                                              ; preds = %352
  %366 = load i8*, i8** %12, align 8
  store i8* %366, i8** %17, align 8
  %367 = load i32, i32* %20, align 4
  store i32 %367, i32* %26, align 4
  br label %368

368:                                              ; preds = %365, %359
  br label %369

369:                                              ; preds = %368, %351
  %370 = load i32*, i32** %7, align 8
  %371 = load i32*, i32** %14, align 8
  %372 = load i32, i32* %26, align 4
  %373 = call i32 @fz_write_printf(i32* %370, i32* %371, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %372)
  %374 = load i32*, i32** %7, align 8
  %375 = load i32*, i32** %14, align 8
  %376 = load i8*, i8** %17, align 8
  %377 = load i32, i32* %26, align 4
  %378 = call i32 @fz_write_data(i32* %374, i32* %375, i8* %376, i32 %377)
  br label %379

379:                                              ; preds = %369, %112
  %380 = load i32, i32* %18, align 4
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %18, align 4
  %382 = load i32, i32* %9, align 4
  %383 = load i8*, i8** %12, align 8
  %384 = sext i32 %382 to i64
  %385 = getelementptr inbounds i8, i8* %383, i64 %384
  store i8* %385, i8** %12, align 8
  br label %73

386:                                              ; preds = %73
  %387 = load i32, i32* %21, align 4
  %388 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %389 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %388, i32 0, i32 0
  store i32 %387, i32* %389, align 8
  br label %390

390:                                              ; preds = %386, %50
  ret void
}

declare dso_local i32 @fz_write_printf(i32*, i32*, i8*, i32) #1

declare dso_local i32 @fz_write_string(i32*, i32*, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @mode3compress(i8*, i8*, i8*, i32) #1

declare dso_local i32 @mode2compress(i8*, i8*, i32) #1

declare dso_local i32 @fz_write_data(i32*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
