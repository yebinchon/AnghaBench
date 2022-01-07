; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-pnm.c_pnm_ascii_read_image.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-pnm.c_pnm_ascii_read_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i32, i32 }
%struct.info = type { i32, i32, i32, i32, i32 }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"maximum sample value of out range in pnm image: %d\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"image height must be > 0\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"image width must be > 0\00", align 1
@UINT_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"image too large\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i32*, %struct.info*, i8*, i8*, i32, i32, i8**)* @pnm_ascii_read_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @pnm_ascii_read_image(i32* %0, %struct.info* %1, i8* %2, i8* %3, i32 %4, i32 %5, i8** %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.info*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  %15 = alloca %struct.TYPE_4__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.info* %1, %struct.info** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i8** %6, i8*** %14, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %15, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = load %struct.info*, %struct.info** %9, align 8
  %35 = getelementptr inbounds %struct.info, %struct.info* %34, i32 0, i32 0
  %36 = call i8* @pnm_read_number(i32* %31, i8* %32, i8* %33, i32* %35)
  store i8* %36, i8** %10, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = call i8* @pnm_read_white(i32* %37, i8* %38, i8* %39, i32 0)
  store i8* %40, i8** %10, align 8
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %7
  %44 = load i32*, i32** %8, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = load %struct.info*, %struct.info** %9, align 8
  %48 = getelementptr inbounds %struct.info, %struct.info* %47, i32 0, i32 1
  %49 = call i8* @pnm_read_number(i32* %44, i8* %45, i8* %46, i32* %48)
  store i8* %49, i8** %10, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = call i8* @pnm_read_white(i32* %50, i8* %51, i8* %52, i32 1)
  store i8* %53, i8** %10, align 8
  %54 = load %struct.info*, %struct.info** %9, align 8
  %55 = getelementptr inbounds %struct.info, %struct.info* %54, i32 0, i32 2
  store i32 1, i32* %55, align 4
  br label %77

56:                                               ; preds = %7
  %57 = load i32*, i32** %8, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = load %struct.info*, %struct.info** %9, align 8
  %61 = getelementptr inbounds %struct.info, %struct.info* %60, i32 0, i32 1
  %62 = call i8* @pnm_read_number(i32* %57, i8* %58, i8* %59, i32* %61)
  store i8* %62, i8** %10, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = call i8* @pnm_read_white(i32* %63, i8* %64, i8* %65, i32 0)
  store i8* %66, i8** %10, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = load %struct.info*, %struct.info** %9, align 8
  %71 = getelementptr inbounds %struct.info, %struct.info* %70, i32 0, i32 2
  %72 = call i8* @pnm_read_number(i32* %67, i8* %68, i8* %69, i32* %71)
  store i8* %72, i8** %10, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = call i8* @pnm_read_white(i32* %73, i8* %74, i8* %75, i32 0)
  store i8* %76, i8** %10, align 8
  br label %77

77:                                               ; preds = %56, %43
  %78 = load %struct.info*, %struct.info** %9, align 8
  %79 = getelementptr inbounds %struct.info, %struct.info* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = icmp sle i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %77
  %83 = load %struct.info*, %struct.info** %9, align 8
  %84 = getelementptr inbounds %struct.info, %struct.info* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = icmp sge i32 %85, 65536
  br i1 %86, label %87, label %94

87:                                               ; preds = %82, %77
  %88 = load i32*, i32** %8, align 8
  %89 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %90 = load %struct.info*, %struct.info** %9, align 8
  %91 = getelementptr inbounds %struct.info, %struct.info* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %88, i32 %89, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %87, %82
  %95 = load %struct.info*, %struct.info** %9, align 8
  %96 = getelementptr inbounds %struct.info, %struct.info* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @bitdepth_from_maxval(i32 %97)
  %99 = load %struct.info*, %struct.info** %9, align 8
  %100 = getelementptr inbounds %struct.info, %struct.info* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 4
  %101 = load %struct.info*, %struct.info** %9, align 8
  %102 = getelementptr inbounds %struct.info, %struct.info* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp sle i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %94
  %106 = load i32*, i32** %8, align 8
  %107 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %108 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %106, i32 %107, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %109

109:                                              ; preds = %105, %94
  %110 = load %struct.info*, %struct.info** %9, align 8
  %111 = getelementptr inbounds %struct.info, %struct.info* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp sle i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load i32*, i32** %8, align 8
  %116 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %117 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %115, i32 %116, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %118

118:                                              ; preds = %114, %109
  %119 = load %struct.info*, %struct.info** %9, align 8
  %120 = getelementptr inbounds %struct.info, %struct.info* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @UINT_MAX, align 4
  %123 = load %struct.info*, %struct.info** %9, align 8
  %124 = getelementptr inbounds %struct.info, %struct.info* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = sdiv i32 %122, %125
  %127 = load i32*, i32** %8, align 8
  %128 = load %struct.info*, %struct.info** %9, align 8
  %129 = getelementptr inbounds %struct.info, %struct.info* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @fz_colorspace_n(i32* %127, i32 %130)
  %132 = sdiv i32 %126, %131
  %133 = load %struct.info*, %struct.info** %9, align 8
  %134 = getelementptr inbounds %struct.info, %struct.info* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = sdiv i32 %135, 8
  %137 = add nsw i32 %136, 1
  %138 = sdiv i32 %132, %137
  %139 = icmp ugt i32 %121, %138
  br i1 %139, label %140, label %144

140:                                              ; preds = %118
  %141 = load i32*, i32** %8, align 8
  %142 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %143 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %141, i32 %142, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %144

144:                                              ; preds = %140, %118
  %145 = load i32, i32* %12, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %225

147:                                              ; preds = %144
  %148 = load %struct.info*, %struct.info** %9, align 8
  %149 = getelementptr inbounds %struct.info, %struct.info* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %19, align 4
  %151 = load %struct.info*, %struct.info** %9, align 8
  %152 = getelementptr inbounds %struct.info, %struct.info* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %20, align 4
  %154 = load i32*, i32** %8, align 8
  %155 = load %struct.info*, %struct.info** %9, align 8
  %156 = getelementptr inbounds %struct.info, %struct.info* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @fz_colorspace_n(i32* %154, i32 %157)
  store i32 %158, i32* %21, align 4
  %159 = load i32, i32* %13, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %188

161:                                              ; preds = %147
  store i32 0, i32* %17, align 4
  br label %162

162:                                              ; preds = %184, %161
  %163 = load i32, i32* %17, align 4
  %164 = load i32, i32* %20, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %166, label %187

166:                                              ; preds = %162
  store i32 -1, i32* %16, align 4
  br label %167

167:                                              ; preds = %180, %166
  %168 = load i32, i32* %16, align 4
  %169 = load i32, i32* %19, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %183

171:                                              ; preds = %167
  %172 = load i32*, i32** %8, align 8
  %173 = load i8*, i8** %10, align 8
  %174 = load i8*, i8** %11, align 8
  %175 = call i8* @pnm_read_number(i32* %172, i8* %173, i8* %174, i32* null)
  store i8* %175, i8** %10, align 8
  %176 = load i32*, i32** %8, align 8
  %177 = load i8*, i8** %10, align 8
  %178 = load i8*, i8** %11, align 8
  %179 = call i8* @pnm_read_white(i32* %176, i8* %177, i8* %178, i32 0)
  store i8* %179, i8** %10, align 8
  br label %180

180:                                              ; preds = %171
  %181 = load i32, i32* %16, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %16, align 4
  br label %167

183:                                              ; preds = %167
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %17, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %17, align 4
  br label %162

187:                                              ; preds = %162
  br label %224

188:                                              ; preds = %147
  store i32 0, i32* %17, align 4
  br label %189

189:                                              ; preds = %220, %188
  %190 = load i32, i32* %17, align 4
  %191 = load i32, i32* %20, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %223

193:                                              ; preds = %189
  store i32 0, i32* %16, align 4
  br label %194

194:                                              ; preds = %216, %193
  %195 = load i32, i32* %16, align 4
  %196 = load i32, i32* %19, align 4
  %197 = icmp slt i32 %195, %196
  br i1 %197, label %198, label %219

198:                                              ; preds = %194
  store i32 0, i32* %18, align 4
  br label %199

199:                                              ; preds = %212, %198
  %200 = load i32, i32* %18, align 4
  %201 = load i32, i32* %21, align 4
  %202 = icmp slt i32 %200, %201
  br i1 %202, label %203, label %215

203:                                              ; preds = %199
  %204 = load i32*, i32** %8, align 8
  %205 = load i8*, i8** %10, align 8
  %206 = load i8*, i8** %11, align 8
  %207 = call i8* @pnm_read_number(i32* %204, i8* %205, i8* %206, i32* null)
  store i8* %207, i8** %10, align 8
  %208 = load i32*, i32** %8, align 8
  %209 = load i8*, i8** %10, align 8
  %210 = load i8*, i8** %11, align 8
  %211 = call i8* @pnm_read_white(i32* %208, i8* %209, i8* %210, i32 0)
  store i8* %211, i8** %10, align 8
  br label %212

212:                                              ; preds = %203
  %213 = load i32, i32* %18, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %18, align 4
  br label %199

215:                                              ; preds = %199
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %16, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %16, align 4
  br label %194

219:                                              ; preds = %194
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %17, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %17, align 4
  br label %189

223:                                              ; preds = %189
  br label %224

224:                                              ; preds = %223, %187
  br label %336

225:                                              ; preds = %144
  %226 = load i32*, i32** %8, align 8
  %227 = load %struct.info*, %struct.info** %9, align 8
  %228 = getelementptr inbounds %struct.info, %struct.info* %227, i32 0, i32 4
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.info*, %struct.info** %9, align 8
  %231 = getelementptr inbounds %struct.info, %struct.info* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.info*, %struct.info** %9, align 8
  %234 = getelementptr inbounds %struct.info, %struct.info* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = call %struct.TYPE_4__* @fz_new_pixmap(i32* %226, i32 %229, i32 %232, i32 %235, i32* null, i32 0)
  store %struct.TYPE_4__* %236, %struct.TYPE_4__** %15, align 8
  %237 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 0
  %239 = load i8*, i8** %238, align 8
  store i8* %239, i8** %22, align 8
  %240 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 8
  store i32 %242, i32* %26, align 4
  %243 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 4
  store i32 %245, i32* %27, align 4
  %246 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 8
  store i32 %248, i32* %28, align 4
  %249 = load i32, i32* %13, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %285

251:                                              ; preds = %225
  store i32 0, i32* %24, align 4
  br label %252

252:                                              ; preds = %281, %251
  %253 = load i32, i32* %24, align 4
  %254 = load i32, i32* %27, align 4
  %255 = icmp slt i32 %253, %254
  br i1 %255, label %256, label %284

256:                                              ; preds = %252
  store i32 0, i32* %23, align 4
  br label %257

257:                                              ; preds = %277, %256
  %258 = load i32, i32* %23, align 4
  %259 = load i32, i32* %26, align 4
  %260 = icmp slt i32 %258, %259
  br i1 %260, label %261, label %280

261:                                              ; preds = %257
  store i32 0, i32* %29, align 4
  %262 = load i32*, i32** %8, align 8
  %263 = load i8*, i8** %10, align 8
  %264 = load i8*, i8** %11, align 8
  %265 = call i8* @pnm_read_number(i32* %262, i8* %263, i8* %264, i32* %29)
  store i8* %265, i8** %10, align 8
  %266 = load i32*, i32** %8, align 8
  %267 = load i8*, i8** %10, align 8
  %268 = load i8*, i8** %11, align 8
  %269 = call i8* @pnm_read_white(i32* %266, i8* %267, i8* %268, i32 0)
  store i8* %269, i8** %10, align 8
  %270 = load i32, i32* %29, align 4
  %271 = icmp ne i32 %270, 0
  %272 = zext i1 %271 to i64
  %273 = select i1 %271, i32 0, i32 255
  %274 = trunc i32 %273 to i8
  %275 = load i8*, i8** %22, align 8
  %276 = getelementptr inbounds i8, i8* %275, i32 1
  store i8* %276, i8** %22, align 8
  store i8 %274, i8* %275, align 1
  br label %277

277:                                              ; preds = %261
  %278 = load i32, i32* %23, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %23, align 4
  br label %257

280:                                              ; preds = %257
  br label %281

281:                                              ; preds = %280
  %282 = load i32, i32* %24, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %24, align 4
  br label %252

284:                                              ; preds = %252
  br label %335

285:                                              ; preds = %225
  store i32 0, i32* %24, align 4
  br label %286

286:                                              ; preds = %331, %285
  %287 = load i32, i32* %24, align 4
  %288 = load i32, i32* %27, align 4
  %289 = icmp slt i32 %287, %288
  br i1 %289, label %290, label %334

290:                                              ; preds = %286
  store i32 0, i32* %23, align 4
  br label %291

291:                                              ; preds = %327, %290
  %292 = load i32, i32* %23, align 4
  %293 = load i32, i32* %26, align 4
  %294 = icmp slt i32 %292, %293
  br i1 %294, label %295, label %330

295:                                              ; preds = %291
  store i32 0, i32* %25, align 4
  br label %296

296:                                              ; preds = %323, %295
  %297 = load i32, i32* %25, align 4
  %298 = load i32, i32* %28, align 4
  %299 = icmp slt i32 %297, %298
  br i1 %299, label %300, label %326

300:                                              ; preds = %296
  store i32 0, i32* %30, align 4
  %301 = load i32*, i32** %8, align 8
  %302 = load i8*, i8** %10, align 8
  %303 = load i8*, i8** %11, align 8
  %304 = call i8* @pnm_read_number(i32* %301, i8* %302, i8* %303, i32* %30)
  store i8* %304, i8** %10, align 8
  %305 = load i32*, i32** %8, align 8
  %306 = load i8*, i8** %10, align 8
  %307 = load i8*, i8** %11, align 8
  %308 = call i8* @pnm_read_white(i32* %305, i8* %306, i8* %307, i32 0)
  store i8* %308, i8** %10, align 8
  %309 = load i32, i32* %30, align 4
  %310 = load %struct.info*, %struct.info** %9, align 8
  %311 = getelementptr inbounds %struct.info, %struct.info* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 4
  %313 = call i32 @fz_clampi(i32 %309, i32 0, i32 %312)
  store i32 %313, i32* %30, align 4
  %314 = load i32*, i32** %8, align 8
  %315 = load i32, i32* %30, align 4
  %316 = load %struct.info*, %struct.info** %9, align 8
  %317 = getelementptr inbounds %struct.info, %struct.info* %316, i32 0, i32 2
  %318 = load i32, i32* %317, align 4
  %319 = call i32 @map_color(i32* %314, i32 %315, i32 %318, i32 255)
  %320 = trunc i32 %319 to i8
  %321 = load i8*, i8** %22, align 8
  %322 = getelementptr inbounds i8, i8* %321, i32 1
  store i8* %322, i8** %22, align 8
  store i8 %320, i8* %321, align 1
  br label %323

323:                                              ; preds = %300
  %324 = load i32, i32* %25, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %25, align 4
  br label %296

326:                                              ; preds = %296
  br label %327

327:                                              ; preds = %326
  %328 = load i32, i32* %23, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %23, align 4
  br label %291

330:                                              ; preds = %291
  br label %331

331:                                              ; preds = %330
  %332 = load i32, i32* %24, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %24, align 4
  br label %286

334:                                              ; preds = %286
  br label %335

335:                                              ; preds = %334, %284
  br label %336

336:                                              ; preds = %335, %224
  %337 = load i8**, i8*** %14, align 8
  %338 = icmp ne i8** %337, null
  br i1 %338, label %339, label %342

339:                                              ; preds = %336
  %340 = load i8*, i8** %10, align 8
  %341 = load i8**, i8*** %14, align 8
  store i8* %340, i8** %341, align 8
  br label %342

342:                                              ; preds = %339, %336
  %343 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  ret %struct.TYPE_4__* %343
}

declare dso_local i8* @pnm_read_number(i32*, i8*, i8*, i32*) #1

declare dso_local i8* @pnm_read_white(i32*, i8*, i8*, i32) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*, ...) #1

declare dso_local i32 @bitdepth_from_maxval(i32) #1

declare dso_local i32 @fz_colorspace_n(i32*, i32) #1

declare dso_local %struct.TYPE_4__* @fz_new_pixmap(i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @fz_clampi(i32, i32, i32) #1

declare dso_local i32 @map_color(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
