; ModuleID = '/home/carl/AnghaBench/zstd/lib/dictBuilder/extr_cover.c_COVER_ctx_init.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/dictBuilder/extr_cover.c_COVER_ctx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64*, i32, i32, i32, i64, i32*, i32*, i64*, i32*, i32, i32* }

@COVER_MAX_SAMPLES_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Total samples size is too large (%u MB), maximum size is %u MB\0A\00", align 1
@srcSize_wrong = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"Total number of training samples is %u and is invalid.\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Total number of testing samples is %u and is invalid.\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Training on %u samples of total size %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Testing on %u samples of total size %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Failed to allocate scratch buffers\0A\00", align 1
@memory_allocation = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"Constructing partial suffix array\0A\00", align 1
@g_ctx = common dso_local global %struct.TYPE_7__* null, align 8
@COVER_strict_cmp8 = common dso_local global i32 0, align 4
@COVER_strict_cmp = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"Computing frequencies\0A\00", align 1
@COVER_cmp8 = common dso_local global i32 0, align 4
@COVER_cmp = common dso_local global i32 0, align 4
@COVER_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, i8*, i64*, i32, i32, double)* @COVER_ctx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @COVER_ctx_init(%struct.TYPE_7__* %0, i8* %1, i64* %2, i32 %3, i32 %4, double %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64* %2, i64** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store double %5, double* %13, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = bitcast i8* %22 to i32*
  store i32* %23, i32** %14, align 8
  %24 = load i64*, i64** %10, align 8
  %25 = load i32, i32* %11, align 4
  %26 = call i64 @COVER_sum(i64* %24, i32 %25)
  store i64 %26, i64* %15, align 8
  %27 = load double, double* %13, align 8
  %28 = fcmp olt double %27, 1.000000e+00
  br i1 %28, label %29, label %35

29:                                               ; preds = %6
  %30 = load i32, i32* %11, align 4
  %31 = uitofp i32 %30 to double
  %32 = load double, double* %13, align 8
  %33 = fmul double %31, %32
  %34 = fptoui double %33 to i32
  br label %37

35:                                               ; preds = %6
  %36 = load i32, i32* %11, align 4
  br label %37

37:                                               ; preds = %35, %29
  %38 = phi i32 [ %34, %29 ], [ %36, %35 ]
  store i32 %38, i32* %16, align 4
  %39 = load double, double* %13, align 8
  %40 = fcmp olt double %39, 1.000000e+00
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %16, align 4
  %44 = sub i32 %42, %43
  br label %47

45:                                               ; preds = %37
  %46 = load i32, i32* %11, align 4
  br label %47

47:                                               ; preds = %45, %41
  %48 = phi i32 [ %44, %41 ], [ %46, %45 ]
  store i32 %48, i32* %17, align 4
  %49 = load double, double* %13, align 8
  %50 = fcmp olt double %49, 1.000000e+00
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i64*, i64** %10, align 8
  %53 = load i32, i32* %16, align 4
  %54 = call i64 @COVER_sum(i64* %52, i32 %53)
  br label %57

55:                                               ; preds = %47
  %56 = load i64, i64* %15, align 8
  br label %57

57:                                               ; preds = %55, %51
  %58 = phi i64 [ %54, %51 ], [ %56, %55 ]
  store i64 %58, i64* %18, align 8
  %59 = load double, double* %13, align 8
  %60 = fcmp olt double %59, 1.000000e+00
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = load i64*, i64** %10, align 8
  %63 = load i32, i32* %16, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i32, i32* %17, align 4
  %67 = call i64 @COVER_sum(i64* %65, i32 %66)
  br label %70

68:                                               ; preds = %57
  %69 = load i64, i64* %15, align 8
  br label %70

70:                                               ; preds = %68, %61
  %71 = phi i64 [ %67, %61 ], [ %69, %68 ]
  store i64 %71, i64* %19, align 8
  %72 = load i64, i64* %15, align 8
  %73 = load i32, i32* %12, align 4
  %74 = call i64 @MAX(i32 %73, i32 4)
  %75 = icmp ult i64 %72, %74
  br i1 %75, label %81, label %76

76:                                               ; preds = %70
  %77 = load i64, i64* %15, align 8
  %78 = load i32, i32* @COVER_MAX_SAMPLES_SIZE, align 4
  %79 = sext i32 %78 to i64
  %80 = icmp uge i64 %77, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %76, %70
  %82 = load i64, i64* %15, align 8
  %83 = lshr i64 %82, 20
  %84 = trunc i64 %83 to i32
  %85 = load i32, i32* @COVER_MAX_SAMPLES_SIZE, align 4
  %86 = ashr i32 %85, 20
  %87 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %84, i32 %86)
  %88 = load i32, i32* @srcSize_wrong, align 4
  %89 = call i64 @ERROR(i32 %88)
  store i64 %89, i64* %7, align 8
  br label %284

90:                                               ; preds = %76
  %91 = load i32, i32* %16, align 4
  %92 = icmp ult i32 %91, 5
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load i32, i32* %16, align 4
  %95 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* @srcSize_wrong, align 4
  %97 = call i64 @ERROR(i32 %96)
  store i64 %97, i64* %7, align 8
  br label %284

98:                                               ; preds = %90
  %99 = load i32, i32* %17, align 4
  %100 = icmp ult i32 %99, 1
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load i32, i32* %17, align 4
  %103 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* @srcSize_wrong, align 4
  %105 = call i64 @ERROR(i32 %104)
  store i64 %105, i64* %7, align 8
  br label %284

106:                                              ; preds = %98
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %108 = call i32 @memset(%struct.TYPE_7__* %107, i32 0, i32 80)
  %109 = load i32, i32* %16, align 4
  %110 = load i64, i64* %18, align 8
  %111 = trunc i64 %110 to i32
  %112 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %109, i32 %111)
  %113 = load i32, i32* %17, align 4
  %114 = load i64, i64* %19, align 8
  %115 = trunc i64 %114 to i32
  %116 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %113, i32 %115)
  %117 = load i32*, i32** %14, align 8
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 10
  store i32* %117, i32** %119, align 8
  %120 = load i64*, i64** %10, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  store i64* %120, i64** %122, align 8
  %123 = load i32, i32* %11, align 4
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 8
  %126 = load i32, i32* %16, align 4
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 2
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* %17, align 4
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 8
  %132 = load i64, i64* %18, align 8
  %133 = load i32, i32* %12, align 4
  %134 = call i64 @MAX(i32 %133, i32 4)
  %135 = sub i64 %132, %134
  %136 = add i64 %135, 1
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 4
  store i64 %136, i64* %138, align 8
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 4
  %141 = load i64, i64* %140, align 8
  %142 = mul i64 %141, 4
  %143 = trunc i64 %142 to i32
  %144 = call i64 @malloc(i32 %143)
  %145 = inttoptr i64 %144 to i32*
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 5
  store i32* %145, i32** %147, align 8
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 4
  %150 = load i64, i64* %149, align 8
  %151 = mul i64 %150, 4
  %152 = trunc i64 %151 to i32
  %153 = call i64 @malloc(i32 %152)
  %154 = inttoptr i64 %153 to i32*
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 6
  store i32* %154, i32** %156, align 8
  %157 = load i32, i32* %11, align 4
  %158 = add i32 %157, 1
  %159 = zext i32 %158 to i64
  %160 = mul i64 %159, 8
  %161 = trunc i64 %160 to i32
  %162 = call i64 @malloc(i32 %161)
  %163 = inttoptr i64 %162 to i64*
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 7
  store i64* %163, i64** %165, align 8
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 5
  %168 = load i32*, i32** %167, align 8
  %169 = icmp ne i32* %168, null
  br i1 %169, label %170, label %180

170:                                              ; preds = %106
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 6
  %173 = load i32*, i32** %172, align 8
  %174 = icmp ne i32* %173, null
  br i1 %174, label %175, label %180

175:                                              ; preds = %170
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 7
  %178 = load i64*, i64** %177, align 8
  %179 = icmp ne i64* %178, null
  br i1 %179, label %186, label %180

180:                                              ; preds = %175, %170, %106
  %181 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %183 = call i32 @COVER_ctx_destroy(%struct.TYPE_7__* %182)
  %184 = load i32, i32* @memory_allocation, align 4
  %185 = call i64 @ERROR(i32 %184)
  store i64 %185, i64* %7, align 8
  br label %284

186:                                              ; preds = %175
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 8
  store i32* null, i32** %188, align 8
  %189 = load i32, i32* %12, align 4
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 9
  store i32 %189, i32* %191, align 8
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 7
  %194 = load i64*, i64** %193, align 8
  %195 = getelementptr inbounds i64, i64* %194, i64 0
  store i64 0, i64* %195, align 8
  store i32 1, i32* %20, align 4
  br label %196

196:                                              ; preds = %222, %186
  %197 = load i32, i32* %20, align 4
  %198 = load i32, i32* %11, align 4
  %199 = icmp ule i32 %197, %198
  br i1 %199, label %200, label %225

200:                                              ; preds = %196
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 7
  %203 = load i64*, i64** %202, align 8
  %204 = load i32, i32* %20, align 4
  %205 = sub i32 %204, 1
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds i64, i64* %203, i64 %206
  %208 = load i64, i64* %207, align 8
  %209 = load i64*, i64** %10, align 8
  %210 = load i32, i32* %20, align 4
  %211 = sub i32 %210, 1
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds i64, i64* %209, i64 %212
  %214 = load i64, i64* %213, align 8
  %215 = add i64 %208, %214
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 7
  %218 = load i64*, i64** %217, align 8
  %219 = load i32, i32* %20, align 4
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds i64, i64* %218, i64 %220
  store i64 %215, i64* %221, align 8
  br label %222

222:                                              ; preds = %200
  %223 = load i32, i32* %20, align 4
  %224 = add i32 %223, 1
  store i32 %224, i32* %20, align 4
  br label %196

225:                                              ; preds = %196
  %226 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %21, align 4
  br label %227

227:                                              ; preds = %242, %225
  %228 = load i32, i32* %21, align 4
  %229 = zext i32 %228 to i64
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 4
  %232 = load i64, i64* %231, align 8
  %233 = icmp ult i64 %229, %232
  br i1 %233, label %234, label %245

234:                                              ; preds = %227
  %235 = load i32, i32* %21, align 4
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 5
  %238 = load i32*, i32** %237, align 8
  %239 = load i32, i32* %21, align 4
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  store i32 %235, i32* %241, align 4
  br label %242

242:                                              ; preds = %234
  %243 = load i32, i32* %21, align 4
  %244 = add i32 %243, 1
  store i32 %244, i32* %21, align 4
  br label %227

245:                                              ; preds = %227
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %246, %struct.TYPE_7__** @g_ctx, align 8
  %247 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 5
  %249 = load i32*, i32** %248, align 8
  %250 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %251 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %250, i32 0, i32 4
  %252 = load i64, i64* %251, align 8
  %253 = trunc i64 %252 to i32
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 9
  %256 = load i32, i32* %255, align 8
  %257 = icmp ule i32 %256, 8
  %258 = zext i1 %257 to i64
  %259 = select i1 %257, i32* @COVER_strict_cmp8, i32* @COVER_strict_cmp
  %260 = call i32 @qsort(i32* %249, i32 %253, i32 4, i32* %259)
  %261 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %262 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %263 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %262, i32 0, i32 5
  %264 = load i32*, i32** %263, align 8
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 4
  %267 = load i64, i64* %266, align 8
  %268 = trunc i64 %267 to i32
  %269 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %270 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %271 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %270, i32 0, i32 9
  %272 = load i32, i32* %271, align 8
  %273 = icmp ule i32 %272, 8
  %274 = zext i1 %273 to i64
  %275 = select i1 %273, i32* @COVER_cmp8, i32* @COVER_cmp
  %276 = call i32 @COVER_groupBy(i32* %264, i32 %268, i32 4, %struct.TYPE_7__* %269, i32* %275, i32* @COVER_group)
  %277 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %277, i32 0, i32 5
  %279 = load i32*, i32** %278, align 8
  %280 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %281 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %280, i32 0, i32 8
  store i32* %279, i32** %281, align 8
  %282 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %283 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i32 0, i32 5
  store i32* null, i32** %283, align 8
  store i64 0, i64* %7, align 8
  br label %284

284:                                              ; preds = %245, %180, %101, %93, %81
  %285 = load i64, i64* %7, align 8
  ret i64 %285
}

declare dso_local i64 @COVER_sum(i64*, i32) #1

declare dso_local i64 @MAX(i32, i32) #1

declare dso_local i32 @DISPLAYLEVEL(i32, i8*, ...) #1

declare dso_local i64 @ERROR(i32) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @COVER_ctx_destroy(%struct.TYPE_7__*) #1

declare dso_local i32 @qsort(i32*, i32, i32, i32*) #1

declare dso_local i32 @COVER_groupBy(i32*, i32, i32, %struct.TYPE_7__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
