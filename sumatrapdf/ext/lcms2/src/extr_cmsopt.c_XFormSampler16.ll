; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsopt.c_XFormSampler16.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsopt.c_XFormSampler16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@cmsMAXCHANNELS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, double*, double*, i8*)* @XFormSampler16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @XFormSampler16(i32 %0, double* %1, double* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca double*, align 8
  %7 = alloca double*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store double* %1, double** %6, align 8
  store double* %2, double** %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %9, align 8
  %16 = load i32, i32* @cmsMAXCHANNELS, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca double, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = load i32, i32* @cmsMAXCHANNELS, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca double, i64 %21, align 16
  store i64 %21, i64* %12, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @cmsMAXCHANNELS, align 4
  %27 = icmp slt i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @_cmsAssert(i32 %28)
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @cmsMAXCHANNELS, align 4
  %34 = icmp slt i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @_cmsAssert(i32 %35)
  store i64 0, i64* %13, align 8
  br label %37

37:                                               ; preds = %52, %4
  %38 = load i64, i64* %13, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp ult i64 %38, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %37
  %45 = load double*, double** %6, align 8
  %46 = load i64, i64* %13, align 8
  %47 = getelementptr inbounds double, double* %45, i64 %46
  %48 = load double, double* %47, align 8
  %49 = fdiv double %48, 6.553500e+04
  %50 = load i64, i64* %13, align 8
  %51 = getelementptr inbounds double, double* %19, i64 %50
  store double %49, double* %51, align 8
  br label %52

52:                                               ; preds = %44
  %53 = load i64, i64* %13, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %13, align 8
  br label %37

55:                                               ; preds = %37
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %58 = call i32 @cmsPipelineEvalFloat(i32 %56, double* %19, double* %22, %struct.TYPE_3__* %57)
  store i64 0, i64* %13, align 8
  br label %59

59:                                               ; preds = %75, %55
  %60 = load i64, i64* %13, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = icmp ult i64 %60, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %59
  %67 = load i64, i64* %13, align 8
  %68 = getelementptr inbounds double, double* %22, i64 %67
  %69 = load double, double* %68, align 8
  %70 = fmul double %69, 6.553500e+04
  %71 = call double @_cmsQuickSaturateWord(double %70)
  %72 = load double*, double** %7, align 8
  %73 = load i64, i64* %13, align 8
  %74 = getelementptr inbounds double, double* %72, i64 %73
  store double %71, double* %74, align 8
  br label %75

75:                                               ; preds = %66
  %76 = load i64, i64* %13, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %13, align 8
  br label %59

78:                                               ; preds = %59
  %79 = load i32, i32* @TRUE, align 4
  %80 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %80)
  ret i32 %79
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @_cmsAssert(i32) #2

declare dso_local i32 @cmsPipelineEvalFloat(i32, double*, double*, %struct.TYPE_3__*) #2

declare dso_local double @_cmsQuickSaturateWord(double) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
