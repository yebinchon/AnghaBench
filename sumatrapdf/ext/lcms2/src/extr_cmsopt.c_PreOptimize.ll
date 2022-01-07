; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsopt.c_PreOptimize.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsopt.c_PreOptimize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@cmsSigIdentityElemType = common dso_local global i32 0, align 4
@cmsSigXYZ2LabElemType = common dso_local global i32 0, align 4
@cmsSigLab2XYZElemType = common dso_local global i32 0, align 4
@cmsSigLabV4toV2 = common dso_local global i32 0, align 4
@cmsSigLabV2toV4 = common dso_local global i32 0, align 4
@cmsSigLab2FloatPCS = common dso_local global i32 0, align 4
@cmsSigFloatPCS2Lab = common dso_local global i32 0, align 4
@cmsSigXYZ2FloatPCS = common dso_local global i32 0, align 4
@cmsSigFloatPCS2XYZ = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @PreOptimize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PreOptimize(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %7 = load i32, i32* @FALSE, align 4
  store i32 %7, i32* %5, align 4
  br label %8

8:                                                ; preds = %68, %2
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* @cmsSigIdentityElemType, align 4
  %13 = call i32 @_Remove1Op(i32 %10, i32* %11, i32 %12)
  %14 = load i32, i32* %6, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* @cmsSigXYZ2LabElemType, align 4
  %19 = load i32, i32* @cmsSigLab2XYZElemType, align 4
  %20 = call i32 @_Remove2Op(i32 %16, i32* %17, i32 %18, i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* @cmsSigLab2XYZElemType, align 4
  %26 = load i32, i32* @cmsSigXYZ2LabElemType, align 4
  %27 = call i32 @_Remove2Op(i32 %23, i32* %24, i32 %25, i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* @cmsSigLabV4toV2, align 4
  %33 = load i32, i32* @cmsSigLabV2toV4, align 4
  %34 = call i32 @_Remove2Op(i32 %30, i32* %31, i32 %32, i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* @cmsSigLabV2toV4, align 4
  %40 = load i32, i32* @cmsSigLabV4toV2, align 4
  %41 = call i32 @_Remove2Op(i32 %37, i32* %38, i32 %39, i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %3, align 4
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* @cmsSigLab2FloatPCS, align 4
  %47 = load i32, i32* @cmsSigFloatPCS2Lab, align 4
  %48 = call i32 @_Remove2Op(i32 %44, i32* %45, i32 %46, i32 %47)
  %49 = load i32, i32* %6, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %3, align 4
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* @cmsSigXYZ2FloatPCS, align 4
  %54 = load i32, i32* @cmsSigFloatPCS2XYZ, align 4
  %55 = call i32 @_Remove2Op(i32 %51, i32* %52, i32 %53, i32 %54)
  %56 = load i32, i32* %6, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %3, align 4
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @_MultiplyMatrix(i32 %58, i32* %59)
  %61 = load i32, i32* %6, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %8
  %66 = load i32, i32* @TRUE, align 4
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %65, %8
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %8, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @_Remove1Op(i32, i32*, i32) #1

declare dso_local i32 @_Remove2Op(i32, i32*, i32, i32) #1

declare dso_local i32 @_MultiplyMatrix(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
