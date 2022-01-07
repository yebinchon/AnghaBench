; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_package.c_get_registered_local_package.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_package.c_get_registered_local_package.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GUID_SIZE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@ERROR_FUNCTION_FAILED = common dso_local global i64 0, align 8
@INSTALLPROPERTY_PACKAGECODEW = common dso_local global i32 0, align 4
@INSTALLPROPERTY_LOCALPACKAGEW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32*)* @get_registered_local_package to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_registered_local_package(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %11, align 8
  %17 = load i32, i32* @GUID_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i64 @msi_locate_product(i32* %21, i32* %8)
  store i64 %22, i64* %14, align 8
  %23 = load i64, i64* %14, align 8
  %24 = load i64, i64* @ERROR_SUCCESS, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i64, i64* %14, align 8
  store i64 %27, i64* %4, align 8
  store i32 1, i32* %15, align 4
  br label %87

28:                                               ; preds = %3
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @FALSE, align 4
  %32 = call i64 @MSIREG_OpenProductKey(i32* %29, i32* null, i32 %30, i32* %9, i32 %31)
  store i64 %32, i64* %14, align 8
  %33 = load i64, i64* %14, align 8
  %34 = load i64, i64* @ERROR_SUCCESS, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i64, i64* %14, align 8
  store i64 %37, i64* %4, align 8
  store i32 1, i32* %15, align 4
  br label %87

38:                                               ; preds = %28
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @FALSE, align 4
  %42 = call i64 @MSIREG_OpenInstallProps(i32* %39, i32 %40, i32* null, i32* %10, i32 %41)
  store i64 %42, i64* %14, align 8
  %43 = load i64, i64* %14, align 8
  %44 = load i64, i64* @ERROR_SUCCESS, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @RegCloseKey(i32 %47)
  %49 = load i64, i64* %14, align 8
  store i64 %49, i64* %4, align 8
  store i32 1, i32* %15, align 4
  br label %87

50:                                               ; preds = %38
  %51 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %51, i64* %14, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @INSTALLPROPERTY_PACKAGECODEW, align 4
  %54 = call i32* @msi_reg_get_val_str(i32 %52, i32 %53)
  store i32* %54, i32** %11, align 8
  %55 = load i32*, i32** %11, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %50
  br label %79

58:                                               ; preds = %50
  %59 = load i32*, i32** %11, align 8
  %60 = call i32 @unsquash_guid(i32* %59, i32* %20)
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @strcmpiW(i32* %61, i32* %20)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %78, label %64

64:                                               ; preds = %58
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @INSTALLPROPERTY_LOCALPACKAGEW, align 4
  %67 = call i32* @msi_reg_get_val_str(i32 %65, i32 %66)
  store i32* %67, i32** %16, align 8
  %68 = load i32*, i32** %16, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %64
  br label %79

71:                                               ; preds = %64
  %72 = load i32*, i32** %7, align 8
  %73 = load i32*, i32** %16, align 8
  %74 = call i32 @strcpyW(i32* %72, i32* %73)
  %75 = load i32*, i32** %16, align 8
  %76 = call i32 @msi_free(i32* %75)
  %77 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %77, i64* %14, align 8
  br label %78

78:                                               ; preds = %71, %58
  br label %79

79:                                               ; preds = %78, %70, %57
  %80 = load i32*, i32** %11, align 8
  %81 = call i32 @msi_free(i32* %80)
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @RegCloseKey(i32 %82)
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @RegCloseKey(i32 %84)
  %86 = load i64, i64* %14, align 8
  store i64 %86, i64* %4, align 8
  store i32 1, i32* %15, align 4
  br label %87

87:                                               ; preds = %79, %46, %36, %26
  %88 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %88)
  %89 = load i64, i64* %4, align 8
  ret i64 %89
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @msi_locate_product(i32*, i32*) #2

declare dso_local i64 @MSIREG_OpenProductKey(i32*, i32*, i32, i32*, i32) #2

declare dso_local i64 @MSIREG_OpenInstallProps(i32*, i32, i32*, i32*, i32) #2

declare dso_local i32 @RegCloseKey(i32) #2

declare dso_local i32* @msi_reg_get_val_str(i32, i32) #2

declare dso_local i32 @unsquash_guid(i32*, i32*) #2

declare dso_local i32 @strcmpiW(i32*, i32*) #2

declare dso_local i32 @strcpyW(i32*, i32*) #2

declare dso_local i32 @msi_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
