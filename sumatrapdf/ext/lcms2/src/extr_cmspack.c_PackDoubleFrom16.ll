; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmspack.c_PackDoubleFrom16.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmspack.c_PackDoubleFrom16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, %struct.TYPE_3__*, i32*, i32*, i32)* @PackDoubleFrom16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @PackDoubleFrom16(i32 %0, %struct.TYPE_3__* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %8, align 8
  store i32* %2, i32** %9, align 8
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
  %58 = select i1 %56, double 6.553500e+02, double 6.553500e+04
  store double %58, double* %19, align 8
  store double 0.000000e+00, double* %20, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = bitcast i32* %59 to double*
  store double* %60, double** %21, align 8
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

72:                                               ; preds = %126, %71
  %73 = load i32, i32* %22, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %129

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
  %88 = load i32*, i32** %9, align 8
  %89 = load i32, i32* %24, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = sitofp i32 %92 to double
  %94 = load double, double* %19, align 8
  %95 = fdiv double %93, %94
  store double %95, double* %20, align 8
  %96 = load i32, i32* %14, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %86
  %99 = load double, double* %19, align 8
  %100 = load double, double* %20, align 8
  %101 = fsub double %99, %100
  store double %101, double* %20, align 8
  br label %102

102:                                              ; preds = %98, %86
  %103 = load i32, i32* %17, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %102
  %106 = load double, double* %20, align 8
  %107 = load i32*, i32** %10, align 8
  %108 = bitcast i32* %107 to double*
  %109 = load i32, i32* %22, align 4
  %110 = load i32, i32* %23, align 4
  %111 = add nsw i32 %109, %110
  %112 = load i32, i32* %11, align 4
  %113 = mul nsw i32 %111, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds double, double* %108, i64 %114
  store double %106, double* %115, align 8
  br label %125

116:                                              ; preds = %102
  %117 = load double, double* %20, align 8
  %118 = load i32*, i32** %10, align 8
  %119 = bitcast i32* %118 to double*
  %120 = load i32, i32* %22, align 4
  %121 = load i32, i32* %23, align 4
  %122 = add nsw i32 %120, %121
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds double, double* %119, i64 %123
  store double %117, double* %124, align 8
  br label %125

125:                                              ; preds = %116, %105
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %22, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %22, align 4
  br label %72

129:                                              ; preds = %72
  %130 = load i32, i32* %15, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %147

132:                                              ; preds = %129
  %133 = load i32, i32* %16, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %147

135:                                              ; preds = %132
  %136 = load double*, double** %21, align 8
  %137 = getelementptr inbounds double, double* %136, i64 1
  %138 = load double*, double** %21, align 8
  %139 = load i32, i32* %12, align 4
  %140 = sub nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = mul i64 %141, 8
  %143 = trunc i64 %142 to i32
  %144 = call i32 @memmove(double* %137, double* %138, i32 %143)
  %145 = load double, double* %20, align 8
  %146 = load double*, double** %21, align 8
  store double %145, double* %146, align 8
  br label %147

147:                                              ; preds = %135, %132, %129
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @T_PLANAR(i32 %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %147
  %154 = load i32*, i32** %10, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 8
  store i32* %155, i32** %6, align 8
  br label %164

156:                                              ; preds = %147
  %157 = load i32*, i32** %10, align 8
  %158 = load i32, i32* %12, align 4
  %159 = load i32, i32* %15, align 4
  %160 = add nsw i32 %158, %159
  %161 = sext i32 %160 to i64
  %162 = mul i64 %161, 8
  %163 = getelementptr inbounds i32, i32* %157, i64 %162
  store i32* %163, i32** %6, align 8
  br label %164

164:                                              ; preds = %156, %153
  %165 = load i32*, i32** %6, align 8
  ret i32* %165
}

declare dso_local i32 @T_CHANNELS(i32) #1

declare dso_local i32 @T_DOSWAP(i32) #1

declare dso_local i32 @T_FLAVOR(i32) #1

declare dso_local i32 @T_EXTRA(i32) #1

declare dso_local i32 @T_SWAPFIRST(i32) #1

declare dso_local i32 @T_PLANAR(i32) #1

declare dso_local i64 @IsInkSpace(i32) #1

declare dso_local i32 @PixelSize(i32) #1

declare dso_local i32 @memmove(double*, double*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
