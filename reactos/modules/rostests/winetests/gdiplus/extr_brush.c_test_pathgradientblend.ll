; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_brush.c_test_pathgradientblend.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_brush.c_test_pathgradientblend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@test_pathgradientblend.path_points = internal constant [3 x %struct.TYPE_3__] [%struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ { i32 3, i32 0 }, %struct.TYPE_3__ { i32 0, i32 4 }], align 16
@__const.test_pathgradientblend.factors = private unnamed_addr constant [5 x float] [float 0.000000e+00, float 0x3FB99999A0000000, float 5.000000e-01, float 0x3FECCCCCC0000000, float 1.000000e+00], align 16
@__const.test_pathgradientblend.positions = private unnamed_addr constant [5 x float] [float 0.000000e+00, float 0x3FC99999A0000000, float 5.000000e-01, float 0x3FE99999A0000000, float 1.000000e+00], align 16
@__const.test_pathgradientblend.res_factors = private unnamed_addr constant [6 x float] [float 0x3FD3333340000000, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00], align 16
@__const.test_pathgradientblend.res_positions = private unnamed_addr constant [6 x float] [float 0x3FD3333340000000, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00], align 16
@WrapModeClamp = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@InvalidParameter = common dso_local global i32 0, align 4
@InsufficientBuffer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_pathgradientblend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_pathgradientblend() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [5 x float], align 16
  %6 = alloca [5 x float], align 16
  %7 = alloca [6 x float], align 16
  %8 = alloca [6 x float], align 16
  %9 = bitcast [5 x float]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([5 x float]* @__const.test_pathgradientblend.factors to i8*), i64 20, i1 false)
  %10 = bitcast [5 x float]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([5 x float]* @__const.test_pathgradientblend.positions to i8*), i64 20, i1 false)
  %11 = bitcast [6 x float]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([6 x float]* @__const.test_pathgradientblend.res_factors to i8*), i64 24, i1 false)
  %12 = bitcast [6 x float]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast ([6 x float]* @__const.test_pathgradientblend.res_positions to i8*), i64 24, i1 false)
  %13 = load i32, i32* @WrapModeClamp, align 4
  %14 = call i32 @GdipCreatePathGradient(%struct.TYPE_3__* getelementptr inbounds ([3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* @test_pathgradientblend.path_points, i64 0, i64 0), i32 3, i32 %13, i32** %1)
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* @Ok, align 4
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @expect(i32 %15, i32 %16)
  %18 = call i32 @GdipGetPathGradientBlendCount(i32* null, i32* %3)
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* @InvalidParameter, align 4
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @expect(i32 %19, i32 %20)
  %22 = load i32*, i32** %1, align 8
  %23 = call i32 @GdipGetPathGradientBlendCount(i32* %22, i32* null)
  store i32 %23, i32* %2, align 4
  %24 = load i32, i32* @InvalidParameter, align 4
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @expect(i32 %24, i32 %25)
  %27 = load i32*, i32** %1, align 8
  %28 = call i32 @GdipGetPathGradientBlendCount(i32* %27, i32* %3)
  store i32 %28, i32* %2, align 4
  %29 = load i32, i32* @Ok, align 4
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @expect(i32 %29, i32 %30)
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @expect(i32 1, i32 %32)
  %34 = getelementptr inbounds [6 x float], [6 x float]* %7, i64 0, i64 0
  %35 = getelementptr inbounds [6 x float], [6 x float]* %8, i64 0, i64 0
  %36 = call i32 @GdipGetPathGradientBlend(i32* null, float* %34, float* %35, i32 1)
  store i32 %36, i32* %2, align 4
  %37 = load i32, i32* @InvalidParameter, align 4
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @expect(i32 %37, i32 %38)
  %40 = load i32*, i32** %1, align 8
  %41 = getelementptr inbounds [6 x float], [6 x float]* %8, i64 0, i64 0
  %42 = call i32 @GdipGetPathGradientBlend(i32* %40, float* null, float* %41, i32 1)
  store i32 %42, i32* %2, align 4
  %43 = load i32, i32* @InvalidParameter, align 4
  %44 = load i32, i32* %2, align 4
  %45 = call i32 @expect(i32 %43, i32 %44)
  %46 = load i32*, i32** %1, align 8
  %47 = getelementptr inbounds [6 x float], [6 x float]* %7, i64 0, i64 0
  %48 = call i32 @GdipGetPathGradientBlend(i32* %46, float* %47, float* null, i32 1)
  store i32 %48, i32* %2, align 4
  %49 = load i32, i32* @InvalidParameter, align 4
  %50 = load i32, i32* %2, align 4
  %51 = call i32 @expect(i32 %49, i32 %50)
  %52 = load i32*, i32** %1, align 8
  %53 = getelementptr inbounds [6 x float], [6 x float]* %7, i64 0, i64 0
  %54 = getelementptr inbounds [6 x float], [6 x float]* %8, i64 0, i64 0
  %55 = call i32 @GdipGetPathGradientBlend(i32* %52, float* %53, float* %54, i32 0)
  store i32 %55, i32* %2, align 4
  %56 = load i32, i32* @InvalidParameter, align 4
  %57 = load i32, i32* %2, align 4
  %58 = call i32 @expect(i32 %56, i32 %57)
  %59 = load i32*, i32** %1, align 8
  %60 = getelementptr inbounds [6 x float], [6 x float]* %7, i64 0, i64 0
  %61 = getelementptr inbounds [6 x float], [6 x float]* %8, i64 0, i64 0
  %62 = call i32 @GdipGetPathGradientBlend(i32* %59, float* %60, float* %61, i32 -1)
  store i32 %62, i32* %2, align 4
  %63 = load i32, i32* @InvalidParameter, align 4
  %64 = load i32, i32* %2, align 4
  %65 = call i32 @expect(i32 %63, i32 %64)
  %66 = load i32*, i32** %1, align 8
  %67 = getelementptr inbounds [6 x float], [6 x float]* %7, i64 0, i64 0
  %68 = getelementptr inbounds [6 x float], [6 x float]* %8, i64 0, i64 0
  %69 = call i32 @GdipGetPathGradientBlend(i32* %66, float* %67, float* %68, i32 1)
  store i32 %69, i32* %2, align 4
  %70 = load i32, i32* @Ok, align 4
  %71 = load i32, i32* %2, align 4
  %72 = call i32 @expect(i32 %70, i32 %71)
  %73 = load i32*, i32** %1, align 8
  %74 = getelementptr inbounds [6 x float], [6 x float]* %7, i64 0, i64 0
  %75 = getelementptr inbounds [6 x float], [6 x float]* %8, i64 0, i64 0
  %76 = call i32 @GdipGetPathGradientBlend(i32* %73, float* %74, float* %75, i32 2)
  store i32 %76, i32* %2, align 4
  %77 = load i32, i32* @Ok, align 4
  %78 = load i32, i32* %2, align 4
  %79 = call i32 @expect(i32 %77, i32 %78)
  %80 = getelementptr inbounds [5 x float], [5 x float]* %5, i64 0, i64 0
  %81 = getelementptr inbounds [5 x float], [5 x float]* %6, i64 0, i64 0
  %82 = call i32 @GdipSetPathGradientBlend(i32* null, float* %80, float* %81, i32 5)
  store i32 %82, i32* %2, align 4
  %83 = load i32, i32* @InvalidParameter, align 4
  %84 = load i32, i32* %2, align 4
  %85 = call i32 @expect(i32 %83, i32 %84)
  %86 = load i32*, i32** %1, align 8
  %87 = getelementptr inbounds [5 x float], [5 x float]* %6, i64 0, i64 0
  %88 = call i32 @GdipSetPathGradientBlend(i32* %86, float* null, float* %87, i32 5)
  store i32 %88, i32* %2, align 4
  %89 = load i32, i32* @InvalidParameter, align 4
  %90 = load i32, i32* %2, align 4
  %91 = call i32 @expect(i32 %89, i32 %90)
  %92 = load i32*, i32** %1, align 8
  %93 = getelementptr inbounds [5 x float], [5 x float]* %5, i64 0, i64 0
  %94 = call i32 @GdipSetPathGradientBlend(i32* %92, float* %93, float* null, i32 5)
  store i32 %94, i32* %2, align 4
  %95 = load i32, i32* @InvalidParameter, align 4
  %96 = load i32, i32* %2, align 4
  %97 = call i32 @expect(i32 %95, i32 %96)
  %98 = load i32*, i32** %1, align 8
  %99 = getelementptr inbounds [5 x float], [5 x float]* %5, i64 0, i64 0
  %100 = getelementptr inbounds [5 x float], [5 x float]* %6, i64 0, i64 0
  %101 = call i32 @GdipSetPathGradientBlend(i32* %98, float* %99, float* %100, i32 0)
  store i32 %101, i32* %2, align 4
  %102 = load i32, i32* @InvalidParameter, align 4
  %103 = load i32, i32* %2, align 4
  %104 = call i32 @expect(i32 %102, i32 %103)
  %105 = load i32*, i32** %1, align 8
  %106 = getelementptr inbounds [5 x float], [5 x float]* %5, i64 0, i64 0
  %107 = getelementptr inbounds [5 x float], [5 x float]* %6, i64 0, i64 0
  %108 = call i32 @GdipSetPathGradientBlend(i32* %105, float* %106, float* %107, i32 -1)
  store i32 %108, i32* %2, align 4
  %109 = load i32, i32* @InvalidParameter, align 4
  %110 = load i32, i32* %2, align 4
  %111 = call i32 @expect(i32 %109, i32 %110)
  %112 = load i32*, i32** %1, align 8
  %113 = getelementptr inbounds [5 x float], [5 x float]* %5, i64 0, i64 1
  %114 = getelementptr inbounds [5 x float], [5 x float]* %6, i64 0, i64 1
  %115 = call i32 @GdipSetPathGradientBlend(i32* %112, float* %113, float* %114, i32 4)
  store i32 %115, i32* %2, align 4
  %116 = load i32, i32* @InvalidParameter, align 4
  %117 = load i32, i32* %2, align 4
  %118 = call i32 @expect(i32 %116, i32 %117)
  %119 = load i32*, i32** %1, align 8
  %120 = getelementptr inbounds [5 x float], [5 x float]* %5, i64 0, i64 0
  %121 = getelementptr inbounds [5 x float], [5 x float]* %6, i64 0, i64 0
  %122 = call i32 @GdipSetPathGradientBlend(i32* %119, float* %120, float* %121, i32 4)
  store i32 %122, i32* %2, align 4
  %123 = load i32, i32* @InvalidParameter, align 4
  %124 = load i32, i32* %2, align 4
  %125 = call i32 @expect(i32 %123, i32 %124)
  %126 = load i32*, i32** %1, align 8
  %127 = getelementptr inbounds [5 x float], [5 x float]* %5, i64 0, i64 0
  %128 = getelementptr inbounds [5 x float], [5 x float]* %6, i64 0, i64 0
  %129 = call i32 @GdipSetPathGradientBlend(i32* %126, float* %127, float* %128, i32 5)
  store i32 %129, i32* %2, align 4
  %130 = load i32, i32* @Ok, align 4
  %131 = load i32, i32* %2, align 4
  %132 = call i32 @expect(i32 %130, i32 %131)
  %133 = load i32*, i32** %1, align 8
  %134 = call i32 @GdipGetPathGradientBlendCount(i32* %133, i32* %3)
  store i32 %134, i32* %2, align 4
  %135 = load i32, i32* @Ok, align 4
  %136 = load i32, i32* %2, align 4
  %137 = call i32 @expect(i32 %135, i32 %136)
  %138 = load i32, i32* %3, align 4
  %139 = call i32 @expect(i32 5, i32 %138)
  %140 = load i32*, i32** %1, align 8
  %141 = getelementptr inbounds [6 x float], [6 x float]* %7, i64 0, i64 0
  %142 = getelementptr inbounds [6 x float], [6 x float]* %8, i64 0, i64 0
  %143 = call i32 @GdipGetPathGradientBlend(i32* %140, float* %141, float* %142, i32 4)
  store i32 %143, i32* %2, align 4
  %144 = load i32, i32* @InsufficientBuffer, align 4
  %145 = load i32, i32* %2, align 4
  %146 = call i32 @expect(i32 %144, i32 %145)
  %147 = load i32*, i32** %1, align 8
  %148 = getelementptr inbounds [6 x float], [6 x float]* %7, i64 0, i64 0
  %149 = getelementptr inbounds [6 x float], [6 x float]* %8, i64 0, i64 0
  %150 = call i32 @GdipGetPathGradientBlend(i32* %147, float* %148, float* %149, i32 5)
  store i32 %150, i32* %2, align 4
  %151 = load i32, i32* @Ok, align 4
  %152 = load i32, i32* %2, align 4
  %153 = call i32 @expect(i32 %151, i32 %152)
  store i32 0, i32* %4, align 4
  br label %154

154:                                              ; preds = %176, %0
  %155 = load i32, i32* %4, align 4
  %156 = icmp slt i32 %155, 5
  br i1 %156, label %157, label %179

157:                                              ; preds = %154
  %158 = load i32, i32* %4, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [5 x float], [5 x float]* %5, i64 0, i64 %159
  %161 = load float, float* %160, align 4
  %162 = load i32, i32* %4, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [6 x float], [6 x float]* %7, i64 0, i64 %163
  %165 = load float, float* %164, align 4
  %166 = call i32 @expectf(float %161, float %165)
  %167 = load i32, i32* %4, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [5 x float], [5 x float]* %6, i64 0, i64 %168
  %170 = load float, float* %169, align 4
  %171 = load i32, i32* %4, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [6 x float], [6 x float]* %8, i64 0, i64 %172
  %174 = load float, float* %173, align 4
  %175 = call i32 @expectf(float %170, float %174)
  br label %176

176:                                              ; preds = %157
  %177 = load i32, i32* %4, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %4, align 4
  br label %154

179:                                              ; preds = %154
  %180 = load i32*, i32** %1, align 8
  %181 = getelementptr inbounds [6 x float], [6 x float]* %7, i64 0, i64 0
  %182 = getelementptr inbounds [6 x float], [6 x float]* %8, i64 0, i64 0
  %183 = call i32 @GdipGetPathGradientBlend(i32* %180, float* %181, float* %182, i32 6)
  store i32 %183, i32* %2, align 4
  %184 = load i32, i32* @Ok, align 4
  %185 = load i32, i32* %2, align 4
  %186 = call i32 @expect(i32 %184, i32 %185)
  %187 = load i32*, i32** %1, align 8
  %188 = getelementptr inbounds [5 x float], [5 x float]* %5, i64 0, i64 0
  %189 = getelementptr inbounds [5 x float], [5 x float]* %6, i64 0, i64 0
  %190 = call i32 @GdipSetPathGradientBlend(i32* %187, float* %188, float* %189, i32 1)
  store i32 %190, i32* %2, align 4
  %191 = load i32, i32* @Ok, align 4
  %192 = load i32, i32* %2, align 4
  %193 = call i32 @expect(i32 %191, i32 %192)
  %194 = load i32*, i32** %1, align 8
  %195 = call i32 @GdipGetPathGradientBlendCount(i32* %194, i32* %3)
  store i32 %195, i32* %2, align 4
  %196 = load i32, i32* @Ok, align 4
  %197 = load i32, i32* %2, align 4
  %198 = call i32 @expect(i32 %196, i32 %197)
  %199 = load i32, i32* %3, align 4
  %200 = call i32 @expect(i32 1, i32 %199)
  %201 = load i32*, i32** %1, align 8
  %202 = getelementptr inbounds [6 x float], [6 x float]* %7, i64 0, i64 0
  %203 = getelementptr inbounds [6 x float], [6 x float]* %8, i64 0, i64 0
  %204 = call i32 @GdipGetPathGradientBlend(i32* %201, float* %202, float* %203, i32 1)
  store i32 %204, i32* %2, align 4
  %205 = load i32, i32* @Ok, align 4
  %206 = load i32, i32* %2, align 4
  %207 = call i32 @expect(i32 %205, i32 %206)
  %208 = load i32*, i32** %1, align 8
  %209 = call i32 @GdipDeleteBrush(i32* %208)
  store i32 %209, i32* %2, align 4
  %210 = load i32, i32* @Ok, align 4
  %211 = load i32, i32* %2, align 4
  %212 = call i32 @expect(i32 %210, i32 %211)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @GdipCreatePathGradient(%struct.TYPE_3__*, i32, i32, i32**) #2

declare dso_local i32 @expect(i32, i32) #2

declare dso_local i32 @GdipGetPathGradientBlendCount(i32*, i32*) #2

declare dso_local i32 @GdipGetPathGradientBlend(i32*, float*, float*, i32) #2

declare dso_local i32 @GdipSetPathGradientBlend(i32*, float*, float*, i32) #2

declare dso_local i32 @expectf(float, float) #2

declare dso_local i32 @GdipDeleteBrush(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
