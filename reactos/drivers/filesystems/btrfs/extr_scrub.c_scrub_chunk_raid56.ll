; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_scrub.c_scrub_chunk_raid56.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_scrub.c_scrub_chunk_raid56.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_20__, i32 }
%struct.TYPE_20__ = type { i64, i64 }
%struct.TYPE_25__ = type { i64, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32, i32, i64 }
%struct.TYPE_26__ = type { i32, i64, i64 }
%struct.TYPE_23__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64, i64, i64 }

@BLOCK_FLAG_RAID6 = common dso_local global i32 0, align 4
@TYPE_METADATA_ITEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"find_item returned %08x\0A\00", align 1
@TYPE_EXTENT_ITEM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"%I64x\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"extent %I64x has size less than sector_size (%I64x < %x)\0A\00", align 1
@STATUS_INTERNAL_ERROR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"scrub_chunk_raid56_stripe_run returned %08x\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_24__*, %struct.TYPE_25__*, i64*, i32*)* @scrub_chunk_raid56 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @scrub_chunk_raid56(%struct.TYPE_24__* %0, %struct.TYPE_25__* %1, i64* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_26__, align 8
  %12 = alloca %struct.TYPE_23__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_23__, align 8
  %22 = alloca i64, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %6, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 0, i64* %18, align 8
  store i32 0, i32* %19, align 4
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @BLOCK_FLAG_RAID6, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 2, i32 1
  store i32 %32, i32* %20, align 4
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %20, align 4
  %39 = sub nsw i32 %37, %38
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = mul nsw i32 %39, %44
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %14, align 8
  %47 = load i64*, i64** %8, align 8
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %48, %51
  %53 = load i64, i64* %14, align 8
  %54 = sdiv i64 %52, %53
  store i64 %54, i64* %15, align 8
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %15, align 8
  %59 = load i64, i64* %14, align 8
  %60 = mul nsw i64 %58, %59
  %61 = add nsw i64 %57, %60
  %62 = load i64*, i64** %8, align 8
  store i64 %61, i64* %62, align 8
  %63 = load i64*, i64** %8, align 8
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 2
  store i64 %64, i64* %65, align 8
  %66 = load i64, i64* @TYPE_METADATA_ITEM, align 8
  %67 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 1
  store i64 %66, i64* %67, align 8
  %68 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 0
  store i32 -1, i32* %68, align 8
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @find_item(%struct.TYPE_24__* %69, i32 %72, %struct.TYPE_23__* %12, %struct.TYPE_26__* %11, i32 0, i32* null)
  store i64 %73, i64* %10, align 8
  %74 = load i64, i64* %10, align 8
  %75 = call i32 @NT_SUCCESS(i64 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %4
  %78 = load i64, i64* %10, align 8
  %79 = call i32 (i8*, i64, ...) @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %78)
  %80 = load i64, i64* %10, align 8
  store i64 %80, i64* %5, align 8
  br label %277

81:                                               ; preds = %4
  %82 = load i32*, i32** %9, align 8
  store i32 0, i32* %82, align 4
  br label %83

83:                                               ; preds = %245, %81
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 0
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %91, %96
  %98 = icmp sge i64 %88, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %83
  br label %248

100:                                              ; preds = %83
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 0
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64*, i64** %8, align 8
  %107 = load i64, i64* %106, align 8
  %108 = icmp sge i64 %105, %107
  br i1 %108, label %109, label %236

109:                                              ; preds = %100
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 0
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @TYPE_EXTENT_ITEM, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %125, label %117

117:                                              ; preds = %109
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 0
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @TYPE_METADATA_ITEM, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %236

125:                                              ; preds = %117, %109
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 0
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @TYPE_METADATA_ITEM, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %138

133:                                              ; preds = %125
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  br label %144

138:                                              ; preds = %125
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 0
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  br label %144

144:                                              ; preds = %138, %133
  %145 = phi i64 [ %137, %133 ], [ %143, %138 ]
  store i64 %145, i64* %22, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 0
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %150)
  %152 = load i64, i64* %22, align 8
  %153 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = icmp slt i64 %152, %156
  br i1 %157, label %158, label %170

158:                                              ; preds = %144
  %159 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 0
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = call i32 (i8*, i64, ...) @ERR(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i64 %163, i64 %167)
  %169 = load i64, i64* @STATUS_INTERNAL_ERROR, align 8
  store i64 %169, i64* %5, align 8
  br label %277

170:                                              ; preds = %144
  %171 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 0
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = sub nsw i64 %175, %178
  %180 = load i64, i64* %14, align 8
  %181 = sdiv i64 %179, %180
  store i64 %181, i64* %15, align 8
  %182 = load i32*, i32** %9, align 8
  %183 = load i32, i32* %182, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %206

185:                                              ; preds = %170
  %186 = load i64, i64* %15, align 8
  %187 = load i64, i64* %17, align 8
  %188 = add nsw i64 %187, 1
  %189 = icmp sgt i64 %186, %188
  br i1 %189, label %190, label %205

190:                                              ; preds = %185
  %191 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %192 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %193 = load i64, i64* %16, align 8
  %194 = load i64, i64* %17, align 8
  %195 = call i64 @scrub_chunk_raid56_stripe_run(%struct.TYPE_24__* %191, %struct.TYPE_25__* %192, i64 %193, i64 %194)
  store i64 %195, i64* %10, align 8
  %196 = load i64, i64* %10, align 8
  %197 = call i32 @NT_SUCCESS(i64 %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %203, label %199

199:                                              ; preds = %190
  %200 = load i64, i64* %10, align 8
  %201 = call i32 (i8*, i64, ...) @ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i64 %200)
  %202 = load i64, i64* %10, align 8
  store i64 %202, i64* %5, align 8
  br label %277

203:                                              ; preds = %190
  %204 = load i64, i64* %15, align 8
  store i64 %204, i64* %16, align 8
  br label %205

205:                                              ; preds = %203, %185
  br label %208

206:                                              ; preds = %170
  %207 = load i64, i64* %15, align 8
  store i64 %207, i64* %16, align 8
  br label %208

208:                                              ; preds = %206, %205
  %209 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 0
  %210 = load %struct.TYPE_22__*, %struct.TYPE_22__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* %22, align 8
  %215 = add nsw i64 %213, %214
  %216 = sub nsw i64 %215, 1
  %217 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = sub nsw i64 %216, %219
  %221 = load i64, i64* %14, align 8
  %222 = sdiv i64 %220, %221
  store i64 %222, i64* %17, align 8
  %223 = load i32*, i32** %9, align 8
  store i32 1, i32* %223, align 4
  %224 = load i64, i64* %22, align 8
  %225 = load i64, i64* %18, align 8
  %226 = add nsw i64 %225, %224
  store i64 %226, i64* %18, align 8
  %227 = load i32, i32* %19, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %19, align 4
  %229 = load i32, i32* %19, align 4
  %230 = icmp sge i32 %229, 64
  br i1 %230, label %234, label %231

231:                                              ; preds = %208
  %232 = load i64, i64* %18, align 8
  %233 = icmp sge i64 %232, 134217728
  br i1 %233, label %234, label %235

234:                                              ; preds = %231, %208
  br label %248

235:                                              ; preds = %231
  br label %236

236:                                              ; preds = %235, %117, %100
  %237 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %238 = call i32 @find_next_item(%struct.TYPE_24__* %237, %struct.TYPE_23__* %12, %struct.TYPE_23__* %21, i32 0, i32* null)
  store i32 %238, i32* %13, align 4
  %239 = load i32, i32* %13, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %236
  %242 = bitcast %struct.TYPE_23__* %12 to i8*
  %243 = bitcast %struct.TYPE_23__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %242, i8* align 8 %243, i64 8, i1 false)
  br label %244

244:                                              ; preds = %241, %236
  br label %245

245:                                              ; preds = %244
  %246 = load i32, i32* %13, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %83, label %248

248:                                              ; preds = %245, %234, %99
  %249 = load i32*, i32** %9, align 8
  %250 = load i32, i32* %249, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %275

252:                                              ; preds = %248
  %253 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %254 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %255 = load i64, i64* %16, align 8
  %256 = load i64, i64* %17, align 8
  %257 = call i64 @scrub_chunk_raid56_stripe_run(%struct.TYPE_24__* %253, %struct.TYPE_25__* %254, i64 %255, i64 %256)
  store i64 %257, i64* %10, align 8
  %258 = load i64, i64* %10, align 8
  %259 = call i32 @NT_SUCCESS(i64 %258)
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %265, label %261

261:                                              ; preds = %252
  %262 = load i64, i64* %10, align 8
  %263 = call i32 (i8*, i64, ...) @ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i64 %262)
  %264 = load i64, i64* %10, align 8
  store i64 %264, i64* %5, align 8
  br label %277

265:                                              ; preds = %252
  %266 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %267 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* %17, align 8
  %270 = add nsw i64 %269, 1
  %271 = load i64, i64* %14, align 8
  %272 = mul nsw i64 %270, %271
  %273 = add nsw i64 %268, %272
  %274 = load i64*, i64** %8, align 8
  store i64 %273, i64* %274, align 8
  br label %275

275:                                              ; preds = %265, %248
  %276 = load i64, i64* @STATUS_SUCCESS, align 8
  store i64 %276, i64* %5, align 8
  br label %277

277:                                              ; preds = %275, %261, %199, %158, %77
  %278 = load i64, i64* %5, align 8
  ret i64 %278
}

declare dso_local i64 @find_item(%struct.TYPE_24__*, i32, %struct.TYPE_23__*, %struct.TYPE_26__*, i32, i32*) #1

declare dso_local i32 @NT_SUCCESS(i64) #1

declare dso_local i32 @ERR(i8*, i64, ...) #1

declare dso_local i32 @TRACE(i8*, i64) #1

declare dso_local i64 @scrub_chunk_raid56_stripe_run(%struct.TYPE_24__*, %struct.TYPE_25__*, i64, i64) #1

declare dso_local i32 @find_next_item(%struct.TYPE_24__*, %struct.TYPE_23__*, %struct.TYPE_23__*, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
