; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_timeout.c_timeout_getretry.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_timeout.c_timeout_getretry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, double, double }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @timeout_getretry(%struct.TYPE_3__* %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load double, double* %8, align 8
  %10 = fcmp olt double %9, 0.000000e+00
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load double, double* %13, align 8
  %15 = fcmp olt double %14, 0.000000e+00
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store double -1.000000e+00, double* %2, align 8
  br label %67

17:                                               ; preds = %11, %1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load double, double* %19, align 8
  %21 = fcmp olt double %20, 0.000000e+00
  br i1 %21, label %22, label %34

22:                                               ; preds = %17
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load double, double* %24, align 8
  %26 = call double (...) @timeout_gettime()
  %27 = fsub double %25, %26
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load double, double* %29, align 8
  %31 = fadd double %27, %30
  store double %31, double* %4, align 8
  %32 = load double, double* %4, align 8
  %33 = call double @MAX(double %32, double 0.000000e+00)
  store double %33, double* %2, align 8
  br label %67

34:                                               ; preds = %17
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load double, double* %36, align 8
  %38 = fcmp olt double %37, 0.000000e+00
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load double, double* %41, align 8
  %43 = call double (...) @timeout_gettime()
  %44 = fsub double %42, %43
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load double, double* %46, align 8
  %48 = fadd double %44, %47
  store double %48, double* %5, align 8
  %49 = load double, double* %5, align 8
  %50 = call double @MAX(double %49, double 0.000000e+00)
  store double %50, double* %2, align 8
  br label %67

51:                                               ; preds = %34
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load double, double* %53, align 8
  %55 = call double (...) @timeout_gettime()
  %56 = fsub double %54, %55
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = load double, double* %58, align 8
  %60 = fadd double %56, %59
  store double %60, double* %6, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load double, double* %62, align 8
  %64 = load double, double* %6, align 8
  %65 = call double @MAX(double %64, double 0.000000e+00)
  %66 = call double @MIN(double %63, double %65)
  store double %66, double* %2, align 8
  br label %67

67:                                               ; preds = %51, %39, %22, %16
  %68 = load double, double* %2, align 8
  ret double %68
}

declare dso_local double @timeout_gettime(...) #1

declare dso_local double @MAX(double, double) #1

declare dso_local double @MIN(double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
