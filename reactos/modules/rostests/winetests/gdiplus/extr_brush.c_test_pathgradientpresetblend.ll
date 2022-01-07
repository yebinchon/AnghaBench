; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_brush.c_test_pathgradientpresetblend.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_brush.c_test_pathgradientpresetblend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@test_pathgradientpresetblend.path_points = internal constant [3 x %struct.TYPE_3__] [%struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ { i32 3, i32 0 }, %struct.TYPE_3__ { i32 0, i32 4 }], align 16
@__const.test_pathgradientpresetblend.positions = private unnamed_addr constant [5 x float] [float 0.000000e+00, float 0x3FC99999A0000000, float 5.000000e-01, float 0x3FE99999A0000000, float 1.000000e+00], align 16
@__const.test_pathgradientpresetblend.two_positions = private unnamed_addr constant [2 x float] [float 0.000000e+00, float 1.000000e+00], align 4
@__const.test_pathgradientpresetblend.colors = private unnamed_addr constant [5 x i32] [i32 -16776961, i32 -16711936, i32 -16711681, i32 -65536, i32 -1], align 16
@__const.test_pathgradientpresetblend.res_positions = private unnamed_addr constant [6 x float] [float 0x3FD3333340000000, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00], align 16
@__const.test_pathgradientpresetblend.res_colors = private unnamed_addr constant [6 x i32] [i32 -559038737, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@WrapModeClamp = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@InvalidParameter = common dso_local global i32 0, align 4
@OutOfMemory = common dso_local global i32 0, align 4
@GenericError = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_pathgradientpresetblend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_pathgradientpresetblend() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [5 x float], align 16
  %6 = alloca [2 x float], align 4
  %7 = alloca [5 x i32], align 16
  %8 = alloca [6 x float], align 16
  %9 = alloca [6 x i32], align 16
  %10 = bitcast [5 x float]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([5 x float]* @__const.test_pathgradientpresetblend.positions to i8*), i64 20, i1 false)
  %11 = bitcast [2 x float]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast ([2 x float]* @__const.test_pathgradientpresetblend.two_positions to i8*), i64 8, i1 false)
  %12 = bitcast [5 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast ([5 x i32]* @__const.test_pathgradientpresetblend.colors to i8*), i64 20, i1 false)
  %13 = bitcast [6 x float]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 bitcast ([6 x float]* @__const.test_pathgradientpresetblend.res_positions to i8*), i64 24, i1 false)
  %14 = bitcast [6 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 bitcast ([6 x i32]* @__const.test_pathgradientpresetblend.res_colors to i8*), i64 24, i1 false)
  %15 = load i32, i32* @WrapModeClamp, align 4
  %16 = call i32 @GdipCreatePathGradient(%struct.TYPE_3__* getelementptr inbounds ([3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* @test_pathgradientpresetblend.path_points, i64 0, i64 1), i32 2, i32 %15, i32** %2)
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* @Ok, align 4
  %18 = load i32, i32* %1, align 4
  %19 = call i32 @expect(i32 %17, i32 %18)
  %20 = call i32 @GdipGetPathGradientPresetBlendCount(i32* null, i32* %3)
  store i32 %20, i32* %1, align 4
  %21 = load i32, i32* @InvalidParameter, align 4
  %22 = load i32, i32* %1, align 4
  %23 = call i32 @expect(i32 %21, i32 %22)
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @GdipGetPathGradientPresetBlendCount(i32* %24, i32* null)
  store i32 %25, i32* %1, align 4
  %26 = load i32, i32* @InvalidParameter, align 4
  %27 = load i32, i32* %1, align 4
  %28 = call i32 @expect(i32 %26, i32 %27)
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @GdipGetPathGradientPresetBlendCount(i32* %29, i32* %3)
  store i32 %30, i32* %1, align 4
  %31 = load i32, i32* @Ok, align 4
  %32 = load i32, i32* %1, align 4
  %33 = call i32 @expect(i32 %31, i32 %32)
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @expect(i32 0, i32 %34)
  %36 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %37 = getelementptr inbounds [6 x float], [6 x float]* %8, i64 0, i64 0
  %38 = call i32 @GdipGetPathGradientPresetBlend(i32* null, i32* %36, float* %37, i32 1)
  store i32 %38, i32* %1, align 4
  %39 = load i32, i32* @InvalidParameter, align 4
  %40 = load i32, i32* %1, align 4
  %41 = call i32 @expect(i32 %39, i32 %40)
  %42 = load i32*, i32** %2, align 8
  %43 = getelementptr inbounds [6 x float], [6 x float]* %8, i64 0, i64 0
  %44 = call i32 @GdipGetPathGradientPresetBlend(i32* %42, i32* null, float* %43, i32 1)
  store i32 %44, i32* %1, align 4
  %45 = load i32, i32* @InvalidParameter, align 4
  %46 = load i32, i32* %1, align 4
  %47 = call i32 @expect(i32 %45, i32 %46)
  %48 = load i32*, i32** %2, align 8
  %49 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %50 = call i32 @GdipGetPathGradientPresetBlend(i32* %48, i32* %49, float* null, i32 1)
  store i32 %50, i32* %1, align 4
  %51 = load i32, i32* @InvalidParameter, align 4
  %52 = load i32, i32* %1, align 4
  %53 = call i32 @expect(i32 %51, i32 %52)
  %54 = load i32*, i32** %2, align 8
  %55 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %56 = getelementptr inbounds [6 x float], [6 x float]* %8, i64 0, i64 0
  %57 = call i32 @GdipGetPathGradientPresetBlend(i32* %54, i32* %55, float* %56, i32 0)
  store i32 %57, i32* %1, align 4
  %58 = load i32, i32* @InvalidParameter, align 4
  %59 = load i32, i32* %1, align 4
  %60 = call i32 @expect(i32 %58, i32 %59)
  %61 = load i32*, i32** %2, align 8
  %62 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %63 = getelementptr inbounds [6 x float], [6 x float]* %8, i64 0, i64 0
  %64 = call i32 @GdipGetPathGradientPresetBlend(i32* %61, i32* %62, float* %63, i32 -1)
  store i32 %64, i32* %1, align 4
  %65 = load i32, i32* @OutOfMemory, align 4
  %66 = load i32, i32* %1, align 4
  %67 = call i32 @expect(i32 %65, i32 %66)
  %68 = load i32*, i32** %2, align 8
  %69 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %70 = getelementptr inbounds [6 x float], [6 x float]* %8, i64 0, i64 0
  %71 = call i32 @GdipGetPathGradientPresetBlend(i32* %68, i32* %69, float* %70, i32 1)
  store i32 %71, i32* %1, align 4
  %72 = load i32, i32* @InvalidParameter, align 4
  %73 = load i32, i32* %1, align 4
  %74 = call i32 @expect(i32 %72, i32 %73)
  %75 = load i32*, i32** %2, align 8
  %76 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %77 = getelementptr inbounds [6 x float], [6 x float]* %8, i64 0, i64 0
  %78 = call i32 @GdipGetPathGradientPresetBlend(i32* %75, i32* %76, float* %77, i32 2)
  store i32 %78, i32* %1, align 4
  %79 = load i32, i32* @GenericError, align 4
  %80 = load i32, i32* %1, align 4
  %81 = call i32 @expect(i32 %79, i32 %80)
  %82 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %83 = getelementptr inbounds [5 x float], [5 x float]* %5, i64 0, i64 0
  %84 = call i32 @GdipSetPathGradientPresetBlend(i32* null, i32* %82, float* %83, i32 5)
  store i32 %84, i32* %1, align 4
  %85 = load i32, i32* @InvalidParameter, align 4
  %86 = load i32, i32* %1, align 4
  %87 = call i32 @expect(i32 %85, i32 %86)
  %88 = load i32*, i32** %2, align 8
  %89 = getelementptr inbounds [5 x float], [5 x float]* %5, i64 0, i64 0
  %90 = call i32 @GdipSetPathGradientPresetBlend(i32* %88, i32* null, float* %89, i32 5)
  store i32 %90, i32* %1, align 4
  %91 = load i32, i32* @InvalidParameter, align 4
  %92 = load i32, i32* %1, align 4
  %93 = call i32 @expect(i32 %91, i32 %92)
  %94 = load i32*, i32** %2, align 8
  %95 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %96 = getelementptr inbounds [5 x float], [5 x float]* %5, i64 0, i64 0
  %97 = call i32 @GdipSetPathGradientPresetBlend(i32* %94, i32* %95, float* %96, i32 0)
  store i32 %97, i32* %1, align 4
  %98 = load i32, i32* @InvalidParameter, align 4
  %99 = load i32, i32* %1, align 4
  %100 = call i32 @expect(i32 %98, i32 %99)
  %101 = load i32*, i32** %2, align 8
  %102 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %103 = getelementptr inbounds [5 x float], [5 x float]* %5, i64 0, i64 0
  %104 = call i32 @GdipSetPathGradientPresetBlend(i32* %101, i32* %102, float* %103, i32 -1)
  store i32 %104, i32* %1, align 4
  %105 = load i32, i32* @InvalidParameter, align 4
  %106 = load i32, i32* %1, align 4
  %107 = call i32 @expect(i32 %105, i32 %106)
  %108 = load i32*, i32** %2, align 8
  %109 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %110 = getelementptr inbounds [5 x float], [5 x float]* %5, i64 0, i64 0
  %111 = call i32 @GdipSetPathGradientPresetBlend(i32* %108, i32* %109, float* %110, i32 1)
  store i32 %111, i32* %1, align 4
  %112 = load i32, i32* @InvalidParameter, align 4
  %113 = load i32, i32* %1, align 4
  %114 = call i32 @expect(i32 %112, i32 %113)
  %115 = load i32*, i32** %2, align 8
  %116 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 1
  %117 = getelementptr inbounds [5 x float], [5 x float]* %5, i64 0, i64 1
  %118 = call i32 @GdipSetPathGradientPresetBlend(i32* %115, i32* %116, float* %117, i32 4)
  store i32 %118, i32* %1, align 4
  %119 = load i32, i32* @InvalidParameter, align 4
  %120 = load i32, i32* %1, align 4
  %121 = call i32 @expect(i32 %119, i32 %120)
  %122 = load i32*, i32** %2, align 8
  %123 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %124 = getelementptr inbounds [5 x float], [5 x float]* %5, i64 0, i64 0
  %125 = call i32 @GdipSetPathGradientPresetBlend(i32* %122, i32* %123, float* %124, i32 4)
  store i32 %125, i32* %1, align 4
  %126 = load i32, i32* @InvalidParameter, align 4
  %127 = load i32, i32* %1, align 4
  %128 = call i32 @expect(i32 %126, i32 %127)
  %129 = load i32*, i32** %2, align 8
  %130 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %131 = getelementptr inbounds [5 x float], [5 x float]* %5, i64 0, i64 0
  %132 = call i32 @GdipSetPathGradientPresetBlend(i32* %129, i32* %130, float* %131, i32 5)
  store i32 %132, i32* %1, align 4
  %133 = load i32, i32* @Ok, align 4
  %134 = load i32, i32* %1, align 4
  %135 = call i32 @expect(i32 %133, i32 %134)
  %136 = load i32*, i32** %2, align 8
  %137 = call i32 @GdipGetPathGradientPresetBlendCount(i32* %136, i32* %3)
  store i32 %137, i32* %1, align 4
  %138 = load i32, i32* @Ok, align 4
  %139 = load i32, i32* %1, align 4
  %140 = call i32 @expect(i32 %138, i32 %139)
  %141 = load i32, i32* %3, align 4
  %142 = call i32 @expect(i32 5, i32 %141)
  %143 = load i32*, i32** %2, align 8
  %144 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %145 = getelementptr inbounds [6 x float], [6 x float]* %8, i64 0, i64 0
  %146 = call i32 @GdipGetPathGradientPresetBlend(i32* %143, i32* %144, float* %145, i32 5)
  store i32 %146, i32* %1, align 4
  %147 = load i32, i32* @Ok, align 4
  %148 = load i32, i32* %1, align 4
  %149 = call i32 @expect(i32 %147, i32 %148)
  store i32 0, i32* %4, align 4
  br label %150

150:                                              ; preds = %172, %0
  %151 = load i32, i32* %4, align 4
  %152 = icmp slt i32 %151, 5
  br i1 %152, label %153, label %175

153:                                              ; preds = %150
  %154 = load i32, i32* %4, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %4, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @expect(i32 %157, i32 %161)
  %163 = load i32, i32* %4, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [5 x float], [5 x float]* %5, i64 0, i64 %164
  %166 = load float, float* %165, align 4
  %167 = load i32, i32* %4, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [6 x float], [6 x float]* %8, i64 0, i64 %168
  %170 = load float, float* %169, align 4
  %171 = call i32 @expectf(float %166, float %170)
  br label %172

172:                                              ; preds = %153
  %173 = load i32, i32* %4, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %4, align 4
  br label %150

175:                                              ; preds = %150
  %176 = load i32*, i32** %2, align 8
  %177 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %178 = getelementptr inbounds [6 x float], [6 x float]* %8, i64 0, i64 0
  %179 = call i32 @GdipGetPathGradientPresetBlend(i32* %176, i32* %177, float* %178, i32 0)
  store i32 %179, i32* %1, align 4
  %180 = load i32, i32* @InvalidParameter, align 4
  %181 = load i32, i32* %1, align 4
  %182 = call i32 @expect(i32 %180, i32 %181)
  %183 = load i32*, i32** %2, align 8
  %184 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %185 = getelementptr inbounds [6 x float], [6 x float]* %8, i64 0, i64 0
  %186 = call i32 @GdipGetPathGradientPresetBlend(i32* %183, i32* %184, float* %185, i32 -1)
  store i32 %186, i32* %1, align 4
  %187 = load i32, i32* @OutOfMemory, align 4
  %188 = load i32, i32* %1, align 4
  %189 = call i32 @expect(i32 %187, i32 %188)
  %190 = load i32*, i32** %2, align 8
  %191 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %192 = getelementptr inbounds [6 x float], [6 x float]* %8, i64 0, i64 0
  %193 = call i32 @GdipGetPathGradientPresetBlend(i32* %190, i32* %191, float* %192, i32 1)
  store i32 %193, i32* %1, align 4
  %194 = load i32, i32* @InvalidParameter, align 4
  %195 = load i32, i32* %1, align 4
  %196 = call i32 @expect(i32 %194, i32 %195)
  %197 = load i32*, i32** %2, align 8
  %198 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %199 = getelementptr inbounds [2 x float], [2 x float]* %6, i64 0, i64 0
  %200 = call i32 @GdipSetPathGradientPresetBlend(i32* %197, i32* %198, float* %199, i32 2)
  store i32 %200, i32* %1, align 4
  %201 = load i32, i32* @Ok, align 4
  %202 = load i32, i32* %1, align 4
  %203 = call i32 @expect(i32 %201, i32 %202)
  %204 = load i32*, i32** %2, align 8
  %205 = call i32 @GdipDeleteBrush(i32* %204)
  store i32 %205, i32* %1, align 4
  %206 = load i32, i32* @Ok, align 4
  %207 = load i32, i32* %1, align 4
  %208 = call i32 @expect(i32 %206, i32 %207)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @GdipCreatePathGradient(%struct.TYPE_3__*, i32, i32, i32**) #2

declare dso_local i32 @expect(i32, i32) #2

declare dso_local i32 @GdipGetPathGradientPresetBlendCount(i32*, i32*) #2

declare dso_local i32 @GdipGetPathGradientPresetBlend(i32*, i32*, float*, i32) #2

declare dso_local i32 @GdipSetPathGradientPresetBlend(i32*, i32*, float*, i32) #2

declare dso_local i32 @expectf(float, float) #2

declare dso_local i32 @GdipDeleteBrush(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
