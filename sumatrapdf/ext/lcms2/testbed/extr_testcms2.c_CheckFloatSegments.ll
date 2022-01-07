; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckFloatSegments.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckFloatSegments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float, float, i32, float*, i32, i32* }

@kNumPoints = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Float Segmented Curve\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CheckFloatSegments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckFloatSegments() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [3 x %struct.TYPE_3__], align 16
  %7 = alloca i32, align 4
  store i32 1, i32* %1, align 4
  %8 = load i32, i32* @kNumPoints, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %6, i64 0, i64 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store float 0xC480F0CF00000000, float* %13, align 16
  %14 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %6, i64 0, i64 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  store float 0x3FB99999A0000000, float* %15, align 4
  %16 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %6, i64 0, i64 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  store i32 6, i32* %17, align 8
  %18 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %6, i64 0, i64 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 3
  %20 = load float*, float** %19, align 16
  %21 = getelementptr inbounds float, float* %20, i64 0
  store float 1.000000e+00, float* %21, align 4
  %22 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %6, i64 0, i64 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 3
  %24 = load float*, float** %23, align 16
  %25 = getelementptr inbounds float, float* %24, i64 1
  store float 0x3FECCCCCC0000000, float* %25, align 4
  %26 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %6, i64 0, i64 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 3
  %28 = load float*, float** %27, align 16
  %29 = getelementptr inbounds float, float* %28, i64 2
  store float 0.000000e+00, float* %29, align 4
  %30 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %6, i64 0, i64 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 3
  %32 = load float*, float** %31, align 16
  %33 = getelementptr inbounds float, float* %32, i64 3
  store float 0x3FB99999A0000000, float* %33, align 4
  %34 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %6, i64 0, i64 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 3
  %36 = load float*, float** %35, align 16
  %37 = getelementptr inbounds float, float* %36, i64 4
  store float 0.000000e+00, float* %37, align 4
  %38 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %6, i64 0, i64 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store float 0x3FB99999A0000000, float* %39, align 8
  %40 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %6, i64 0, i64 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store float 0x3FECCCCCC0000000, float* %41, align 4
  %42 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %6, i64 0, i64 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  store i32 0, i32* %43, align 8
  %44 = load i32, i32* @kNumPoints, align 4
  %45 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %6, i64 0, i64 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 8
  %47 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %6, i64 0, i64 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 5
  store i32* %11, i32** %48, align 8
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %67, %0
  %50 = load i32, i32* %2, align 4
  %51 = load i32, i32* @kNumPoints, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %70

53:                                               ; preds = %49
  %54 = load i32, i32* %2, align 4
  %55 = load i32, i32* @kNumPoints, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sdiv i32 %54, %56
  %58 = sitofp i32 %57 to double
  %59 = fmul double %58, 8.000000e-01
  %60 = fadd double 1.000000e-01, %59
  %61 = fptosi double %60 to i32
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @StraightLine(i32 %62)
  %64 = load i32, i32* %2, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %11, i64 %65
  store i32 %63, i32* %66, align 4
  br label %67

67:                                               ; preds = %53
  %68 = load i32, i32* %2, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %2, align 4
  br label %49

70:                                               ; preds = %49
  %71 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %6, i64 0, i64 2
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store float 0x3FECCCCCC0000000, float* %72, align 16
  %73 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %6, i64 0, i64 2
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  store float 0x4480F0CF00000000, float* %74, align 4
  %75 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %6, i64 0, i64 2
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  store i32 6, i32* %76, align 8
  %77 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %6, i64 0, i64 2
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 3
  %79 = load float*, float** %78, align 16
  %80 = getelementptr inbounds float, float* %79, i64 0
  store float 1.000000e+00, float* %80, align 4
  %81 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %6, i64 0, i64 2
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 3
  %83 = load float*, float** %82, align 16
  %84 = getelementptr inbounds float, float* %83, i64 1
  store float 0x3FECCCCCC0000000, float* %84, align 4
  %85 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %6, i64 0, i64 2
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 3
  %87 = load float*, float** %86, align 16
  %88 = getelementptr inbounds float, float* %87, i64 2
  store float 0.000000e+00, float* %88, align 4
  %89 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %6, i64 0, i64 2
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 3
  %91 = load float*, float** %90, align 16
  %92 = getelementptr inbounds float, float* %91, i64 3
  store float 0x3FB99999A0000000, float* %92, align 4
  %93 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %6, i64 0, i64 2
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 3
  %95 = load float*, float** %94, align 16
  %96 = getelementptr inbounds float, float* %95, i64 4
  store float 0.000000e+00, float* %96, align 4
  %97 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %6, i64 0, i64 0
  %98 = call i32* @cmsBuildSegmentedToneCurve(i32 0, i32 3, %struct.TYPE_3__* %97)
  store i32* %98, i32** %3, align 8
  %99 = load i32*, i32** %3, align 8
  %100 = call i32 @TestCurve(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* %99, i32 (i32)* @StraightLine)
  store i32 %100, i32* %1, align 4
  %101 = call i32 (...) @DbgThread()
  %102 = load i32*, i32** %3, align 8
  %103 = call i32 @cmsFreeToneCurve(i32 %101, i32* %102)
  %104 = load i32, i32* %1, align 4
  %105 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %105)
  ret i32 %104
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @StraightLine(i32) #2

declare dso_local i32* @cmsBuildSegmentedToneCurve(i32, i32, %struct.TYPE_3__*) #2

declare dso_local i32 @TestCurve(i8*, i32*, i32 (i32)*) #2

declare dso_local i32 @cmsFreeToneCurve(i32, i32*) #2

declare dso_local i32 @DbgThread(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
