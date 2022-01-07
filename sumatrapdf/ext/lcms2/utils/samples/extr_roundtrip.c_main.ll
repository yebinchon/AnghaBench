; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/samples/extr_roundtrip.c_main.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/samples/extr_roundtrip.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"roundtrip <RGB icc profile>\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"invalid profile\0A\00", align 1
@TYPE_RGB_8 = common dso_local global i32 0, align 4
@INTENT_RELATIVE_COLORIMETRIC = common dso_local global i32 0, align 4
@cmsFLAGS_NOOPTIMIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Not a valid RGB profile\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%d  \0D\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Average %g\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Max %g\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"Std  %g\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [3 x i32], align 4
  %10 = alloca [3 x i32], align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store double 0.000000e+00, double* %14, align 8
  store double 0.000000e+00, double* %15, align 8
  store double 0.000000e+00, double* %16, align 8
  store double 0.000000e+00, double* %17, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 2
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %123

22:                                               ; preds = %2
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  %25 = load i8*, i8** %24, align 8
  %26 = call i32* @cmsOpenProfileFromFile(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %26, i32** %12, align 8
  %27 = load i32*, i32** %12, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %123

31:                                               ; preds = %22
  %32 = load i32*, i32** %12, align 8
  %33 = load i32, i32* @TYPE_RGB_8, align 4
  %34 = load i32*, i32** %12, align 8
  %35 = load i32, i32* @TYPE_RGB_8, align 4
  %36 = load i32, i32* @INTENT_RELATIVE_COLORIMETRIC, align 4
  %37 = load i32, i32* @cmsFLAGS_NOOPTIMIZE, align 4
  %38 = call i32* @cmsCreateTransform(i32* %32, i32 %33, i32* %34, i32 %35, i32 %36, i32 %37)
  store i32* %38, i32** %11, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %123

43:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %95, %43
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 256
  br i1 %46, label %47, label %98

47:                                               ; preds = %44
  %48 = load i32, i32* %6, align 4
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %48)
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %91, %47
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %51, 256
  br i1 %52, label %53, label %94

53:                                               ; preds = %50
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %87, %53
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %55, 256
  br i1 %56, label %57, label %90

57:                                               ; preds = %54
  %58 = load i32, i32* %6, align 4
  %59 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* %7, align 4
  %61 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* %8, align 4
  %63 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  store i32 %62, i32* %63, align 4
  %64 = load i32*, i32** %11, align 8
  %65 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %66 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %67 = call i32 @cmsDoTransform(i32* %64, i32* %65, i32* %66, i32 1)
  %68 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %69 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %70 = call double @VecDist(i32* %68, i32* %69)
  store double %70, double* %13, align 8
  %71 = load double, double* %13, align 8
  %72 = load double, double* %14, align 8
  %73 = fadd double %72, %71
  store double %73, double* %14, align 8
  %74 = load double, double* %13, align 8
  %75 = load double, double* %13, align 8
  %76 = fmul double %74, %75
  %77 = load double, double* %15, align 8
  %78 = fadd double %77, %76
  store double %78, double* %15, align 8
  %79 = load double, double* %17, align 8
  %80 = fadd double %79, 1.000000e+00
  store double %80, double* %17, align 8
  %81 = load double, double* %13, align 8
  %82 = load double, double* %16, align 8
  %83 = fcmp ogt double %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %57
  %85 = load double, double* %13, align 8
  store double %85, double* %16, align 8
  br label %86

86:                                               ; preds = %84, %57
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  br label %54

90:                                               ; preds = %54
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %7, align 4
  br label %50

94:                                               ; preds = %50
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %6, align 4
  br label %44

98:                                               ; preds = %44
  %99 = load double, double* %14, align 8
  %100 = load double, double* %17, align 8
  %101 = fdiv double %99, %100
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), double %101)
  %103 = load double, double* %16, align 8
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), double %103)
  %105 = load double, double* %17, align 8
  %106 = load double, double* %15, align 8
  %107 = fmul double %105, %106
  %108 = load double, double* %14, align 8
  %109 = load double, double* %14, align 8
  %110 = fmul double %108, %109
  %111 = fsub double %107, %110
  %112 = load double, double* %17, align 8
  %113 = load double, double* %17, align 8
  %114 = fsub double %113, 1.000000e+00
  %115 = fmul double %112, %114
  %116 = fdiv double %111, %115
  %117 = call double @sqrt(double %116) #3
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), double %117)
  %119 = load i32*, i32** %12, align 8
  %120 = call i32 @cmsCloseProfile(i32* %119)
  %121 = load i32*, i32** %11, align 8
  %122 = call i32 @cmsDeleteTransform(i32* %121)
  store i32 0, i32* %3, align 4
  br label %123

123:                                              ; preds = %98, %41, %29, %20
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32* @cmsOpenProfileFromFile(i8*, i8*) #1

declare dso_local i32* @cmsCreateTransform(i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @cmsDoTransform(i32*, i32*, i32*, i32) #1

declare dso_local double @VecDist(i32*, i32*) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

declare dso_local i32 @cmsCloseProfile(i32*) #1

declare dso_local i32 @cmsDeleteTransform(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
