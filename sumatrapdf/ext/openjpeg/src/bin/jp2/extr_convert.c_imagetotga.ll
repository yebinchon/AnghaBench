; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_convert.c_imagetotga.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_convert.c_imagetotga.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i64*, i64, i64 }

@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"ERROR -> failed to open %s for writing\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"Unable to create a tga file with such J2K image charateristics.\0A\00", align 1
@OPJ_TRUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"failed to write 1 byte for %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @imagetotga(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca i8, align 1
  %23 = alloca float, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 1, i32* %16, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = call i32* @fopen(i8* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %28, i32** %24, align 8
  %29 = load i32*, i32** %24, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %2
  %32 = load i32, i32* @stderr, align 4
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  store i32 1, i32* %3, align 4
  br label %432

35:                                               ; preds = %2
  store i32 0, i32* %12, align 4
  br label %36

36:                                               ; preds = %117, %35
  %37 = load i32, i32* %12, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sub nsw i32 %40, 1
  %42 = icmp ult i32 %37, %41
  br i1 %42, label %43, label %120

43:                                               ; preds = %36
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i32, i32* %12, align 4
  %54 = add i32 %53, 1
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %49, %58
  br i1 %59, label %111, label %60

60:                                               ; preds = %43
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load i32, i32* %12, align 4
  %71 = add i32 %70, 1
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %66, %75
  br i1 %76, label %111, label %77

77:                                               ; preds = %60
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = load i32, i32* %12, align 4
  %88 = add i32 %87, 1
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %83, %92
  br i1 %93, label %111, label %94

94:                                               ; preds = %77
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i64 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = load i32, i32* %12, align 4
  %105 = add i32 %104, 1
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %100, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %94, %77, %60, %43
  %112 = load i32*, i32** %24, align 8
  %113 = call i32 @fclose(i32* %112)
  %114 = load i32, i32* @stderr, align 4
  %115 = call i32 (i32, i8*, ...) @fprintf(i32 %114, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %432

116:                                              ; preds = %94
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %12, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %12, align 4
  br label %36

120:                                              ; preds = %36
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i64 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 6
  %126 = load i64, i64* %125, align 8
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %6, align 4
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i64 0
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 5
  %133 = load i64, i64* %132, align 8
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %7, align 4
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp eq i32 %137, 2
  br i1 %138, label %144, label %139

139:                                              ; preds = %120
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp eq i32 %142, 4
  br label %144

144:                                              ; preds = %139, %120
  %145 = phi i1 [ true, %120 ], [ %143, %139 ]
  %146 = zext i1 %145 to i32
  store i32 %146, i32* %11, align 4
  %147 = load i32, i32* %11, align 4
  %148 = icmp ne i32 %147, 0
  %149 = zext i1 %148 to i64
  %150 = select i1 %148, i32 32, i32 24
  store i32 %150, i32* %8, align 4
  %151 = load i32*, i32** %24, align 8
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* %6, align 4
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* @OPJ_TRUE, align 4
  %156 = call i32 @tga_writeheader(i32* %151, i32 %152, i32 %153, i32 %154, i32 %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %144
  br label %428

159:                                              ; preds = %144
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = sub nsw i32 %162, 1
  store i32 %163, i32* %17, align 4
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i64 0
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = trunc i64 %169 to i32
  %171 = shl i32 1, %170
  %172 = sub nsw i32 %171, 1
  %173 = sitofp i32 %172 to float
  %174 = fdiv float 2.550000e+02, %173
  store float %174, float* %23, align 4
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i64 0
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 3
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %192

182:                                              ; preds = %159
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i64 0
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = sub nsw i64 %188, 1
  %190 = trunc i64 %189 to i32
  %191 = shl i32 1, %190
  br label %193

192:                                              ; preds = %159
  br label %193

193:                                              ; preds = %192, %182
  %194 = phi i32 [ %191, %182 ], [ 0, %192 ]
  store i32 %194, i32* %13, align 4
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = icmp sge i32 %197, 3
  br i1 %198, label %199, label %240

199:                                              ; preds = %193
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i64 1
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 3
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %217

207:                                              ; preds = %199
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 1
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i64 1
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 2
  %213 = load i64, i64* %212, align 8
  %214 = sub nsw i64 %213, 1
  %215 = trunc i64 %214 to i32
  %216 = shl i32 1, %215
  br label %218

217:                                              ; preds = %199
  br label %218

218:                                              ; preds = %217, %207
  %219 = phi i32 [ %216, %207 ], [ 0, %217 ]
  store i32 %219, i32* %14, align 4
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 1
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i64 2
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 3
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %237

227:                                              ; preds = %218
  %228 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 1
  %230 = load %struct.TYPE_4__*, %struct.TYPE_4__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i64 2
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 2
  %233 = load i64, i64* %232, align 8
  %234 = sub nsw i64 %233, 1
  %235 = trunc i64 %234 to i32
  %236 = shl i32 1, %235
  br label %238

237:                                              ; preds = %218
  br label %238

238:                                              ; preds = %237, %227
  %239 = phi i32 [ %236, %227 ], [ 0, %237 ]
  store i32 %239, i32* %15, align 4
  br label %240

240:                                              ; preds = %238, %193
  store i32 0, i32* %10, align 4
  br label %241

241:                                              ; preds = %424, %240
  %242 = load i32, i32* %10, align 4
  %243 = load i32, i32* %7, align 4
  %244 = icmp slt i32 %242, %243
  br i1 %244, label %245, label %427

245:                                              ; preds = %241
  %246 = load i32, i32* %10, align 4
  %247 = load i32, i32* %6, align 4
  %248 = mul nsw i32 %246, %247
  store i32 %248, i32* %26, align 4
  store i32 0, i32* %9, align 4
  br label %249

249:                                              ; preds = %418, %245
  %250 = load i32, i32* %9, align 4
  %251 = load i32, i32* %6, align 4
  %252 = icmp slt i32 %250, %251
  br i1 %252, label %253, label %423

253:                                              ; preds = %249
  %254 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 1
  %256 = load %struct.TYPE_4__*, %struct.TYPE_4__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i64 0
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 4
  %259 = load i64*, i64** %258, align 8
  %260 = load i32, i32* %26, align 4
  %261 = zext i32 %260 to i64
  %262 = getelementptr inbounds i64, i64* %259, i64 %261
  %263 = load i64, i64* %262, align 8
  %264 = load i32, i32* %13, align 4
  %265 = sext i32 %264 to i64
  %266 = add nsw i64 %263, %265
  %267 = sitofp i64 %266 to float
  store float %267, float* %18, align 4
  %268 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = icmp sgt i32 %270, 2
  br i1 %271, label %272, label %301

272:                                              ; preds = %253
  %273 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %273, i32 0, i32 1
  %275 = load %struct.TYPE_4__*, %struct.TYPE_4__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %275, i64 1
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %276, i32 0, i32 4
  %278 = load i64*, i64** %277, align 8
  %279 = load i32, i32* %26, align 4
  %280 = zext i32 %279 to i64
  %281 = getelementptr inbounds i64, i64* %278, i64 %280
  %282 = load i64, i64* %281, align 8
  %283 = load i32, i32* %14, align 4
  %284 = sext i32 %283 to i64
  %285 = add nsw i64 %282, %284
  %286 = sitofp i64 %285 to float
  store float %286, float* %19, align 4
  %287 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %287, i32 0, i32 1
  %289 = load %struct.TYPE_4__*, %struct.TYPE_4__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %289, i64 2
  %291 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %290, i32 0, i32 4
  %292 = load i64*, i64** %291, align 8
  %293 = load i32, i32* %26, align 4
  %294 = zext i32 %293 to i64
  %295 = getelementptr inbounds i64, i64* %292, i64 %294
  %296 = load i64, i64* %295, align 8
  %297 = load i32, i32* %15, align 4
  %298 = sext i32 %297 to i64
  %299 = add nsw i64 %296, %298
  %300 = sitofp i64 %299 to float
  store float %300, float* %20, align 4
  br label %304

301:                                              ; preds = %253
  %302 = load float, float* %18, align 4
  store float %302, float* %19, align 4
  %303 = load float, float* %18, align 4
  store float %303, float* %20, align 4
  br label %304

304:                                              ; preds = %301, %272
  %305 = load float, float* %20, align 4
  %306 = fpext float %305 to double
  %307 = fcmp ogt double %306, 2.550000e+02
  br i1 %307, label %308, label %309

308:                                              ; preds = %304
  store float 2.550000e+02, float* %20, align 4
  br label %315

309:                                              ; preds = %304
  %310 = load float, float* %20, align 4
  %311 = fpext float %310 to double
  %312 = fcmp olt double %311, 0.000000e+00
  br i1 %312, label %313, label %314

313:                                              ; preds = %309
  store float 0.000000e+00, float* %20, align 4
  br label %314

314:                                              ; preds = %313, %309
  br label %315

315:                                              ; preds = %314, %308
  %316 = load float, float* %20, align 4
  %317 = load float, float* %23, align 4
  %318 = fmul float %316, %317
  %319 = fptoui float %318 to i8
  store i8 %319, i8* %22, align 1
  %320 = load i32*, i32** %24, align 8
  %321 = call i64 @fwrite(i8* %22, i32 1, i32 1, i32* %320)
  store i64 %321, i64* %25, align 8
  %322 = load i64, i64* %25, align 8
  %323 = icmp ult i64 %322, 1
  br i1 %323, label %324, label %328

324:                                              ; preds = %315
  %325 = load i32, i32* @stderr, align 4
  %326 = load i8*, i8** %5, align 8
  %327 = call i32 (i32, i8*, ...) @fprintf(i32 %325, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %326)
  br label %428

328:                                              ; preds = %315
  %329 = load float, float* %19, align 4
  %330 = fpext float %329 to double
  %331 = fcmp ogt double %330, 2.550000e+02
  br i1 %331, label %332, label %333

332:                                              ; preds = %328
  store float 2.550000e+02, float* %19, align 4
  br label %339

333:                                              ; preds = %328
  %334 = load float, float* %19, align 4
  %335 = fpext float %334 to double
  %336 = fcmp olt double %335, 0.000000e+00
  br i1 %336, label %337, label %338

337:                                              ; preds = %333
  store float 0.000000e+00, float* %19, align 4
  br label %338

338:                                              ; preds = %337, %333
  br label %339

339:                                              ; preds = %338, %332
  %340 = load float, float* %19, align 4
  %341 = load float, float* %23, align 4
  %342 = fmul float %340, %341
  %343 = fptoui float %342 to i8
  store i8 %343, i8* %22, align 1
  %344 = load i32*, i32** %24, align 8
  %345 = call i64 @fwrite(i8* %22, i32 1, i32 1, i32* %344)
  store i64 %345, i64* %25, align 8
  %346 = load i64, i64* %25, align 8
  %347 = icmp ult i64 %346, 1
  br i1 %347, label %348, label %352

348:                                              ; preds = %339
  %349 = load i32, i32* @stderr, align 4
  %350 = load i8*, i8** %5, align 8
  %351 = call i32 (i32, i8*, ...) @fprintf(i32 %349, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %350)
  br label %428

352:                                              ; preds = %339
  %353 = load float, float* %18, align 4
  %354 = fpext float %353 to double
  %355 = fcmp ogt double %354, 2.550000e+02
  br i1 %355, label %356, label %357

356:                                              ; preds = %352
  store float 2.550000e+02, float* %18, align 4
  br label %363

357:                                              ; preds = %352
  %358 = load float, float* %18, align 4
  %359 = fpext float %358 to double
  %360 = fcmp olt double %359, 0.000000e+00
  br i1 %360, label %361, label %362

361:                                              ; preds = %357
  store float 0.000000e+00, float* %18, align 4
  br label %362

362:                                              ; preds = %361, %357
  br label %363

363:                                              ; preds = %362, %356
  %364 = load float, float* %18, align 4
  %365 = load float, float* %23, align 4
  %366 = fmul float %364, %365
  %367 = fptoui float %366 to i8
  store i8 %367, i8* %22, align 1
  %368 = load i32*, i32** %24, align 8
  %369 = call i64 @fwrite(i8* %22, i32 1, i32 1, i32* %368)
  store i64 %369, i64* %25, align 8
  %370 = load i64, i64* %25, align 8
  %371 = icmp ult i64 %370, 1
  br i1 %371, label %372, label %376

372:                                              ; preds = %363
  %373 = load i32, i32* @stderr, align 4
  %374 = load i8*, i8** %5, align 8
  %375 = call i32 (i32, i8*, ...) @fprintf(i32 %373, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %374)
  br label %428

376:                                              ; preds = %363
  %377 = load i32, i32* %11, align 4
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %417

379:                                              ; preds = %376
  %380 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %381 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %380, i32 0, i32 1
  %382 = load %struct.TYPE_4__*, %struct.TYPE_4__** %381, align 8
  %383 = load i32, i32* %17, align 4
  %384 = zext i32 %383 to i64
  %385 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %382, i64 %384
  %386 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %385, i32 0, i32 4
  %387 = load i64*, i64** %386, align 8
  %388 = load i32, i32* %26, align 4
  %389 = zext i32 %388 to i64
  %390 = getelementptr inbounds i64, i64* %387, i64 %389
  %391 = load i64, i64* %390, align 8
  %392 = sitofp i64 %391 to float
  store float %392, float* %21, align 4
  %393 = load float, float* %21, align 4
  %394 = fpext float %393 to double
  %395 = fcmp ogt double %394, 2.550000e+02
  br i1 %395, label %396, label %397

396:                                              ; preds = %379
  store float 2.550000e+02, float* %21, align 4
  br label %403

397:                                              ; preds = %379
  %398 = load float, float* %21, align 4
  %399 = fpext float %398 to double
  %400 = fcmp olt double %399, 0.000000e+00
  br i1 %400, label %401, label %402

401:                                              ; preds = %397
  store float 0.000000e+00, float* %21, align 4
  br label %402

402:                                              ; preds = %401, %397
  br label %403

403:                                              ; preds = %402, %396
  %404 = load float, float* %21, align 4
  %405 = load float, float* %23, align 4
  %406 = fmul float %404, %405
  %407 = fptoui float %406 to i8
  store i8 %407, i8* %22, align 1
  %408 = load i32*, i32** %24, align 8
  %409 = call i64 @fwrite(i8* %22, i32 1, i32 1, i32* %408)
  store i64 %409, i64* %25, align 8
  %410 = load i64, i64* %25, align 8
  %411 = icmp ult i64 %410, 1
  br i1 %411, label %412, label %416

412:                                              ; preds = %403
  %413 = load i32, i32* @stderr, align 4
  %414 = load i8*, i8** %5, align 8
  %415 = call i32 (i32, i8*, ...) @fprintf(i32 %413, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %414)
  br label %428

416:                                              ; preds = %403
  br label %417

417:                                              ; preds = %416, %376
  br label %418

418:                                              ; preds = %417
  %419 = load i32, i32* %9, align 4
  %420 = add nsw i32 %419, 1
  store i32 %420, i32* %9, align 4
  %421 = load i32, i32* %26, align 4
  %422 = add i32 %421, 1
  store i32 %422, i32* %26, align 4
  br label %249

423:                                              ; preds = %249
  br label %424

424:                                              ; preds = %423
  %425 = load i32, i32* %10, align 4
  %426 = add nsw i32 %425, 1
  store i32 %426, i32* %10, align 4
  br label %241

427:                                              ; preds = %241
  store i32 0, i32* %16, align 4
  br label %428

428:                                              ; preds = %427, %412, %372, %348, %324, %158
  %429 = load i32*, i32** %24, align 8
  %430 = call i32 @fclose(i32* %429)
  %431 = load i32, i32* %16, align 4
  store i32 %431, i32* %3, align 4
  br label %432

432:                                              ; preds = %428, %111, %31
  %433 = load i32, i32* %3, align 4
  ret i32 %433
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @tga_writeheader(i32*, i32, i32, i32, i32) #1

declare dso_local i64 @fwrite(i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
