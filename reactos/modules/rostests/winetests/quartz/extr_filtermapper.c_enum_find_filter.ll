; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/quartz/extr_filtermapper.c_enum_find_filter.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/quartz/extr_filtermapper.c_enum_find_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@enum_find_filter.wszFriendlyName = internal constant [13 x float] [float 7.000000e+01, float 1.140000e+02, float 1.050000e+02, float 1.010000e+02, float 1.100000e+02, float 1.000000e+02, float 1.080000e+02, float 1.210000e+02, float 7.800000e+01, float 9.700000e+01, float 1.090000e+02, float 1.010000e+02, float 0.000000e+00], align 16
@S_OK = common dso_local global i64 0, align 8
@IID_IPropertyBag = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"IMoniker_BindToStorage failed with %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"IPropertyBag_Read failed with %x\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (float*, i32*)* @enum_find_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @enum_find_filter(float* %0, i32* %1) #0 {
  %3 = alloca float*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store float* %0, float** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32* null, i32** %5, align 8
  %11 = load i64, i64* @FALSE, align 8
  store i64 %11, i64* %6, align 8
  br label %12

12:                                               ; preds = %43, %2
  %13 = load i64, i64* %6, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  %16 = load i32*, i32** %4, align 8
  %17 = call i64 @IEnumMoniker_Next(i32* %16, i32 1, i32** %5, i32* %7)
  %18 = load i64, i64* @S_OK, align 8
  %19 = icmp eq i64 %17, %18
  br label %20

20:                                               ; preds = %15, %12
  %21 = phi i1 [ false, %12 ], [ %19, %15 ]
  br i1 %21, label %22, label %49

22:                                               ; preds = %20
  store i32* null, i32** %9, align 8
  %23 = call i32 @VariantInit(i32* %10)
  %24 = load i32*, i32** %5, align 8
  %25 = bitcast i32** %9 to i32*
  %26 = call i32 @IMoniker_BindToStorage(i32* %24, i32* null, i32* null, i32* @IID_IPropertyBag, i32* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @SUCCEEDED(i32 %27)
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @IPropertyBag_Read(i32* %31, float* getelementptr inbounds ([13 x float], [13 x float]* @enum_find_filter.wszFriendlyName, i64 0, i64 0), i32* %10, i32* null)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @SUCCEEDED(i32 %33)
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = call i32 @V_BSTR(i32* %10)
  %38 = load float*, float** %3, align 8
  %39 = call i32 @lstrcmpW(i32 %37, float* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %22
  %42 = load i64, i64* @TRUE, align 8
  store i64 %42, i64* %6, align 8
  br label %43

43:                                               ; preds = %41, %22
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @IPropertyBag_Release(i32* %44)
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @IMoniker_Release(i32* %46)
  %48 = call i32 @VariantClear(i32* %10)
  br label %12

49:                                               ; preds = %20
  %50 = load i64, i64* %6, align 8
  ret i64 %50
}

declare dso_local i64 @IEnumMoniker_Next(i32*, i32, i32**, i32*) #1

declare dso_local i32 @VariantInit(i32*) #1

declare dso_local i32 @IMoniker_BindToStorage(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @SUCCEEDED(i32) #1

declare dso_local i32 @IPropertyBag_Read(i32*, float*, i32*, i32*) #1

declare dso_local i32 @lstrcmpW(i32, float*) #1

declare dso_local i32 @V_BSTR(i32*) #1

declare dso_local i32 @IPropertyBag_Release(i32*) #1

declare dso_local i32 @IMoniker_Release(i32*) #1

declare dso_local i32 @VariantClear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
