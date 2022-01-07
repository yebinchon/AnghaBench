; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libsamplerate/extr_src_sinc.c_calc_output_single.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libsamplerate/extr_src_sinc.c_calc_output_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, double*, double*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.TYPE_3__*, i32, i32)* @calc_output_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @calc_output_single(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @int_to_fp(i32 %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* %11, align 4
  %23 = sub nsw i32 %21, %22
  %24 = load i32, i32* %5, align 4
  %25 = sdiv i32 %23, %24
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* %5, align 4
  %29 = mul nsw i32 %27, %28
  %30 = add nsw i32 %26, %29
  store i32 %30, i32* %11, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %14, align 4
  %35 = sub nsw i32 %33, %34
  store i32 %35, i32* %13, align 4
  store double 0.000000e+00, double* %8, align 8
  br label %36

36:                                               ; preds = %83, %3
  %37 = load i32, i32* %11, align 4
  %38 = call double @fp_to_double(i32 %37)
  store double %38, double* %7, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @fp_to_int(i32 %39)
  store i32 %40, i32* %15, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load double*, double** %42, align 8
  %44 = load i32, i32* %15, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds double, double* %43, i64 %45
  %47 = load double, double* %46, align 8
  %48 = load double, double* %7, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load double*, double** %50, align 8
  %52 = load i32, i32* %15, align 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds double, double* %51, i64 %54
  %56 = load double, double* %55, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load double*, double** %58, align 8
  %60 = load i32, i32* %15, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds double, double* %59, i64 %61
  %63 = load double, double* %62, align 8
  %64 = fsub double %56, %63
  %65 = fmul double %48, %64
  %66 = fadd double %47, %65
  store double %66, double* %10, align 8
  %67 = load double, double* %10, align 8
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  %70 = load double*, double** %69, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds double, double* %70, i64 %72
  %74 = load double, double* %73, align 8
  %75 = fmul double %67, %74
  %76 = load double, double* %8, align 8
  %77 = fadd double %76, %75
  store double %77, double* %8, align 8
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %11, align 4
  %80 = sub nsw i32 %79, %78
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %13, align 4
  br label %83

83:                                               ; preds = %36
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @MAKE_INCREMENT_T(i32 0)
  %86 = icmp sge i32 %84, %85
  br i1 %86, label %36, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* %6, align 4
  %90 = sub nsw i32 %88, %89
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %11, align 4
  %93 = sub nsw i32 %91, %92
  %94 = load i32, i32* %5, align 4
  %95 = sdiv i32 %93, %94
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* %5, align 4
  %99 = mul nsw i32 %97, %98
  %100 = add nsw i32 %96, %99
  store i32 %100, i32* %11, align 4
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, 1
  %105 = load i32, i32* %14, align 4
  %106 = add nsw i32 %104, %105
  store i32 %106, i32* %13, align 4
  store double 0.000000e+00, double* %9, align 8
  br label %107

107:                                              ; preds = %154, %87
  %108 = load i32, i32* %11, align 4
  %109 = call double @fp_to_double(i32 %108)
  store double %109, double* %7, align 8
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @fp_to_int(i32 %110)
  store i32 %111, i32* %15, align 4
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  %114 = load double*, double** %113, align 8
  %115 = load i32, i32* %15, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds double, double* %114, i64 %116
  %118 = load double, double* %117, align 8
  %119 = load double, double* %7, align 8
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 1
  %122 = load double*, double** %121, align 8
  %123 = load i32, i32* %15, align 4
  %124 = add nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds double, double* %122, i64 %125
  %127 = load double, double* %126, align 8
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 1
  %130 = load double*, double** %129, align 8
  %131 = load i32, i32* %15, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds double, double* %130, i64 %132
  %134 = load double, double* %133, align 8
  %135 = fsub double %127, %134
  %136 = fmul double %119, %135
  %137 = fadd double %118, %136
  store double %137, double* %10, align 8
  %138 = load double, double* %10, align 8
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 2
  %141 = load double*, double** %140, align 8
  %142 = load i32, i32* %13, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds double, double* %141, i64 %143
  %145 = load double, double* %144, align 8
  %146 = fmul double %138, %145
  %147 = load double, double* %9, align 8
  %148 = fadd double %147, %146
  store double %148, double* %9, align 8
  %149 = load i32, i32* %5, align 4
  %150 = load i32, i32* %11, align 4
  %151 = sub nsw i32 %150, %149
  store i32 %151, i32* %11, align 4
  %152 = load i32, i32* %13, align 4
  %153 = sub nsw i32 %152, 1
  store i32 %153, i32* %13, align 4
  br label %154

154:                                              ; preds = %107
  %155 = load i32, i32* %11, align 4
  %156 = call i32 @MAKE_INCREMENT_T(i32 0)
  %157 = icmp sgt i32 %155, %156
  br i1 %157, label %107, label %158

158:                                              ; preds = %154
  %159 = load double, double* %8, align 8
  %160 = load double, double* %9, align 8
  %161 = fadd double %159, %160
  ret double %161
}

declare dso_local i32 @int_to_fp(i32) #1

declare dso_local double @fp_to_double(i32) #1

declare dso_local i32 @fp_to_int(i32) #1

declare dso_local i32 @MAKE_INCREMENT_T(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
