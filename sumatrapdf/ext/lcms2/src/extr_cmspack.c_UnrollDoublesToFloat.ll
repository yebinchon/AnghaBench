; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmspack.c_UnrollDoublesToFloat.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmspack.c_UnrollDoublesToFloat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, %struct.TYPE_3__*, i64*, i32*, i32)* @UnrollDoublesToFloat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @UnrollDoublesToFloat(i32 %0, %struct.TYPE_3__* %1, i64* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i64*, align 8
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
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca double, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %8, align 8
  store i64* %2, i64** %9, align 8
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
  %40 = call i32 @T_SWAPFIRST(i32 %39)
  store i32 %40, i32* %15, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @T_EXTRA(i32 %43)
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %15, align 4
  %47 = xor i32 %45, %46
  store i32 %47, i32* %17, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @T_PLANAR(i32 %50)
  store i32 %51, i32* %18, align 4
  store i32 0, i32* %21, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @IsInkSpace(i32 %54)
  %56 = icmp ne i64 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, double 1.000000e+02, double 1.000000e+00
  store double %58, double* %22, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @PixelSize(i32 %61)
  %63 = load i32, i32* %11, align 4
  %64 = sdiv i32 %63, %62
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %17, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %5
  %68 = load i32, i32* %16, align 4
  store i32 %68, i32* %21, align 4
  br label %69

69:                                               ; preds = %67, %5
  store i32 0, i32* %20, align 4
  br label %70

70:                                               ; preds = %126, %69
  %71 = load i32, i32* %20, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %129

74:                                               ; preds = %70
  %75 = load i32, i32* %13, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %20, align 4
  %80 = sub nsw i32 %78, %79
  %81 = sub nsw i32 %80, 1
  br label %84

82:                                               ; preds = %74
  %83 = load i32, i32* %20, align 4
  br label %84

84:                                               ; preds = %82, %77
  %85 = phi i32 [ %81, %77 ], [ %83, %82 ]
  store i32 %85, i32* %23, align 4
  %86 = load i32, i32* %18, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %84
  %89 = load i32*, i32** %10, align 8
  %90 = bitcast i32* %89 to double*
  %91 = load i32, i32* %20, align 4
  %92 = load i32, i32* %21, align 4
  %93 = add nsw i32 %91, %92
  %94 = load i32, i32* %11, align 4
  %95 = mul nsw i32 %93, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds double, double* %90, i64 %96
  %98 = load double, double* %97, align 8
  store double %98, double* %19, align 8
  br label %108

99:                                               ; preds = %84
  %100 = load i32*, i32** %10, align 8
  %101 = bitcast i32* %100 to double*
  %102 = load i32, i32* %20, align 4
  %103 = load i32, i32* %21, align 4
  %104 = add nsw i32 %102, %103
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds double, double* %101, i64 %105
  %107 = load double, double* %106, align 8
  store double %107, double* %19, align 8
  br label %108

108:                                              ; preds = %99, %88
  %109 = load double, double* %22, align 8
  %110 = load double, double* %19, align 8
  %111 = fdiv double %110, %109
  store double %111, double* %19, align 8
  %112 = load i32, i32* %14, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %108
  %115 = load double, double* %19, align 8
  %116 = fsub double 1.000000e+00, %115
  br label %119

117:                                              ; preds = %108
  %118 = load double, double* %19, align 8
  br label %119

119:                                              ; preds = %117, %114
  %120 = phi double [ %116, %114 ], [ %118, %117 ]
  %121 = fptosi double %120 to i64
  %122 = load i64*, i64** %9, align 8
  %123 = load i32, i32* %23, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %122, i64 %124
  store i64 %121, i64* %125, align 8
  br label %126

126:                                              ; preds = %119
  %127 = load i32, i32* %20, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %20, align 4
  br label %70

129:                                              ; preds = %70
  %130 = load i32, i32* %16, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %155

132:                                              ; preds = %129
  %133 = load i32, i32* %15, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %155

135:                                              ; preds = %132
  %136 = load i64*, i64** %9, align 8
  %137 = getelementptr inbounds i64, i64* %136, i64 0
  %138 = load i64, i64* %137, align 8
  store i64 %138, i64* %24, align 8
  %139 = load i64*, i64** %9, align 8
  %140 = getelementptr inbounds i64, i64* %139, i64 0
  %141 = load i64*, i64** %9, align 8
  %142 = getelementptr inbounds i64, i64* %141, i64 1
  %143 = load i32, i32* %12, align 4
  %144 = sub nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = mul i64 %145, 8
  %147 = trunc i64 %146 to i32
  %148 = call i32 @memmove(i64* %140, i64* %142, i32 %147)
  %149 = load i64, i64* %24, align 8
  %150 = load i64*, i64** %9, align 8
  %151 = load i32, i32* %12, align 4
  %152 = sub nsw i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i64, i64* %150, i64 %153
  store i64 %149, i64* %154, align 8
  br label %155

155:                                              ; preds = %135, %132, %129
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @T_PLANAR(i32 %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %155
  %162 = load i32*, i32** %10, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 8
  store i32* %163, i32** %6, align 8
  br label %172

164:                                              ; preds = %155
  %165 = load i32*, i32** %10, align 8
  %166 = load i32, i32* %12, align 4
  %167 = load i32, i32* %16, align 4
  %168 = add nsw i32 %166, %167
  %169 = sext i32 %168 to i64
  %170 = mul i64 %169, 8
  %171 = getelementptr inbounds i32, i32* %165, i64 %170
  store i32* %171, i32** %6, align 8
  br label %172

172:                                              ; preds = %164, %161
  %173 = load i32*, i32** %6, align 8
  ret i32* %173
}

declare dso_local i32 @T_CHANNELS(i32) #1

declare dso_local i32 @T_DOSWAP(i32) #1

declare dso_local i32 @T_FLAVOR(i32) #1

declare dso_local i32 @T_SWAPFIRST(i32) #1

declare dso_local i32 @T_EXTRA(i32) #1

declare dso_local i32 @T_PLANAR(i32) #1

declare dso_local i64 @IsInkSpace(i32) #1

declare dso_local i32 @PixelSize(i32) #1

declare dso_local i32 @memmove(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
