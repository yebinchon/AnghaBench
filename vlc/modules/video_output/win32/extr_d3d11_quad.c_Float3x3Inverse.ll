; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_d3d11_quad.c_Float3x3Inverse.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_d3d11_quad.c_Float3x3Inverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double*)* @Float3x3Inverse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Float3x3Inverse(double* %0) #0 {
  %2 = alloca double*, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store double* %0, double** %2, align 8
  %15 = load double*, double** %2, align 8
  %16 = getelementptr inbounds double, double* %15, i64 0
  %17 = load double, double* %16, align 8
  store double %17, double* %3, align 8
  %18 = load double*, double** %2, align 8
  %19 = getelementptr inbounds double, double* %18, i64 1
  %20 = load double, double* %19, align 8
  store double %20, double* %4, align 8
  %21 = load double*, double** %2, align 8
  %22 = getelementptr inbounds double, double* %21, i64 2
  %23 = load double, double* %22, align 8
  store double %23, double* %5, align 8
  %24 = load double*, double** %2, align 8
  %25 = getelementptr inbounds double, double* %24, i64 3
  %26 = load double, double* %25, align 8
  store double %26, double* %6, align 8
  %27 = load double*, double** %2, align 8
  %28 = getelementptr inbounds double, double* %27, i64 4
  %29 = load double, double* %28, align 8
  store double %29, double* %7, align 8
  %30 = load double*, double** %2, align 8
  %31 = getelementptr inbounds double, double* %30, i64 5
  %32 = load double, double* %31, align 8
  store double %32, double* %8, align 8
  %33 = load double*, double** %2, align 8
  %34 = getelementptr inbounds double, double* %33, i64 6
  %35 = load double, double* %34, align 8
  store double %35, double* %9, align 8
  %36 = load double*, double** %2, align 8
  %37 = getelementptr inbounds double, double* %36, i64 7
  %38 = load double, double* %37, align 8
  store double %38, double* %10, align 8
  %39 = load double*, double** %2, align 8
  %40 = getelementptr inbounds double, double* %39, i64 8
  %41 = load double, double* %40, align 8
  store double %41, double* %11, align 8
  %42 = load double, double* %7, align 8
  %43 = load double, double* %11, align 8
  %44 = fmul double %42, %43
  %45 = load double, double* %10, align 8
  %46 = load double, double* %8, align 8
  %47 = fmul double %45, %46
  %48 = fsub double %44, %47
  %49 = load double*, double** %2, align 8
  %50 = getelementptr inbounds double, double* %49, i64 0
  store double %48, double* %50, align 8
  %51 = load double, double* %4, align 8
  %52 = load double, double* %11, align 8
  %53 = fmul double %51, %52
  %54 = load double, double* %10, align 8
  %55 = load double, double* %5, align 8
  %56 = fmul double %54, %55
  %57 = fsub double %53, %56
  %58 = fneg double %57
  %59 = load double*, double** %2, align 8
  %60 = getelementptr inbounds double, double* %59, i64 1
  store double %58, double* %60, align 8
  %61 = load double, double* %4, align 8
  %62 = load double, double* %8, align 8
  %63 = fmul double %61, %62
  %64 = load double, double* %7, align 8
  %65 = load double, double* %5, align 8
  %66 = fmul double %64, %65
  %67 = fsub double %63, %66
  %68 = load double*, double** %2, align 8
  %69 = getelementptr inbounds double, double* %68, i64 2
  store double %67, double* %69, align 8
  %70 = load double, double* %6, align 8
  %71 = load double, double* %11, align 8
  %72 = fmul double %70, %71
  %73 = load double, double* %9, align 8
  %74 = load double, double* %8, align 8
  %75 = fmul double %73, %74
  %76 = fsub double %72, %75
  %77 = fneg double %76
  %78 = load double*, double** %2, align 8
  %79 = getelementptr inbounds double, double* %78, i64 3
  store double %77, double* %79, align 8
  %80 = load double, double* %3, align 8
  %81 = load double, double* %11, align 8
  %82 = fmul double %80, %81
  %83 = load double, double* %9, align 8
  %84 = load double, double* %5, align 8
  %85 = fmul double %83, %84
  %86 = fsub double %82, %85
  %87 = load double*, double** %2, align 8
  %88 = getelementptr inbounds double, double* %87, i64 4
  store double %86, double* %88, align 8
  %89 = load double, double* %3, align 8
  %90 = load double, double* %8, align 8
  %91 = fmul double %89, %90
  %92 = load double, double* %6, align 8
  %93 = load double, double* %5, align 8
  %94 = fmul double %92, %93
  %95 = fsub double %91, %94
  %96 = fneg double %95
  %97 = load double*, double** %2, align 8
  %98 = getelementptr inbounds double, double* %97, i64 5
  store double %96, double* %98, align 8
  %99 = load double, double* %6, align 8
  %100 = load double, double* %10, align 8
  %101 = fmul double %99, %100
  %102 = load double, double* %9, align 8
  %103 = load double, double* %7, align 8
  %104 = fmul double %102, %103
  %105 = fsub double %101, %104
  %106 = load double*, double** %2, align 8
  %107 = getelementptr inbounds double, double* %106, i64 6
  store double %105, double* %107, align 8
  %108 = load double, double* %3, align 8
  %109 = load double, double* %10, align 8
  %110 = fmul double %108, %109
  %111 = load double, double* %9, align 8
  %112 = load double, double* %4, align 8
  %113 = fmul double %111, %112
  %114 = fsub double %110, %113
  %115 = fneg double %114
  %116 = load double*, double** %2, align 8
  %117 = getelementptr inbounds double, double* %116, i64 7
  store double %115, double* %117, align 8
  %118 = load double, double* %3, align 8
  %119 = load double, double* %7, align 8
  %120 = fmul double %118, %119
  %121 = load double, double* %6, align 8
  %122 = load double, double* %4, align 8
  %123 = fmul double %121, %122
  %124 = fsub double %120, %123
  %125 = load double*, double** %2, align 8
  %126 = getelementptr inbounds double, double* %125, i64 8
  store double %124, double* %126, align 8
  %127 = load double, double* %3, align 8
  %128 = load double*, double** %2, align 8
  %129 = getelementptr inbounds double, double* %128, i64 0
  %130 = load double, double* %129, align 8
  %131 = fmul double %127, %130
  %132 = load double, double* %6, align 8
  %133 = load double*, double** %2, align 8
  %134 = getelementptr inbounds double, double* %133, i64 1
  %135 = load double, double* %134, align 8
  %136 = fmul double %132, %135
  %137 = fadd double %131, %136
  %138 = load double, double* %9, align 8
  %139 = load double*, double** %2, align 8
  %140 = getelementptr inbounds double, double* %139, i64 2
  %141 = load double, double* %140, align 8
  %142 = fmul double %138, %141
  %143 = fadd double %137, %142
  store double %143, double* %12, align 8
  %144 = load double, double* %12, align 8
  %145 = fdiv double 1.000000e+00, %144
  store double %145, double* %12, align 8
  store i32 0, i32* %13, align 4
  br label %146

146:                                              ; preds = %168, %1
  %147 = load i32, i32* %13, align 4
  %148 = icmp slt i32 %147, 3
  br i1 %148, label %149, label %171

149:                                              ; preds = %146
  store i32 0, i32* %14, align 4
  br label %150

150:                                              ; preds = %164, %149
  %151 = load i32, i32* %14, align 4
  %152 = icmp slt i32 %151, 3
  br i1 %152, label %153, label %167

153:                                              ; preds = %150
  %154 = load double, double* %12, align 8
  %155 = load double*, double** %2, align 8
  %156 = load i32, i32* %14, align 4
  %157 = load i32, i32* %13, align 4
  %158 = mul nsw i32 %157, 3
  %159 = add nsw i32 %156, %158
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds double, double* %155, i64 %160
  %162 = load double, double* %161, align 8
  %163 = fmul double %162, %154
  store double %163, double* %161, align 8
  br label %164

164:                                              ; preds = %153
  %165 = load i32, i32* %14, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %14, align 4
  br label %150

167:                                              ; preds = %150
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %13, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %13, align 4
  br label %146

171:                                              ; preds = %146
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
