; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_d3d11_quad.c_Float3x3Multiply.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_d3d11_quad.c_Float3x3Multiply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double*, double*)* @Float3x3Multiply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Float3x3Multiply(double* %0, double* %1) #0 {
  %3 = alloca double*, align 8
  %4 = alloca double*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  store double* %0, double** %3, align 8
  store double* %1, double** %4, align 8
  %15 = load double*, double** %3, align 8
  %16 = getelementptr inbounds double, double* %15, i64 0
  %17 = load double, double* %16, align 8
  store double %17, double* %5, align 8
  %18 = load double*, double** %3, align 8
  %19 = getelementptr inbounds double, double* %18, i64 1
  %20 = load double, double* %19, align 8
  store double %20, double* %6, align 8
  %21 = load double*, double** %3, align 8
  %22 = getelementptr inbounds double, double* %21, i64 2
  %23 = load double, double* %22, align 8
  store double %23, double* %7, align 8
  %24 = load double*, double** %3, align 8
  %25 = getelementptr inbounds double, double* %24, i64 3
  %26 = load double, double* %25, align 8
  store double %26, double* %8, align 8
  %27 = load double*, double** %3, align 8
  %28 = getelementptr inbounds double, double* %27, i64 4
  %29 = load double, double* %28, align 8
  store double %29, double* %9, align 8
  %30 = load double*, double** %3, align 8
  %31 = getelementptr inbounds double, double* %30, i64 5
  %32 = load double, double* %31, align 8
  store double %32, double* %10, align 8
  %33 = load double*, double** %3, align 8
  %34 = getelementptr inbounds double, double* %33, i64 6
  %35 = load double, double* %34, align 8
  store double %35, double* %11, align 8
  %36 = load double*, double** %3, align 8
  %37 = getelementptr inbounds double, double* %36, i64 7
  %38 = load double, double* %37, align 8
  store double %38, double* %12, align 8
  %39 = load double*, double** %3, align 8
  %40 = getelementptr inbounds double, double* %39, i64 8
  %41 = load double, double* %40, align 8
  store double %41, double* %13, align 8
  store i32 0, i32* %14, align 4
  br label %42

42:                                               ; preds = %139, %2
  %43 = load i32, i32* %14, align 4
  %44 = icmp slt i32 %43, 3
  br i1 %44, label %45, label %142

45:                                               ; preds = %42
  %46 = load double, double* %5, align 8
  %47 = load double*, double** %4, align 8
  %48 = load i32, i32* %14, align 4
  %49 = add nsw i32 %48, 0
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds double, double* %47, i64 %50
  %52 = load double, double* %51, align 8
  %53 = fmul double %46, %52
  %54 = load double, double* %6, align 8
  %55 = load double*, double** %4, align 8
  %56 = load i32, i32* %14, align 4
  %57 = add nsw i32 %56, 3
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds double, double* %55, i64 %58
  %60 = load double, double* %59, align 8
  %61 = fmul double %54, %60
  %62 = fadd double %53, %61
  %63 = load double, double* %7, align 8
  %64 = load double*, double** %4, align 8
  %65 = load i32, i32* %14, align 4
  %66 = add nsw i32 %65, 6
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds double, double* %64, i64 %67
  %69 = load double, double* %68, align 8
  %70 = fmul double %63, %69
  %71 = fadd double %62, %70
  %72 = load double*, double** %3, align 8
  %73 = load i32, i32* %14, align 4
  %74 = add nsw i32 %73, 0
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds double, double* %72, i64 %75
  store double %71, double* %76, align 8
  %77 = load double, double* %8, align 8
  %78 = load double*, double** %4, align 8
  %79 = load i32, i32* %14, align 4
  %80 = add nsw i32 %79, 0
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds double, double* %78, i64 %81
  %83 = load double, double* %82, align 8
  %84 = fmul double %77, %83
  %85 = load double, double* %9, align 8
  %86 = load double*, double** %4, align 8
  %87 = load i32, i32* %14, align 4
  %88 = add nsw i32 %87, 3
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds double, double* %86, i64 %89
  %91 = load double, double* %90, align 8
  %92 = fmul double %85, %91
  %93 = fadd double %84, %92
  %94 = load double, double* %10, align 8
  %95 = load double*, double** %4, align 8
  %96 = load i32, i32* %14, align 4
  %97 = add nsw i32 %96, 6
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds double, double* %95, i64 %98
  %100 = load double, double* %99, align 8
  %101 = fmul double %94, %100
  %102 = fadd double %93, %101
  %103 = load double*, double** %3, align 8
  %104 = load i32, i32* %14, align 4
  %105 = add nsw i32 %104, 3
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds double, double* %103, i64 %106
  store double %102, double* %107, align 8
  %108 = load double, double* %11, align 8
  %109 = load double*, double** %4, align 8
  %110 = load i32, i32* %14, align 4
  %111 = add nsw i32 %110, 0
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds double, double* %109, i64 %112
  %114 = load double, double* %113, align 8
  %115 = fmul double %108, %114
  %116 = load double, double* %12, align 8
  %117 = load double*, double** %4, align 8
  %118 = load i32, i32* %14, align 4
  %119 = add nsw i32 %118, 3
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds double, double* %117, i64 %120
  %122 = load double, double* %121, align 8
  %123 = fmul double %116, %122
  %124 = fadd double %115, %123
  %125 = load double, double* %13, align 8
  %126 = load double*, double** %4, align 8
  %127 = load i32, i32* %14, align 4
  %128 = add nsw i32 %127, 6
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds double, double* %126, i64 %129
  %131 = load double, double* %130, align 8
  %132 = fmul double %125, %131
  %133 = fadd double %124, %132
  %134 = load double*, double** %3, align 8
  %135 = load i32, i32* %14, align 4
  %136 = add nsw i32 %135, 6
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds double, double* %134, i64 %137
  store double %133, double* %138, align 8
  br label %139

139:                                              ; preds = %45
  %140 = load i32, i32* %14, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %14, align 4
  br label %42

142:                                              ; preds = %42
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
