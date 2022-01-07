; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_flushthread.c_partial_stripe_read.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_flushthread.c_partial_stripe_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_12__*, %struct.TYPE_13__** }
%struct.TYPE_12__ = type { i32, i64, i32 }
%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_17__ = type { i64 }

@.str = private unnamed_addr constant [30 x i8] c"sync_read_phys returned %08x\0A\00", align 1
@BLOCK_FLAG_RAID5 = common dso_local global i32 0, align 4
@NonPagedPool = common dso_local global i32 0, align 4
@ALLOC_TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@STATUS_UNEXPECTED_IO_ERROR = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_16__*, %struct.TYPE_14__*, i64, i64, i64, i64)* @partial_stripe_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @partial_stripe_read(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, %struct.TYPE_14__* %2, i64 %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_17__*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %10, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sdiv i32 %33, %37
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %17, align 8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i64 1
  %44 = bitcast %struct.TYPE_12__* %43 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %44, %struct.TYPE_17__** %18, align 8
  br label %45

45:                                               ; preds = %668, %7
  %46 = load i64, i64* %15, align 8
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %675

48:                                               ; preds = %45
  %49 = load i64, i64* %14, align 8
  %50 = load i64, i64* %15, align 8
  %51 = add nsw i64 %49, %50
  %52 = load i64, i64* %14, align 8
  %53 = load i64, i64* %17, align 8
  %54 = load i64, i64* %14, align 8
  %55 = load i64, i64* %17, align 8
  %56 = srem i64 %54, %55
  %57 = sub nsw i64 %53, %56
  %58 = add nsw i64 %52, %57
  %59 = call i64 @min(i64 %51, i64 %58)
  %60 = load i64, i64* %14, align 8
  %61 = sub nsw i64 %59, %60
  store i64 %61, i64* %19, align 8
  %62 = load i64, i64* %13, align 8
  %63 = load i64, i64* %14, align 8
  %64 = load i64, i64* %17, align 8
  %65 = sdiv i64 %63, %64
  %66 = add nsw i64 %62, %65
  %67 = add nsw i64 %66, 1
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = srem i64 %67, %72
  store i64 %73, i64* %20, align 8
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %75, align 8
  %77 = load i64, i64* %20, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %76, i64 %77
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %144

83:                                               ; preds = %48
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %85, align 8
  %87 = load i64, i64* %20, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %86, i64 %87
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %93, align 8
  %95 = load i64, i64* %20, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %94, i64 %95
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %101 = load i64, i64* %20, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %12, align 8
  %106 = add nsw i64 %104, %105
  %107 = load i64, i64* %14, align 8
  %108 = load i64, i64* %17, align 8
  %109 = srem i64 %107, %108
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = mul nsw i64 %109, %114
  %116 = add nsw i64 %106, %115
  %117 = load i64, i64* %19, align 8
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = mul nsw i64 %117, %122
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i64, i64* %14, align 8
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  %133 = mul nsw i64 %127, %132
  %134 = getelementptr inbounds i32, i32* %126, i64 %133
  %135 = call i32 @sync_read_phys(i64 %91, i32 %99, i64 %116, i64 %123, i32* %134, i32 0)
  store i32 %135, i32* %16, align 4
  %136 = load i32, i32* %16, align 4
  %137 = call i32 @NT_SUCCESS(i32 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %83
  %140 = load i32, i32* %16, align 4
  %141 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %140)
  %142 = load i32, i32* %16, align 4
  store i32 %142, i32* %8, align 4
  br label %677

143:                                              ; preds = %83
  br label %668

144:                                              ; preds = %48
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @BLOCK_FLAG_RAID5, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %350

153:                                              ; preds = %144
  %154 = load i32, i32* @NonPagedPool, align 4
  %155 = load i64, i64* %19, align 8
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = sext i32 %159 to i64
  %161 = mul nsw i64 %155, %160
  %162 = trunc i64 %161 to i32
  %163 = load i32, i32* @ALLOC_TAG, align 4
  %164 = call i32* @ExAllocatePoolWithTag(i32 %154, i32 %162, i32 %163)
  store i32* %164, i32** %22, align 8
  %165 = load i32*, i32** %22, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %170, label %167

167:                                              ; preds = %153
  %168 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %169 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %169, i32* %8, align 4
  br label %677

170:                                              ; preds = %153
  store i64 0, i64* %21, align 8
  br label %171

171:                                              ; preds = %344, %170
  %172 = load i64, i64* %21, align 8
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = icmp slt i64 %172, %177
  br i1 %178, label %179, label %347

179:                                              ; preds = %171
  %180 = load i64, i64* %21, align 8
  %181 = load i64, i64* %20, align 8
  %182 = icmp ne i64 %180, %181
  br i1 %182, label %183, label %343

183:                                              ; preds = %179
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 1
  %186 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %185, align 8
  %187 = load i64, i64* %21, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %186, i64 %187
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %197, label %193

193:                                              ; preds = %183
  %194 = load i32*, i32** %22, align 8
  %195 = call i32 @ExFreePool(i32* %194)
  %196 = load i32, i32* @STATUS_UNEXPECTED_IO_ERROR, align 4
  store i32 %196, i32* %8, align 4
  br label %677

197:                                              ; preds = %183
  %198 = load i64, i64* %21, align 8
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %206, label %200

200:                                              ; preds = %197
  %201 = load i64, i64* %20, align 8
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %203, label %269

203:                                              ; preds = %200
  %204 = load i64, i64* %21, align 8
  %205 = icmp eq i64 %204, 1
  br i1 %205, label %206, label %269

206:                                              ; preds = %203, %197
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 1
  %209 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %208, align 8
  %210 = load i64, i64* %21, align 8
  %211 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %209, i64 %210
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 1
  %217 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %216, align 8
  %218 = load i64, i64* %21, align 8
  %219 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %217, i64 %218
  %220 = load %struct.TYPE_13__*, %struct.TYPE_13__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %224 = load i64, i64* %21, align 8
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %223, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* %12, align 8
  %229 = add nsw i64 %227, %228
  %230 = load i64, i64* %14, align 8
  %231 = load i64, i64* %17, align 8
  %232 = srem i64 %230, %231
  %233 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = sext i32 %236 to i64
  %238 = mul nsw i64 %232, %237
  %239 = add nsw i64 %229, %238
  %240 = load i64, i64* %19, align 8
  %241 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = sext i32 %244 to i64
  %246 = mul nsw i64 %240, %245
  %247 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %247, i32 0, i32 0
  %249 = load i32*, i32** %248, align 8
  %250 = load i64, i64* %14, align 8
  %251 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = sext i32 %254 to i64
  %256 = mul nsw i64 %250, %255
  %257 = getelementptr inbounds i32, i32* %249, i64 %256
  %258 = call i32 @sync_read_phys(i64 %214, i32 %222, i64 %239, i64 %246, i32* %257, i32 0)
  store i32 %258, i32* %16, align 4
  %259 = load i32, i32* %16, align 4
  %260 = call i32 @NT_SUCCESS(i32 %259)
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %268, label %262

262:                                              ; preds = %206
  %263 = load i32, i32* %16, align 4
  %264 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %263)
  %265 = load i32*, i32** %22, align 8
  %266 = call i32 @ExFreePool(i32* %265)
  %267 = load i32, i32* %16, align 4
  store i32 %267, i32* %8, align 4
  br label %677

268:                                              ; preds = %206
  br label %342

269:                                              ; preds = %203, %200
  %270 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %271 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %270, i32 0, i32 1
  %272 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %271, align 8
  %273 = load i64, i64* %21, align 8
  %274 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %272, i64 %273
  %275 = load %struct.TYPE_13__*, %struct.TYPE_13__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %275, i32 0, i32 1
  %277 = load i64, i64* %276, align 8
  %278 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %279 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %278, i32 0, i32 1
  %280 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %279, align 8
  %281 = load i64, i64* %21, align 8
  %282 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %280, i64 %281
  %283 = load %struct.TYPE_13__*, %struct.TYPE_13__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %287 = load i64, i64* %21, align 8
  %288 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %286, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = load i64, i64* %12, align 8
  %292 = add nsw i64 %290, %291
  %293 = load i64, i64* %14, align 8
  %294 = load i64, i64* %17, align 8
  %295 = srem i64 %293, %294
  %296 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %297 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = sext i32 %299 to i64
  %301 = mul nsw i64 %295, %300
  %302 = add nsw i64 %292, %301
  %303 = load i64, i64* %19, align 8
  %304 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %305 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = sext i32 %307 to i64
  %309 = mul nsw i64 %303, %308
  %310 = load i32*, i32** %22, align 8
  %311 = call i32 @sync_read_phys(i64 %277, i32 %285, i64 %302, i64 %309, i32* %310, i32 0)
  store i32 %311, i32* %16, align 4
  %312 = load i32, i32* %16, align 4
  %313 = call i32 @NT_SUCCESS(i32 %312)
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %321, label %315

315:                                              ; preds = %269
  %316 = load i32, i32* %16, align 4
  %317 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %316)
  %318 = load i32*, i32** %22, align 8
  %319 = call i32 @ExFreePool(i32* %318)
  %320 = load i32, i32* %16, align 4
  store i32 %320, i32* %8, align 4
  br label %677

321:                                              ; preds = %269
  %322 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %323 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %322, i32 0, i32 0
  %324 = load i32*, i32** %323, align 8
  %325 = load i64, i64* %14, align 8
  %326 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %327 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  %330 = sext i32 %329 to i64
  %331 = mul nsw i64 %325, %330
  %332 = getelementptr inbounds i32, i32* %324, i64 %331
  %333 = load i32*, i32** %22, align 8
  %334 = load i64, i64* %19, align 8
  %335 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %336 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 4
  %339 = sext i32 %338 to i64
  %340 = mul nsw i64 %334, %339
  %341 = call i32 @do_xor(i32* %332, i32* %333, i64 %340)
  br label %342

342:                                              ; preds = %321, %268
  br label %343

343:                                              ; preds = %342, %179
  br label %344

344:                                              ; preds = %343
  %345 = load i64, i64* %21, align 8
  %346 = add nsw i64 %345, 1
  store i64 %346, i64* %21, align 8
  br label %171

347:                                              ; preds = %171
  %348 = load i32*, i32** %22, align 8
  %349 = call i32 @ExFreePool(i32* %348)
  br label %667

350:                                              ; preds = %144
  store i64 0, i64* %28, align 8
  %351 = load i32, i32* @NonPagedPool, align 4
  %352 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %353 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %352, i32 0, i32 0
  %354 = load %struct.TYPE_12__*, %struct.TYPE_12__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %354, i32 0, i32 1
  %356 = load i64, i64* %355, align 8
  %357 = add nsw i64 %356, 2
  %358 = load i64, i64* %19, align 8
  %359 = mul nsw i64 %357, %358
  %360 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %361 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 4
  %364 = sext i32 %363 to i64
  %365 = mul nsw i64 %359, %364
  %366 = trunc i64 %365 to i32
  %367 = load i32, i32* @ALLOC_TAG, align 4
  %368 = call i32* @ExAllocatePoolWithTag(i32 %351, i32 %366, i32 %367)
  store i32* %368, i32** %23, align 8
  %369 = load i32*, i32** %23, align 8
  %370 = icmp ne i32* %369, null
  br i1 %370, label %374, label %371

371:                                              ; preds = %350
  %372 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %373 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %373, i32* %8, align 4
  br label %677

374:                                              ; preds = %350
  %375 = load i64, i64* %13, align 8
  %376 = add nsw i64 %375, 1
  %377 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %378 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %377, i32 0, i32 0
  %379 = load %struct.TYPE_12__*, %struct.TYPE_12__** %378, align 8
  %380 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %379, i32 0, i32 1
  %381 = load i64, i64* %380, align 8
  %382 = srem i64 %376, %381
  store i64 %382, i64* %25, align 8
  store i64 0, i64* %24, align 8
  br label %383

383:                                              ; preds = %491, %374
  %384 = load i64, i64* %24, align 8
  %385 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %386 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %385, i32 0, i32 0
  %387 = load %struct.TYPE_12__*, %struct.TYPE_12__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %387, i32 0, i32 1
  %389 = load i64, i64* %388, align 8
  %390 = icmp slt i64 %384, %389
  br i1 %390, label %391, label %494

391:                                              ; preds = %383
  %392 = load i64, i64* %25, align 8
  %393 = load i64, i64* %20, align 8
  %394 = icmp ne i64 %392, %393
  br i1 %394, label %395, label %480

395:                                              ; preds = %391
  %396 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %397 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %396, i32 0, i32 1
  %398 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %397, align 8
  %399 = load i64, i64* %25, align 8
  %400 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %398, i64 %399
  %401 = load %struct.TYPE_13__*, %struct.TYPE_13__** %400, align 8
  %402 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %401, i32 0, i32 1
  %403 = load i64, i64* %402, align 8
  %404 = icmp ne i64 %403, 0
  br i1 %404, label %405, label %468

405:                                              ; preds = %395
  %406 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %407 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %406, i32 0, i32 1
  %408 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %407, align 8
  %409 = load i64, i64* %25, align 8
  %410 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %408, i64 %409
  %411 = load %struct.TYPE_13__*, %struct.TYPE_13__** %410, align 8
  %412 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %411, i32 0, i32 1
  %413 = load i64, i64* %412, align 8
  %414 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %415 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %414, i32 0, i32 1
  %416 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %415, align 8
  %417 = load i64, i64* %25, align 8
  %418 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %416, i64 %417
  %419 = load %struct.TYPE_13__*, %struct.TYPE_13__** %418, align 8
  %420 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %419, i32 0, i32 0
  %421 = load i32, i32* %420, align 8
  %422 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %423 = load i64, i64* %25, align 8
  %424 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %422, i64 %423
  %425 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %424, i32 0, i32 0
  %426 = load i64, i64* %425, align 8
  %427 = load i64, i64* %12, align 8
  %428 = add nsw i64 %426, %427
  %429 = load i64, i64* %14, align 8
  %430 = load i64, i64* %17, align 8
  %431 = srem i64 %429, %430
  %432 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %433 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %432, i32 0, i32 0
  %434 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %433, i32 0, i32 0
  %435 = load i32, i32* %434, align 4
  %436 = sext i32 %435 to i64
  %437 = mul nsw i64 %431, %436
  %438 = add nsw i64 %428, %437
  %439 = load i64, i64* %19, align 8
  %440 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %441 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %440, i32 0, i32 0
  %442 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %441, i32 0, i32 0
  %443 = load i32, i32* %442, align 4
  %444 = sext i32 %443 to i64
  %445 = mul nsw i64 %439, %444
  %446 = load i32*, i32** %23, align 8
  %447 = load i64, i64* %24, align 8
  %448 = load i64, i64* %19, align 8
  %449 = mul nsw i64 %447, %448
  %450 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %451 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %450, i32 0, i32 0
  %452 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %451, i32 0, i32 0
  %453 = load i32, i32* %452, align 4
  %454 = sext i32 %453 to i64
  %455 = mul nsw i64 %449, %454
  %456 = getelementptr inbounds i32, i32* %446, i64 %455
  %457 = call i32 @sync_read_phys(i64 %413, i32 %421, i64 %438, i64 %445, i32* %456, i32 0)
  store i32 %457, i32* %16, align 4
  %458 = load i32, i32* %16, align 4
  %459 = call i32 @NT_SUCCESS(i32 %458)
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %467, label %461

461:                                              ; preds = %405
  %462 = load i32, i32* %16, align 4
  %463 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %462)
  %464 = load i64, i64* %28, align 8
  %465 = add nsw i64 %464, 1
  store i64 %465, i64* %28, align 8
  %466 = load i64, i64* %24, align 8
  store i64 %466, i64* %27, align 8
  br label %467

467:                                              ; preds = %461, %405
  br label %472

468:                                              ; preds = %395
  %469 = load i64, i64* %28, align 8
  %470 = add nsw i64 %469, 1
  store i64 %470, i64* %28, align 8
  %471 = load i64, i64* %24, align 8
  store i64 %471, i64* %27, align 8
  br label %472

472:                                              ; preds = %468, %467
  %473 = load i64, i64* %28, align 8
  %474 = icmp sgt i64 %473, 1
  br i1 %474, label %475, label %479

475:                                              ; preds = %472
  %476 = load i32*, i32** %23, align 8
  %477 = call i32 @ExFreePool(i32* %476)
  %478 = load i32, i32* @STATUS_UNEXPECTED_IO_ERROR, align 4
  store i32 %478, i32* %8, align 4
  br label %677

479:                                              ; preds = %472
  br label %482

480:                                              ; preds = %391
  %481 = load i64, i64* %24, align 8
  store i64 %481, i64* %26, align 8
  br label %482

482:                                              ; preds = %480, %479
  %483 = load i64, i64* %25, align 8
  %484 = add nsw i64 %483, 1
  %485 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %486 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %485, i32 0, i32 0
  %487 = load %struct.TYPE_12__*, %struct.TYPE_12__** %486, align 8
  %488 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %487, i32 0, i32 1
  %489 = load i64, i64* %488, align 8
  %490 = srem i64 %484, %489
  store i64 %490, i64* %25, align 8
  br label %491

491:                                              ; preds = %482
  %492 = load i64, i64* %24, align 8
  %493 = add nsw i64 %492, 1
  store i64 %493, i64* %24, align 8
  br label %383

494:                                              ; preds = %383
  %495 = load i64, i64* %28, align 8
  %496 = icmp eq i64 %495, 0
  br i1 %496, label %506, label %497

497:                                              ; preds = %494
  %498 = load i64, i64* %27, align 8
  %499 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %500 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %499, i32 0, i32 0
  %501 = load %struct.TYPE_12__*, %struct.TYPE_12__** %500, align 8
  %502 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %501, i32 0, i32 1
  %503 = load i64, i64* %502, align 8
  %504 = sub nsw i64 %503, 1
  %505 = icmp eq i64 %498, %504
  br i1 %505, label %506, label %597

506:                                              ; preds = %497, %494
  store i64 0, i64* %24, align 8
  br label %507

507:                                              ; preds = %593, %506
  %508 = load i64, i64* %24, align 8
  %509 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %510 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %509, i32 0, i32 0
  %511 = load %struct.TYPE_12__*, %struct.TYPE_12__** %510, align 8
  %512 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %511, i32 0, i32 1
  %513 = load i64, i64* %512, align 8
  %514 = sub nsw i64 %513, 1
  %515 = icmp slt i64 %508, %514
  br i1 %515, label %516, label %596

516:                                              ; preds = %507
  %517 = load i64, i64* %24, align 8
  %518 = load i64, i64* %26, align 8
  %519 = icmp ne i64 %517, %518
  br i1 %519, label %520, label %592

520:                                              ; preds = %516
  %521 = load i64, i64* %24, align 8
  %522 = icmp eq i64 %521, 0
  br i1 %522, label %529, label %523

523:                                              ; preds = %520
  %524 = load i64, i64* %24, align 8
  %525 = icmp eq i64 %524, 1
  br i1 %525, label %526, label %560

526:                                              ; preds = %523
  %527 = load i64, i64* %26, align 8
  %528 = icmp eq i64 %527, 0
  br i1 %528, label %529, label %560

529:                                              ; preds = %526, %520
  %530 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %531 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %530, i32 0, i32 0
  %532 = load i32*, i32** %531, align 8
  %533 = load i64, i64* %14, align 8
  %534 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %535 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %534, i32 0, i32 0
  %536 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %535, i32 0, i32 0
  %537 = load i32, i32* %536, align 4
  %538 = sext i32 %537 to i64
  %539 = mul nsw i64 %533, %538
  %540 = getelementptr inbounds i32, i32* %532, i64 %539
  %541 = load i32*, i32** %23, align 8
  %542 = load i64, i64* %24, align 8
  %543 = load i64, i64* %19, align 8
  %544 = mul nsw i64 %542, %543
  %545 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %546 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %545, i32 0, i32 0
  %547 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %546, i32 0, i32 0
  %548 = load i32, i32* %547, align 4
  %549 = sext i32 %548 to i64
  %550 = mul nsw i64 %544, %549
  %551 = getelementptr inbounds i32, i32* %541, i64 %550
  %552 = load i64, i64* %19, align 8
  %553 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %554 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %553, i32 0, i32 0
  %555 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %554, i32 0, i32 0
  %556 = load i32, i32* %555, align 4
  %557 = sext i32 %556 to i64
  %558 = mul nsw i64 %552, %557
  %559 = call i32 @RtlCopyMemory(i32* %540, i32* %551, i64 %558)
  br label %591

560:                                              ; preds = %526, %523
  %561 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %562 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %561, i32 0, i32 0
  %563 = load i32*, i32** %562, align 8
  %564 = load i64, i64* %14, align 8
  %565 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %566 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %565, i32 0, i32 0
  %567 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %566, i32 0, i32 0
  %568 = load i32, i32* %567, align 4
  %569 = sext i32 %568 to i64
  %570 = mul nsw i64 %564, %569
  %571 = getelementptr inbounds i32, i32* %563, i64 %570
  %572 = load i32*, i32** %23, align 8
  %573 = load i64, i64* %24, align 8
  %574 = load i64, i64* %19, align 8
  %575 = mul nsw i64 %573, %574
  %576 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %577 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %576, i32 0, i32 0
  %578 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %577, i32 0, i32 0
  %579 = load i32, i32* %578, align 4
  %580 = sext i32 %579 to i64
  %581 = mul nsw i64 %575, %580
  %582 = getelementptr inbounds i32, i32* %572, i64 %581
  %583 = load i64, i64* %19, align 8
  %584 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %585 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %584, i32 0, i32 0
  %586 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %585, i32 0, i32 0
  %587 = load i32, i32* %586, align 4
  %588 = sext i32 %587 to i64
  %589 = mul nsw i64 %583, %588
  %590 = call i32 @do_xor(i32* %571, i32* %582, i64 %589)
  br label %591

591:                                              ; preds = %560, %529
  br label %592

592:                                              ; preds = %591, %516
  br label %593

593:                                              ; preds = %592
  %594 = load i64, i64* %24, align 8
  %595 = add nsw i64 %594, 1
  store i64 %595, i64* %24, align 8
  br label %507

596:                                              ; preds = %507
  br label %664

597:                                              ; preds = %497
  %598 = load i32*, i32** %23, align 8
  %599 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %600 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %599, i32 0, i32 0
  %601 = load %struct.TYPE_12__*, %struct.TYPE_12__** %600, align 8
  %602 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %601, i32 0, i32 1
  %603 = load i64, i64* %602, align 8
  %604 = trunc i64 %603 to i32
  %605 = load i64, i64* %19, align 8
  %606 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %607 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %606, i32 0, i32 0
  %608 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %607, i32 0, i32 0
  %609 = load i32, i32* %608, align 4
  %610 = sext i32 %609 to i64
  %611 = mul nsw i64 %605, %610
  %612 = load i64, i64* %26, align 8
  %613 = load i64, i64* %27, align 8
  %614 = load i32*, i32** %23, align 8
  %615 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %616 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %615, i32 0, i32 0
  %617 = load %struct.TYPE_12__*, %struct.TYPE_12__** %616, align 8
  %618 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %617, i32 0, i32 1
  %619 = load i64, i64* %618, align 8
  %620 = load i64, i64* %19, align 8
  %621 = mul nsw i64 %619, %620
  %622 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %623 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %622, i32 0, i32 0
  %624 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %623, i32 0, i32 0
  %625 = load i32, i32* %624, align 4
  %626 = sext i32 %625 to i64
  %627 = mul nsw i64 %621, %626
  %628 = getelementptr inbounds i32, i32* %614, i64 %627
  %629 = call i32 @raid6_recover2(i32* %598, i32 %604, i64 %611, i64 %612, i64 %613, i32* %628)
  %630 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %631 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %630, i32 0, i32 0
  %632 = load i32*, i32** %631, align 8
  %633 = load i64, i64* %14, align 8
  %634 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %635 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %634, i32 0, i32 0
  %636 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %635, i32 0, i32 0
  %637 = load i32, i32* %636, align 4
  %638 = sext i32 %637 to i64
  %639 = mul nsw i64 %633, %638
  %640 = getelementptr inbounds i32, i32* %632, i64 %639
  %641 = load i32*, i32** %23, align 8
  %642 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %643 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %642, i32 0, i32 0
  %644 = load %struct.TYPE_12__*, %struct.TYPE_12__** %643, align 8
  %645 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %644, i32 0, i32 1
  %646 = load i64, i64* %645, align 8
  %647 = load i64, i64* %19, align 8
  %648 = mul nsw i64 %646, %647
  %649 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %650 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %649, i32 0, i32 0
  %651 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %650, i32 0, i32 0
  %652 = load i32, i32* %651, align 4
  %653 = sext i32 %652 to i64
  %654 = mul nsw i64 %648, %653
  %655 = getelementptr inbounds i32, i32* %641, i64 %654
  %656 = load i64, i64* %19, align 8
  %657 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %658 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %657, i32 0, i32 0
  %659 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %658, i32 0, i32 0
  %660 = load i32, i32* %659, align 4
  %661 = sext i32 %660 to i64
  %662 = mul nsw i64 %656, %661
  %663 = call i32 @RtlCopyMemory(i32* %640, i32* %655, i64 %662)
  br label %664

664:                                              ; preds = %597, %596
  %665 = load i32*, i32** %23, align 8
  %666 = call i32 @ExFreePool(i32* %665)
  br label %667

667:                                              ; preds = %664, %347
  br label %668

668:                                              ; preds = %667, %143
  %669 = load i64, i64* %19, align 8
  %670 = load i64, i64* %14, align 8
  %671 = add nsw i64 %670, %669
  store i64 %671, i64* %14, align 8
  %672 = load i64, i64* %19, align 8
  %673 = load i64, i64* %15, align 8
  %674 = sub nsw i64 %673, %672
  store i64 %674, i64* %15, align 8
  br label %45

675:                                              ; preds = %45
  %676 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %676, i32* %8, align 4
  br label %677

677:                                              ; preds = %675, %475, %371, %315, %262, %193, %167, %139
  %678 = load i32, i32* %8, align 4
  ret i32 %678
}

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @sync_read_phys(i64, i32, i64, i64, i32*, i32) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32* @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local i32 @ExFreePool(i32*) #1

declare dso_local i32 @do_xor(i32*, i32*, i64) #1

declare dso_local i32 @RtlCopyMemory(i32*, i32*, i64) #1

declare dso_local i32 @raid6_recover2(i32*, i32, i64, i64, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
