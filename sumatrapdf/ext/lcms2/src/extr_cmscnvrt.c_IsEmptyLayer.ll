; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmscnvrt.c_IsEmptyLayer.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmscnvrt.c_IsEmptyLayer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*)* @IsEmptyLayer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IsEmptyLayer(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store double 0.000000e+00, double* %8, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load i32*, i32** %7, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i32, i32* @TRUE, align 4
  store i32 %17, i32* %4, align 4
  br label %74

18:                                               ; preds = %13, %3
  %19 = load i32*, i32** %6, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i32*, i32** %7, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %4, align 4
  br label %74

26:                                               ; preds = %21, %18
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @_cmsMAT3identity(i32 %27, i32* %9)
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %49, %26
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 9
  br i1 %31, label %32, label %52

32:                                               ; preds = %29
  %33 = load i32*, i32** %6, align 8
  %34 = bitcast i32* %33 to double*
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds double, double* %34, i64 %36
  %38 = load double, double* %37, align 8
  %39 = bitcast i32* %9 to double*
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds double, double* %39, i64 %41
  %43 = load double, double* %42, align 4
  %44 = fsub double %38, %43
  %45 = call i64 @fabs(double %44)
  %46 = sitofp i64 %45 to double
  %47 = load double, double* %8, align 8
  %48 = fadd double %47, %46
  store double %48, double* %8, align 8
  br label %49

49:                                               ; preds = %32
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %10, align 4
  br label %29

52:                                               ; preds = %29
  store i32 0, i32* %10, align 4
  br label %53

53:                                               ; preds = %67, %52
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %54, 3
  br i1 %55, label %56, label %70

56:                                               ; preds = %53
  %57 = load i32*, i32** %7, align 8
  %58 = bitcast i32* %57 to double*
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds double, double* %58, i64 %60
  %62 = load double, double* %61, align 8
  %63 = call i64 @fabs(double %62)
  %64 = sitofp i64 %63 to double
  %65 = load double, double* %8, align 8
  %66 = fadd double %65, %64
  store double %66, double* %8, align 8
  br label %67

67:                                               ; preds = %56
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %10, align 4
  br label %53

70:                                               ; preds = %53
  %71 = load double, double* %8, align 8
  %72 = fcmp olt double %71, 2.000000e-03
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %70, %24, %16
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @_cmsMAT3identity(i32, i32*) #1

declare dso_local i64 @fabs(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
