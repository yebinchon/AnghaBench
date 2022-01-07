; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_msi.c_msi_locate_product.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_msi.c_msi_locate_product.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSIINSTALLCONTEXT_NONE = common dso_local global i64 0, align 8
@ERROR_UNKNOWN_PRODUCT = common dso_local global i64 0, align 8
@MSIINSTALLCONTEXT_USERMANAGED = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@MSIINSTALLCONTEXT_MACHINE = common dso_local global i64 0, align 8
@MSIINSTALLCONTEXT_USERUNMANAGED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @msi_locate_product(i32 %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  store i32* null, i32** %6, align 8
  %7 = load i64, i64* @MSIINSTALLCONTEXT_NONE, align 8
  %8 = load i64*, i64** %5, align 8
  store i64 %7, i64* %8, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i64, i64* @ERROR_UNKNOWN_PRODUCT, align 8
  store i64 %12, i64* %3, align 8
  br label %56

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load i64, i64* @MSIINSTALLCONTEXT_USERMANAGED, align 8
  %16 = load i32, i32* @FALSE, align 4
  %17 = call i64 @MSIREG_OpenProductKey(i32 %14, i32* null, i64 %15, i32** %6, i32 %16)
  %18 = load i64, i64* @ERROR_SUCCESS, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load i64, i64* @MSIINSTALLCONTEXT_USERMANAGED, align 8
  %22 = load i64*, i64** %5, align 8
  store i64 %21, i64* %22, align 8
  br label %45

23:                                               ; preds = %13
  %24 = load i32, i32* %4, align 4
  %25 = load i64, i64* @MSIINSTALLCONTEXT_MACHINE, align 8
  %26 = load i32, i32* @FALSE, align 4
  %27 = call i64 @MSIREG_OpenProductKey(i32 %24, i32* null, i64 %25, i32** %6, i32 %26)
  %28 = load i64, i64* @ERROR_SUCCESS, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i64, i64* @MSIINSTALLCONTEXT_MACHINE, align 8
  %32 = load i64*, i64** %5, align 8
  store i64 %31, i64* %32, align 8
  br label %44

33:                                               ; preds = %23
  %34 = load i32, i32* %4, align 4
  %35 = load i64, i64* @MSIINSTALLCONTEXT_USERUNMANAGED, align 8
  %36 = load i32, i32* @FALSE, align 4
  %37 = call i64 @MSIREG_OpenProductKey(i32 %34, i32* null, i64 %35, i32** %6, i32 %36)
  %38 = load i64, i64* @ERROR_SUCCESS, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i64, i64* @MSIINSTALLCONTEXT_USERUNMANAGED, align 8
  %42 = load i64*, i64** %5, align 8
  store i64 %41, i64* %42, align 8
  br label %43

43:                                               ; preds = %40, %33
  br label %44

44:                                               ; preds = %43, %30
  br label %45

45:                                               ; preds = %44, %20
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @RegCloseKey(i32* %46)
  %48 = load i64*, i64** %5, align 8
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @MSIINSTALLCONTEXT_NONE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i64, i64* @ERROR_UNKNOWN_PRODUCT, align 8
  store i64 %53, i64* %3, align 8
  br label %56

54:                                               ; preds = %45
  %55 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %55, i64* %3, align 8
  br label %56

56:                                               ; preds = %54, %52, %11
  %57 = load i64, i64* %3, align 8
  ret i64 %57
}

declare dso_local i64 @MSIREG_OpenProductKey(i32, i32*, i64, i32**, i32) #1

declare dso_local i32 @RegCloseKey(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
