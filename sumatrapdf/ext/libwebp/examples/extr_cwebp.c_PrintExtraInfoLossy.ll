; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_cwebp.c_PrintExtraInfoLossy.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_cwebp.c_PrintExtraInfoLossy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, double*, i32*, i32, float*, i32**, i64, i32, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%7d %2.2f\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"File:      %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Dimension: %d x %d%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c" (with alpha)\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [87 x i8] c"Output:    %d bytes Y-U-V-All-PSNR %2.2f %2.2f %2.2f   %2.2f dB\0A           (%.2f bpp)\0A\00", align 1
@.str.6 = private unnamed_addr constant [121 x i8] c"block count:  intra4:     %6d  (%.2f%%)\0A              intra16:    %6d  (%.2f%%)\0A              skipped:    %6d  (%.2f%%)\0A\00", align 1
@.str.7 = private unnamed_addr constant [87 x i8] c"bytes used:  header:         %6d  (%.1f%%)\0A             mode-partition: %6d  (%.1f%%)\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"             transparency:   %6d (%.1f dB)\0A\00", align 1
@.str.9 = private unnamed_addr constant [68 x i8] c" Residuals bytes  |segment 1|segment 2|segment 3|segment 4|  total\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"  intra4-coeffs:  \00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c" intra16-coeffs:  \00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"  chroma coeffs:  \00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"    macroblocks:  \00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"      quantizer:  \00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"   filter level:  \00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"------------------+---------\00", align 1
@.str.17 = private unnamed_addr constant [50 x i8] c"+---------+---------+---------+-----------------\0A\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c" segments total:  \00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i32, i8*)* @PrintExtraInfoLossy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PrintExtraInfoLossy(%struct.TYPE_5__* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [4 x i32], align 16
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %9, align 8
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %4
  %21 = load i32, i32* @stderr, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load double*, double** %26, align 8
  %28 = getelementptr inbounds double, double* %27, i64 3
  %29 = load double, double* %28, align 8
  %30 = call i32 (i32, i8*, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %24, double %29)
  br label %281

31:                                               ; preds = %4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %10, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %11, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %47, %48
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* @stderr, align 4
  %51 = load i8*, i8** %8, align 8
  %52 = bitcast i8* %51 to i32*
  %53 = call i32 @WFPRINTF(i32 %50, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* %52)
  %54 = load i32, i32* @stderr, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %67 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %57, i32 %60, i8* %66)
  %68 = load i32, i32* @stderr, align 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load double*, double** %73, align 8
  %75 = getelementptr inbounds double, double* %74, i64 0
  %76 = load double, double* %75, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load double*, double** %78, align 8
  %80 = getelementptr inbounds double, double* %79, i64 1
  %81 = load double, double* %80, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load double*, double** %83, align 8
  %85 = getelementptr inbounds double, double* %84, i64 2
  %86 = load double, double* %85, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load double*, double** %88, align 8
  %90 = getelementptr inbounds double, double* %89, i64 3
  %91 = load double, double* %90, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sitofp i32 %94 to float
  %96 = fmul float 8.000000e+00, %95
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sitofp i32 %99 to float
  %101 = fdiv float %96, %100
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = sitofp i32 %104 to float
  %106 = fdiv float %101, %105
  %107 = fpext float %106 to double
  %108 = call i32 (i32, i8*, ...) @fprintf(i32 %68, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.5, i64 0, i64 0), i32 %71, double %76, double %81, double %86, double %91, double %107)
  %109 = load i32, i32* %13, align 4
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %272

111:                                              ; preds = %31
  %112 = bitcast [4 x i32]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %112, i8 0, i64 16, i1 false)
  %113 = load i32, i32* @stderr, align 4
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %10, align 4
  %116 = sitofp i32 %115 to float
  %117 = fmul float 1.000000e+02, %116
  %118 = load i32, i32* %13, align 4
  %119 = sitofp i32 %118 to float
  %120 = fdiv float %117, %119
  %121 = fpext float %120 to double
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %11, align 4
  %124 = sitofp i32 %123 to float
  %125 = fmul float 1.000000e+02, %124
  %126 = load i32, i32* %13, align 4
  %127 = sitofp i32 %126 to float
  %128 = fdiv float %125, %127
  %129 = fpext float %128 to double
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* %12, align 4
  %132 = sitofp i32 %131 to float
  %133 = fmul float 1.000000e+02, %132
  %134 = load i32, i32* %13, align 4
  %135 = sitofp i32 %134 to float
  %136 = fdiv float %133, %135
  %137 = fpext float %136 to double
  %138 = call i32 (i32, i8*, ...) @fprintf(i32 %113, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.6, i64 0, i64 0), i32 %114, double %121, i32 %122, double %129, i32 %130, double %137)
  %139 = load i32, i32* @stderr, align 4
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 4
  %142 = load float*, float** %141, align 8
  %143 = getelementptr inbounds float, float* %142, i64 0
  %144 = load float, float* %143, align 4
  %145 = fpext float %144 to double
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 4
  %148 = load float*, float** %147, align 8
  %149 = getelementptr inbounds float, float* %148, i64 0
  %150 = load float, float* %149, align 4
  %151 = fmul float 1.000000e+02, %150
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = sitofp i32 %154 to float
  %156 = fdiv float %151, %155
  %157 = fpext float %156 to double
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 4
  %160 = load float*, float** %159, align 8
  %161 = getelementptr inbounds float, float* %160, i64 1
  %162 = load float, float* %161, align 4
  %163 = fpext float %162 to double
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 4
  %166 = load float*, float** %165, align 8
  %167 = getelementptr inbounds float, float* %166, i64 1
  %168 = load float, float* %167, align 4
  %169 = fmul float 1.000000e+02, %168
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = sitofp i32 %172 to float
  %174 = fdiv float %169, %173
  %175 = fpext float %174 to double
  %176 = call i32 (i32, i8*, ...) @fprintf(i32 %139, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.7, i64 0, i64 0), double %145, double %157, double %163, double %175)
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 8
  %180 = icmp sgt i32 %179, 0
  br i1 %180, label %181, label %192

181:                                              ; preds = %111
  %182 = load i32, i32* @stderr, align 4
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 1
  %188 = load double*, double** %187, align 8
  %189 = getelementptr inbounds double, double* %188, i64 4
  %190 = load double, double* %189, align 8
  %191 = call i32 (i32, i8*, ...) @fprintf(i32 %182, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i32 %185, double %190)
  br label %192

192:                                              ; preds = %181, %111
  %193 = load i32, i32* @stderr, align 4
  %194 = call i32 (i32, i8*, ...) @fprintf(i32 %193, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.9, i64 0, i64 0))
  %195 = load i32, i32* %7, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %237

197:                                              ; preds = %192
  %198 = load i32, i32* @stderr, align 4
  %199 = call i32 (i32, i8*, ...) @fprintf(i32 %198, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 5
  %202 = load i32**, i32*** %201, align 8
  %203 = getelementptr inbounds i32*, i32** %202, i64 0
  %204 = load i32*, i32** %203, align 8
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = sitofp i32 %207 to float
  %209 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %210 = call i32 @PrintByteCount(i32* %204, float %208, i32* %209)
  %211 = load i32, i32* @stderr, align 4
  %212 = call i32 (i32, i8*, ...) @fprintf(i32 %211, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 5
  %215 = load i32**, i32*** %214, align 8
  %216 = getelementptr inbounds i32*, i32** %215, i64 1
  %217 = load i32*, i32** %216, align 8
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = sitofp i32 %220 to float
  %222 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %223 = call i32 @PrintByteCount(i32* %217, float %221, i32* %222)
  %224 = load i32, i32* @stderr, align 4
  %225 = call i32 (i32, i8*, ...) @fprintf(i32 %224, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 5
  %228 = load i32**, i32*** %227, align 8
  %229 = getelementptr inbounds i32*, i32** %228, i64 2
  %230 = load i32*, i32** %229, align 8
  %231 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = sitofp i32 %233 to float
  %235 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %236 = call i32 @PrintByteCount(i32* %230, float %234, i32* %235)
  br label %237

237:                                              ; preds = %197, %192
  %238 = load i32, i32* @stderr, align 4
  %239 = call i32 (i32, i8*, ...) @fprintf(i32 %238, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0))
  %240 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 9
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @PrintPercents(i32 %242)
  %244 = load i32, i32* @stderr, align 4
  %245 = call i32 (i32, i8*, ...) @fprintf(i32 %244, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0))
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 8
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @PrintValues(i32 %248)
  %250 = load i32, i32* @stderr, align 4
  %251 = call i32 (i32, i8*, ...) @fprintf(i32 %250, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0))
  %252 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i32 0, i32 7
  %254 = load i32, i32* %253, align 8
  %255 = call i32 @PrintValues(i32 %254)
  %256 = load i32, i32* %7, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %271

258:                                              ; preds = %237
  %259 = load i32, i32* @stderr, align 4
  %260 = call i32 (i32, i8*, ...) @fprintf(i32 %259, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0))
  %261 = load i32, i32* @stderr, align 4
  %262 = call i32 (i32, i8*, ...) @fprintf(i32 %261, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.17, i64 0, i64 0))
  %263 = load i32, i32* @stderr, align 4
  %264 = call i32 (i32, i8*, ...) @fprintf(i32 %263, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0))
  %265 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %266 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = sitofp i32 %268 to float
  %270 = call i32 @PrintByteCount(i32* %265, float %269, i32* null)
  br label %271

271:                                              ; preds = %258, %237
  br label %272

272:                                              ; preds = %271, %31
  %273 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %274 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i32 0, i32 6
  %275 = load i64, i64* %274, align 8
  %276 = icmp sgt i64 %275, 0
  br i1 %276, label %277, label %280

277:                                              ; preds = %272
  %278 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %279 = call i32 @PrintFullLosslessInfo(%struct.TYPE_6__* %278, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0))
  br label %280

280:                                              ; preds = %277, %272
  br label %281

281:                                              ; preds = %280, %20
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @WFPRINTF(i32, i8*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @PrintByteCount(i32*, float, i32*) #1

declare dso_local i32 @PrintPercents(i32) #1

declare dso_local i32 @PrintValues(i32) #1

declare dso_local i32 @PrintFullLosslessInfo(%struct.TYPE_6__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
