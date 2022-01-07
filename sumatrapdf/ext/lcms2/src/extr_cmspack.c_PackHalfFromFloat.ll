; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmspack.c_PackHalfFromFloat.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmspack.c_PackHalfFromFloat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, %struct.TYPE_3__*, float*, i32*, i32)* @PackHalfFromFloat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @PackHalfFromFloat(i32 %0, %struct.TYPE_3__* %1, float* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca float*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  %20 = alloca i64*, align 8
  %21 = alloca float, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %8, align 8
  store float* %2, float** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @T_CHANNELS(i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @T_DOSWAP(i32 %31)
  store i32 %32, i32* %13, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @T_FLAVOR(i32 %35)
  store i32 %36, i32* %14, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @T_EXTRA(i32 %39)
  store i32 %40, i32* %15, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @T_SWAPFIRST(i32 %43)
  store i32 %44, i32* %16, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @T_PLANAR(i32 %47)
  store i32 %48, i32* %17, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %16, align 4
  %51 = xor i32 %49, %50
  store i32 %51, i32* %18, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @IsInkSpace(i32 %54)
  %56 = icmp ne i64 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, float 1.000000e+02, float 1.000000e+00
  store float %58, float* %19, align 4
  %59 = load i32*, i32** %10, align 8
  %60 = bitcast i32* %59 to i64*
  store i64* %60, i64** %20, align 8
  store float 0.000000e+00, float* %21, align 4
  store i32 0, i32* %23, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @PixelSize(i32 %63)
  %65 = load i32, i32* %11, align 4
  %66 = sdiv i32 %65, %64
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %18, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %5
  %70 = load i32, i32* %15, align 4
  store i32 %70, i32* %23, align 4
  br label %71

71:                                               ; preds = %69, %5
  store i32 0, i32* %22, align 4
  br label %72

72:                                               ; preds = %127, %71
  %73 = load i32, i32* %22, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %130

76:                                               ; preds = %72
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %22, align 4
  %82 = sub nsw i32 %80, %81
  %83 = sub nsw i32 %82, 1
  br label %86

84:                                               ; preds = %76
  %85 = load i32, i32* %22, align 4
  br label %86

86:                                               ; preds = %84, %79
  %87 = phi i32 [ %83, %79 ], [ %85, %84 ]
  store i32 %87, i32* %24, align 4
  %88 = load float*, float** %9, align 8
  %89 = load i32, i32* %24, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds float, float* %88, i64 %90
  %92 = load float, float* %91, align 4
  %93 = load float, float* %19, align 4
  %94 = fmul float %92, %93
  store float %94, float* %21, align 4
  %95 = load i32, i32* %14, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %86
  %98 = load float, float* %19, align 4
  %99 = load float, float* %21, align 4
  %100 = fsub float %98, %99
  store float %100, float* %21, align 4
  br label %101

101:                                              ; preds = %97, %86
  %102 = load i32, i32* %17, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %101
  %105 = load float, float* %21, align 4
  %106 = call i64 @_cmsFloat2Half(float %105)
  %107 = load i32*, i32** %10, align 8
  %108 = bitcast i32* %107 to i64*
  %109 = load i32, i32* %22, align 4
  %110 = load i32, i32* %23, align 4
  %111 = add nsw i32 %109, %110
  %112 = load i32, i32* %11, align 4
  %113 = mul nsw i32 %111, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %108, i64 %114
  store i64 %106, i64* %115, align 8
  br label %126

116:                                              ; preds = %101
  %117 = load float, float* %21, align 4
  %118 = call i64 @_cmsFloat2Half(float %117)
  %119 = load i32*, i32** %10, align 8
  %120 = bitcast i32* %119 to i64*
  %121 = load i32, i32* %22, align 4
  %122 = load i32, i32* %23, align 4
  %123 = add nsw i32 %121, %122
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %120, i64 %124
  store i64 %118, i64* %125, align 8
  br label %126

126:                                              ; preds = %116, %104
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %22, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %22, align 4
  br label %72

130:                                              ; preds = %72
  %131 = load i32, i32* %15, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %149

133:                                              ; preds = %130
  %134 = load i32, i32* %16, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %149

136:                                              ; preds = %133
  %137 = load i64*, i64** %20, align 8
  %138 = getelementptr inbounds i64, i64* %137, i64 1
  %139 = load i64*, i64** %20, align 8
  %140 = load i32, i32* %12, align 4
  %141 = sub nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = mul i64 %142, 8
  %144 = trunc i64 %143 to i32
  %145 = call i32 @memmove(i64* %138, i64* %139, i32 %144)
  %146 = load float, float* %21, align 4
  %147 = call i64 @_cmsFloat2Half(float %146)
  %148 = load i64*, i64** %20, align 8
  store i64 %147, i64* %148, align 8
  br label %149

149:                                              ; preds = %136, %133, %130
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @T_PLANAR(i32 %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %149
  %156 = load i32*, i32** %10, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 8
  store i32* %157, i32** %6, align 8
  br label %166

158:                                              ; preds = %149
  %159 = load i32*, i32** %10, align 8
  %160 = load i32, i32* %12, align 4
  %161 = load i32, i32* %15, align 4
  %162 = add nsw i32 %160, %161
  %163 = sext i32 %162 to i64
  %164 = mul i64 %163, 8
  %165 = getelementptr inbounds i32, i32* %159, i64 %164
  store i32* %165, i32** %6, align 8
  br label %166

166:                                              ; preds = %158, %155
  %167 = load i32*, i32** %6, align 8
  ret i32* %167
}

declare dso_local i32 @T_CHANNELS(i32) #1

declare dso_local i32 @T_DOSWAP(i32) #1

declare dso_local i32 @T_FLAVOR(i32) #1

declare dso_local i32 @T_EXTRA(i32) #1

declare dso_local i32 @T_SWAPFIRST(i32) #1

declare dso_local i32 @T_PLANAR(i32) #1

declare dso_local i64 @IsInkSpace(i32) #1

declare dso_local i32 @PixelSize(i32) #1

declare dso_local i64 @_cmsFloat2Half(float) #1

declare dso_local i32 @memmove(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
