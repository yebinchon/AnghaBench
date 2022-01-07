; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckKPlaneBlackPreserving.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckKPlaneBlackPreserving.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"test1.icc\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"test2.icc\00", align 1
@TYPE_CMYK_FLT = common dso_local global i32 0, align 4
@INTENT_PERCEPTUAL = common dso_local global i32 0, align 4
@TYPE_Lab_DBL = common dso_local global i32 0, align 4
@INTENT_PRESERVE_K_PLANE_PERCEPTUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CheckKPlaneBlackPreserving to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckKPlaneBlackPreserving() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [4 x i32], align 16
  %7 = alloca [4 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = call i32 (...) @DbgThread()
  %15 = call i32 @cmsOpenProfileFromFile(i32 %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %15, i32* %1, align 4
  %16 = call i32 (...) @DbgThread()
  %17 = call i32 @cmsOpenProfileFromFile(i32 %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %17, i32* %2, align 4
  %18 = call i32 (...) @DbgThread()
  %19 = call i32 @cmsCreateLab4Profile(i32 %18, i32* null)
  store i32 %19, i32* %10, align 4
  %20 = call i32 (...) @DbgThread()
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* @TYPE_CMYK_FLT, align 4
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @TYPE_CMYK_FLT, align 4
  %25 = load i32, i32* @INTENT_PERCEPTUAL, align 4
  %26 = call i32 @cmsCreateTransform(i32 %20, i32 %21, i32 %22, i32 %23, i32 %24, i32 %25, i32 0)
  store i32 %26, i32* %3, align 4
  %27 = call i32 (...) @DbgThread()
  %28 = load i32, i32* %1, align 4
  %29 = load i32, i32* @TYPE_CMYK_FLT, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @TYPE_Lab_DBL, align 4
  %32 = load i32, i32* @INTENT_PERCEPTUAL, align 4
  %33 = call i32 @cmsCreateTransform(i32 %27, i32 %28, i32 %29, i32 %30, i32 %31, i32 %32, i32 0)
  store i32 %33, i32* %4, align 4
  %34 = call i32 (...) @DbgThread()
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* @TYPE_CMYK_FLT, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @TYPE_Lab_DBL, align 4
  %39 = load i32, i32* @INTENT_PERCEPTUAL, align 4
  %40 = call i32 @cmsCreateTransform(i32 %34, i32 %35, i32 %36, i32 %37, i32 %38, i32 %39, i32 0)
  store i32 %40, i32* %5, align 4
  store double 0.000000e+00, double* %12, align 8
  store i32 0, i32* %13, align 4
  br label %41

41:                                               ; preds = %71, %0
  %42 = load i32, i32* %13, align 4
  %43 = icmp sle i32 %42, 100
  br i1 %43, label %44, label %74

44:                                               ; preds = %41
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32 0, i32* %45, align 16
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  store i32 0, i32* %46, align 4
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  store i32 0, i32* %47, align 8
  %48 = load i32, i32* %13, align 4
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  store i32 %48, i32* %49, align 4
  %50 = call i32 (...) @DbgThread()
  %51 = load i32, i32* %4, align 4
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %53 = call i32 @cmsDoTransform(i32 %50, i32 %51, i32* %52, i32* %8, i32 1)
  %54 = call i32 (...) @DbgThread()
  %55 = load i32, i32* %3, align 4
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %58 = call i32 @cmsDoTransform(i32 %54, i32 %55, i32* %56, i32* %57, i32 1)
  %59 = call i32 (...) @DbgThread()
  %60 = load i32, i32* %5, align 4
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %62 = call i32 @cmsDoTransform(i32 %59, i32 %60, i32* %61, i32* %9, i32 1)
  %63 = call i32 (...) @DbgThread()
  %64 = call double @cmsDeltaE(i32 %63, i32* %8, i32* %9)
  store double %64, double* %11, align 8
  %65 = load double, double* %11, align 8
  %66 = load double, double* %12, align 8
  %67 = fcmp ogt double %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %44
  %69 = load double, double* %11, align 8
  store double %69, double* %12, align 8
  br label %70

70:                                               ; preds = %68, %44
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %13, align 4
  br label %41

74:                                               ; preds = %41
  %75 = call i32 (...) @DbgThread()
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @cmsDeleteTransform(i32 %75, i32 %76)
  %78 = call i32 (...) @DbgThread()
  %79 = load i32, i32* %2, align 4
  %80 = load i32, i32* @TYPE_CMYK_FLT, align 4
  %81 = load i32, i32* %1, align 4
  %82 = load i32, i32* @TYPE_CMYK_FLT, align 4
  %83 = load i32, i32* @INTENT_PRESERVE_K_PLANE_PERCEPTUAL, align 4
  %84 = call i32 @cmsCreateTransform(i32 %78, i32 %79, i32 %80, i32 %81, i32 %82, i32 %83, i32 0)
  store i32 %84, i32* %3, align 4
  store i32 0, i32* %13, align 4
  br label %85

85:                                               ; preds = %115, %74
  %86 = load i32, i32* %13, align 4
  %87 = icmp sle i32 %86, 100
  br i1 %87, label %88, label %118

88:                                               ; preds = %85
  %89 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32 30, i32* %89, align 16
  %90 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  store i32 20, i32* %90, align 4
  %91 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  store i32 10, i32* %91, align 8
  %92 = load i32, i32* %13, align 4
  %93 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  store i32 %92, i32* %93, align 4
  %94 = call i32 (...) @DbgThread()
  %95 = load i32, i32* %5, align 4
  %96 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %97 = call i32 @cmsDoTransform(i32 %94, i32 %95, i32* %96, i32* %8, i32 1)
  %98 = call i32 (...) @DbgThread()
  %99 = load i32, i32* %3, align 4
  %100 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %101 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %102 = call i32 @cmsDoTransform(i32 %98, i32 %99, i32* %100, i32* %101, i32 1)
  %103 = call i32 (...) @DbgThread()
  %104 = load i32, i32* %4, align 4
  %105 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %106 = call i32 @cmsDoTransform(i32 %103, i32 %104, i32* %105, i32* %9, i32 1)
  %107 = call i32 (...) @DbgThread()
  %108 = call double @cmsDeltaE(i32 %107, i32* %8, i32* %9)
  store double %108, double* %11, align 8
  %109 = load double, double* %11, align 8
  %110 = load double, double* %12, align 8
  %111 = fcmp ogt double %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %88
  %113 = load double, double* %11, align 8
  store double %113, double* %12, align 8
  br label %114

114:                                              ; preds = %112, %88
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %13, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %13, align 4
  br label %85

118:                                              ; preds = %85
  %119 = call i32 (...) @DbgThread()
  %120 = load i32, i32* %3, align 4
  %121 = call i32 @cmsDeleteTransform(i32 %119, i32 %120)
  %122 = call i32 (...) @DbgThread()
  %123 = load i32, i32* %1, align 4
  %124 = call i32 @cmsCloseProfile(i32 %122, i32 %123)
  %125 = call i32 (...) @DbgThread()
  %126 = load i32, i32* %2, align 4
  %127 = call i32 @cmsCloseProfile(i32 %125, i32 %126)
  %128 = call i32 (...) @DbgThread()
  %129 = load i32, i32* %10, align 4
  %130 = call i32 @cmsCloseProfile(i32 %128, i32 %129)
  %131 = call i32 (...) @DbgThread()
  %132 = load i32, i32* %4, align 4
  %133 = call i32 @cmsDeleteTransform(i32 %131, i32 %132)
  %134 = call i32 (...) @DbgThread()
  %135 = load i32, i32* %5, align 4
  %136 = call i32 @cmsDeleteTransform(i32 %134, i32 %135)
  %137 = load double, double* %12, align 8
  %138 = fcmp olt double %137, 3.000000e+01
  %139 = zext i1 %138 to i32
  ret i32 %139
}

declare dso_local i32 @cmsOpenProfileFromFile(i32, i8*, i8*) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32 @cmsCreateLab4Profile(i32, i32*) #1

declare dso_local i32 @cmsCreateTransform(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cmsDoTransform(i32, i32, i32*, i32*, i32) #1

declare dso_local double @cmsDeltaE(i32, i32*, i32*) #1

declare dso_local i32 @cmsDeleteTransform(i32, i32) #1

declare dso_local i32 @cmsCloseProfile(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
