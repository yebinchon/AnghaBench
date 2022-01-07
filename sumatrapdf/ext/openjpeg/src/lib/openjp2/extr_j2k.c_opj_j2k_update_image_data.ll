; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_j2k.c_opj_j2k_update_image_data.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_j2k.c_opj_j2k_update_image_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_15__*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i64*, i64*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i64, i64, i64*, i32, i32, i32 }

@OPJ_FALSE = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i64 0, align 8
@OPJ_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_15__*)* @opj_j2k_update_image_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opj_j2k_update_image_data(%struct.TYPE_13__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.TYPE_16__*, align 8
  %25 = alloca %struct.TYPE_16__*, align 8
  %26 = alloca %struct.TYPE_12__*, align 8
  %27 = alloca %struct.TYPE_15__*, align 8
  %28 = alloca i64*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64*, align 8
  %35 = alloca %struct.TYPE_14__*, align 8
  %36 = alloca %struct.TYPE_14__*, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %24, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %25, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %26, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %27, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  store %struct.TYPE_12__* %46, %struct.TYPE_12__** %26, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %48, align 8
  store %struct.TYPE_15__* %49, %struct.TYPE_15__** %27, align 8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %51, align 8
  store %struct.TYPE_16__* %52, %struct.TYPE_16__** %24, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %54, align 8
  store %struct.TYPE_16__* %55, %struct.TYPE_16__** %25, align 8
  store i64 0, i64* %6, align 8
  br label %56

56:                                               ; preds = %460, %2
  %57 = load i64, i64* %6, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp slt i64 %57, %60
  br i1 %61, label %62, label %469

62:                                               ; preds = %56
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %119

72:                                               ; preds = %62
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 3
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %74, align 8
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i64 %79
  store %struct.TYPE_14__* %80, %struct.TYPE_14__** %35, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %35, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %29, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %35, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %31, align 8
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %35, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %30, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %35, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %32, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 3
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %94, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sub nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 3
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %105, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = sub nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = sub nsw i64 %103, %114
  store i64 %115, i64* %33, align 8
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 1
  %118 = load i64*, i64** %117, align 8
  store i64* %118, i64** %34, align 8
  br label %150

119:                                              ; preds = %62
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 3
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %121, align 8
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i64 %126
  store %struct.TYPE_14__* %127, %struct.TYPE_14__** %36, align 8
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  store i64 %130, i64* %29, align 8
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 7
  %133 = load i64, i64* %132, align 8
  store i64 %133, i64* %31, align 8
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 5
  %136 = load i64, i64* %135, align 8
  store i64 %136, i64* %30, align 8
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 6
  %139 = load i64, i64* %138, align 8
  store i64 %139, i64* %32, align 8
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 5
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 4
  %145 = load i64, i64* %144, align 8
  %146 = sub nsw i64 %142, %145
  store i64 %146, i64* %33, align 8
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 2
  %149 = load i64*, i64** %148, align 8
  store i64* %149, i64** %34, align 8
  br label %150

150:                                              ; preds = %119, %72
  %151 = load i64*, i64** %34, align 8
  %152 = icmp eq i64* %151, null
  br i1 %152, label %153, label %154

153:                                              ; preds = %150
  br label %460

154:                                              ; preds = %150
  %155 = load i64, i64* %30, align 8
  %156 = load i64, i64* %29, align 8
  %157 = sub nsw i64 %155, %156
  store i64 %157, i64* %8, align 8
  %158 = load i64, i64* %32, align 8
  %159 = load i64, i64* %31, align 8
  %160 = sub nsw i64 %158, %159
  store i64 %160, i64* %9, align 8
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 6
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = call i64 @opj_uint_ceildivpow2(i32 %163, i32 %166)
  store i64 %167, i64* %19, align 8
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 8
  %174 = call i64 @opj_uint_ceildivpow2(i32 %170, i32 %173)
  store i64 %174, i64* %20, align 8
  %175 = load i64, i64* %19, align 8
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = add nsw i64 %175, %178
  store i64 %179, i64* %21, align 8
  %180 = load i64, i64* %20, align 8
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = add nsw i64 %180, %183
  store i64 %184, i64* %22, align 8
  %185 = load i64, i64* %29, align 8
  %186 = icmp sge i64 %185, 0
  %187 = zext i1 %186 to i32
  %188 = call i32 @assert(i32 %187)
  %189 = load i64, i64* %30, align 8
  %190 = icmp sge i64 %189, 0
  %191 = zext i1 %190 to i32
  %192 = call i32 @assert(i32 %191)
  %193 = load i64, i64* %19, align 8
  %194 = load i64, i64* %29, align 8
  %195 = icmp slt i64 %193, %194
  br i1 %195, label %196, label %213

196:                                              ; preds = %154
  %197 = load i64, i64* %29, align 8
  %198 = load i64, i64* %19, align 8
  %199 = sub nsw i64 %197, %198
  store i64 %199, i64* %17, align 8
  store i64 0, i64* %12, align 8
  %200 = load i64, i64* %21, align 8
  %201 = load i64, i64* %30, align 8
  %202 = icmp sge i64 %200, %201
  br i1 %202, label %203, label %205

203:                                              ; preds = %196
  %204 = load i64, i64* %8, align 8
  store i64 %204, i64* %10, align 8
  store i64 0, i64* %14, align 8
  br label %212

205:                                              ; preds = %196
  %206 = load i64, i64* %21, align 8
  %207 = load i64, i64* %29, align 8
  %208 = sub nsw i64 %206, %207
  store i64 %208, i64* %10, align 8
  %209 = load i64, i64* %8, align 8
  %210 = load i64, i64* %10, align 8
  %211 = sub nsw i64 %209, %210
  store i64 %211, i64* %14, align 8
  br label %212

212:                                              ; preds = %205, %203
  br label %232

213:                                              ; preds = %154
  store i64 0, i64* %17, align 8
  %214 = load i64, i64* %19, align 8
  %215 = load i64, i64* %29, align 8
  %216 = sub nsw i64 %214, %215
  store i64 %216, i64* %12, align 8
  %217 = load i64, i64* %21, align 8
  %218 = load i64, i64* %30, align 8
  %219 = icmp sge i64 %217, %218
  br i1 %219, label %220, label %224

220:                                              ; preds = %213
  %221 = load i64, i64* %8, align 8
  %222 = load i64, i64* %12, align 8
  %223 = sub nsw i64 %221, %222
  store i64 %223, i64* %10, align 8
  store i64 0, i64* %14, align 8
  br label %231

224:                                              ; preds = %213
  %225 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %226 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  store i64 %227, i64* %10, align 8
  %228 = load i64, i64* %30, align 8
  %229 = load i64, i64* %21, align 8
  %230 = sub nsw i64 %228, %229
  store i64 %230, i64* %14, align 8
  br label %231

231:                                              ; preds = %224, %220
  br label %232

232:                                              ; preds = %231, %212
  %233 = load i64, i64* %20, align 8
  %234 = load i64, i64* %31, align 8
  %235 = icmp slt i64 %233, %234
  br i1 %235, label %236, label %253

236:                                              ; preds = %232
  %237 = load i64, i64* %31, align 8
  %238 = load i64, i64* %20, align 8
  %239 = sub nsw i64 %237, %238
  store i64 %239, i64* %18, align 8
  store i64 0, i64* %13, align 8
  %240 = load i64, i64* %22, align 8
  %241 = load i64, i64* %32, align 8
  %242 = icmp sge i64 %240, %241
  br i1 %242, label %243, label %245

243:                                              ; preds = %236
  %244 = load i64, i64* %9, align 8
  store i64 %244, i64* %11, align 8
  store i64 0, i64* %15, align 8
  br label %252

245:                                              ; preds = %236
  %246 = load i64, i64* %22, align 8
  %247 = load i64, i64* %31, align 8
  %248 = sub nsw i64 %246, %247
  store i64 %248, i64* %11, align 8
  %249 = load i64, i64* %9, align 8
  %250 = load i64, i64* %11, align 8
  %251 = sub nsw i64 %249, %250
  store i64 %251, i64* %15, align 8
  br label %252

252:                                              ; preds = %245, %243
  br label %272

253:                                              ; preds = %232
  store i64 0, i64* %18, align 8
  %254 = load i64, i64* %20, align 8
  %255 = load i64, i64* %31, align 8
  %256 = sub nsw i64 %254, %255
  store i64 %256, i64* %13, align 8
  %257 = load i64, i64* %22, align 8
  %258 = load i64, i64* %32, align 8
  %259 = icmp sge i64 %257, %258
  br i1 %259, label %260, label %264

260:                                              ; preds = %253
  %261 = load i64, i64* %9, align 8
  %262 = load i64, i64* %13, align 8
  %263 = sub nsw i64 %261, %262
  store i64 %263, i64* %11, align 8
  store i64 0, i64* %15, align 8
  br label %271

264:                                              ; preds = %253
  %265 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %266 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %265, i32 0, i32 2
  %267 = load i64, i64* %266, align 8
  store i64 %267, i64* %11, align 8
  %268 = load i64, i64* %32, align 8
  %269 = load i64, i64* %22, align 8
  %270 = sub nsw i64 %268, %269
  store i64 %270, i64* %15, align 8
  br label %271

271:                                              ; preds = %264, %260
  br label %272

272:                                              ; preds = %271, %252
  %273 = load i64, i64* %12, align 8
  %274 = icmp slt i64 %273, 0
  br i1 %274, label %284, label %275

275:                                              ; preds = %272
  %276 = load i64, i64* %13, align 8
  %277 = icmp slt i64 %276, 0
  br i1 %277, label %284, label %278

278:                                              ; preds = %275
  %279 = load i64, i64* %14, align 8
  %280 = icmp slt i64 %279, 0
  br i1 %280, label %284, label %281

281:                                              ; preds = %278
  %282 = load i64, i64* %15, align 8
  %283 = icmp slt i64 %282, 0
  br i1 %283, label %284, label %286

284:                                              ; preds = %281, %278, %275, %272
  %285 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %285, i32* %3, align 4
  br label %471

286:                                              ; preds = %281
  %287 = load i64, i64* %10, align 8
  %288 = icmp slt i64 %287, 0
  br i1 %288, label %292, label %289

289:                                              ; preds = %286
  %290 = load i64, i64* %11, align 8
  %291 = icmp slt i64 %290, 0
  br i1 %291, label %292, label %294

292:                                              ; preds = %289, %286
  %293 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %293, i32* %3, align 4
  br label %471

294:                                              ; preds = %289
  %295 = load i64, i64* %12, align 8
  %296 = load i64, i64* %13, align 8
  %297 = load i64, i64* %33, align 8
  %298 = mul nsw i64 %296, %297
  %299 = add nsw i64 %295, %298
  store i64 %299, i64* %16, align 8
  %300 = load i64, i64* %17, align 8
  %301 = load i64, i64* %18, align 8
  %302 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %303 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %302, i32 0, i32 1
  %304 = load i64, i64* %303, align 8
  %305 = mul nsw i64 %301, %304
  %306 = add nsw i64 %300, %305
  store i64 %306, i64* %23, align 8
  %307 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %308 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %307, i32 0, i32 3
  %309 = load i64*, i64** %308, align 8
  %310 = icmp eq i64* %309, null
  br i1 %310, label %311, label %357

311:                                              ; preds = %294
  %312 = load i64, i64* %16, align 8
  %313 = icmp eq i64 %312, 0
  br i1 %313, label %314, label %357

314:                                              ; preds = %311
  %315 = load i64, i64* %23, align 8
  %316 = icmp eq i64 %315, 0
  br i1 %316, label %317, label %357

317:                                              ; preds = %314
  %318 = load i64, i64* %33, align 8
  %319 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %320 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %319, i32 0, i32 1
  %321 = load i64, i64* %320, align 8
  %322 = icmp eq i64 %318, %321
  br i1 %322, label %323, label %357

323:                                              ; preds = %317
  %324 = load i64, i64* %10, align 8
  %325 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %326 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %325, i32 0, i32 1
  %327 = load i64, i64* %326, align 8
  %328 = icmp eq i64 %324, %327
  br i1 %328, label %329, label %357

329:                                              ; preds = %323
  %330 = load i64, i64* %11, align 8
  %331 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %332 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %331, i32 0, i32 2
  %333 = load i64, i64* %332, align 8
  %334 = icmp eq i64 %330, %333
  br i1 %334, label %335, label %357

335:                                              ; preds = %329
  %336 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %337 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %336, i32 0, i32 0
  %338 = load i64, i64* %337, align 8
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %348

340:                                              ; preds = %335
  %341 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %342 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %341, i32 0, i32 1
  %343 = load i64*, i64** %342, align 8
  %344 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %345 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %344, i32 0, i32 3
  store i64* %343, i64** %345, align 8
  %346 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %347 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %346, i32 0, i32 1
  store i64* null, i64** %347, align 8
  br label %356

348:                                              ; preds = %335
  %349 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %350 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %349, i32 0, i32 2
  %351 = load i64*, i64** %350, align 8
  %352 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %353 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %352, i32 0, i32 3
  store i64* %351, i64** %353, align 8
  %354 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %355 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %354, i32 0, i32 2
  store i64* null, i64** %355, align 8
  br label %356

356:                                              ; preds = %348, %340
  br label %460

357:                                              ; preds = %329, %323, %317, %314, %311, %294
  %358 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %359 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %358, i32 0, i32 3
  %360 = load i64*, i64** %359, align 8
  %361 = icmp eq i64* %360, null
  br i1 %361, label %362, label %427

362:                                              ; preds = %357
  %363 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %364 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %363, i32 0, i32 1
  %365 = load i64, i64* %364, align 8
  store i64 %365, i64* %37, align 8
  %366 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %367 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %366, i32 0, i32 2
  %368 = load i64, i64* %367, align 8
  store i64 %368, i64* %38, align 8
  %369 = load i64, i64* %38, align 8
  %370 = icmp eq i64 %369, 0
  br i1 %370, label %384, label %371

371:                                              ; preds = %362
  %372 = load i64, i64* %37, align 8
  %373 = load i64, i64* @SIZE_MAX, align 8
  %374 = load i64, i64* %38, align 8
  %375 = sdiv i64 %373, %374
  %376 = icmp sgt i64 %372, %375
  br i1 %376, label %384, label %377

377:                                              ; preds = %371
  %378 = load i64, i64* %37, align 8
  %379 = load i64, i64* %38, align 8
  %380 = mul nsw i64 %378, %379
  %381 = load i64, i64* @SIZE_MAX, align 8
  %382 = udiv i64 %381, 8
  %383 = icmp ugt i64 %380, %382
  br i1 %383, label %384, label %386

384:                                              ; preds = %377, %371, %362
  %385 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %385, i32* %3, align 4
  br label %471

386:                                              ; preds = %377
  %387 = load i64, i64* %37, align 8
  %388 = load i64, i64* %38, align 8
  %389 = mul nsw i64 %387, %388
  %390 = mul i64 %389, 8
  %391 = call i64 @opj_image_data_alloc(i64 %390)
  %392 = inttoptr i64 %391 to i64*
  %393 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %394 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %393, i32 0, i32 3
  store i64* %392, i64** %394, align 8
  %395 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %396 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %395, i32 0, i32 3
  %397 = load i64*, i64** %396, align 8
  %398 = icmp ne i64* %397, null
  br i1 %398, label %401, label %399

399:                                              ; preds = %386
  %400 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %400, i32* %3, align 4
  br label %471

401:                                              ; preds = %386
  %402 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %403 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %402, i32 0, i32 1
  %404 = load i64, i64* %403, align 8
  %405 = load i64, i64* %10, align 8
  %406 = icmp ne i64 %404, %405
  br i1 %406, label %413, label %407

407:                                              ; preds = %401
  %408 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %409 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %408, i32 0, i32 2
  %410 = load i64, i64* %409, align 8
  %411 = load i64, i64* %11, align 8
  %412 = icmp ne i64 %410, %411
  br i1 %412, label %413, label %426

413:                                              ; preds = %407, %401
  %414 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %415 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %414, i32 0, i32 3
  %416 = load i64*, i64** %415, align 8
  %417 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %418 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %417, i32 0, i32 1
  %419 = load i64, i64* %418, align 8
  %420 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %421 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %420, i32 0, i32 2
  %422 = load i64, i64* %421, align 8
  %423 = mul nsw i64 %419, %422
  %424 = mul i64 %423, 8
  %425 = call i32 @memset(i64* %416, i32 0, i64 %424)
  br label %426

426:                                              ; preds = %413, %407
  br label %427

427:                                              ; preds = %426, %357
  br label %428

428:                                              ; preds = %427
  %429 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %430 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %429, i32 0, i32 3
  %431 = load i64*, i64** %430, align 8
  %432 = load i64, i64* %23, align 8
  %433 = getelementptr inbounds i64, i64* %431, i64 %432
  store i64* %433, i64** %28, align 8
  %434 = load i64*, i64** %34, align 8
  store i64* %434, i64** %39, align 8
  %435 = load i64, i64* %16, align 8
  %436 = load i64*, i64** %39, align 8
  %437 = getelementptr inbounds i64, i64* %436, i64 %435
  store i64* %437, i64** %39, align 8
  store i64 0, i64* %7, align 8
  br label %438

438:                                              ; preds = %456, %428
  %439 = load i64, i64* %7, align 8
  %440 = load i64, i64* %11, align 8
  %441 = icmp slt i64 %439, %440
  br i1 %441, label %442, label %459

442:                                              ; preds = %438
  %443 = load i64*, i64** %28, align 8
  %444 = load i64*, i64** %39, align 8
  %445 = load i64, i64* %10, align 8
  %446 = mul i64 %445, 8
  %447 = call i32 @memcpy(i64* %443, i64* %444, i64 %446)
  %448 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %449 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %448, i32 0, i32 1
  %450 = load i64, i64* %449, align 8
  %451 = load i64*, i64** %28, align 8
  %452 = getelementptr inbounds i64, i64* %451, i64 %450
  store i64* %452, i64** %28, align 8
  %453 = load i64, i64* %33, align 8
  %454 = load i64*, i64** %39, align 8
  %455 = getelementptr inbounds i64, i64* %454, i64 %453
  store i64* %455, i64** %39, align 8
  br label %456

456:                                              ; preds = %442
  %457 = load i64, i64* %7, align 8
  %458 = add nsw i64 %457, 1
  store i64 %458, i64* %7, align 8
  br label %438

459:                                              ; preds = %438
  br label %460

460:                                              ; preds = %459, %356, %153
  %461 = load i64, i64* %6, align 8
  %462 = add nsw i64 %461, 1
  store i64 %462, i64* %6, align 8
  %463 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %464 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %463, i32 1
  store %struct.TYPE_16__* %464, %struct.TYPE_16__** %25, align 8
  %465 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %466 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %465, i32 1
  store %struct.TYPE_16__* %466, %struct.TYPE_16__** %24, align 8
  %467 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %468 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %467, i32 1
  store %struct.TYPE_12__* %468, %struct.TYPE_12__** %26, align 8
  br label %56

469:                                              ; preds = %56
  %470 = load i32, i32* @OPJ_TRUE, align 4
  store i32 %470, i32* %3, align 4
  br label %471

471:                                              ; preds = %469, %399, %384, %292, %284
  %472 = load i32, i32* %3, align 4
  ret i32 %472
}

declare dso_local i64 @opj_uint_ceildivpow2(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @opj_image_data_alloc(i64) #1

declare dso_local i32 @memset(i64*, i32, i64) #1

declare dso_local i32 @memcpy(i64*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
