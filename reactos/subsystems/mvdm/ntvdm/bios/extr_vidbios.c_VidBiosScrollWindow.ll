; ModuleID = '/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/bios/extr_vidbios.c_VidBiosScrollWindow.c'
source_filename = "/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/bios/extr_vidbios.c_VidBiosScrollWindow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }

@TEXT_VIDEO_SEG = common dso_local global i32 0, align 4
@Bda = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [52 x i8] c"VidBiosScrollWindow: not implemented for mode 0%Xh\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@EmulatorContext = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, %struct.TYPE_4__*, i32, i32)* @VidBiosScrollWindow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @VidBiosScrollWindow(i32 %0, i64 %1, %struct.TYPE_4__* byval(%struct.TYPE_4__) align 8 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %19 = load i32, i32* @TEXT_VIDEO_SEG, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Bda, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %20, %23
  %25 = call i64 @TO_LINEAR(i32 %19, i32 %24)
  store i64 %25, i64* %13, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i64 @MAKEWORD(i8 signext 32, i32 %26)
  store i64 %27, i64* %14, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Bda, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %30, 3
  br i1 %31, label %32, label %38

32:                                               ; preds = %5
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Bda, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @DPRINT1(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %6, align 4
  br label %546

38:                                               ; preds = %5
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @max(i64 %40, i32 0)
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Bda, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %44, 1
  %46 = call i8* @min(i32 %41, i32 %45)
  %47 = ptrtoint i8* %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i64 %47, i64* %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @max(i64 %50, i32 0)
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Bda, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %54, 1
  %56 = call i8* @min(i32 %51, i32 %55)
  %57 = ptrtoint i8* %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  store i64 %57, i64* %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @max(i64 %60, i32 0)
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Bda, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @min(i32 %61, i32 %64)
  %66 = ptrtoint i8* %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  store i64 %66, i64* %67, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @max(i64 %69, i32 0)
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Bda, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @min(i32 %70, i32 %73)
  %75 = ptrtoint i8* %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 3
  store i64 %75, i64* %76, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = sub nsw i64 %78, %80
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %15, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = sub nsw i64 %84, %86
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %16, align 8
  %89 = load i64, i64* %8, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %111, label %91

91:                                               ; preds = %38
  %92 = load i32, i32* %7, align 4
  %93 = icmp eq i32 %92, 128
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* %7, align 4
  %96 = icmp eq i32 %95, 131
  br i1 %96, label %97, label %101

97:                                               ; preds = %94, %91
  %98 = load i64, i64* %8, align 8
  %99 = load i64, i64* %16, align 8
  %100 = icmp sge i64 %98, %99
  br i1 %100, label %111, label %101

101:                                              ; preds = %97, %94
  %102 = load i32, i32* %7, align 4
  %103 = icmp eq i32 %102, 130
  br i1 %103, label %107, label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %7, align 4
  %106 = icmp eq i32 %105, 129
  br i1 %106, label %107, label %154

107:                                              ; preds = %104, %101
  %108 = load i64, i64* %8, align 8
  %109 = load i64, i64* %15, align 8
  %110 = icmp sge i64 %108, %109
  br i1 %110, label %111, label %154

111:                                              ; preds = %107, %97, %38
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %11, align 4
  br label %115

115:                                              ; preds = %149, %111
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = icmp sle i64 %117, %119
  br i1 %120, label %121, label %152

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %12, align 4
  br label %125

125:                                              ; preds = %145, %121
  %126 = load i32, i32* %12, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp sle i64 %127, %129
  br i1 %130, label %131, label %148

131:                                              ; preds = %125
  %132 = load i64, i64* %13, align 8
  %133 = load i32, i32* %11, align 4
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Bda, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = mul nsw i32 %133, %136
  %138 = load i32, i32* %12, align 4
  %139 = add nsw i32 %137, %138
  %140 = sext i32 %139 to i64
  %141 = mul i64 %140, 8
  %142 = add i64 %132, %141
  %143 = ptrtoint i64* %14 to i32
  %144 = call i32 @EmulatorWriteMemory(i32* @EmulatorContext, i64 %142, i32 %143, i32 8)
  br label %145

145:                                              ; preds = %131
  %146 = load i32, i32* %12, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %12, align 4
  br label %125

148:                                              ; preds = %125
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %11, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %11, align 4
  br label %115

152:                                              ; preds = %115
  %153 = load i32, i32* @TRUE, align 4
  store i32 %153, i32* %6, align 4
  br label %546

154:                                              ; preds = %107, %104
  %155 = load i32, i32* %7, align 4
  switch i32 %155, label %544 [
    i32 128, label %156
    i32 131, label %253
    i32 130, label %351
    i32 129, label %447
  ]

156:                                              ; preds = %154
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* %8, align 8
  %160 = add nsw i64 %158, %159
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %11, align 4
  br label %162

162:                                              ; preds = %205, %156
  %163 = load i32, i32* %11, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = icmp sle i64 %164, %166
  br i1 %167, label %168, label %208

168:                                              ; preds = %162
  %169 = load i64, i64* %13, align 8
  %170 = load i32, i32* %11, align 4
  %171 = sext i32 %170 to i64
  %172 = load i64, i64* %8, align 8
  %173 = sub nsw i64 %171, %172
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Bda, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = sext i32 %176 to i64
  %178 = mul nsw i64 %173, %177
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = add nsw i64 %178, %180
  %182 = mul i64 %181, 8
  %183 = add i64 %169, %182
  %184 = load i64, i64* %13, align 8
  %185 = load i32, i32* %11, align 4
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Bda, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = mul nsw i32 %185, %188
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = add nsw i64 %190, %192
  %194 = mul i64 %193, 8
  %195 = add i64 %184, %194
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = sub nsw i64 %197, %199
  %201 = add nsw i64 %200, 1
  %202 = mul i64 %201, 8
  %203 = trunc i64 %202 to i32
  %204 = call i32 @EmulatorCopyMemory(i32* @EmulatorContext, i64 %183, i64 %195, i32 %203)
  br label %205

205:                                              ; preds = %168
  %206 = load i32, i32* %11, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %11, align 4
  br label %162

208:                                              ; preds = %162
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 3
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* %8, align 8
  %212 = sub nsw i64 %210, %211
  %213 = add nsw i64 %212, 1
  %214 = trunc i64 %213 to i32
  store i32 %214, i32* %11, align 4
  br label %215

215:                                              ; preds = %249, %208
  %216 = load i32, i32* %11, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 3
  %219 = load i64, i64* %218, align 8
  %220 = icmp sle i64 %217, %219
  br i1 %220, label %221, label %252

221:                                              ; preds = %215
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = trunc i64 %223 to i32
  store i32 %224, i32* %12, align 4
  br label %225

225:                                              ; preds = %245, %221
  %226 = load i32, i32* %12, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = icmp sle i64 %227, %229
  br i1 %230, label %231, label %248

231:                                              ; preds = %225
  %232 = load i64, i64* %13, align 8
  %233 = load i32, i32* %11, align 4
  %234 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Bda, align 8
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 4
  %237 = mul nsw i32 %233, %236
  %238 = load i32, i32* %12, align 4
  %239 = add nsw i32 %237, %238
  %240 = sext i32 %239 to i64
  %241 = mul i64 %240, 8
  %242 = add i64 %232, %241
  %243 = ptrtoint i64* %14 to i32
  %244 = call i32 @EmulatorWriteMemory(i32* @EmulatorContext, i64 %242, i32 %243, i32 8)
  br label %245

245:                                              ; preds = %231
  %246 = load i32, i32* %12, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %12, align 4
  br label %225

248:                                              ; preds = %225
  br label %249

249:                                              ; preds = %248
  %250 = load i32, i32* %11, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %11, align 4
  br label %215

252:                                              ; preds = %215
  br label %544

253:                                              ; preds = %154
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 3
  %255 = load i64, i64* %254, align 8
  %256 = load i64, i64* %8, align 8
  %257 = sub nsw i64 %255, %256
  %258 = trunc i64 %257 to i32
  store i32 %258, i32* %11, align 4
  br label %259

259:                                              ; preds = %302, %253
  %260 = load i32, i32* %11, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %263 = load i64, i64* %262, align 8
  %264 = icmp sge i64 %261, %263
  br i1 %264, label %265, label %305

265:                                              ; preds = %259
  %266 = load i64, i64* %13, align 8
  %267 = load i32, i32* %11, align 4
  %268 = sext i32 %267 to i64
  %269 = load i64, i64* %8, align 8
  %270 = add nsw i64 %268, %269
  %271 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Bda, align 8
  %272 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 4
  %274 = sext i32 %273 to i64
  %275 = mul nsw i64 %270, %274
  %276 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = add nsw i64 %275, %277
  %279 = mul i64 %278, 8
  %280 = add i64 %266, %279
  %281 = load i64, i64* %13, align 8
  %282 = load i32, i32* %11, align 4
  %283 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Bda, align 8
  %284 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 4
  %286 = mul nsw i32 %282, %285
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = add nsw i64 %287, %289
  %291 = mul i64 %290, 8
  %292 = add i64 %281, %291
  %293 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %294 = load i64, i64* %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = sub nsw i64 %294, %296
  %298 = add nsw i64 %297, 1
  %299 = mul i64 %298, 8
  %300 = trunc i64 %299 to i32
  %301 = call i32 @EmulatorCopyMemory(i32* @EmulatorContext, i64 %280, i64 %292, i32 %300)
  br label %302

302:                                              ; preds = %265
  %303 = load i32, i32* %11, align 4
  %304 = add nsw i32 %303, -1
  store i32 %304, i32* %11, align 4
  br label %259

305:                                              ; preds = %259
  %306 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %307 = load i64, i64* %306, align 8
  %308 = load i64, i64* %8, align 8
  %309 = add nsw i64 %307, %308
  %310 = sub nsw i64 %309, 1
  %311 = trunc i64 %310 to i32
  store i32 %311, i32* %17, align 4
  %312 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %313 = load i64, i64* %312, align 8
  %314 = trunc i64 %313 to i32
  store i32 %314, i32* %11, align 4
  br label %315

315:                                              ; preds = %347, %305
  %316 = load i32, i32* %11, align 4
  %317 = load i32, i32* %17, align 4
  %318 = icmp sle i32 %316, %317
  br i1 %318, label %319, label %350

319:                                              ; preds = %315
  %320 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %321 = load i64, i64* %320, align 8
  %322 = trunc i64 %321 to i32
  store i32 %322, i32* %12, align 4
  br label %323

323:                                              ; preds = %343, %319
  %324 = load i32, i32* %12, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %327 = load i64, i64* %326, align 8
  %328 = icmp sle i64 %325, %327
  br i1 %328, label %329, label %346

329:                                              ; preds = %323
  %330 = load i64, i64* %13, align 8
  %331 = load i32, i32* %11, align 4
  %332 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Bda, align 8
  %333 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 4
  %335 = mul nsw i32 %331, %334
  %336 = load i32, i32* %12, align 4
  %337 = add nsw i32 %335, %336
  %338 = sext i32 %337 to i64
  %339 = mul i64 %338, 8
  %340 = add i64 %330, %339
  %341 = ptrtoint i64* %14 to i32
  %342 = call i32 @EmulatorWriteMemory(i32* @EmulatorContext, i64 %340, i32 %341, i32 8)
  br label %343

343:                                              ; preds = %329
  %344 = load i32, i32* %12, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %12, align 4
  br label %323

346:                                              ; preds = %323
  br label %347

347:                                              ; preds = %346
  %348 = load i32, i32* %11, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %11, align 4
  br label %315

350:                                              ; preds = %315
  br label %544

351:                                              ; preds = %154
  %352 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %353 = load i64, i64* %352, align 8
  %354 = trunc i64 %353 to i32
  store i32 %354, i32* %11, align 4
  br label %355

355:                                              ; preds = %399, %351
  %356 = load i32, i32* %11, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 3
  %359 = load i64, i64* %358, align 8
  %360 = icmp sle i64 %357, %359
  br i1 %360, label %361, label %402

361:                                              ; preds = %355
  %362 = load i64, i64* %13, align 8
  %363 = load i32, i32* %11, align 4
  %364 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Bda, align 8
  %365 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %364, i32 0, i32 2
  %366 = load i32, i32* %365, align 4
  %367 = mul nsw i32 %363, %366
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %370 = load i64, i64* %369, align 8
  %371 = add nsw i64 %368, %370
  %372 = mul i64 %371, 8
  %373 = add i64 %362, %372
  %374 = load i64, i64* %13, align 8
  %375 = load i32, i32* %11, align 4
  %376 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Bda, align 8
  %377 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %376, i32 0, i32 2
  %378 = load i32, i32* %377, align 4
  %379 = mul nsw i32 %375, %378
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %382 = load i64, i64* %381, align 8
  %383 = add nsw i64 %380, %382
  %384 = load i64, i64* %8, align 8
  %385 = add nsw i64 %383, %384
  %386 = mul i64 %385, 8
  %387 = add i64 %374, %386
  %388 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %389 = load i64, i64* %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %391 = load i64, i64* %390, align 8
  %392 = sub nsw i64 %389, %391
  %393 = load i64, i64* %8, align 8
  %394 = sub nsw i64 %392, %393
  %395 = add nsw i64 %394, 1
  %396 = mul i64 %395, 8
  %397 = trunc i64 %396 to i32
  %398 = call i32 @EmulatorCopyMemory(i32* @EmulatorContext, i64 %373, i64 %387, i32 %397)
  br label %399

399:                                              ; preds = %361
  %400 = load i32, i32* %11, align 4
  %401 = add nsw i32 %400, 1
  store i32 %401, i32* %11, align 4
  br label %355

402:                                              ; preds = %355
  %403 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %404 = load i64, i64* %403, align 8
  %405 = trunc i64 %404 to i32
  store i32 %405, i32* %11, align 4
  br label %406

406:                                              ; preds = %443, %402
  %407 = load i32, i32* %11, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 3
  %410 = load i64, i64* %409, align 8
  %411 = icmp sle i64 %408, %410
  br i1 %411, label %412, label %446

412:                                              ; preds = %406
  %413 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %414 = load i64, i64* %413, align 8
  %415 = load i64, i64* %8, align 8
  %416 = sub nsw i64 %414, %415
  %417 = add nsw i64 %416, 1
  %418 = trunc i64 %417 to i32
  store i32 %418, i32* %12, align 4
  br label %419

419:                                              ; preds = %439, %412
  %420 = load i32, i32* %12, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %423 = load i64, i64* %422, align 8
  %424 = icmp sle i64 %421, %423
  br i1 %424, label %425, label %442

425:                                              ; preds = %419
  %426 = load i64, i64* %13, align 8
  %427 = load i32, i32* %11, align 4
  %428 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Bda, align 8
  %429 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %428, i32 0, i32 2
  %430 = load i32, i32* %429, align 4
  %431 = mul nsw i32 %427, %430
  %432 = load i32, i32* %12, align 4
  %433 = add nsw i32 %431, %432
  %434 = sext i32 %433 to i64
  %435 = mul i64 %434, 8
  %436 = add i64 %426, %435
  %437 = ptrtoint i64* %14 to i32
  %438 = call i32 @EmulatorWriteMemory(i32* @EmulatorContext, i64 %436, i32 %437, i32 8)
  br label %439

439:                                              ; preds = %425
  %440 = load i32, i32* %12, align 4
  %441 = add nsw i32 %440, 1
  store i32 %441, i32* %12, align 4
  br label %419

442:                                              ; preds = %419
  br label %443

443:                                              ; preds = %442
  %444 = load i32, i32* %11, align 4
  %445 = add nsw i32 %444, 1
  store i32 %445, i32* %11, align 4
  br label %406

446:                                              ; preds = %406
  br label %544

447:                                              ; preds = %154
  %448 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %449 = load i64, i64* %448, align 8
  %450 = trunc i64 %449 to i32
  store i32 %450, i32* %11, align 4
  br label %451

451:                                              ; preds = %495, %447
  %452 = load i32, i32* %11, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 3
  %455 = load i64, i64* %454, align 8
  %456 = icmp sle i64 %453, %455
  br i1 %456, label %457, label %498

457:                                              ; preds = %451
  %458 = load i64, i64* %13, align 8
  %459 = load i32, i32* %11, align 4
  %460 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Bda, align 8
  %461 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %460, i32 0, i32 2
  %462 = load i32, i32* %461, align 4
  %463 = mul nsw i32 %459, %462
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %466 = load i64, i64* %465, align 8
  %467 = add nsw i64 %464, %466
  %468 = load i64, i64* %8, align 8
  %469 = add nsw i64 %467, %468
  %470 = mul i64 %469, 8
  %471 = add i64 %458, %470
  %472 = load i64, i64* %13, align 8
  %473 = load i32, i32* %11, align 4
  %474 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Bda, align 8
  %475 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %474, i32 0, i32 2
  %476 = load i32, i32* %475, align 4
  %477 = mul nsw i32 %473, %476
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %480 = load i64, i64* %479, align 8
  %481 = add nsw i64 %478, %480
  %482 = mul i64 %481, 8
  %483 = add i64 %472, %482
  %484 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %485 = load i64, i64* %484, align 8
  %486 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %487 = load i64, i64* %486, align 8
  %488 = sub nsw i64 %485, %487
  %489 = load i64, i64* %8, align 8
  %490 = sub nsw i64 %488, %489
  %491 = add nsw i64 %490, 1
  %492 = mul i64 %491, 8
  %493 = trunc i64 %492 to i32
  %494 = call i32 @EmulatorCopyMemory(i32* @EmulatorContext, i64 %471, i64 %483, i32 %493)
  br label %495

495:                                              ; preds = %457
  %496 = load i32, i32* %11, align 4
  %497 = add nsw i32 %496, 1
  store i32 %497, i32* %11, align 4
  br label %451

498:                                              ; preds = %451
  %499 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %500 = load i64, i64* %499, align 8
  %501 = load i64, i64* %8, align 8
  %502 = add nsw i64 %500, %501
  %503 = sub nsw i64 %502, 1
  %504 = trunc i64 %503 to i32
  store i32 %504, i32* %18, align 4
  %505 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %506 = load i64, i64* %505, align 8
  %507 = trunc i64 %506 to i32
  store i32 %507, i32* %11, align 4
  br label %508

508:                                              ; preds = %540, %498
  %509 = load i32, i32* %11, align 4
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 3
  %512 = load i64, i64* %511, align 8
  %513 = icmp sle i64 %510, %512
  br i1 %513, label %514, label %543

514:                                              ; preds = %508
  %515 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %516 = load i64, i64* %515, align 8
  %517 = trunc i64 %516 to i32
  store i32 %517, i32* %12, align 4
  br label %518

518:                                              ; preds = %536, %514
  %519 = load i32, i32* %12, align 4
  %520 = load i32, i32* %18, align 4
  %521 = icmp sle i32 %519, %520
  br i1 %521, label %522, label %539

522:                                              ; preds = %518
  %523 = load i64, i64* %13, align 8
  %524 = load i32, i32* %11, align 4
  %525 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Bda, align 8
  %526 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %525, i32 0, i32 2
  %527 = load i32, i32* %526, align 4
  %528 = mul nsw i32 %524, %527
  %529 = load i32, i32* %12, align 4
  %530 = add nsw i32 %528, %529
  %531 = sext i32 %530 to i64
  %532 = mul i64 %531, 8
  %533 = add i64 %523, %532
  %534 = ptrtoint i64* %14 to i32
  %535 = call i32 @EmulatorWriteMemory(i32* @EmulatorContext, i64 %533, i32 %534, i32 8)
  br label %536

536:                                              ; preds = %522
  %537 = load i32, i32* %12, align 4
  %538 = add nsw i32 %537, 1
  store i32 %538, i32* %12, align 4
  br label %518

539:                                              ; preds = %518
  br label %540

540:                                              ; preds = %539
  %541 = load i32, i32* %11, align 4
  %542 = add nsw i32 %541, 1
  store i32 %542, i32* %11, align 4
  br label %508

543:                                              ; preds = %508
  br label %544

544:                                              ; preds = %154, %543, %446, %350, %252
  %545 = load i32, i32* @TRUE, align 4
  store i32 %545, i32* %6, align 4
  br label %546

546:                                              ; preds = %544, %152, %32
  %547 = load i32, i32* %6, align 4
  ret i32 %547
}

declare dso_local i64 @TO_LINEAR(i32, i32) #1

declare dso_local i64 @MAKEWORD(i8 signext, i32) #1

declare dso_local i32 @DPRINT1(i8*, i32) #1

declare dso_local i8* @min(i32, i32) #1

declare dso_local i32 @max(i64, i32) #1

declare dso_local i32 @EmulatorWriteMemory(i32*, i64, i32, i32) #1

declare dso_local i32 @EmulatorCopyMemory(i32*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
