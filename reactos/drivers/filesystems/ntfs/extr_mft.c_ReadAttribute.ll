; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_mft.c_ReadAttribute.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_mft.c_ReadAttribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i64, i32, i32 }
%struct.TYPE_11__ = type { i64*, i64, i32, i64, i64, i64, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64 }

@NonPagedPool = common dso_local global i32 0, align 4
@TAG_NTFS = common dso_local global i32 0, align 4
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i64 0, align 8
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ReadAttribute(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 6
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %80, label %30

30:                                               ; preds = %5
  %31 = load i64, i64* %9, align 8
  store i64 %31, i64* %22, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 6
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %32, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  store i64 0, i64* %6, align 8
  br label %374

41:                                               ; preds = %30
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %11, align 8
  %44 = add nsw i64 %42, %43
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 6
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %44, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %41
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 6
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %9, align 8
  %60 = sub nsw i64 %58, %59
  store i64 %60, i64* %11, align 8
  br label %61

61:                                               ; preds = %52, %41
  %62 = load i64, i64* %10, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 6
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = ptrtoint %struct.TYPE_10__* %65 to i64
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 6
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %66, %72
  %74 = load i64, i64* %22, align 8
  %75 = add nsw i64 %73, %74
  %76 = trunc i64 %75 to i32
  %77 = load i64, i64* %11, align 8
  %78 = call i32 @RtlCopyMemory(i64 %62, i32 %76, i64 %77)
  %79 = load i64, i64* %11, align 8
  store i64 %79, i64* %6, align 8
  br label %374

80:                                               ; preds = %5
  store i64 0, i64* %19, align 8
  %81 = load i32, i32* @NonPagedPool, align 4
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @TAG_NTFS, align 4
  %87 = call i64* @ExAllocatePoolWithTag(i32 %81, i32 %85, i32 %86)
  store i64* %87, i64** %21, align 8
  %88 = load i64*, i64** %21, align 8
  %89 = icmp eq i64* %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %80
  %91 = load i64, i64* @STATUS_INSUFFICIENT_RESOURCES, align 8
  store i64 %91, i64* %6, align 8
  br label %374

92:                                               ; preds = %80
  store i64 0, i64* %12, align 8
  store i64 0, i64* %17, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 7
  %95 = load i64*, i64** %21, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @ConvertLargeMCBToDataRuns(i32* %94, i64* %95, i32 %99, i64* %23)
  %101 = load i64*, i64** %21, align 8
  store i64* %101, i64** %13, align 8
  br label %102

102:                                              ; preds = %92, %141
  %103 = load i64*, i64** %13, align 8
  %104 = call i64* @DecodeRun(i64* %103, i32* %14, i64* %15)
  store i64* %104, i64** %13, align 8
  %105 = load i32, i32* %14, align 4
  %106 = icmp ne i32 %105, -1
  br i1 %106, label %107, label %115

107:                                              ; preds = %102
  %108 = load i64, i64* %12, align 8
  %109 = load i32, i32* %14, align 4
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %108, %110
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %16, align 4
  %113 = load i32, i32* %16, align 4
  %114 = sext i32 %113 to i64
  store i64 %114, i64* %12, align 8
  br label %116

115:                                              ; preds = %102
  store i32 -1, i32* %16, align 4
  br label %116

116:                                              ; preds = %115, %107
  %117 = load i64, i64* %9, align 8
  %118 = load i64, i64* %17, align 8
  %119 = icmp sge i64 %117, %118
  br i1 %119, label %120, label %132

120:                                              ; preds = %116
  %121 = load i64, i64* %9, align 8
  %122 = load i64, i64* %17, align 8
  %123 = load i64, i64* %15, align 8
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = mul nsw i64 %123, %127
  %129 = add nsw i64 %122, %128
  %130 = icmp slt i64 %121, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %120
  br label %150

132:                                              ; preds = %120, %116
  %133 = load i64*, i64** %13, align 8
  %134 = load i64, i64* %133, align 8
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %132
  %137 = load i64*, i64** %21, align 8
  %138 = load i32, i32* @TAG_NTFS, align 4
  %139 = call i32 @ExFreePoolWithTag(i64* %137, i32 %138)
  %140 = load i64, i64* %19, align 8
  store i64 %140, i64* %6, align 8
  br label %374

141:                                              ; preds = %132
  %142 = load i64, i64* %15, align 8
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = mul nsw i64 %142, %146
  %148 = load i64, i64* %17, align 8
  %149 = add nsw i64 %148, %147
  store i64 %149, i64* %17, align 8
  br label %102

150:                                              ; preds = %131
  %151 = load i64, i64* %15, align 8
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = mul nsw i64 %151, %155
  %157 = load i64, i64* %9, align 8
  %158 = load i64, i64* %17, align 8
  %159 = sub nsw i64 %157, %158
  %160 = sub nsw i64 %156, %159
  %161 = load i64, i64* %11, align 8
  %162 = call i64 @min(i64 %160, i64 %161)
  store i64 %162, i64* %18, align 8
  %163 = load i32, i32* %16, align 4
  %164 = icmp eq i32 %163, -1
  br i1 %164, label %165, label %170

165:                                              ; preds = %150
  %166 = load i64, i64* %10, align 8
  %167 = load i64, i64* %18, align 8
  %168 = call i32 @RtlZeroMemory(i64 %166, i64 %167)
  %169 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %169, i32* %20, align 4
  br label %195

170:                                              ; preds = %150
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* %16, align 4
  %175 = sext i32 %174 to i64
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = mul nsw i64 %175, %179
  %181 = load i64, i64* %9, align 8
  %182 = add nsw i64 %180, %181
  %183 = load i64, i64* %17, align 8
  %184 = sub nsw i64 %182, %183
  %185 = trunc i64 %184 to i32
  %186 = load i64, i64* %18, align 8
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = load i64, i64* %10, align 8
  %192 = trunc i64 %191 to i32
  %193 = load i32, i32* @FALSE, align 4
  %194 = call i32 @NtfsReadDisk(i32 %173, i32 %185, i64 %186, i32 %190, i32 %192, i32 %193)
  store i32 %194, i32* %20, align 4
  br label %195

195:                                              ; preds = %170, %165
  %196 = load i32, i32* %20, align 4
  %197 = call i64 @NT_SUCCESS(i32 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %341

199:                                              ; preds = %195
  %200 = load i64, i64* %18, align 8
  %201 = load i64, i64* %11, align 8
  %202 = sub nsw i64 %201, %200
  store i64 %202, i64* %11, align 8
  %203 = load i64, i64* %18, align 8
  %204 = load i64, i64* %10, align 8
  %205 = add nsw i64 %204, %203
  store i64 %205, i64* %10, align 8
  %206 = load i64, i64* %18, align 8
  %207 = load i64, i64* %19, align 8
  %208 = add nsw i64 %207, %206
  store i64 %208, i64* %19, align 8
  %209 = load i64, i64* %18, align 8
  %210 = load i64, i64* %15, align 8
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = mul nsw i64 %210, %214
  %216 = load i64, i64* %9, align 8
  %217 = load i64, i64* %17, align 8
  %218 = sub nsw i64 %216, %217
  %219 = sub nsw i64 %215, %218
  %220 = icmp eq i64 %209, %219
  br i1 %220, label %221, label %245

221:                                              ; preds = %199
  %222 = load i64, i64* %15, align 8
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = mul nsw i64 %222, %226
  %228 = load i64, i64* %17, align 8
  %229 = add nsw i64 %228, %227
  store i64 %229, i64* %17, align 8
  %230 = load i64*, i64** %13, align 8
  %231 = call i64* @DecodeRun(i64* %230, i32* %14, i64* %15)
  store i64* %231, i64** %13, align 8
  %232 = load i32, i32* %14, align 4
  %233 = sext i32 %232 to i64
  %234 = icmp ne i64 %233, -1
  br i1 %234, label %235, label %243

235:                                              ; preds = %221
  %236 = load i64, i64* %12, align 8
  %237 = load i32, i32* %14, align 4
  %238 = sext i32 %237 to i64
  %239 = add nsw i64 %236, %238
  %240 = trunc i64 %239 to i32
  store i32 %240, i32* %16, align 4
  %241 = load i32, i32* %16, align 4
  %242 = sext i32 %241 to i64
  store i64 %242, i64* %12, align 8
  br label %244

243:                                              ; preds = %221
  store i32 -1, i32* %16, align 4
  br label %244

244:                                              ; preds = %243, %235
  br label %245

245:                                              ; preds = %244, %199
  br label %246

246:                                              ; preds = %339, %245
  %247 = load i64, i64* %11, align 8
  %248 = icmp sgt i64 %247, 0
  br i1 %248, label %249, label %340

249:                                              ; preds = %246
  %250 = load i64, i64* %15, align 8
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = mul nsw i64 %250, %254
  %256 = load i64, i64* %11, align 8
  %257 = call i64 @min(i64 %255, i64 %256)
  store i64 %257, i64* %18, align 8
  %258 = load i32, i32* %16, align 4
  %259 = icmp eq i32 %258, -1
  br i1 %259, label %260, label %264

260:                                              ; preds = %249
  %261 = load i64, i64* %10, align 8
  %262 = load i64, i64* %18, align 8
  %263 = call i32 @RtlZeroMemory(i64 %261, i64 %262)
  br label %290

264:                                              ; preds = %249
  %265 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 8
  %268 = load i32, i32* %16, align 4
  %269 = sext i32 %268 to i64
  %270 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = mul nsw i64 %269, %273
  %275 = trunc i64 %274 to i32
  %276 = load i64, i64* %18, align 8
  %277 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 8
  %281 = load i64, i64* %10, align 8
  %282 = trunc i64 %281 to i32
  %283 = load i32, i32* @FALSE, align 4
  %284 = call i32 @NtfsReadDisk(i32 %267, i32 %275, i64 %276, i32 %280, i32 %282, i32 %283)
  store i32 %284, i32* %20, align 4
  %285 = load i32, i32* %20, align 4
  %286 = call i64 @NT_SUCCESS(i32 %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %289, label %288

288:                                              ; preds = %264
  br label %340

289:                                              ; preds = %264
  br label %290

290:                                              ; preds = %289, %260
  %291 = load i64, i64* %18, align 8
  %292 = load i64, i64* %11, align 8
  %293 = sub nsw i64 %292, %291
  store i64 %293, i64* %11, align 8
  %294 = load i64, i64* %18, align 8
  %295 = load i64, i64* %10, align 8
  %296 = add nsw i64 %295, %294
  store i64 %296, i64* %10, align 8
  %297 = load i64, i64* %18, align 8
  %298 = load i64, i64* %19, align 8
  %299 = add nsw i64 %298, %297
  store i64 %299, i64* %19, align 8
  %300 = load i64, i64* %11, align 8
  %301 = icmp eq i64 %300, 0
  br i1 %301, label %302, label %312

302:                                              ; preds = %290
  %303 = load i64, i64* %18, align 8
  %304 = load i64, i64* %15, align 8
  %305 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %306 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = mul nsw i64 %304, %308
  %310 = icmp ne i64 %303, %309
  br i1 %310, label %311, label %312

311:                                              ; preds = %302
  br label %340

312:                                              ; preds = %302, %290
  %313 = load i64*, i64** %13, align 8
  %314 = load i64, i64* %313, align 8
  %315 = icmp eq i64 %314, 0
  br i1 %315, label %316, label %317

316:                                              ; preds = %312
  br label %340

317:                                              ; preds = %312
  %318 = load i64, i64* %15, align 8
  %319 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %320 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %320, i32 0, i32 0
  %322 = load i64, i64* %321, align 8
  %323 = mul nsw i64 %318, %322
  %324 = load i64, i64* %17, align 8
  %325 = add nsw i64 %324, %323
  store i64 %325, i64* %17, align 8
  %326 = load i64*, i64** %13, align 8
  %327 = call i64* @DecodeRun(i64* %326, i32* %14, i64* %15)
  store i64* %327, i64** %13, align 8
  %328 = load i32, i32* %14, align 4
  %329 = icmp ne i32 %328, -1
  br i1 %329, label %330, label %338

330:                                              ; preds = %317
  %331 = load i64, i64* %12, align 8
  %332 = load i32, i32* %14, align 4
  %333 = sext i32 %332 to i64
  %334 = add nsw i64 %331, %333
  %335 = trunc i64 %334 to i32
  store i32 %335, i32* %16, align 4
  %336 = load i32, i32* %16, align 4
  %337 = sext i32 %336 to i64
  store i64 %337, i64* %12, align 8
  br label %339

338:                                              ; preds = %317
  store i32 -1, i32* %16, align 4
  br label %339

339:                                              ; preds = %338, %330
  br label %246

340:                                              ; preds = %316, %311, %288, %246
  br label %341

341:                                              ; preds = %340, %195
  %342 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %343 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %342, i32 0, i32 6
  %344 = load %struct.TYPE_10__*, %struct.TYPE_10__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %352

348:                                              ; preds = %341
  %349 = load i64*, i64** %21, align 8
  %350 = load i32, i32* @TAG_NTFS, align 4
  %351 = call i32 @ExFreePoolWithTag(i64* %349, i32 %350)
  br label %352

352:                                              ; preds = %348, %341
  %353 = load i64*, i64** %13, align 8
  %354 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %355 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %354, i32 0, i32 0
  store i64* %353, i64** %355, align 8
  %356 = load i64, i64* %9, align 8
  %357 = load i64, i64* %19, align 8
  %358 = add nsw i64 %356, %357
  %359 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %360 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %359, i32 0, i32 5
  store i64 %358, i64* %360, align 8
  %361 = load i32, i32* %16, align 4
  %362 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %363 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %362, i32 0, i32 2
  store i32 %361, i32* %363, align 8
  %364 = load i64, i64* %15, align 8
  %365 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %366 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %365, i32 0, i32 3
  store i64 %364, i64* %366, align 8
  %367 = load i64, i64* %12, align 8
  %368 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %369 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %368, i32 0, i32 1
  store i64 %367, i64* %369, align 8
  %370 = load i64, i64* %17, align 8
  %371 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %372 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %371, i32 0, i32 4
  store i64 %370, i64* %372, align 8
  %373 = load i64, i64* %19, align 8
  store i64 %373, i64* %6, align 8
  br label %374

374:                                              ; preds = %352, %136, %90, %61, %40
  %375 = load i64, i64* %6, align 8
  ret i64 %375
}

declare dso_local i32 @RtlCopyMemory(i64, i32, i64) #1

declare dso_local i64* @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local i32 @ConvertLargeMCBToDataRuns(i32*, i64*, i32, i64*) #1

declare dso_local i64* @DecodeRun(i64*, i32*, i64*) #1

declare dso_local i32 @ExFreePoolWithTag(i64*, i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @RtlZeroMemory(i64, i64) #1

declare dso_local i32 @NtfsReadDisk(i32, i32, i64, i32, i32, i32) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
