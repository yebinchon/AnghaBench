; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/fatten/fatfs/extr_ff.c_f_lseek.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/fatten/fatfs/extr_ff.c_f_lseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32*, i32, i32, i32, i32, i32, i32, %struct.TYPE_12__*, i32, i64 }
%struct.TYPE_12__ = type { i32, i32, i32 }

@FR_OK = common dso_local global i64 0, align 8
@FA_WRITE = common dso_local global i32 0, align 4
@FR_INT_ERR = common dso_local global i32 0, align 4
@FR_DISK_ERR = common dso_local global i32 0, align 4
@FA__DIRTY = common dso_local global i32 0, align 4
@RES_OK = common dso_local global i64 0, align 8
@FA__WRITTEN = common dso_local global i32 0, align 4
@CREATE_LINKMAP = common dso_local global i32 0, align 4
@FR_NOT_ENOUGH_CORE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @f_lseek(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %12 = call i64 @validate(%struct.TYPE_11__* %11)
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @FR_OK, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 7
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @LEAVE_FF(%struct.TYPE_12__* %19, i64 %20)
  br label %22

22:                                               ; preds = %16, %2
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 9
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 7
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 9
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @LEAVE_FF(%struct.TYPE_12__* %30, i64 %33)
  br label %35

35:                                               ; preds = %27, %22
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %36, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %35
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @FA_WRITE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %41
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %48, %41, %35
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 3
  store i32 0, i32* %57, align 8
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %244

60:                                               ; preds = %52
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 7
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 7
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %67, align 8
  %69 = call i32 @SS(%struct.TYPE_12__* %68)
  %70 = mul nsw i32 %65, %69
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %100

73:                                               ; preds = %60
  %74 = load i32, i32* %5, align 4
  %75 = sub nsw i32 %74, 1
  %76 = load i32, i32* %8, align 4
  %77 = sdiv i32 %75, %76
  %78 = load i32, i32* %10, align 4
  %79 = sub nsw i32 %78, 1
  %80 = load i32, i32* %8, align 4
  %81 = sdiv i32 %79, %80
  %82 = icmp sge i32 %77, %81
  br i1 %82, label %83, label %100

83:                                               ; preds = %73
  %84 = load i32, i32* %10, align 4
  %85 = sub nsw i32 %84, 1
  %86 = load i32, i32* %8, align 4
  %87 = sub nsw i32 %86, 1
  %88 = xor i32 %87, -1
  %89 = and i32 %85, %88
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sub nsw i32 %95, %94
  store i32 %96, i32* %5, align 4
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %7, align 4
  br label %136

100:                                              ; preds = %73, %60
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %132

106:                                              ; preds = %100
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 7
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %108, align 8
  %110 = call i32 @create_chain(%struct.TYPE_12__* %109, i32 0)
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %7, align 4
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %119

113:                                              ; preds = %106
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 7
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %115, align 8
  %117 = load i32, i32* @FR_INT_ERR, align 4
  %118 = call i32 @ABORT(%struct.TYPE_12__* %116, i32 %117)
  br label %119

119:                                              ; preds = %113, %106
  %120 = load i32, i32* %7, align 4
  %121 = icmp eq i32 %120, -1
  br i1 %121, label %122, label %128

122:                                              ; preds = %119
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 7
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %124, align 8
  %126 = load i32, i32* @FR_DISK_ERR, align 4
  %127 = call i32 @ABORT(%struct.TYPE_12__* %125, i32 %126)
  br label %128

128:                                              ; preds = %122, %119
  %129 = load i32, i32* %7, align 4
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 8
  br label %132

132:                                              ; preds = %128, %100
  %133 = load i32, i32* %7, align 4
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 4
  store i32 %133, i32* %135, align 4
  br label %136

136:                                              ; preds = %132, %83
  %137 = load i32, i32* %7, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %243

139:                                              ; preds = %136
  br label %140

140:                                              ; preds = %194, %139
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* %8, align 4
  %143 = icmp sgt i32 %141, %142
  br i1 %143, label %144, label %206

144:                                              ; preds = %140
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 6
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @FA_WRITE, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %162

151:                                              ; preds = %144
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 7
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %153, align 8
  %155 = load i32, i32* %7, align 4
  %156 = call i32 @create_chain(%struct.TYPE_12__* %154, i32 %155)
  store i32 %156, i32* %7, align 4
  %157 = load i32, i32* %7, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %151
  %160 = load i32, i32* %8, align 4
  store i32 %160, i32* %5, align 4
  br label %206

161:                                              ; preds = %151
  br label %168

162:                                              ; preds = %144
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 7
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %164, align 8
  %166 = load i32, i32* %7, align 4
  %167 = call i32 @get_fat(%struct.TYPE_12__* %165, i32 %166)
  store i32 %167, i32* %7, align 4
  br label %168

168:                                              ; preds = %162, %161
  %169 = load i32, i32* %7, align 4
  %170 = icmp eq i32 %169, -1
  br i1 %170, label %171, label %177

171:                                              ; preds = %168
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 7
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %173, align 8
  %175 = load i32, i32* @FR_DISK_ERR, align 4
  %176 = call i32 @ABORT(%struct.TYPE_12__* %174, i32 %175)
  br label %177

177:                                              ; preds = %171, %168
  %178 = load i32, i32* %7, align 4
  %179 = icmp sle i32 %178, 1
  br i1 %179, label %188, label %180

180:                                              ; preds = %177
  %181 = load i32, i32* %7, align 4
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 7
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = icmp sge i32 %181, %186
  br i1 %187, label %188, label %194

188:                                              ; preds = %180, %177
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 7
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %190, align 8
  %192 = load i32, i32* @FR_INT_ERR, align 4
  %193 = call i32 @ABORT(%struct.TYPE_12__* %191, i32 %192)
  br label %194

194:                                              ; preds = %188, %180
  %195 = load i32, i32* %7, align 4
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 4
  store i32 %195, i32* %197, align 4
  %198 = load i32, i32* %8, align 4
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 8
  %202 = add nsw i32 %201, %198
  store i32 %202, i32* %200, align 8
  %203 = load i32, i32* %8, align 4
  %204 = load i32, i32* %5, align 4
  %205 = sub nsw i32 %204, %203
  store i32 %205, i32* %5, align 4
  br label %140

206:                                              ; preds = %159, %140
  %207 = load i32, i32* %5, align 4
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 8
  %211 = add nsw i32 %210, %207
  store i32 %211, i32* %209, align 8
  %212 = load i32, i32* %5, align 4
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 7
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** %214, align 8
  %216 = call i32 @SS(%struct.TYPE_12__* %215)
  %217 = srem i32 %212, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %242

219:                                              ; preds = %206
  %220 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 7
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** %221, align 8
  %223 = load i32, i32* %7, align 4
  %224 = call i32 @clust2sect(%struct.TYPE_12__* %222, i32 %223)
  store i32 %224, i32* %9, align 4
  %225 = load i32, i32* %9, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %233, label %227

227:                                              ; preds = %219
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 7
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %229, align 8
  %231 = load i32, i32* @FR_INT_ERR, align 4
  %232 = call i32 @ABORT(%struct.TYPE_12__* %230, i32 %231)
  br label %233

233:                                              ; preds = %227, %219
  %234 = load i32, i32* %5, align 4
  %235 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 7
  %237 = load %struct.TYPE_12__*, %struct.TYPE_12__** %236, align 8
  %238 = call i32 @SS(%struct.TYPE_12__* %237)
  %239 = sdiv i32 %234, %238
  %240 = load i32, i32* %9, align 4
  %241 = add nsw i32 %240, %239
  store i32 %241, i32* %9, align 4
  br label %242

242:                                              ; preds = %233, %206
  br label %243

243:                                              ; preds = %242, %136
  br label %244

244:                                              ; preds = %243, %52
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 7
  %250 = load %struct.TYPE_12__*, %struct.TYPE_12__** %249, align 8
  %251 = call i32 @SS(%struct.TYPE_12__* %250)
  %252 = srem i32 %247, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %318

254:                                              ; preds = %244
  %255 = load i32, i32* %9, align 4
  %256 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i32 0, i32 5
  %258 = load i32, i32* %257, align 8
  %259 = icmp ne i32 %255, %258
  br i1 %259, label %260, label %318

260:                                              ; preds = %254
  %261 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %261, i32 0, i32 6
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* @FA__DIRTY, align 4
  %265 = and i32 %263, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %295

267:                                              ; preds = %260
  %268 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i32 0, i32 7
  %270 = load %struct.TYPE_12__*, %struct.TYPE_12__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %273, i32 0, i32 8
  %275 = load i32, i32* %274, align 8
  %276 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %276, i32 0, i32 5
  %278 = load i32, i32* %277, align 8
  %279 = call i64 @disk_write(i32 %272, i32 %275, i32 %278, i32 1)
  %280 = load i64, i64* @RES_OK, align 8
  %281 = icmp ne i64 %279, %280
  br i1 %281, label %282, label %288

282:                                              ; preds = %267
  %283 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %283, i32 0, i32 7
  %285 = load %struct.TYPE_12__*, %struct.TYPE_12__** %284, align 8
  %286 = load i32, i32* @FR_DISK_ERR, align 4
  %287 = call i32 @ABORT(%struct.TYPE_12__* %285, i32 %286)
  br label %288

288:                                              ; preds = %282, %267
  %289 = load i32, i32* @FA__DIRTY, align 4
  %290 = xor i32 %289, -1
  %291 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %292 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %291, i32 0, i32 6
  %293 = load i32, i32* %292, align 4
  %294 = and i32 %293, %290
  store i32 %294, i32* %292, align 4
  br label %295

295:                                              ; preds = %288, %260
  %296 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %296, i32 0, i32 7
  %298 = load %struct.TYPE_12__*, %struct.TYPE_12__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %302 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %301, i32 0, i32 8
  %303 = load i32, i32* %302, align 8
  %304 = load i32, i32* %9, align 4
  %305 = call i64 @disk_read(i32 %300, i32 %303, i32 %304, i32 1)
  %306 = load i64, i64* @RES_OK, align 8
  %307 = icmp ne i64 %305, %306
  br i1 %307, label %308, label %314

308:                                              ; preds = %295
  %309 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %310 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %309, i32 0, i32 7
  %311 = load %struct.TYPE_12__*, %struct.TYPE_12__** %310, align 8
  %312 = load i32, i32* @FR_DISK_ERR, align 4
  %313 = call i32 @ABORT(%struct.TYPE_12__* %311, i32 %312)
  br label %314

314:                                              ; preds = %308, %295
  %315 = load i32, i32* %9, align 4
  %316 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %317 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %316, i32 0, i32 5
  store i32 %315, i32* %317, align 8
  br label %318

318:                                              ; preds = %314, %254, %244
  %319 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %320 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %319, i32 0, i32 3
  %321 = load i32, i32* %320, align 8
  %322 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %323 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %322, i32 0, i32 2
  %324 = load i32, i32* %323, align 4
  %325 = icmp sgt i32 %321, %324
  br i1 %325, label %326, label %337

326:                                              ; preds = %318
  %327 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %328 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %327, i32 0, i32 3
  %329 = load i32, i32* %328, align 8
  %330 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %331 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %330, i32 0, i32 2
  store i32 %329, i32* %331, align 4
  %332 = load i32, i32* @FA__WRITTEN, align 4
  %333 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %334 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %333, i32 0, i32 6
  %335 = load i32, i32* %334, align 4
  %336 = or i32 %335, %332
  store i32 %336, i32* %334, align 4
  br label %337

337:                                              ; preds = %326, %318
  %338 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %339 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %338, i32 0, i32 7
  %340 = load %struct.TYPE_12__*, %struct.TYPE_12__** %339, align 8
  %341 = load i64, i64* %6, align 8
  %342 = call i32 @LEAVE_FF(%struct.TYPE_12__* %340, i64 %341)
  %343 = load i64, i64* %3, align 8
  ret i64 %343
}

declare dso_local i64 @validate(%struct.TYPE_11__*) #1

declare dso_local i32 @LEAVE_FF(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @SS(%struct.TYPE_12__*) #1

declare dso_local i32 @create_chain(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @ABORT(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @get_fat(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @clust2sect(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @disk_write(i32, i32, i32, i32) #1

declare dso_local i64 @disk_read(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
