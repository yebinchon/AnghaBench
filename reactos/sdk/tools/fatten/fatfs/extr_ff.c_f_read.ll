; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/fatten/fatfs/extr_ff.c_f_read.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/fatten/fatfs/extr_ff.c_f_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i64, i64, i64, i64*, %struct.TYPE_12__*, i64, i64, i64 }
%struct.TYPE_12__ = type { i32, i64, i64*, i32, i64 }

@FR_OK = common dso_local global i64 0, align 8
@FA_READ = common dso_local global i32 0, align 4
@FR_DENIED = common dso_local global i64 0, align 8
@FR_INT_ERR = common dso_local global i32 0, align 4
@FR_DISK_ERR = common dso_local global i32 0, align 4
@RES_OK = common dso_local global i64 0, align 8
@FA__DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @f_read(%struct.TYPE_11__* %0, i8* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to i64*
  store i64* %19, i64** %17, align 8
  %20 = load i64*, i64** %9, align 8
  store i64 0, i64* %20, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %22 = call i64 @validate(%struct.TYPE_11__* %21)
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* @FR_OK, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 6
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %30 = load i64, i64* %10, align 8
  %31 = call i32 @LEAVE_FF(%struct.TYPE_12__* %29, i64 %30)
  br label %32

32:                                               ; preds = %26, %4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 9
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 6
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 9
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @LEAVE_FF(%struct.TYPE_12__* %40, i64 %43)
  br label %45

45:                                               ; preds = %37, %32
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @FA_READ, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %45
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 6
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %54, align 8
  %56 = load i64, i64* @FR_DENIED, align 8
  %57 = call i32 @LEAVE_FF(%struct.TYPE_12__* %55, i64 %56)
  br label %58

58:                                               ; preds = %52, %45
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %61, %64
  store i64 %65, i64* %13, align 8
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* %13, align 8
  %68 = icmp sgt i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %58
  %70 = load i64, i64* %13, align 8
  store i64 %70, i64* %8, align 8
  br label %71

71:                                               ; preds = %69, %58
  br label %72

72:                                               ; preds = %353, %71
  %73 = load i64, i64* %8, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %369

75:                                               ; preds = %72
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 6
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = call i64 @SS(%struct.TYPE_12__* %81)
  %83 = urem i64 %78, %82
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %318

85:                                               ; preds = %75
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 6
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %90, align 8
  %92 = call i64 @SS(%struct.TYPE_12__* %91)
  %93 = udiv i64 %88, %92
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 6
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sub nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = and i64 %93, %100
  store i64 %101, i64* %16, align 8
  %102 = load i64, i64* %16, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %143, label %104

104:                                              ; preds = %85
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %104
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %11, align 8
  br label %121

113:                                              ; preds = %104
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 6
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %115, align 8
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 7
  %119 = load i64, i64* %118, align 8
  %120 = call i64 @get_fat(%struct.TYPE_12__* %116, i64 %119)
  store i64 %120, i64* %11, align 8
  br label %121

121:                                              ; preds = %113, %109
  %122 = load i64, i64* %11, align 8
  %123 = icmp slt i64 %122, 2
  br i1 %123, label %124, label %130

124:                                              ; preds = %121
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 6
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %126, align 8
  %128 = load i32, i32* @FR_INT_ERR, align 4
  %129 = call i32 @ABORT(%struct.TYPE_12__* %127, i32 %128)
  br label %130

130:                                              ; preds = %124, %121
  %131 = load i64, i64* %11, align 8
  %132 = icmp eq i64 %131, 4294967295
  br i1 %132, label %133, label %139

133:                                              ; preds = %130
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 6
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %135, align 8
  %137 = load i32, i32* @FR_DISK_ERR, align 4
  %138 = call i32 @ABORT(%struct.TYPE_12__* %136, i32 %137)
  br label %139

139:                                              ; preds = %133, %130
  %140 = load i64, i64* %11, align 8
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 7
  store i64 %140, i64* %142, align 8
  br label %143

143:                                              ; preds = %139, %85
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 6
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %145, align 8
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 7
  %149 = load i64, i64* %148, align 8
  %150 = call i64 @clust2sect(%struct.TYPE_12__* %146, i64 %149)
  store i64 %150, i64* %12, align 8
  %151 = load i64, i64* %12, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %159, label %153

153:                                              ; preds = %143
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 6
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %155, align 8
  %157 = load i32, i32* @FR_INT_ERR, align 4
  %158 = call i32 @ABORT(%struct.TYPE_12__* %156, i32 %157)
  br label %159

159:                                              ; preds = %153, %143
  %160 = load i64, i64* %16, align 8
  %161 = load i64, i64* %12, align 8
  %162 = add nsw i64 %161, %160
  store i64 %162, i64* %12, align 8
  %163 = load i64, i64* %8, align 8
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 6
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %165, align 8
  %167 = call i64 @SS(%struct.TYPE_12__* %166)
  %168 = udiv i64 %163, %167
  store i64 %168, i64* %15, align 8
  %169 = load i64, i64* %15, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %253

171:                                              ; preds = %159
  %172 = load i64, i64* %16, align 8
  %173 = load i64, i64* %15, align 8
  %174 = add nsw i64 %172, %173
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 6
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = sext i32 %179 to i64
  %181 = icmp sgt i64 %174, %180
  br i1 %181, label %182, label %191

182:                                              ; preds = %171
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 6
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = sext i32 %187 to i64
  %189 = load i64, i64* %16, align 8
  %190 = sub nsw i64 %188, %189
  store i64 %190, i64* %15, align 8
  br label %191

191:                                              ; preds = %182, %171
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 6
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 8
  %197 = load i64*, i64** %17, align 8
  %198 = load i64, i64* %12, align 8
  %199 = load i64, i64* %15, align 8
  %200 = trunc i64 %199 to i32
  %201 = call i64 @disk_read(i32 %196, i64* %197, i64 %198, i32 %200)
  %202 = load i64, i64* @RES_OK, align 8
  %203 = icmp ne i64 %201, %202
  br i1 %203, label %204, label %210

204:                                              ; preds = %191
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 6
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %206, align 8
  %208 = load i32, i32* @FR_DISK_ERR, align 4
  %209 = call i32 @ABORT(%struct.TYPE_12__* %207, i32 %208)
  br label %210

210:                                              ; preds = %204, %191
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @FA__DIRTY, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %246

217:                                              ; preds = %210
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 4
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* %12, align 8
  %222 = sub nsw i64 %220, %221
  %223 = load i64, i64* %15, align 8
  %224 = icmp slt i64 %222, %223
  br i1 %224, label %225, label %246

225:                                              ; preds = %217
  %226 = load i64*, i64** %17, align 8
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 4
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* %12, align 8
  %231 = sub nsw i64 %229, %230
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 6
  %234 = load %struct.TYPE_12__*, %struct.TYPE_12__** %233, align 8
  %235 = call i64 @SS(%struct.TYPE_12__* %234)
  %236 = mul i64 %231, %235
  %237 = getelementptr inbounds i64, i64* %226, i64 %236
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 5
  %240 = load i64*, i64** %239, align 8
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 6
  %243 = load %struct.TYPE_12__*, %struct.TYPE_12__** %242, align 8
  %244 = call i64 @SS(%struct.TYPE_12__* %243)
  %245 = call i32 @mem_cpy(i64* %237, i64* %240, i64 %244)
  br label %246

246:                                              ; preds = %225, %217, %210
  %247 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i32 0, i32 6
  %249 = load %struct.TYPE_12__*, %struct.TYPE_12__** %248, align 8
  %250 = call i64 @SS(%struct.TYPE_12__* %249)
  %251 = load i64, i64* %15, align 8
  %252 = mul i64 %250, %251
  store i64 %252, i64* %14, align 8
  br label %353

253:                                              ; preds = %159
  %254 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 4
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* %12, align 8
  %258 = icmp ne i64 %256, %257
  br i1 %258, label %259, label %314

259:                                              ; preds = %253
  %260 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* @FA__DIRTY, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %294

266:                                              ; preds = %259
  %267 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 6
  %269 = load %struct.TYPE_12__*, %struct.TYPE_12__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i32 0, i32 3
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i32 0, i32 5
  %274 = load i64*, i64** %273, align 8
  %275 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %276 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %275, i32 0, i32 4
  %277 = load i64, i64* %276, align 8
  %278 = call i64 @disk_write(i32 %271, i64* %274, i64 %277, i32 1)
  %279 = load i64, i64* @RES_OK, align 8
  %280 = icmp ne i64 %278, %279
  br i1 %280, label %281, label %287

281:                                              ; preds = %266
  %282 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %283 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %282, i32 0, i32 6
  %284 = load %struct.TYPE_12__*, %struct.TYPE_12__** %283, align 8
  %285 = load i32, i32* @FR_DISK_ERR, align 4
  %286 = call i32 @ABORT(%struct.TYPE_12__* %284, i32 %285)
  br label %287

287:                                              ; preds = %281, %266
  %288 = load i32, i32* @FA__DIRTY, align 4
  %289 = xor i32 %288, -1
  %290 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %291 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = and i32 %292, %289
  store i32 %293, i32* %291, align 8
  br label %294

294:                                              ; preds = %287, %259
  %295 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %296 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %295, i32 0, i32 6
  %297 = load %struct.TYPE_12__*, %struct.TYPE_12__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %297, i32 0, i32 3
  %299 = load i32, i32* %298, align 8
  %300 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %301 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %300, i32 0, i32 5
  %302 = load i64*, i64** %301, align 8
  %303 = load i64, i64* %12, align 8
  %304 = call i64 @disk_read(i32 %299, i64* %302, i64 %303, i32 1)
  %305 = load i64, i64* @RES_OK, align 8
  %306 = icmp ne i64 %304, %305
  br i1 %306, label %307, label %313

307:                                              ; preds = %294
  %308 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %309 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %308, i32 0, i32 6
  %310 = load %struct.TYPE_12__*, %struct.TYPE_12__** %309, align 8
  %311 = load i32, i32* @FR_DISK_ERR, align 4
  %312 = call i32 @ABORT(%struct.TYPE_12__* %310, i32 %311)
  br label %313

313:                                              ; preds = %307, %294
  br label %314

314:                                              ; preds = %313, %253
  %315 = load i64, i64* %12, align 8
  %316 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %317 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %316, i32 0, i32 4
  store i64 %315, i64* %317, align 8
  br label %318

318:                                              ; preds = %314, %75
  %319 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %320 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %319, i32 0, i32 6
  %321 = load %struct.TYPE_12__*, %struct.TYPE_12__** %320, align 8
  %322 = call i64 @SS(%struct.TYPE_12__* %321)
  %323 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %324 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %323, i32 0, i32 2
  %325 = load i64, i64* %324, align 8
  %326 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %327 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %326, i32 0, i32 6
  %328 = load %struct.TYPE_12__*, %struct.TYPE_12__** %327, align 8
  %329 = call i64 @SS(%struct.TYPE_12__* %328)
  %330 = urem i64 %325, %329
  %331 = sub i64 %322, %330
  store i64 %331, i64* %14, align 8
  %332 = load i64, i64* %14, align 8
  %333 = load i64, i64* %8, align 8
  %334 = icmp sgt i64 %332, %333
  br i1 %334, label %335, label %337

335:                                              ; preds = %318
  %336 = load i64, i64* %8, align 8
  store i64 %336, i64* %14, align 8
  br label %337

337:                                              ; preds = %335, %318
  %338 = load i64*, i64** %17, align 8
  %339 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %340 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %339, i32 0, i32 5
  %341 = load i64*, i64** %340, align 8
  %342 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %343 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %342, i32 0, i32 2
  %344 = load i64, i64* %343, align 8
  %345 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %346 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %345, i32 0, i32 6
  %347 = load %struct.TYPE_12__*, %struct.TYPE_12__** %346, align 8
  %348 = call i64 @SS(%struct.TYPE_12__* %347)
  %349 = urem i64 %344, %348
  %350 = getelementptr inbounds i64, i64* %341, i64 %349
  %351 = load i64, i64* %14, align 8
  %352 = call i32 @mem_cpy(i64* %338, i64* %350, i64 %351)
  br label %353

353:                                              ; preds = %337, %246
  %354 = load i64, i64* %14, align 8
  %355 = load i64*, i64** %17, align 8
  %356 = getelementptr inbounds i64, i64* %355, i64 %354
  store i64* %356, i64** %17, align 8
  %357 = load i64, i64* %14, align 8
  %358 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %359 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %358, i32 0, i32 2
  %360 = load i64, i64* %359, align 8
  %361 = add nsw i64 %360, %357
  store i64 %361, i64* %359, align 8
  %362 = load i64, i64* %14, align 8
  %363 = load i64*, i64** %9, align 8
  %364 = load i64, i64* %363, align 8
  %365 = add nsw i64 %364, %362
  store i64 %365, i64* %363, align 8
  %366 = load i64, i64* %14, align 8
  %367 = load i64, i64* %8, align 8
  %368 = sub nsw i64 %367, %366
  store i64 %368, i64* %8, align 8
  br label %72

369:                                              ; preds = %72
  %370 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %371 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %370, i32 0, i32 6
  %372 = load %struct.TYPE_12__*, %struct.TYPE_12__** %371, align 8
  %373 = load i64, i64* @FR_OK, align 8
  %374 = call i32 @LEAVE_FF(%struct.TYPE_12__* %372, i64 %373)
  %375 = load i64, i64* %5, align 8
  ret i64 %375
}

declare dso_local i64 @validate(%struct.TYPE_11__*) #1

declare dso_local i32 @LEAVE_FF(%struct.TYPE_12__*, i64) #1

declare dso_local i64 @SS(%struct.TYPE_12__*) #1

declare dso_local i64 @get_fat(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @ABORT(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @clust2sect(%struct.TYPE_12__*, i64) #1

declare dso_local i64 @disk_read(i32, i64*, i64, i32) #1

declare dso_local i32 @mem_cpy(i64*, i64*, i64) #1

declare dso_local i64 @disk_write(i32, i64*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
