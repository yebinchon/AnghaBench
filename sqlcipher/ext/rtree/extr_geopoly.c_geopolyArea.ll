; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_geopoly.c_geopolyArea.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_geopoly.c_geopolyArea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.TYPE_5__*)* @geopolyArea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @geopolyArea(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  store double 0.000000e+00, double* %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %33, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = sub nsw i32 %9, 1
  %11 = icmp slt i32 %6, %10
  br i1 %11, label %12, label %36

12:                                               ; preds = %5
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call double @GeoX(%struct.TYPE_5__* %13, i32 %14)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %17, 1
  %19 = call double @GeoX(%struct.TYPE_5__* %16, i32 %18)
  %20 = fsub double %15, %19
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call double @GeoY(%struct.TYPE_5__* %21, i32 %22)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  %27 = call double @GeoY(%struct.TYPE_5__* %24, i32 %26)
  %28 = fadd double %23, %27
  %29 = fmul double %20, %28
  %30 = fmul double %29, 5.000000e-01
  %31 = load double, double* %3, align 8
  %32 = fadd double %31, %30
  store double %32, double* %3, align 8
  br label %33

33:                                               ; preds = %12
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %5

36:                                               ; preds = %5
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call double @GeoX(%struct.TYPE_5__* %37, i32 %38)
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %41 = call double @GeoX(%struct.TYPE_5__* %40, i32 0)
  %42 = fsub double %39, %41
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call double @GeoY(%struct.TYPE_5__* %43, i32 %44)
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %47 = call double @GeoY(%struct.TYPE_5__* %46, i32 0)
  %48 = fadd double %45, %47
  %49 = fmul double %42, %48
  %50 = fmul double %49, 5.000000e-01
  %51 = load double, double* %3, align 8
  %52 = fadd double %51, %50
  store double %52, double* %3, align 8
  %53 = load double, double* %3, align 8
  ret double %53
}

declare dso_local double @GeoX(%struct.TYPE_5__*, i32) #1

declare dso_local double @GeoY(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
