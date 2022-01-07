; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_U16Fixed16_Write.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_U16Fixed16_Write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct._cms_typehandler_struct*, i32*, i8*, i64)* @Type_U16Fixed16_Write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Type_U16Fixed16_Write(i32 %0, %struct._cms_typehandler_struct* %1, i32* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct._cms_typehandler_struct*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca double*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = bitcast i8* %15 to double*
  store double* %16, double** %12, align 8
  store i64 0, i64* %13, align 8
  br label %17

17:                                               ; preds = %38, %5
  %18 = load i64, i64* %13, align 8
  %19 = load i64, i64* %11, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %41

21:                                               ; preds = %17
  %22 = load double*, double** %12, align 8
  %23 = load i64, i64* %13, align 8
  %24 = getelementptr inbounds double, double* %22, i64 %23
  %25 = load double, double* %24, align 8
  %26 = fmul double %25, 6.553600e+04
  %27 = fadd double %26, 5.000000e-01
  %28 = call i32 @floor(double %27)
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %14, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32*, i32** %9, align 8
  %32 = load i64, i64* %14, align 8
  %33 = call i32 @_cmsWriteUInt32Number(i32 %30, i32* %31, i64 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %21
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %6, align 4
  br label %43

37:                                               ; preds = %21
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %13, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %13, align 8
  br label %17

41:                                               ; preds = %17
  %42 = load i32, i32* @TRUE, align 4
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %41, %35
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local i32 @floor(double) #1

declare dso_local i32 @_cmsWriteUInt32Number(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
