; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_histogram_enc.c_FinalHuffmanCost.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_histogram_enc.c_FinalHuffmanCost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double*, double** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.TYPE_3__*)* @FinalHuffmanCost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @FinalHuffmanCost(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca double, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = call double (...) @InitialHuffmanCost()
  store double %4, double* %3, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load double*, double** %6, align 8
  %8 = getelementptr inbounds double, double* %7, i64 0
  %9 = load double, double* %8, align 8
  %10 = fmul double %9, 1.562500e+00
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load double**, double*** %12, align 8
  %14 = getelementptr inbounds double*, double** %13, i64 0
  %15 = load double*, double** %14, align 8
  %16 = getelementptr inbounds double, double* %15, i64 1
  %17 = load double, double* %16, align 8
  %18 = fmul double 2.343750e-01, %17
  %19 = fadd double %10, %18
  %20 = load double, double* %3, align 8
  %21 = fadd double %20, %19
  store double %21, double* %3, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load double*, double** %23, align 8
  %25 = getelementptr inbounds double, double* %24, i64 1
  %26 = load double, double* %25, align 8
  %27 = fmul double %26, 0x4004A00000000000
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load double**, double*** %29, align 8
  %31 = getelementptr inbounds double*, double** %30, i64 1
  %32 = load double*, double** %31, align 8
  %33 = getelementptr inbounds double, double* %32, i64 1
  %34 = load double, double* %33, align 8
  %35 = fmul double 7.031250e-01, %34
  %36 = fadd double %27, %35
  %37 = load double, double* %3, align 8
  %38 = fadd double %37, %36
  store double %38, double* %3, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load double**, double*** %40, align 8
  %42 = getelementptr inbounds double*, double** %41, i64 0
  %43 = load double*, double** %42, align 8
  %44 = getelementptr inbounds double, double* %43, i64 0
  %45 = load double, double* %44, align 8
  %46 = fmul double 0x3FFCC00000000000, %45
  %47 = load double, double* %3, align 8
  %48 = fadd double %47, %46
  store double %48, double* %3, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load double**, double*** %50, align 8
  %52 = getelementptr inbounds double*, double** %51, i64 1
  %53 = load double*, double** %52, align 8
  %54 = getelementptr inbounds double, double* %53, i64 0
  %55 = load double, double* %54, align 8
  %56 = fmul double 3.281250e+00, %55
  %57 = load double, double* %3, align 8
  %58 = fadd double %57, %56
  store double %58, double* %3, align 8
  %59 = load double, double* %3, align 8
  ret double %59
}

declare dso_local double @InitialHuffmanCost(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
