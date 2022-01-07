; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jpwl/extr_convert.c_imagetotga.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jpwl/extr_convert.c_imagetotga.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i64, i32, i32, i64*, i64 }

@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"ERROR -> failed to open %s for writing\0A\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"Unable to create a tga file with such J2K image charateristics.\00", align 1
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
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca i8, align 1
  %22 = alloca float, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i32* @fopen(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %27, i32** %23, align 8
  %28 = load i32*, i32** %23, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* @stderr, align 4
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  store i32 1, i32* %3, align 4
  br label %356

34:                                               ; preds = %2
  store i32 0, i32* %12, align 4
  br label %35

35:                                               ; preds = %97, %34
  %36 = load i32, i32* %12, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sub nsw i32 %39, 1
  %41 = icmp slt i32 %36, %40
  br i1 %41, label %42, label %100

42:                                               ; preds = %35
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load i32, i32* %12, align 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %48, %57
  br i1 %58, label %93, label %59

59:                                               ; preds = %42
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %65, %74
  br i1 %75, label %93, label %76

76:                                               ; preds = %59
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = load i32, i32* %12, align 4
  %87 = add nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %82, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %76, %59, %42
  %94 = load i32, i32* @stderr, align 4
  %95 = call i32 (i32, i8*, ...) @fprintf(i32 %94, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %356

96:                                               ; preds = %76
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %12, align 4
  br label %35

100:                                              ; preds = %35
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i64 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  store i32 %106, i32* %6, align 4
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i64 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %7, align 4
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp eq i32 %115, 2
  br i1 %116, label %122, label %117

117:                                              ; preds = %100
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp eq i32 %120, 4
  br label %122

122:                                              ; preds = %117, %100
  %123 = phi i1 [ true, %100 ], [ %121, %117 ]
  %124 = zext i1 %123 to i32
  store i32 %124, i32* %11, align 4
  %125 = load i32, i32* %11, align 4
  %126 = icmp ne i32 %125, 0
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i32 32, i32 24
  store i32 %128, i32* %8, align 4
  %129 = load i32*, i32** %23, align 8
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* @OPJ_TRUE, align 4
  %134 = call i32 @tga_writeheader(i32* %129, i32 %130, i32 %131, i32 %132, i32 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %122
  store i32 1, i32* %3, align 4
  br label %356

137:                                              ; preds = %122
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = sub nsw i32 %140, 1
  store i32 %141, i32* %16, align 4
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i64 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = trunc i64 %147 to i32
  %149 = shl i32 1, %148
  %150 = sub nsw i32 %149, 1
  %151 = sitofp i32 %150 to float
  %152 = fdiv float 2.550000e+02, %151
  store float %152, float* %22, align 4
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i64 0
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 6
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %170

160:                                              ; preds = %137
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i64 0
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = sub nsw i64 %166, 1
  %168 = trunc i64 %167 to i32
  %169 = shl i32 1, %168
  br label %171

170:                                              ; preds = %137
  br label %171

171:                                              ; preds = %170, %160
  %172 = phi i32 [ %169, %160 ], [ 0, %170 ]
  store i32 %172, i32* %13, align 4
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i64 1
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 6
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %190

180:                                              ; preds = %171
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i64 1
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = sub nsw i64 %186, 1
  %188 = trunc i64 %187 to i32
  %189 = shl i32 1, %188
  br label %191

190:                                              ; preds = %171
  br label %191

191:                                              ; preds = %190, %180
  %192 = phi i32 [ %189, %180 ], [ 0, %190 ]
  store i32 %192, i32* %14, align 4
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i64 2
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 6
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %210

200:                                              ; preds = %191
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 1
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i64 2
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 2
  %206 = load i64, i64* %205, align 8
  %207 = sub nsw i64 %206, 1
  %208 = trunc i64 %207 to i32
  %209 = shl i32 1, %208
  br label %211

210:                                              ; preds = %191
  br label %211

211:                                              ; preds = %210, %200
  %212 = phi i32 [ %209, %200 ], [ 0, %210 ]
  store i32 %212, i32* %15, align 4
  store i32 0, i32* %10, align 4
  br label %213

213:                                              ; preds = %352, %211
  %214 = load i32, i32* %10, align 4
  %215 = load i32, i32* %7, align 4
  %216 = icmp slt i32 %214, %215
  br i1 %216, label %217, label %355

217:                                              ; preds = %213
  %218 = load i32, i32* %10, align 4
  %219 = load i32, i32* %6, align 4
  %220 = mul nsw i32 %218, %219
  store i32 %220, i32* %25, align 4
  store i32 0, i32* %9, align 4
  br label %221

221:                                              ; preds = %346, %217
  %222 = load i32, i32* %9, align 4
  %223 = load i32, i32* %6, align 4
  %224 = icmp slt i32 %222, %223
  br i1 %224, label %225, label %351

225:                                              ; preds = %221
  %226 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 1
  %228 = load %struct.TYPE_4__*, %struct.TYPE_4__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i64 0
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 5
  %231 = load i64*, i64** %230, align 8
  %232 = load i32, i32* %25, align 4
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds i64, i64* %231, i64 %233
  %235 = load i64, i64* %234, align 8
  %236 = load i32, i32* %13, align 4
  %237 = sext i32 %236 to i64
  %238 = add nsw i64 %235, %237
  %239 = sitofp i64 %238 to float
  store float %239, float* %17, align 4
  %240 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = icmp sgt i32 %242, 2
  br i1 %243, label %244, label %273

244:                                              ; preds = %225
  %245 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 1
  %247 = load %struct.TYPE_4__*, %struct.TYPE_4__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i64 1
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i32 0, i32 5
  %250 = load i64*, i64** %249, align 8
  %251 = load i32, i32* %25, align 4
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds i64, i64* %250, i64 %252
  %254 = load i64, i64* %253, align 8
  %255 = load i32, i32* %14, align 4
  %256 = sext i32 %255 to i64
  %257 = add nsw i64 %254, %256
  %258 = sitofp i64 %257 to float
  store float %258, float* %18, align 4
  %259 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i32 0, i32 1
  %261 = load %struct.TYPE_4__*, %struct.TYPE_4__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i64 2
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 5
  %264 = load i64*, i64** %263, align 8
  %265 = load i32, i32* %25, align 4
  %266 = zext i32 %265 to i64
  %267 = getelementptr inbounds i64, i64* %264, i64 %266
  %268 = load i64, i64* %267, align 8
  %269 = load i32, i32* %15, align 4
  %270 = sext i32 %269 to i64
  %271 = add nsw i64 %268, %270
  %272 = sitofp i64 %271 to float
  store float %272, float* %19, align 4
  br label %276

273:                                              ; preds = %225
  %274 = load float, float* %17, align 4
  store float %274, float* %18, align 4
  %275 = load float, float* %17, align 4
  store float %275, float* %19, align 4
  br label %276

276:                                              ; preds = %273, %244
  %277 = load float, float* %19, align 4
  %278 = load float, float* %22, align 4
  %279 = fmul float %277, %278
  %280 = fptoui float %279 to i8
  store i8 %280, i8* %21, align 1
  %281 = load i32*, i32** %23, align 8
  %282 = call i64 @fwrite(i8* %21, i32 1, i32 1, i32* %281)
  store i64 %282, i64* %24, align 8
  %283 = load i64, i64* %24, align 8
  %284 = icmp ult i64 %283, 1
  br i1 %284, label %285, label %289

285:                                              ; preds = %276
  %286 = load i32, i32* @stderr, align 4
  %287 = load i8*, i8** %5, align 8
  %288 = call i32 (i32, i8*, ...) @fprintf(i32 %286, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %287)
  store i32 1, i32* %3, align 4
  br label %356

289:                                              ; preds = %276
  %290 = load float, float* %18, align 4
  %291 = load float, float* %22, align 4
  %292 = fmul float %290, %291
  %293 = fptoui float %292 to i8
  store i8 %293, i8* %21, align 1
  %294 = load i32*, i32** %23, align 8
  %295 = call i64 @fwrite(i8* %21, i32 1, i32 1, i32* %294)
  store i64 %295, i64* %24, align 8
  %296 = load i64, i64* %24, align 8
  %297 = icmp ult i64 %296, 1
  br i1 %297, label %298, label %302

298:                                              ; preds = %289
  %299 = load i32, i32* @stderr, align 4
  %300 = load i8*, i8** %5, align 8
  %301 = call i32 (i32, i8*, ...) @fprintf(i32 %299, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %300)
  store i32 1, i32* %3, align 4
  br label %356

302:                                              ; preds = %289
  %303 = load float, float* %17, align 4
  %304 = load float, float* %22, align 4
  %305 = fmul float %303, %304
  %306 = fptoui float %305 to i8
  store i8 %306, i8* %21, align 1
  %307 = load i32*, i32** %23, align 8
  %308 = call i64 @fwrite(i8* %21, i32 1, i32 1, i32* %307)
  store i64 %308, i64* %24, align 8
  %309 = load i64, i64* %24, align 8
  %310 = icmp ult i64 %309, 1
  br i1 %310, label %311, label %315

311:                                              ; preds = %302
  %312 = load i32, i32* @stderr, align 4
  %313 = load i8*, i8** %5, align 8
  %314 = call i32 (i32, i8*, ...) @fprintf(i32 %312, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %313)
  store i32 1, i32* %3, align 4
  br label %356

315:                                              ; preds = %302
  %316 = load i32, i32* %11, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %345

318:                                              ; preds = %315
  %319 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %320 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %319, i32 0, i32 1
  %321 = load %struct.TYPE_4__*, %struct.TYPE_4__** %320, align 8
  %322 = load i32, i32* %16, align 4
  %323 = zext i32 %322 to i64
  %324 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %321, i64 %323
  %325 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %324, i32 0, i32 5
  %326 = load i64*, i64** %325, align 8
  %327 = load i32, i32* %25, align 4
  %328 = zext i32 %327 to i64
  %329 = getelementptr inbounds i64, i64* %326, i64 %328
  %330 = load i64, i64* %329, align 8
  %331 = sitofp i64 %330 to float
  store float %331, float* %20, align 4
  %332 = load float, float* %20, align 4
  %333 = load float, float* %22, align 4
  %334 = fmul float %332, %333
  %335 = fptoui float %334 to i8
  store i8 %335, i8* %21, align 1
  %336 = load i32*, i32** %23, align 8
  %337 = call i64 @fwrite(i8* %21, i32 1, i32 1, i32* %336)
  store i64 %337, i64* %24, align 8
  %338 = load i64, i64* %24, align 8
  %339 = icmp ult i64 %338, 1
  br i1 %339, label %340, label %344

340:                                              ; preds = %318
  %341 = load i32, i32* @stderr, align 4
  %342 = load i8*, i8** %5, align 8
  %343 = call i32 (i32, i8*, ...) @fprintf(i32 %341, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %342)
  store i32 1, i32* %3, align 4
  br label %356

344:                                              ; preds = %318
  br label %345

345:                                              ; preds = %344, %315
  br label %346

346:                                              ; preds = %345
  %347 = load i32, i32* %9, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %9, align 4
  %349 = load i32, i32* %25, align 4
  %350 = add i32 %349, 1
  store i32 %350, i32* %25, align 4
  br label %221

351:                                              ; preds = %221
  br label %352

352:                                              ; preds = %351
  %353 = load i32, i32* %10, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %10, align 4
  br label %213

355:                                              ; preds = %213
  store i32 0, i32* %3, align 4
  br label %356

356:                                              ; preds = %355, %340, %311, %298, %285, %136, %93, %30
  %357 = load i32, i32* %3, align 4
  ret i32 %357
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @tga_writeheader(i32*, i32, i32, i32, i32) #1

declare dso_local i64 @fwrite(i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
