; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/lib/vfdlib/extr_vfdguiut.c_FormatSizeUnits.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/lib/vfdlib/extr_vfdguiut.c_FormatSizeUnits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FormatSizeUnits.name = internal global [3 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [4 x i8] c" KB\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" MB\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" GB\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%3.2f%s\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%3.1f%s\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%3.0f%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @FormatSizeUnits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FormatSizeUnits(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 1000
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = sitofp i32 %12 to double
  %14 = call i32 (i32, i8*, double, ...) @sprintf(i32 %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), double %13)
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %3, align 4
  br label %82

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = sitofp i32 %17 to double
  store double %18, double* %7, align 8
  %19 = load double, double* %7, align 8
  %20 = fdiv double %19, 1.024000e+03
  store double %20, double* %7, align 8
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %29, %16
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 2
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load double, double* %7, align 8
  %26 = fcmp oge double %25, 1.000000e+03
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi i1 [ false, %21 ], [ %26, %24 ]
  br i1 %28, label %29, label %34

29:                                               ; preds = %27
  %30 = load double, double* %7, align 8
  %31 = fdiv double %30, 1.000000e+03
  store double %31, double* %7, align 8
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %21

34:                                               ; preds = %27
  %35 = load double, double* %7, align 8
  %36 = fcmp olt double %35, 1.000000e+01
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load i32, i32* %5, align 4
  %39 = load double, double* %7, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [3 x i8*], [3 x i8*]* @FormatSizeUnits.name, i64 0, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 (i32, i8*, double, ...) @sprintf(i32 %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), double %39, i8* %43)
  br label %80

45:                                               ; preds = %34
  %46 = load double, double* %7, align 8
  %47 = fcmp olt double %46, 1.000000e+02
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load i32, i32* %5, align 4
  %50 = load double, double* %7, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [3 x i8*], [3 x i8*]* @FormatSizeUnits.name, i64 0, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 (i32, i8*, double, ...) @sprintf(i32 %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %50, i8* %54)
  br label %79

56:                                               ; preds = %45
  %57 = load double, double* %7, align 8
  %58 = fcmp olt double %57, 1.000000e+03
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = load i32, i32* %5, align 4
  %61 = load double, double* %7, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [3 x i8*], [3 x i8*]* @FormatSizeUnits.name, i64 0, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 (i32, i8*, double, ...) @sprintf(i32 %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), double %61, i8* %65)
  br label %78

67:                                               ; preds = %56
  %68 = load double, double* %7, align 8
  %69 = fptosi double %68 to i32
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @FormatSizeBytes(i32 %69, i32 %70)
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [3 x i8*], [3 x i8*]* @FormatSizeUnits.name, i64 0, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @strcat(i32 %72, i8* %76)
  br label %78

78:                                               ; preds = %67, %59
  br label %79

79:                                               ; preds = %78, %48
  br label %80

80:                                               ; preds = %79, %37
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %80, %10
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @sprintf(i32, i8*, double, ...) #1

declare dso_local i32 @FormatSizeBytes(i32, i32) #1

declare dso_local i32 @strcat(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
