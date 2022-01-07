; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_d3d11_quad.c_SetupQuadCube.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_d3d11_quad.c_SetupQuadCube.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { float, float }
%struct.TYPE_9__ = type { float, float, float }
%struct.TYPE_13__ = type { i64, i64, i64, i64 }
%struct.TYPE_12__ = type { float, float }

@SetupQuadCube.coord = internal constant [72 x float] [float -1.000000e+00, float 1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float 1.000000e+00, float 1.000000e+00, float -1.000000e+00, float 1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float 1.000000e+00, float 1.000000e+00, float -1.000000e+00, float -1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float -1.000000e+00, float 1.000000e+00, float -1.000000e+00, float 1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float 1.000000e+00, float 1.000000e+00, float -1.000000e+00, float -1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float -1.000000e+00, float 1.000000e+00, float -1.000000e+00, float -1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float -1.000000e+00, float 1.000000e+00, float -1.000000e+00, float -1.000000e+00, float 1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float 1.000000e+00, float -1.000000e+00, float 1.000000e+00, float 1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float 1.000000e+00, float 1.000000e+00, float -1.000000e+00, float 1.000000e+00, float -1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float -1.000000e+00], align 16
@__const.SetupQuadCube.ind = private unnamed_addr constant [36 x i32] [i32 2, i32 1, i32 0, i32 3, i32 1, i32 2, i32 4, i32 7, i32 6, i32 5, i32 7, i32 4, i32 8, i32 11, i32 10, i32 9, i32 11, i32 8, i32 14, i32 13, i32 12, i32 15, i32 13, i32 14, i32 16, i32 19, i32 18, i32 17, i32 19, i32 16, i32 22, i32 21, i32 20, i32 23, i32 21, i32 22], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_13__*, %struct.TYPE_12__*, i32*)* @SetupQuadCube to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SetupQuadCube(%struct.TYPE_11__* %0, %struct.TYPE_13__* %1, %struct.TYPE_12__* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca [4 x float], align 16
  %12 = alloca [3 x float], align 4
  %13 = alloca [48 x float], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [36 x i32], align 16
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  store i32* %3, i32** %8, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %19, %22
  %24 = sitofp i64 %23 to float
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load float, float* %26, align 4
  %28 = fdiv float %24, %27
  store float %28, float* %9, align 4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %31, %34
  %36 = sitofp i64 %35 to float
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  %39 = load float, float* %38, align 4
  %40 = fdiv float %36, %39
  store float %40, float* %10, align 4
  %41 = getelementptr inbounds [4 x float], [4 x float]* %11, i64 0, i64 0
  store float 0.000000e+00, float* %41, align 4
  %42 = getelementptr inbounds float, float* %41, i64 1
  %43 = load float, float* %9, align 4
  %44 = fdiv float %43, 3.000000e+00
  store float %44, float* %42, align 4
  %45 = getelementptr inbounds float, float* %42, i64 1
  %46 = load float, float* %9, align 4
  %47 = fmul float %46, 2.000000e+00
  %48 = fdiv float %47, 3.000000e+00
  store float %48, float* %45, align 4
  %49 = getelementptr inbounds float, float* %45, i64 1
  %50 = load float, float* %9, align 4
  store float %50, float* %49, align 4
  %51 = getelementptr inbounds [3 x float], [3 x float]* %12, i64 0, i64 0
  store float 0.000000e+00, float* %51, align 4
  %52 = getelementptr inbounds float, float* %51, i64 1
  %53 = load float, float* %10, align 4
  %54 = fdiv float %53, 2.000000e+00
  store float %54, float* %52, align 4
  %55 = getelementptr inbounds float, float* %52, i64 1
  %56 = load float, float* %10, align 4
  store float %56, float* %55, align 4
  %57 = getelementptr inbounds [48 x float], [48 x float]* %13, i64 0, i64 0
  %58 = getelementptr inbounds [4 x float], [4 x float]* %11, i64 0, i64 1
  %59 = load float, float* %58, align 4
  store float %59, float* %57, align 4
  %60 = getelementptr inbounds float, float* %57, i64 1
  %61 = getelementptr inbounds [3 x float], [3 x float]* %12, i64 0, i64 1
  %62 = load float, float* %61, align 4
  store float %62, float* %60, align 4
  %63 = getelementptr inbounds float, float* %60, i64 1
  %64 = getelementptr inbounds [4 x float], [4 x float]* %11, i64 0, i64 1
  %65 = load float, float* %64, align 4
  store float %65, float* %63, align 4
  %66 = getelementptr inbounds float, float* %63, i64 1
  %67 = getelementptr inbounds [3 x float], [3 x float]* %12, i64 0, i64 2
  %68 = load float, float* %67, align 4
  store float %68, float* %66, align 4
  %69 = getelementptr inbounds float, float* %66, i64 1
  %70 = getelementptr inbounds [4 x float], [4 x float]* %11, i64 0, i64 2
  %71 = load float, float* %70, align 8
  store float %71, float* %69, align 4
  %72 = getelementptr inbounds float, float* %69, i64 1
  %73 = getelementptr inbounds [3 x float], [3 x float]* %12, i64 0, i64 1
  %74 = load float, float* %73, align 4
  store float %74, float* %72, align 4
  %75 = getelementptr inbounds float, float* %72, i64 1
  %76 = getelementptr inbounds [4 x float], [4 x float]* %11, i64 0, i64 2
  %77 = load float, float* %76, align 8
  store float %77, float* %75, align 4
  %78 = getelementptr inbounds float, float* %75, i64 1
  %79 = getelementptr inbounds [3 x float], [3 x float]* %12, i64 0, i64 2
  %80 = load float, float* %79, align 4
  store float %80, float* %78, align 4
  %81 = getelementptr inbounds float, float* %78, i64 1
  %82 = getelementptr inbounds [4 x float], [4 x float]* %11, i64 0, i64 3
  %83 = load float, float* %82, align 4
  store float %83, float* %81, align 4
  %84 = getelementptr inbounds float, float* %81, i64 1
  %85 = getelementptr inbounds [3 x float], [3 x float]* %12, i64 0, i64 1
  %86 = load float, float* %85, align 4
  store float %86, float* %84, align 4
  %87 = getelementptr inbounds float, float* %84, i64 1
  %88 = getelementptr inbounds [4 x float], [4 x float]* %11, i64 0, i64 3
  %89 = load float, float* %88, align 4
  store float %89, float* %87, align 4
  %90 = getelementptr inbounds float, float* %87, i64 1
  %91 = getelementptr inbounds [3 x float], [3 x float]* %12, i64 0, i64 2
  %92 = load float, float* %91, align 4
  store float %92, float* %90, align 4
  %93 = getelementptr inbounds float, float* %90, i64 1
  %94 = getelementptr inbounds [4 x float], [4 x float]* %11, i64 0, i64 2
  %95 = load float, float* %94, align 8
  store float %95, float* %93, align 4
  %96 = getelementptr inbounds float, float* %93, i64 1
  %97 = getelementptr inbounds [3 x float], [3 x float]* %12, i64 0, i64 1
  %98 = load float, float* %97, align 4
  store float %98, float* %96, align 4
  %99 = getelementptr inbounds float, float* %96, i64 1
  %100 = getelementptr inbounds [4 x float], [4 x float]* %11, i64 0, i64 2
  %101 = load float, float* %100, align 8
  store float %101, float* %99, align 4
  %102 = getelementptr inbounds float, float* %99, i64 1
  %103 = getelementptr inbounds [3 x float], [3 x float]* %12, i64 0, i64 2
  %104 = load float, float* %103, align 4
  store float %104, float* %102, align 4
  %105 = getelementptr inbounds float, float* %102, i64 1
  %106 = getelementptr inbounds [4 x float], [4 x float]* %11, i64 0, i64 2
  %107 = load float, float* %106, align 8
  store float %107, float* %105, align 4
  %108 = getelementptr inbounds float, float* %105, i64 1
  %109 = getelementptr inbounds [3 x float], [3 x float]* %12, i64 0, i64 0
  %110 = load float, float* %109, align 4
  store float %110, float* %108, align 4
  %111 = getelementptr inbounds float, float* %108, i64 1
  %112 = getelementptr inbounds [4 x float], [4 x float]* %11, i64 0, i64 2
  %113 = load float, float* %112, align 8
  store float %113, float* %111, align 4
  %114 = getelementptr inbounds float, float* %111, i64 1
  %115 = getelementptr inbounds [3 x float], [3 x float]* %12, i64 0, i64 1
  %116 = load float, float* %115, align 4
  store float %116, float* %114, align 4
  %117 = getelementptr inbounds float, float* %114, i64 1
  %118 = getelementptr inbounds [4 x float], [4 x float]* %11, i64 0, i64 1
  %119 = load float, float* %118, align 4
  store float %119, float* %117, align 4
  %120 = getelementptr inbounds float, float* %117, i64 1
  %121 = getelementptr inbounds [3 x float], [3 x float]* %12, i64 0, i64 0
  %122 = load float, float* %121, align 4
  store float %122, float* %120, align 4
  %123 = getelementptr inbounds float, float* %120, i64 1
  %124 = getelementptr inbounds [4 x float], [4 x float]* %11, i64 0, i64 1
  %125 = load float, float* %124, align 4
  store float %125, float* %123, align 4
  %126 = getelementptr inbounds float, float* %123, i64 1
  %127 = getelementptr inbounds [3 x float], [3 x float]* %12, i64 0, i64 1
  %128 = load float, float* %127, align 4
  store float %128, float* %126, align 4
  %129 = getelementptr inbounds float, float* %126, i64 1
  %130 = getelementptr inbounds [4 x float], [4 x float]* %11, i64 0, i64 0
  %131 = load float, float* %130, align 16
  store float %131, float* %129, align 4
  %132 = getelementptr inbounds float, float* %129, i64 1
  %133 = getelementptr inbounds [3 x float], [3 x float]* %12, i64 0, i64 0
  %134 = load float, float* %133, align 4
  store float %134, float* %132, align 4
  %135 = getelementptr inbounds float, float* %132, i64 1
  %136 = getelementptr inbounds [4 x float], [4 x float]* %11, i64 0, i64 0
  %137 = load float, float* %136, align 16
  store float %137, float* %135, align 4
  %138 = getelementptr inbounds float, float* %135, i64 1
  %139 = getelementptr inbounds [3 x float], [3 x float]* %12, i64 0, i64 1
  %140 = load float, float* %139, align 4
  store float %140, float* %138, align 4
  %141 = getelementptr inbounds float, float* %138, i64 1
  %142 = getelementptr inbounds [4 x float], [4 x float]* %11, i64 0, i64 1
  %143 = load float, float* %142, align 4
  store float %143, float* %141, align 4
  %144 = getelementptr inbounds float, float* %141, i64 1
  %145 = getelementptr inbounds [3 x float], [3 x float]* %12, i64 0, i64 0
  %146 = load float, float* %145, align 4
  store float %146, float* %144, align 4
  %147 = getelementptr inbounds float, float* %144, i64 1
  %148 = getelementptr inbounds [4 x float], [4 x float]* %11, i64 0, i64 1
  %149 = load float, float* %148, align 4
  store float %149, float* %147, align 4
  %150 = getelementptr inbounds float, float* %147, i64 1
  %151 = getelementptr inbounds [3 x float], [3 x float]* %12, i64 0, i64 1
  %152 = load float, float* %151, align 4
  store float %152, float* %150, align 4
  %153 = getelementptr inbounds float, float* %150, i64 1
  %154 = getelementptr inbounds [4 x float], [4 x float]* %11, i64 0, i64 0
  %155 = load float, float* %154, align 16
  store float %155, float* %153, align 4
  %156 = getelementptr inbounds float, float* %153, i64 1
  %157 = getelementptr inbounds [3 x float], [3 x float]* %12, i64 0, i64 2
  %158 = load float, float* %157, align 4
  store float %158, float* %156, align 4
  %159 = getelementptr inbounds float, float* %156, i64 1
  %160 = getelementptr inbounds [4 x float], [4 x float]* %11, i64 0, i64 0
  %161 = load float, float* %160, align 16
  store float %161, float* %159, align 4
  %162 = getelementptr inbounds float, float* %159, i64 1
  %163 = getelementptr inbounds [3 x float], [3 x float]* %12, i64 0, i64 1
  %164 = load float, float* %163, align 4
  store float %164, float* %162, align 4
  %165 = getelementptr inbounds float, float* %162, i64 1
  %166 = getelementptr inbounds [4 x float], [4 x float]* %11, i64 0, i64 1
  %167 = load float, float* %166, align 4
  store float %167, float* %165, align 4
  %168 = getelementptr inbounds float, float* %165, i64 1
  %169 = getelementptr inbounds [3 x float], [3 x float]* %12, i64 0, i64 2
  %170 = load float, float* %169, align 4
  store float %170, float* %168, align 4
  %171 = getelementptr inbounds float, float* %168, i64 1
  %172 = getelementptr inbounds [4 x float], [4 x float]* %11, i64 0, i64 1
  %173 = load float, float* %172, align 4
  store float %173, float* %171, align 4
  %174 = getelementptr inbounds float, float* %171, i64 1
  %175 = getelementptr inbounds [3 x float], [3 x float]* %12, i64 0, i64 1
  %176 = load float, float* %175, align 4
  store float %176, float* %174, align 4
  %177 = getelementptr inbounds float, float* %174, i64 1
  %178 = getelementptr inbounds [4 x float], [4 x float]* %11, i64 0, i64 2
  %179 = load float, float* %178, align 8
  store float %179, float* %177, align 4
  %180 = getelementptr inbounds float, float* %177, i64 1
  %181 = getelementptr inbounds [3 x float], [3 x float]* %12, i64 0, i64 0
  %182 = load float, float* %181, align 4
  store float %182, float* %180, align 4
  %183 = getelementptr inbounds float, float* %180, i64 1
  %184 = getelementptr inbounds [4 x float], [4 x float]* %11, i64 0, i64 2
  %185 = load float, float* %184, align 8
  store float %185, float* %183, align 4
  %186 = getelementptr inbounds float, float* %183, i64 1
  %187 = getelementptr inbounds [3 x float], [3 x float]* %12, i64 0, i64 1
  %188 = load float, float* %187, align 4
  store float %188, float* %186, align 4
  %189 = getelementptr inbounds float, float* %186, i64 1
  %190 = getelementptr inbounds [4 x float], [4 x float]* %11, i64 0, i64 3
  %191 = load float, float* %190, align 4
  store float %191, float* %189, align 4
  %192 = getelementptr inbounds float, float* %189, i64 1
  %193 = getelementptr inbounds [3 x float], [3 x float]* %12, i64 0, i64 0
  %194 = load float, float* %193, align 4
  store float %194, float* %192, align 4
  %195 = getelementptr inbounds float, float* %192, i64 1
  %196 = getelementptr inbounds [4 x float], [4 x float]* %11, i64 0, i64 3
  %197 = load float, float* %196, align 4
  store float %197, float* %195, align 4
  %198 = getelementptr inbounds float, float* %195, i64 1
  %199 = getelementptr inbounds [3 x float], [3 x float]* %12, i64 0, i64 1
  %200 = load float, float* %199, align 4
  store float %200, float* %198, align 4
  %201 = call i32 @ARRAY_SIZE(float* getelementptr inbounds ([72 x float], [72 x float]* @SetupQuadCube.coord, i64 0, i64 0))
  %202 = sdiv i32 %201, 3
  store i32 %202, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %203

203:                                              ; preds = %266, %4
  %204 = load i32, i32* %15, align 4
  %205 = load i32, i32* %14, align 4
  %206 = icmp ult i32 %204, %205
  br i1 %206, label %207, label %269

207:                                              ; preds = %203
  %208 = load i32, i32* %15, align 4
  %209 = mul i32 3, %208
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds [72 x float], [72 x float]* @SetupQuadCube.coord, i64 0, i64 %210
  %212 = load float, float* %211, align 4
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %214 = load i32, i32* %15, align 4
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 0
  store float %212, float* %218, align 4
  %219 = load i32, i32* %15, align 4
  %220 = mul i32 3, %219
  %221 = add i32 %220, 1
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds [72 x float], [72 x float]* @SetupQuadCube.coord, i64 0, i64 %222
  %224 = load float, float* %223, align 4
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %226 = load i32, i32* %15, align 4
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %229, i32 0, i32 1
  store float %224, float* %230, align 4
  %231 = load i32, i32* %15, align 4
  %232 = mul i32 3, %231
  %233 = add i32 %232, 2
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds [72 x float], [72 x float]* @SetupQuadCube.coord, i64 0, i64 %234
  %236 = load float, float* %235, align 4
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %238 = load i32, i32* %15, align 4
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 2
  store float %236, float* %242, align 4
  %243 = load i32, i32* %15, align 4
  %244 = mul i32 2, %243
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds [48 x float], [48 x float]* %13, i64 0, i64 %245
  %247 = load float, float* %246, align 4
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %249 = load i32, i32* %15, align 4
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 0
  store float %247, float* %253, align 4
  %254 = load i32, i32* %15, align 4
  %255 = mul i32 2, %254
  %256 = add i32 %255, 1
  %257 = zext i32 %256 to i64
  %258 = getelementptr inbounds [48 x float], [48 x float]* %13, i64 0, i64 %257
  %259 = load float, float* %258, align 4
  %260 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %261 = load i32, i32* %15, align 4
  %262 = zext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i32 0, i32 1
  store float %259, float* %265, align 4
  br label %266

266:                                              ; preds = %207
  %267 = load i32, i32* %15, align 4
  %268 = add i32 %267, 1
  store i32 %268, i32* %15, align 4
  br label %203

269:                                              ; preds = %203
  %270 = bitcast [36 x i32]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %270, i8* align 16 bitcast ([36 x i32]* @__const.SetupQuadCube.ind to i8*), i64 144, i1 false)
  %271 = load i32*, i32** %8, align 8
  %272 = getelementptr inbounds [36 x i32], [36 x i32]* %16, i64 0, i64 0
  %273 = call i32 @memcpy(i32* %271, i32* %272, i32 144)
  ret void
}

declare dso_local i32 @ARRAY_SIZE(float*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
