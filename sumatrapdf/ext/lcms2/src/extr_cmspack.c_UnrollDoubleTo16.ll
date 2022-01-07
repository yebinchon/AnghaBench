; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmspack.c_UnrollDoubleTo16.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmspack.c_UnrollDoubleTo16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, %struct.TYPE_3__*, i32*, i32*, i32)* @UnrollDoubleTo16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @UnrollDoubleTo16(i32 %0, %struct.TYPE_3__* %1, i32* %2, i32* %3, i32 %4) #0 {
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
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca double, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @T_CHANNELS(i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @T_DOSWAP(i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @T_FLAVOR(i32 %36)
  store i32 %37, i32* %14, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @T_SWAPFIRST(i32 %40)
  store i32 %41, i32* %15, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @T_EXTRA(i32 %44)
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %15, align 4
  %48 = xor i32 %46, %47
  store i32 %48, i32* %17, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @T_PLANAR(i32 %51)
  store i32 %52, i32* %18, align 4
  store i32 0, i32* %22, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @IsInkSpace(i32 %55)
  %57 = icmp ne i64 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, double 6.553500e+02, double 6.553500e+04
  store double %59, double* %23, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @PixelSize(i32 %62)
  %64 = load i32, i32* %11, align 4
  %65 = sdiv i32 %64, %63
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %17, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %5
  %69 = load i32, i32* %16, align 4
  store i32 %69, i32* %22, align 4
  br label %70

70:                                               ; preds = %68, %5
  store i32 0, i32* %21, align 4
  br label %71

71:                                               ; preds = %125, %70
  %72 = load i32, i32* %21, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %128

75:                                               ; preds = %71
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %21, align 4
  %81 = sub nsw i32 %79, %80
  %82 = sub nsw i32 %81, 1
  br label %85

83:                                               ; preds = %75
  %84 = load i32, i32* %21, align 4
  br label %85

85:                                               ; preds = %83, %78
  %86 = phi i32 [ %82, %78 ], [ %84, %83 ]
  store i32 %86, i32* %24, align 4
  %87 = load i32, i32* %18, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %85
  %90 = load i32*, i32** %10, align 8
  %91 = bitcast i32* %90 to double*
  %92 = load i32, i32* %21, align 4
  %93 = load i32, i32* %22, align 4
  %94 = add nsw i32 %92, %93
  %95 = load i32, i32* %11, align 4
  %96 = mul nsw i32 %94, %95
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds double, double* %91, i64 %97
  %99 = load double, double* %98, align 8
  store double %99, double* %19, align 8
  br label %109

100:                                              ; preds = %85
  %101 = load i32*, i32** %10, align 8
  %102 = bitcast i32* %101 to double*
  %103 = load i32, i32* %21, align 4
  %104 = load i32, i32* %22, align 4
  %105 = add nsw i32 %103, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds double, double* %102, i64 %106
  %108 = load double, double* %107, align 8
  store double %108, double* %19, align 8
  br label %109

109:                                              ; preds = %100, %89
  %110 = load double, double* %19, align 8
  %111 = load double, double* %23, align 8
  %112 = fmul double %110, %111
  %113 = call i32 @_cmsQuickSaturateWord(double %112)
  store i32 %113, i32* %20, align 4
  %114 = load i32, i32* %14, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %109
  %117 = load i32, i32* %20, align 4
  %118 = call i32 @REVERSE_FLAVOR_16(i32 %117)
  store i32 %118, i32* %20, align 4
  br label %119

119:                                              ; preds = %116, %109
  %120 = load i32, i32* %20, align 4
  %121 = load i32*, i32** %9, align 8
  %122 = load i32, i32* %24, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  store i32 %120, i32* %124, align 4
  br label %125

125:                                              ; preds = %119
  %126 = load i32, i32* %21, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %21, align 4
  br label %71

128:                                              ; preds = %71
  %129 = load i32, i32* %16, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %154

131:                                              ; preds = %128
  %132 = load i32, i32* %15, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %154

134:                                              ; preds = %131
  %135 = load i32*, i32** %9, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %25, align 4
  %138 = load i32*, i32** %9, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = load i32*, i32** %9, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 1
  %142 = load i32, i32* %12, align 4
  %143 = sub nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = mul i64 %144, 4
  %146 = trunc i64 %145 to i32
  %147 = call i32 @memmove(i32* %139, i32* %141, i32 %146)
  %148 = load i32, i32* %25, align 4
  %149 = load i32*, i32** %9, align 8
  %150 = load i32, i32* %12, align 4
  %151 = sub nsw i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %149, i64 %152
  store i32 %148, i32* %153, align 4
  br label %154

154:                                              ; preds = %134, %131, %128
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @T_PLANAR(i32 %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %154
  %161 = load i32*, i32** %10, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 8
  store i32* %162, i32** %6, align 8
  br label %171

163:                                              ; preds = %154
  %164 = load i32*, i32** %10, align 8
  %165 = load i32, i32* %12, align 4
  %166 = load i32, i32* %16, align 4
  %167 = add nsw i32 %165, %166
  %168 = sext i32 %167 to i64
  %169 = mul i64 %168, 8
  %170 = getelementptr inbounds i32, i32* %164, i64 %169
  store i32* %170, i32** %6, align 8
  br label %171

171:                                              ; preds = %163, %160
  %172 = load i32*, i32** %6, align 8
  ret i32* %172
}

declare dso_local i32 @T_CHANNELS(i32) #1

declare dso_local i32 @T_DOSWAP(i32) #1

declare dso_local i32 @T_FLAVOR(i32) #1

declare dso_local i32 @T_SWAPFIRST(i32) #1

declare dso_local i32 @T_EXTRA(i32) #1

declare dso_local i32 @T_PLANAR(i32) #1

declare dso_local i64 @IsInkSpace(i32) #1

declare dso_local i32 @PixelSize(i32) #1

declare dso_local i32 @_cmsQuickSaturateWord(double) #1

declare dso_local i32 @REVERSE_FLAVOR_16(i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
