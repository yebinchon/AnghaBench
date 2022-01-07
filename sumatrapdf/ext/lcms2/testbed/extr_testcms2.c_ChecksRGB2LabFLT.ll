; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_ChecksRGB2LabFLT.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_ChecksRGB2LabFLT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TYPE_RGBA_FLT = common dso_local global i32 0, align 4
@TYPE_LabA_FLT = common dso_local global i32 0, align 4
@cmsFLAGS_NOCACHE = common dso_local global i32 0, align 4
@cmsFLAGS_NOOPTIMIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Float RGB->RGB\00", align 1
@FLOAT_PRECISSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ChecksRGB2LabFLT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ChecksRGB2LabFLT() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [4 x i32], align 16
  %7 = alloca [4 x i32], align 16
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32, align 4
  %10 = call i32 (...) @DbgThread()
  %11 = call i32 @cmsCreate_sRGBProfile(i32 %10)
  store i32 %11, i32* %2, align 4
  %12 = call i32 (...) @DbgThread()
  %13 = call i32 @cmsCreateLab4Profile(i32 %12, i32* null)
  store i32 %13, i32* %3, align 4
  %14 = call i32 (...) @DbgThread()
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @TYPE_RGBA_FLT, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @TYPE_LabA_FLT, align 4
  %19 = load i32, i32* @cmsFLAGS_NOCACHE, align 4
  %20 = load i32, i32* @cmsFLAGS_NOOPTIMIZE, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @cmsCreateTransform(i32 %14, i32 %15, i32 %16, i32 %17, i32 %18, i32 0, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = call i32 (...) @DbgThread()
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @TYPE_LabA_FLT, align 4
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @TYPE_RGBA_FLT, align 4
  %28 = load i32, i32* @cmsFLAGS_NOCACHE, align 4
  %29 = load i32, i32* @cmsFLAGS_NOOPTIMIZE, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @cmsCreateTransform(i32 %23, i32 %24, i32 %25, i32 %26, i32 %27, i32 0, i32 %30)
  store i32 %31, i32* %5, align 4
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %87, %0
  %33 = load i32, i32* %9, align 4
  %34 = icmp sle i32 %33, 100
  br i1 %34, label %35, label %90

35:                                               ; preds = %32
  %36 = load i32, i32* %9, align 4
  %37 = sitofp i32 %36 to float
  %38 = fdiv float %37, 1.000000e+02
  %39 = fptosi float %38 to i32
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32 %39, i32* %40, align 16
  %41 = load i32, i32* %9, align 4
  %42 = sitofp i32 %41 to float
  %43 = fdiv float %42, 1.000000e+02
  %44 = fptosi float %43 to i32
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %9, align 4
  %47 = sitofp i32 %46 to float
  %48 = fdiv float %47, 1.000000e+02
  %49 = fptosi float %48 to i32
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  store i32 %49, i32* %50, align 8
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  store i32 0, i32* %51, align 4
  %52 = call i32 (...) @DbgThread()
  %53 = load i32, i32* %4, align 4
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %56 = call i32 @cmsDoTransform(i32 %52, i32 %53, i32* %54, i32* %55, i32 1)
  %57 = call i32 (...) @DbgThread()
  %58 = load i32, i32* %5, align 4
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %61 = call i32 @cmsDoTransform(i32 %57, i32 %58, i32* %59, i32* %60, i32 1)
  %62 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %63 = load i32, i32* %62, align 16
  %64 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %65 = load i32, i32* %64, align 16
  %66 = load i32, i32* @FLOAT_PRECISSION, align 4
  %67 = call i32 @IsGoodVal(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %35
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @FLOAT_PRECISSION, align 4
  %75 = call i32 @IsGoodVal(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %73, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %69
  %78 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %79 = load i32, i32* %78, align 8
  %80 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @FLOAT_PRECISSION, align 4
  %83 = call i32 @IsGoodVal(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %79, i32 %81, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %77, %69, %35
  store i32 0, i32* %1, align 4
  br label %103

86:                                               ; preds = %77
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  br label %32

90:                                               ; preds = %32
  %91 = call i32 (...) @DbgThread()
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @cmsDeleteTransform(i32 %91, i32 %92)
  %94 = call i32 (...) @DbgThread()
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @cmsDeleteTransform(i32 %94, i32 %95)
  %97 = call i32 (...) @DbgThread()
  %98 = load i32, i32* %2, align 4
  %99 = call i32 @cmsCloseProfile(i32 %97, i32 %98)
  %100 = call i32 (...) @DbgThread()
  %101 = load i32, i32* %3, align 4
  %102 = call i32 @cmsCloseProfile(i32 %100, i32 %101)
  store i32 1, i32* %1, align 4
  br label %103

103:                                              ; preds = %90, %85
  %104 = load i32, i32* %1, align 4
  ret i32 %104
}

declare dso_local i32 @cmsCreate_sRGBProfile(i32) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32 @cmsCreateLab4Profile(i32, i32*) #1

declare dso_local i32 @cmsCreateTransform(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cmsDoTransform(i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @IsGoodVal(i8*, i32, i32, i32) #1

declare dso_local i32 @cmsDeleteTransform(i32, i32) #1

declare dso_local i32 @cmsCloseProfile(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
