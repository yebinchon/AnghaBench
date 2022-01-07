; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_opt.c_ZSTD_rescaleFreqs.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_opt.c_ZSTD_rescaleFreqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32*, i32*, i32, i32*, i32, i32*, i8*, %struct.TYPE_11__*, i8* }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_13__ = type { i32 }

@zop_dynamic = common dso_local global i8* null, align 8
@zop_predef = common dso_local global i8* null, align 8
@HUF_repeat_valid = common dso_local global i64 0, align 8
@MaxLit = common dso_local global i32 0, align 4
@MaxLL = common dso_local global i32 0, align 4
@MaxML = common dso_local global i32 0, align 4
@MaxOff = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32*, i64, i32)* @ZSTD_rescaleFreqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ZSTD_rescaleFreqs(%struct.TYPE_12__* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_13__, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_13__, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_13__, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %28 = load i8*, i8** @zop_dynamic, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 9
  store i8* %28, i8** %30, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %356

35:                                               ; preds = %4
  %36 = load i64, i64* %7, align 8
  %37 = icmp ule i64 %36, 1024
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i8*, i8** @zop_predef, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 9
  store i8* %39, i8** %41, align 8
  br label %42

42:                                               ; preds = %38, %35
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = icmp ne %struct.TYPE_11__* %45, null
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @HUF_repeat_valid, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %277

57:                                               ; preds = %42
  %58 = load i8*, i8** @zop_dynamic, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 9
  store i8* %58, i8** %60, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 7
  store i8* null, i8** %68, align 8
  store i32 0, i32* %9, align 4
  br label %69

69:                                               ; preds = %114, %57
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @MaxLit, align 4
  %72 = icmp ule i32 %70, %71
  br i1 %72, label %73, label %117

73:                                               ; preds = %69
  store i64 11, i64* %10, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call i64 @HUF_getNbBits(i32 %79, i32 %80)
  store i64 %81, i64* %11, align 8
  %82 = load i64, i64* %11, align 8
  %83 = icmp sle i64 %82, 11
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert(i32 %84)
  %86 = load i64, i64* %11, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %73
  %89 = load i64, i64* %11, align 8
  %90 = sub nsw i64 11, %89
  %91 = trunc i64 %90 to i32
  %92 = shl i32 1, %91
  br label %94

93:                                               ; preds = %73
  br label %94

94:                                               ; preds = %93, %88
  %95 = phi i32 [ %92, %88 ], [ 1, %93 ]
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32 %95, i32* %101, align 4
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %9, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 7
  %111 = load i8*, i8** %110, align 8
  %112 = sext i32 %108 to i64
  %113 = getelementptr i8, i8* %111, i64 %112
  store i8* %113, i8** %110, align 8
  br label %114

114:                                              ; preds = %94
  %115 = load i32, i32* %9, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %9, align 4
  br label %69

117:                                              ; preds = %69
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @FSE_initCState(%struct.TYPE_13__* %13, i32 %123)
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  store i32 0, i32* %126, align 8
  store i32 0, i32* %12, align 4
  br label %127

127:                                              ; preds = %167, %117
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* @MaxLL, align 4
  %130 = icmp ule i32 %128, %129
  br i1 %130, label %131, label %170

131:                                              ; preds = %127
  store i64 10, i64* %14, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %12, align 4
  %135 = call i64 @FSE_getMaxNbBits(i32 %133, i32 %134)
  store i64 %135, i64* %15, align 8
  %136 = load i64, i64* %15, align 8
  %137 = icmp slt i64 %136, 10
  %138 = zext i1 %137 to i32
  %139 = call i32 @assert(i32 %138)
  %140 = load i64, i64* %15, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %131
  %143 = load i64, i64* %15, align 8
  %144 = sub nsw i64 10, %143
  %145 = trunc i64 %144 to i32
  %146 = shl i32 1, %145
  br label %148

147:                                              ; preds = %131
  br label %148

148:                                              ; preds = %147, %142
  %149 = phi i32 [ %146, %142 ], [ 1, %147 ]
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %12, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  store i32 %149, i32* %155, align 4
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 2
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %12, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = add nsw i32 %165, %162
  store i32 %166, i32* %164, align 8
  br label %167

167:                                              ; preds = %148
  %168 = load i32, i32* %12, align 4
  %169 = add i32 %168, 1
  store i32 %169, i32* %12, align 4
  br label %127

170:                                              ; preds = %127
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 8
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @FSE_initCState(%struct.TYPE_13__* %17, i32 %176)
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 3
  store i32 0, i32* %179, align 8
  store i32 0, i32* %16, align 4
  br label %180

180:                                              ; preds = %220, %170
  %181 = load i32, i32* %16, align 4
  %182 = load i32, i32* @MaxML, align 4
  %183 = icmp ule i32 %181, %182
  br i1 %183, label %184, label %223

184:                                              ; preds = %180
  store i64 10, i64* %18, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* %16, align 4
  %188 = call i64 @FSE_getMaxNbBits(i32 %186, i32 %187)
  store i64 %188, i64* %19, align 8
  %189 = load i64, i64* %19, align 8
  %190 = icmp slt i64 %189, 10
  %191 = zext i1 %190 to i32
  %192 = call i32 @assert(i32 %191)
  %193 = load i64, i64* %19, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %184
  %196 = load i64, i64* %19, align 8
  %197 = sub nsw i64 10, %196
  %198 = trunc i64 %197 to i32
  %199 = shl i32 1, %198
  br label %201

200:                                              ; preds = %184
  br label %201

201:                                              ; preds = %200, %195
  %202 = phi i32 [ %199, %195 ], [ 1, %200 ]
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 4
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* %16, align 4
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  store i32 %202, i32* %208, align 4
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 4
  %211 = load i32*, i32** %210, align 8
  %212 = load i32, i32* %16, align 4
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 8
  %219 = add nsw i32 %218, %215
  store i32 %219, i32* %217, align 8
  br label %220

220:                                              ; preds = %201
  %221 = load i32, i32* %16, align 4
  %222 = add i32 %221, 1
  store i32 %222, i32* %16, align 4
  br label %180

223:                                              ; preds = %180
  %224 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 8
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @FSE_initCState(%struct.TYPE_13__* %21, i32 %229)
  %231 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 5
  store i32 0, i32* %232, align 8
  store i32 0, i32* %20, align 4
  br label %233

233:                                              ; preds = %273, %223
  %234 = load i32, i32* %20, align 4
  %235 = load i32, i32* @MaxOff, align 4
  %236 = icmp ule i32 %234, %235
  br i1 %236, label %237, label %276

237:                                              ; preds = %233
  store i64 10, i64* %22, align 8
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* %20, align 4
  %241 = call i64 @FSE_getMaxNbBits(i32 %239, i32 %240)
  store i64 %241, i64* %23, align 8
  %242 = load i64, i64* %23, align 8
  %243 = icmp slt i64 %242, 10
  %244 = zext i1 %243 to i32
  %245 = call i32 @assert(i32 %244)
  %246 = load i64, i64* %23, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %237
  %249 = load i64, i64* %23, align 8
  %250 = sub nsw i64 10, %249
  %251 = trunc i64 %250 to i32
  %252 = shl i32 1, %251
  br label %254

253:                                              ; preds = %237
  br label %254

254:                                              ; preds = %253, %248
  %255 = phi i32 [ %252, %248 ], [ 1, %253 ]
  %256 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 6
  %258 = load i32*, i32** %257, align 8
  %259 = load i32, i32* %20, align 4
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %258, i64 %260
  store i32 %255, i32* %261, align 4
  %262 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i32 0, i32 6
  %264 = load i32*, i32** %263, align 8
  %265 = load i32, i32* %20, align 4
  %266 = zext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %264, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i32 0, i32 5
  %271 = load i32, i32* %270, align 8
  %272 = add nsw i32 %271, %268
  store i32 %272, i32* %270, align 8
  br label %273

273:                                              ; preds = %254
  %274 = load i32, i32* %20, align 4
  %275 = add i32 %274, 1
  store i32 %275, i32* %20, align 4
  br label %233

276:                                              ; preds = %233
  br label %355

277:                                              ; preds = %42
  %278 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %278, i32 0, i32 1
  %280 = load i32*, i32** %279, align 8
  %281 = icmp ne i32* %280, null
  %282 = zext i1 %281 to i32
  %283 = call i32 @assert(i32 %282)
  %284 = load i32, i32* @MaxLit, align 4
  store i32 %284, i32* %24, align 4
  %285 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %286 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %285, i32 0, i32 1
  %287 = load i32*, i32** %286, align 8
  %288 = load i32*, i32** %6, align 8
  %289 = load i64, i64* %7, align 8
  %290 = call i32 @HIST_count_simple(i32* %287, i32* %24, i32* %288, i64 %289)
  %291 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %291, i32 0, i32 1
  %293 = load i32*, i32** %292, align 8
  %294 = load i32, i32* @MaxLit, align 4
  %295 = call i8* @ZSTD_downscaleStat(i32* %293, i32 %294, i32 1)
  %296 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %297 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %296, i32 0, i32 7
  store i8* %295, i8** %297, align 8
  store i32 0, i32* %25, align 4
  br label %298

298:                                              ; preds = %309, %277
  %299 = load i32, i32* %25, align 4
  %300 = load i32, i32* @MaxLL, align 4
  %301 = icmp ule i32 %299, %300
  br i1 %301, label %302, label %312

302:                                              ; preds = %298
  %303 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %304 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %303, i32 0, i32 2
  %305 = load i32*, i32** %304, align 8
  %306 = load i32, i32* %25, align 4
  %307 = zext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %305, i64 %307
  store i32 1, i32* %308, align 4
  br label %309

309:                                              ; preds = %302
  %310 = load i32, i32* %25, align 4
  %311 = add i32 %310, 1
  store i32 %311, i32* %25, align 4
  br label %298

312:                                              ; preds = %298
  %313 = load i32, i32* @MaxLL, align 4
  %314 = add i32 %313, 1
  %315 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %316 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %315, i32 0, i32 0
  store i32 %314, i32* %316, align 8
  store i32 0, i32* %26, align 4
  br label %317

317:                                              ; preds = %328, %312
  %318 = load i32, i32* %26, align 4
  %319 = load i32, i32* @MaxML, align 4
  %320 = icmp ule i32 %318, %319
  br i1 %320, label %321, label %331

321:                                              ; preds = %317
  %322 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %323 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %322, i32 0, i32 4
  %324 = load i32*, i32** %323, align 8
  %325 = load i32, i32* %26, align 4
  %326 = zext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %324, i64 %326
  store i32 1, i32* %327, align 4
  br label %328

328:                                              ; preds = %321
  %329 = load i32, i32* %26, align 4
  %330 = add i32 %329, 1
  store i32 %330, i32* %26, align 4
  br label %317

331:                                              ; preds = %317
  %332 = load i32, i32* @MaxML, align 4
  %333 = add i32 %332, 1
  %334 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %335 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %334, i32 0, i32 3
  store i32 %333, i32* %335, align 8
  store i32 0, i32* %27, align 4
  br label %336

336:                                              ; preds = %347, %331
  %337 = load i32, i32* %27, align 4
  %338 = load i32, i32* @MaxOff, align 4
  %339 = icmp ule i32 %337, %338
  br i1 %339, label %340, label %350

340:                                              ; preds = %336
  %341 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %342 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %341, i32 0, i32 6
  %343 = load i32*, i32** %342, align 8
  %344 = load i32, i32* %27, align 4
  %345 = zext i32 %344 to i64
  %346 = getelementptr inbounds i32, i32* %343, i64 %345
  store i32 1, i32* %346, align 4
  br label %347

347:                                              ; preds = %340
  %348 = load i32, i32* %27, align 4
  %349 = add i32 %348, 1
  store i32 %349, i32* %27, align 4
  br label %336

350:                                              ; preds = %336
  %351 = load i32, i32* @MaxOff, align 4
  %352 = add i32 %351, 1
  %353 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %354 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %353, i32 0, i32 5
  store i32 %352, i32* %354, align 8
  br label %355

355:                                              ; preds = %350, %276
  br label %388

356:                                              ; preds = %4
  %357 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %358 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %357, i32 0, i32 1
  %359 = load i32*, i32** %358, align 8
  %360 = load i32, i32* @MaxLit, align 4
  %361 = call i8* @ZSTD_downscaleStat(i32* %359, i32 %360, i32 1)
  %362 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %363 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %362, i32 0, i32 7
  store i8* %361, i8** %363, align 8
  %364 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %365 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %364, i32 0, i32 2
  %366 = load i32*, i32** %365, align 8
  %367 = load i32, i32* @MaxLL, align 4
  %368 = call i8* @ZSTD_downscaleStat(i32* %366, i32 %367, i32 0)
  %369 = ptrtoint i8* %368 to i32
  %370 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %371 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %370, i32 0, i32 0
  store i32 %369, i32* %371, align 8
  %372 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %373 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %372, i32 0, i32 4
  %374 = load i32*, i32** %373, align 8
  %375 = load i32, i32* @MaxML, align 4
  %376 = call i8* @ZSTD_downscaleStat(i32* %374, i32 %375, i32 0)
  %377 = ptrtoint i8* %376 to i32
  %378 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %379 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %378, i32 0, i32 3
  store i32 %377, i32* %379, align 8
  %380 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %381 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %380, i32 0, i32 6
  %382 = load i32*, i32** %381, align 8
  %383 = load i32, i32* @MaxOff, align 4
  %384 = call i8* @ZSTD_downscaleStat(i32* %382, i32 %383, i32 0)
  %385 = ptrtoint i8* %384 to i32
  %386 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %387 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %386, i32 0, i32 5
  store i32 %385, i32* %387, align 8
  br label %388

388:                                              ; preds = %356, %355
  %389 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %390 = load i32, i32* %8, align 4
  %391 = call i32 @ZSTD_setBasePrices(%struct.TYPE_12__* %389, i32 %390)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @HUF_getNbBits(i32, i32) #1

declare dso_local i32 @FSE_initCState(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @FSE_getMaxNbBits(i32, i32) #1

declare dso_local i32 @HIST_count_simple(i32*, i32*, i32*, i64) #1

declare dso_local i8* @ZSTD_downscaleStat(i32*, i32, i32) #1

declare dso_local i32 @ZSTD_setBasePrices(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
