; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_source.c_OpenSourceKey.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_source.c_OpenSourceKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_FUNCTION_FAILED = common dso_local global i64 0, align 8
@MSIINSTALLCONTEXT_USERUNMANAGED = common dso_local global i64 0, align 8
@MSICODE_PATCH = common dso_local global i32 0, align 4
@MSIINSTALLCONTEXT_USERMANAGED = common dso_local global i64 0, align 8
@MSIINSTALLCONTEXT_MACHINE = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_UNKNOWN_PATCH = common dso_local global i64 0, align 8
@ERROR_UNKNOWN_PRODUCT = common dso_local global i64 0, align 8
@szSourceList = common dso_local global i32 0, align 4
@ERROR_BAD_CONFIGURATION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32*, i32, i64, i32)* @OpenSourceKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @OpenSourceKey(i32 %0, i32* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %14 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %14, i64* %13, align 8
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* @MSIINSTALLCONTEXT_USERUNMANAGED, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %5
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @MSICODE_PATCH, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i64 @MSIREG_OpenUserPatchesKey(i32 %24, i32* %12, i32 %25)
  store i64 %26, i64* %13, align 8
  br label %32

27:                                               ; preds = %18
  %28 = load i32, i32* %7, align 4
  %29 = load i64, i64* %10, align 8
  %30 = load i32, i32* %11, align 4
  %31 = call i64 @MSIREG_OpenProductKey(i32 %28, i32* null, i64 %29, i32* %12, i32 %30)
  store i64 %31, i64* %13, align 8
  br label %32

32:                                               ; preds = %27, %23
  br label %73

33:                                               ; preds = %5
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* @MSIINSTALLCONTEXT_USERMANAGED, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %33
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @MSICODE_PATCH, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i64 @MSIREG_OpenUserPatchesKey(i32 %43, i32* %12, i32 %44)
  store i64 %45, i64* %13, align 8
  br label %51

46:                                               ; preds = %37
  %47 = load i32, i32* %7, align 4
  %48 = load i64, i64* %10, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i64 @MSIREG_OpenProductKey(i32 %47, i32* null, i64 %48, i32* %12, i32 %49)
  store i64 %50, i64* %13, align 8
  br label %51

51:                                               ; preds = %46, %42
  br label %72

52:                                               ; preds = %33
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* @MSIINSTALLCONTEXT_MACHINE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %71

56:                                               ; preds = %52
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @MSICODE_PATCH, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i64 @MSIREG_OpenPatchesKey(i32 %62, i32* %12, i32 %63)
  store i64 %64, i64* %13, align 8
  br label %70

65:                                               ; preds = %56
  %66 = load i32, i32* %7, align 4
  %67 = load i64, i64* %10, align 8
  %68 = load i32, i32* %11, align 4
  %69 = call i64 @MSIREG_OpenProductKey(i32 %66, i32* null, i64 %67, i32* %12, i32 %68)
  store i64 %69, i64* %13, align 8
  br label %70

70:                                               ; preds = %65, %61
  br label %71

71:                                               ; preds = %70, %52
  br label %72

72:                                               ; preds = %71, %51
  br label %73

73:                                               ; preds = %72, %32
  %74 = load i64, i64* %13, align 8
  %75 = load i64, i64* @ERROR_SUCCESS, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %73
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @MSICODE_PATCH, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i64, i64* @ERROR_UNKNOWN_PATCH, align 8
  store i64 %83, i64* %6, align 8
  br label %109

84:                                               ; preds = %77
  %85 = load i64, i64* @ERROR_UNKNOWN_PRODUCT, align 8
  store i64 %85, i64* %6, align 8
  br label %109

86:                                               ; preds = %73
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* @szSourceList, align 4
  %92 = load i32*, i32** %8, align 8
  %93 = call i64 @RegCreateKeyW(i32 %90, i32 %91, i32* %92)
  store i64 %93, i64* %13, align 8
  br label %105

94:                                               ; preds = %86
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* @szSourceList, align 4
  %97 = load i32*, i32** %8, align 8
  %98 = call i64 @RegOpenKeyW(i32 %95, i32 %96, i32* %97)
  store i64 %98, i64* %13, align 8
  %99 = load i64, i64* %13, align 8
  %100 = load i64, i64* @ERROR_SUCCESS, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %94
  %103 = load i64, i64* @ERROR_BAD_CONFIGURATION, align 8
  store i64 %103, i64* %13, align 8
  br label %104

104:                                              ; preds = %102, %94
  br label %105

105:                                              ; preds = %104, %89
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @RegCloseKey(i32 %106)
  %108 = load i64, i64* %13, align 8
  store i64 %108, i64* %6, align 8
  br label %109

109:                                              ; preds = %105, %84, %82
  %110 = load i64, i64* %6, align 8
  ret i64 %110
}

declare dso_local i64 @MSIREG_OpenUserPatchesKey(i32, i32*, i32) #1

declare dso_local i64 @MSIREG_OpenProductKey(i32, i32*, i64, i32*, i32) #1

declare dso_local i64 @MSIREG_OpenPatchesKey(i32, i32*, i32) #1

declare dso_local i64 @RegCreateKeyW(i32, i32, i32*) #1

declare dso_local i64 @RegOpenKeyW(i32, i32, i32*) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
