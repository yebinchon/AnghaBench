; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-edgebuffer.c_mark_line.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-edgebuffer.c_mark_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i32*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@DIRN_UP = common dso_local global i32 0, align 4
@fixed_half = common dso_local global i32 0, align 4
@DIRN_DOWN = common dso_local global i32 0, align 4
@fixed_1 = common dso_local global i32 0, align 4
@debugging_scan_converter = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_9__*, i32, i32, i32, i32)* @mark_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_line(i32* %0, %struct.TYPE_9__* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %13, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 %46, %51
  store i32 %52, i32* %14, align 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %15, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  store i32* %58, i32** %16, align 8
  %59 = load i32, i32* @DIRN_UP, align 4
  store i32 %59, i32* %22, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @fixed_half, align 4
  %62 = add nsw i32 %60, %61
  %63 = sub nsw i32 %62, 1
  %64 = call i32 @fixed2int(i32 %63)
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @fixed_half, align 4
  %67 = add nsw i32 %65, %66
  %68 = sub nsw i32 %67, 1
  %69 = call i32 @fixed2int(i32 %68)
  %70 = icmp eq i32 %64, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %6
  br label %495

72:                                               ; preds = %6
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %72
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %24, align 4
  %78 = load i32, i32* %12, align 4
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %24, align 4
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %9, align 4
  store i32 %80, i32* %24, align 4
  %81 = load i32, i32* %11, align 4
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %24, align 4
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* @DIRN_DOWN, align 4
  store i32 %83, i32* %22, align 4
  br label %84

84:                                               ; preds = %76, %72
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @fixed2int(i32 %85)
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %86, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %84
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @fixed2int(i32 %94)
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  store i32 %95, i32* %99, align 8
  br label %100

100:                                              ; preds = %93, %84
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @fixed_1, align 4
  %103 = add nsw i32 %101, %102
  %104 = sub nsw i32 %103, 1
  %105 = call i32 @fixed2int(i32 %104)
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp sgt i32 %105, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %100
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* @fixed_1, align 4
  %115 = add nsw i32 %113, %114
  %116 = sub nsw i32 %115, 1
  %117 = call i32 @fixed2int(i32 %116)
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  store i32 %117, i32* %121, align 4
  br label %122

122:                                              ; preds = %112, %100
  %123 = load i32, i32* %11, align 4
  %124 = call i32 @fixed2int(i32 %123)
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp slt i32 %124, %129
  br i1 %130, label %131, label %138

131:                                              ; preds = %122
  %132 = load i32, i32* %11, align 4
  %133 = call i32 @fixed2int(i32 %132)
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  store i32 %133, i32* %137, align 8
  br label %138

138:                                              ; preds = %131, %122
  %139 = load i32, i32* %11, align 4
  %140 = load i32, i32* @fixed_1, align 4
  %141 = add nsw i32 %139, %140
  %142 = sub nsw i32 %141, 1
  %143 = call i32 @fixed2int(i32 %142)
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = icmp sgt i32 %143, %148
  br i1 %149, label %150, label %160

150:                                              ; preds = %138
  %151 = load i32, i32* %11, align 4
  %152 = load i32, i32* @fixed_1, align 4
  %153 = add nsw i32 %151, %152
  %154 = sub nsw i32 %153, 1
  %155 = call i32 @fixed2int(i32 %154)
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 1
  store i32 %155, i32* %159, align 4
  br label %160

160:                                              ; preds = %150, %138
  %161 = load i32, i32* %10, align 4
  %162 = call i32 @fixed2int(i32 %161)
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = icmp slt i32 %162, %167
  br i1 %168, label %169, label %176

169:                                              ; preds = %160
  %170 = load i32, i32* %10, align 4
  %171 = call i32 @fixed2int(i32 %170)
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 2
  store i32 %171, i32* %175, align 8
  br label %176

176:                                              ; preds = %169, %160
  %177 = load i32, i32* %12, align 4
  %178 = load i32, i32* @fixed_1, align 4
  %179 = add nsw i32 %177, %178
  %180 = sub nsw i32 %179, 1
  %181 = call i32 @fixed2int(i32 %180)
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = icmp sgt i32 %181, %186
  br i1 %187, label %188, label %198

188:                                              ; preds = %176
  %189 = load i32, i32* %12, align 4
  %190 = load i32, i32* @fixed_1, align 4
  %191 = add nsw i32 %189, %190
  %192 = sub nsw i32 %191, 1
  %193 = call i32 @fixed2int(i32 %192)
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 3
  store i32 %193, i32* %197, align 4
  br label %198

198:                                              ; preds = %188, %176
  %199 = load i32, i32* %10, align 4
  %200 = load i32, i32* @fixed_half, align 4
  %201 = add nsw i32 %199, %200
  %202 = sub nsw i32 %201, 1
  %203 = load i32, i32* @fixed_1, align 4
  %204 = sub nsw i32 %203, 1
  %205 = xor i32 %204, -1
  %206 = and i32 %202, %205
  %207 = load i32, i32* @fixed_half, align 4
  %208 = or i32 %206, %207
  store i32 %208, i32* %20, align 4
  %209 = load i32, i32* %12, align 4
  %210 = load i32, i32* @fixed_half, align 4
  %211 = sub nsw i32 %209, %210
  %212 = sub nsw i32 %211, 1
  %213 = load i32, i32* @fixed_1, align 4
  %214 = sub nsw i32 %213, 1
  %215 = xor i32 %214, -1
  %216 = and i32 %212, %215
  %217 = load i32, i32* @fixed_half, align 4
  %218 = or i32 %216, %217
  store i32 %218, i32* %21, align 4
  %219 = load i32, i32* %20, align 4
  %220 = load i32, i32* %13, align 4
  %221 = call i32 @int2fixed(i32 %220)
  %222 = load i32, i32* @fixed_half, align 4
  %223 = add nsw i32 %221, %222
  %224 = icmp slt i32 %219, %223
  br i1 %224, label %225, label %230

225:                                              ; preds = %198
  %226 = load i32, i32* %13, align 4
  %227 = call i32 @int2fixed(i32 %226)
  %228 = load i32, i32* @fixed_half, align 4
  %229 = add nsw i32 %227, %228
  store i32 %229, i32* %20, align 4
  br label %230

230:                                              ; preds = %225, %198
  %231 = load i32, i32* %12, align 4
  %232 = load i32, i32* %20, align 4
  %233 = icmp sle i32 %231, %232
  br i1 %233, label %234, label %235

234:                                              ; preds = %230
  br label %495

235:                                              ; preds = %230
  %236 = load i32, i32* %21, align 4
  %237 = load i32, i32* %13, align 4
  %238 = load i32, i32* %14, align 4
  %239 = add nsw i32 %237, %238
  %240 = sub nsw i32 %239, 1
  %241 = call i32 @int2fixed(i32 %240)
  %242 = load i32, i32* @fixed_half, align 4
  %243 = add nsw i32 %241, %242
  %244 = icmp sgt i32 %236, %243
  br i1 %244, label %245, label %253

245:                                              ; preds = %235
  %246 = load i32, i32* %13, align 4
  %247 = load i32, i32* %14, align 4
  %248 = add nsw i32 %246, %247
  %249 = sub nsw i32 %248, 1
  %250 = call i32 @int2fixed(i32 %249)
  %251 = load i32, i32* @fixed_half, align 4
  %252 = add nsw i32 %250, %251
  store i32 %252, i32* %21, align 4
  br label %253

253:                                              ; preds = %245, %235
  %254 = load i32, i32* %10, align 4
  %255 = load i32, i32* %21, align 4
  %256 = icmp sgt i32 %254, %255
  br i1 %256, label %257, label %258

257:                                              ; preds = %253
  br label %495

258:                                              ; preds = %253
  %259 = load i32, i32* %20, align 4
  %260 = load i32, i32* %10, align 4
  %261 = sub nsw i32 %259, %260
  store i32 %261, i32* %17, align 4
  %262 = load i32, i32* %17, align 4
  %263 = icmp sgt i32 %262, 0
  br i1 %263, label %264, label %285

264:                                              ; preds = %258
  %265 = load i32, i32* %11, align 4
  %266 = load i32, i32* %9, align 4
  %267 = sub nsw i32 %265, %266
  store i32 %267, i32* %25, align 4
  %268 = load i32, i32* %12, align 4
  %269 = load i32, i32* %10, align 4
  %270 = sub nsw i32 %268, %269
  store i32 %270, i32* %26, align 4
  %271 = load i32, i32* %25, align 4
  %272 = load i32, i32* %17, align 4
  %273 = mul nsw i32 %271, %272
  %274 = load i32, i32* %26, align 4
  %275 = ashr i32 %274, 1
  %276 = add nsw i32 %273, %275
  %277 = load i32, i32* %26, align 4
  %278 = sdiv i32 %276, %277
  store i32 %278, i32* %27, align 4
  %279 = load i32, i32* %27, align 4
  %280 = load i32, i32* %9, align 4
  %281 = add nsw i32 %280, %279
  store i32 %281, i32* %9, align 4
  %282 = load i32, i32* %17, align 4
  %283 = load i32, i32* %10, align 4
  %284 = add nsw i32 %283, %282
  store i32 %284, i32* %10, align 4
  br label %285

285:                                              ; preds = %264, %258
  %286 = load i32, i32* %9, align 4
  %287 = load i32, i32* %11, align 4
  %288 = sub nsw i32 %287, %286
  store i32 %288, i32* %11, align 4
  %289 = load i32, i32* %10, align 4
  %290 = load i32, i32* %12, align 4
  %291 = sub nsw i32 %290, %289
  store i32 %291, i32* %12, align 4
  %292 = load i32, i32* %20, align 4
  %293 = load i32, i32* %21, align 4
  %294 = sub nsw i32 %293, %292
  store i32 %294, i32* %21, align 4
  %295 = load i32, i32* %12, align 4
  %296 = load i32, i32* %21, align 4
  %297 = sub nsw i32 %295, %296
  store i32 %297, i32* %17, align 4
  %298 = load i32, i32* %17, align 4
  %299 = icmp sgt i32 %298, 0
  br i1 %299, label %300, label %315

300:                                              ; preds = %285
  %301 = load i32, i32* %11, align 4
  %302 = load i32, i32* %17, align 4
  %303 = mul nsw i32 %301, %302
  %304 = load i32, i32* %12, align 4
  %305 = ashr i32 %304, 1
  %306 = add nsw i32 %303, %305
  %307 = load i32, i32* %12, align 4
  %308 = sdiv i32 %306, %307
  store i32 %308, i32* %28, align 4
  %309 = load i32, i32* %28, align 4
  %310 = load i32, i32* %11, align 4
  %311 = sub nsw i32 %310, %309
  store i32 %311, i32* %11, align 4
  %312 = load i32, i32* %17, align 4
  %313 = load i32, i32* %12, align 4
  %314 = sub nsw i32 %313, %312
  store i32 %314, i32* %12, align 4
  br label %315

315:                                              ; preds = %300, %285
  %316 = load i32, i32* %12, align 4
  %317 = call i32 @fixed2int(i32 %316)
  store i32 %317, i32* %19, align 4
  %318 = load i32, i32* %19, align 4
  %319 = icmp sge i32 %318, 0
  %320 = zext i1 %319 to i32
  %321 = call i32 @assert(i32 %320)
  %322 = load i32, i32* %10, align 4
  %323 = call i32 @fixed2int(i32 %322)
  %324 = load i32, i32* %13, align 4
  %325 = sub nsw i32 %323, %324
  store i32 %325, i32* %18, align 4
  %326 = load i32, i32* %18, align 4
  %327 = icmp sge i32 %326, 0
  br i1 %327, label %328, label %332

328:                                              ; preds = %315
  %329 = load i32, i32* %18, align 4
  %330 = load i32, i32* %14, align 4
  %331 = icmp slt i32 %329, %330
  br label %332

332:                                              ; preds = %328, %315
  %333 = phi i1 [ false, %315 ], [ %331, %328 ]
  %334 = zext i1 %333 to i32
  %335 = call i32 @assert(i32 %334)
  %336 = load i32*, i32** %15, align 8
  %337 = load i32*, i32** %16, align 8
  %338 = load i32, i32* %18, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i32, i32* %337, i64 %339
  %341 = load i32, i32* %340, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i32, i32* %336, i64 %342
  store i32* %343, i32** %23, align 8
  %344 = load i32*, i32** %23, align 8
  %345 = load i32, i32* %344, align 4
  %346 = add nsw i32 %345, 1
  %347 = load i32*, i32** %23, align 8
  store i32 %346, i32* %347, align 4
  %348 = load i32, i32* %9, align 4
  %349 = and i32 %348, -2
  %350 = load i32, i32* %22, align 4
  %351 = or i32 %349, %350
  %352 = load i32*, i32** %23, align 8
  %353 = load i32*, i32** %23, align 8
  %354 = load i32, i32* %353, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i32, i32* %352, i64 %355
  store i32 %351, i32* %356, align 4
  %357 = load i32, i32* %19, align 4
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %359, label %360

359:                                              ; preds = %332
  br label %495

360:                                              ; preds = %332
  %361 = load i32, i32* %11, align 4
  %362 = icmp sge i32 %361, 0
  br i1 %362, label %363, label %428

363:                                              ; preds = %360
  %364 = load i32, i32* %11, align 4
  %365 = load i32, i32* %19, align 4
  %366 = sdiv i32 %364, %365
  store i32 %366, i32* %29, align 4
  %367 = load i32, i32* %11, align 4
  %368 = load i32, i32* %29, align 4
  %369 = load i32, i32* %19, align 4
  %370 = mul nsw i32 %368, %369
  %371 = sub nsw i32 %367, %370
  store i32 %371, i32* %30, align 4
  %372 = load i32, i32* %19, align 4
  %373 = ashr i32 %372, 1
  store i32 %373, i32* %31, align 4
  %374 = load i32, i32* %19, align 4
  store i32 %374, i32* %17, align 4
  br label %375

375:                                              ; preds = %423, %363
  %376 = load i32, i32* %18, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %18, align 4
  %378 = load i32, i32* %29, align 4
  %379 = load i32, i32* %9, align 4
  %380 = add nsw i32 %379, %378
  store i32 %380, i32* %9, align 4
  %381 = load i32, i32* %30, align 4
  %382 = load i32, i32* %31, align 4
  %383 = sub nsw i32 %382, %381
  store i32 %383, i32* %31, align 4
  %384 = load i32, i32* %31, align 4
  %385 = icmp slt i32 %384, 0
  br i1 %385, label %386, label %392

386:                                              ; preds = %375
  %387 = load i32, i32* %19, align 4
  %388 = load i32, i32* %31, align 4
  %389 = add nsw i32 %388, %387
  store i32 %389, i32* %31, align 4
  %390 = load i32, i32* %9, align 4
  %391 = add nsw i32 %390, 1
  store i32 %391, i32* %9, align 4
  br label %392

392:                                              ; preds = %386, %375
  %393 = load i32, i32* %18, align 4
  %394 = icmp sge i32 %393, 0
  br i1 %394, label %395, label %399

395:                                              ; preds = %392
  %396 = load i32, i32* %18, align 4
  %397 = load i32, i32* %14, align 4
  %398 = icmp slt i32 %396, %397
  br label %399

399:                                              ; preds = %395, %392
  %400 = phi i1 [ false, %392 ], [ %398, %395 ]
  %401 = zext i1 %400 to i32
  %402 = call i32 @assert(i32 %401)
  %403 = load i32*, i32** %15, align 8
  %404 = load i32*, i32** %16, align 8
  %405 = load i32, i32* %18, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds i32, i32* %404, i64 %406
  %408 = load i32, i32* %407, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i32, i32* %403, i64 %409
  store i32* %410, i32** %23, align 8
  %411 = load i32*, i32** %23, align 8
  %412 = load i32, i32* %411, align 4
  %413 = add nsw i32 %412, 1
  %414 = load i32*, i32** %23, align 8
  store i32 %413, i32* %414, align 4
  store i32 %413, i32* %32, align 4
  %415 = load i32, i32* %9, align 4
  %416 = and i32 %415, -2
  %417 = load i32, i32* %22, align 4
  %418 = or i32 %416, %417
  %419 = load i32*, i32** %23, align 8
  %420 = load i32, i32* %32, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i32, i32* %419, i64 %421
  store i32 %418, i32* %422, align 4
  br label %423

423:                                              ; preds = %399
  %424 = load i32, i32* %17, align 4
  %425 = add nsw i32 %424, -1
  store i32 %425, i32* %17, align 4
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %375, label %427

427:                                              ; preds = %423
  br label %495

428:                                              ; preds = %360
  %429 = load i32, i32* %11, align 4
  %430 = sub nsw i32 0, %429
  store i32 %430, i32* %11, align 4
  %431 = load i32, i32* %11, align 4
  %432 = load i32, i32* %19, align 4
  %433 = sdiv i32 %431, %432
  store i32 %433, i32* %33, align 4
  %434 = load i32, i32* %11, align 4
  %435 = load i32, i32* %33, align 4
  %436 = load i32, i32* %19, align 4
  %437 = mul nsw i32 %435, %436
  %438 = sub nsw i32 %434, %437
  store i32 %438, i32* %34, align 4
  %439 = load i32, i32* %19, align 4
  %440 = ashr i32 %439, 1
  store i32 %440, i32* %35, align 4
  %441 = load i32, i32* %19, align 4
  store i32 %441, i32* %17, align 4
  br label %442

442:                                              ; preds = %490, %428
  %443 = load i32, i32* %18, align 4
  %444 = add nsw i32 %443, 1
  store i32 %444, i32* %18, align 4
  %445 = load i32, i32* %33, align 4
  %446 = load i32, i32* %9, align 4
  %447 = sub nsw i32 %446, %445
  store i32 %447, i32* %9, align 4
  %448 = load i32, i32* %34, align 4
  %449 = load i32, i32* %35, align 4
  %450 = sub nsw i32 %449, %448
  store i32 %450, i32* %35, align 4
  %451 = load i32, i32* %35, align 4
  %452 = icmp slt i32 %451, 0
  br i1 %452, label %453, label %459

453:                                              ; preds = %442
  %454 = load i32, i32* %19, align 4
  %455 = load i32, i32* %35, align 4
  %456 = add nsw i32 %455, %454
  store i32 %456, i32* %35, align 4
  %457 = load i32, i32* %9, align 4
  %458 = add nsw i32 %457, -1
  store i32 %458, i32* %9, align 4
  br label %459

459:                                              ; preds = %453, %442
  %460 = load i32, i32* %18, align 4
  %461 = icmp sge i32 %460, 0
  br i1 %461, label %462, label %466

462:                                              ; preds = %459
  %463 = load i32, i32* %18, align 4
  %464 = load i32, i32* %14, align 4
  %465 = icmp slt i32 %463, %464
  br label %466

466:                                              ; preds = %462, %459
  %467 = phi i1 [ false, %459 ], [ %465, %462 ]
  %468 = zext i1 %467 to i32
  %469 = call i32 @assert(i32 %468)
  %470 = load i32*, i32** %15, align 8
  %471 = load i32*, i32** %16, align 8
  %472 = load i32, i32* %18, align 4
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds i32, i32* %471, i64 %473
  %475 = load i32, i32* %474, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds i32, i32* %470, i64 %476
  store i32* %477, i32** %23, align 8
  %478 = load i32*, i32** %23, align 8
  %479 = load i32, i32* %478, align 4
  %480 = add nsw i32 %479, 1
  %481 = load i32*, i32** %23, align 8
  store i32 %480, i32* %481, align 4
  store i32 %480, i32* %36, align 4
  %482 = load i32, i32* %9, align 4
  %483 = and i32 %482, -2
  %484 = load i32, i32* %22, align 4
  %485 = or i32 %483, %484
  %486 = load i32*, i32** %23, align 8
  %487 = load i32, i32* %36, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds i32, i32* %486, i64 %488
  store i32 %485, i32* %489, align 4
  br label %490

490:                                              ; preds = %466
  %491 = load i32, i32* %17, align 4
  %492 = add nsw i32 %491, -1
  store i32 %492, i32* %17, align 4
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %442, label %494

494:                                              ; preds = %490
  br label %495

495:                                              ; preds = %71, %234, %257, %359, %494, %427
  ret void
}

declare dso_local i32 @fixed2int(i32) #1

declare dso_local i32 @int2fixed(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
