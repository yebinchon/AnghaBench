; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_ReverseSampler.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_ReverseSampler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, double*, double*, i8*)* @ReverseSampler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReverseSampler(i32 %0, double* %1, double* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca double*, align 8
  %7 = alloca double*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [3 x i32], align 4
  store i32 %0, i32* %5, align 4
  store double* %1, double** %6, align 8
  store double* %2, double** %7, align 8
  store i8* %3, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %9, align 8
  %17 = load double*, double** %6, align 8
  %18 = getelementptr inbounds double, double* %17, i64 0
  %19 = load double, double* %18, align 8
  %20 = fdiv double %19, 6.553500e+04
  %21 = fptosi double %20 to i32
  store i32 %21, i32* %10, align 4
  %22 = load double*, double** %6, align 8
  %23 = getelementptr inbounds double, double* %22, i64 1
  %24 = load double, double* %23, align 8
  %25 = fdiv double %24, 6.553500e+04
  %26 = fptosi double %25 to i32
  store i32 %26, i32* %11, align 4
  %27 = load double*, double** %6, align 8
  %28 = getelementptr inbounds double, double* %27, i64 2
  %29 = load double, double* %28, align 8
  %30 = fdiv double %29, 6.553500e+04
  %31 = fptosi double %30 to i32
  store i32 %31, i32* %12, align 4
  %32 = load double*, double** %6, align 8
  %33 = getelementptr inbounds double, double* %32, i64 3
  %34 = load double, double* %33, align 8
  %35 = fdiv double %34, 6.553500e+04
  %36 = fptosi double %35 to i32
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %4
  %40 = load i32, i32* %10, align 4
  %41 = sub nsw i32 1, %40
  %42 = call i32 @Clip(i32 %41)
  %43 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* %11, align 4
  %45 = sub nsw i32 1, %44
  %46 = call i32 @Clip(i32 %45)
  %47 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 1
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* %12, align 4
  %49 = sub nsw i32 1, %48
  %50 = call i32 @Clip(i32 %49)
  %51 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 2
  store i32 %50, i32* %51, align 4
  br label %82

52:                                               ; preds = %4
  %53 = load i32, i32* %13, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 2
  store i32 0, i32* %56, align 4
  %57 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 1
  store i32 0, i32* %57, align 4
  %58 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  store i32 0, i32* %58, align 4
  br label %81

59:                                               ; preds = %52
  %60 = load i32, i32* %10, align 4
  %61 = sub nsw i32 1, %60
  %62 = load i32, i32* %13, align 4
  %63 = sub nsw i32 1, %62
  %64 = mul nsw i32 %61, %63
  %65 = call i32 @Clip(i32 %64)
  %66 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* %11, align 4
  %68 = sub nsw i32 1, %67
  %69 = load i32, i32* %13, align 4
  %70 = sub nsw i32 1, %69
  %71 = mul nsw i32 %68, %70
  %72 = call i32 @Clip(i32 %71)
  %73 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 1
  store i32 %72, i32* %73, align 4
  %74 = load i32, i32* %12, align 4
  %75 = sub nsw i32 1, %74
  %76 = load i32, i32* %13, align 4
  %77 = sub nsw i32 1, %76
  %78 = mul nsw i32 %75, %77
  %79 = call i32 @Clip(i32 %78)
  %80 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 2
  store i32 %79, i32* %80, align 4
  br label %81

81:                                               ; preds = %59, %55
  br label %82

82:                                               ; preds = %81, %39
  %83 = call i32 (...) @DbgThread()
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %88 = load double*, double** %7, align 8
  %89 = call i32 @cmsDoTransform(i32 %83, i32 %86, i32* %87, double* %88, i32 1)
  ret i32 1
}

declare dso_local i32 @Clip(i32) #1

declare dso_local i32 @cmsDoTransform(i32, i32, i32*, double*, i32) #1

declare dso_local i32 @DbgThread(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
