; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_automation.c_InstallerImpl_InstallProduct.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_automation.c_InstallerImpl_InstallProduct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DISPATCH_METHOD = common dso_local global i32 0, align 4
@DISP_E_MEMBERNOTFOUND = common dso_local global i32 0, align 4
@VT_BSTR = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@DISP_E_EXCEPTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*, i32*, i64*)* @InstallerImpl_InstallProduct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @InstallerImpl_InstallProduct(i32 %0, i32* %1, i32* %2, i32* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64* %4, i64** %11, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @DISPATCH_METHOD, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @DISP_E_MEMBERNOTFOUND, align 4
  store i32 %21, i32* %6, align 4
  br label %57

22:                                               ; preds = %5
  %23 = call i32 @VariantInit(i32* %14)
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* @VT_BSTR, align 4
  %26 = load i64*, i64** %11, align 8
  %27 = call i32 @DispGetParam(i32* %24, i32 0, i32 %25, i32* %14, i64* %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = call i64 @FAILED(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* %13, align 4
  store i32 %32, i32* %6, align 4
  br label %57

33:                                               ; preds = %22
  %34 = call i32 @VariantInit(i32* %15)
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* @VT_BSTR, align 4
  %37 = load i64*, i64** %11, align 8
  %38 = call i32 @DispGetParam(i32* %35, i32 1, i32 %36, i32* %15, i64* %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = call i64 @FAILED(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %53

43:                                               ; preds = %33
  %44 = call i32 @V_BSTR(i32* %14)
  %45 = call i32 @V_BSTR(i32* %15)
  %46 = call i64 @MsiInstallProductW(i32 %44, i32 %45)
  store i64 %46, i64* %12, align 8
  %47 = load i64, i64* %12, align 8
  %48 = load i64, i64* @ERROR_SUCCESS, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* @DISP_E_EXCEPTION, align 4
  store i32 %51, i32* %13, align 4
  br label %53

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %50, %42
  %54 = call i32 @VariantClear(i32* %14)
  %55 = call i32 @VariantClear(i32* %15)
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %53, %31, %20
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i32 @VariantInit(i32*) #1

declare dso_local i32 @DispGetParam(i32*, i32, i32, i32*, i64*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i64 @MsiInstallProductW(i32, i32) #1

declare dso_local i32 @V_BSTR(i32*) #1

declare dso_local i32 @VariantClear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
