; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_driver.c_RegpApplyRestrictions.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_driver.c_RegpApplyRestrictions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_MORE_DATA = common dso_local global i64 0, align 8
@RRF_RT_REG_NONE = common dso_local global i32 0, align 4
@RRF_RT_REG_SZ = common dso_local global i32 0, align 4
@RRF_RT_REG_EXPAND_SZ = common dso_local global i32 0, align 4
@RRF_RT_REG_MULTI_SZ = common dso_local global i32 0, align 4
@RRF_RT_REG_BINARY = common dso_local global i32 0, align 4
@RRF_RT_REG_DWORD = common dso_local global i32 0, align 4
@RRF_RT_REG_QWORD = common dso_local global i32 0, align 4
@RRF_RT_DWORD = common dso_local global i32 0, align 4
@RRF_RT_QWORD = common dso_local global i32 0, align 4
@ERROR_DATATYPE_MISMATCH = common dso_local global i64 0, align 8
@ERROR_UNSUPPORTED_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i64*)* @RegpApplyRestrictions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @RegpApplyRestrictions(i32 %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %12 = load i64*, i64** %9, align 8
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ERROR_SUCCESS, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %21, label %16

16:                                               ; preds = %4
  %17 = load i64*, i64** %9, align 8
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ERROR_MORE_DATA, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %76

21:                                               ; preds = %16, %4
  store i32 0, i32* %10, align 4
  %22 = load i32, i32* %7, align 4
  switch i32 %22, label %37 [
    i32 130, label %23
    i32 128, label %25
    i32 132, label %27
    i32 131, label %29
    i32 134, label %31
    i32 133, label %33
    i32 129, label %35
  ]

23:                                               ; preds = %21
  %24 = load i32, i32* @RRF_RT_REG_NONE, align 4
  store i32 %24, i32* %10, align 4
  br label %37

25:                                               ; preds = %21
  %26 = load i32, i32* @RRF_RT_REG_SZ, align 4
  store i32 %26, i32* %10, align 4
  br label %37

27:                                               ; preds = %21
  %28 = load i32, i32* @RRF_RT_REG_EXPAND_SZ, align 4
  store i32 %28, i32* %10, align 4
  br label %37

29:                                               ; preds = %21
  %30 = load i32, i32* @RRF_RT_REG_MULTI_SZ, align 4
  store i32 %30, i32* %10, align 4
  br label %37

31:                                               ; preds = %21
  %32 = load i32, i32* @RRF_RT_REG_BINARY, align 4
  store i32 %32, i32* %10, align 4
  br label %37

33:                                               ; preds = %21
  %34 = load i32, i32* @RRF_RT_REG_DWORD, align 4
  store i32 %34, i32* %10, align 4
  br label %37

35:                                               ; preds = %21
  %36 = load i32, i32* @RRF_RT_REG_QWORD, align 4
  store i32 %36, i32* %10, align 4
  br label %37

37:                                               ; preds = %21, %35, %33, %31, %29, %27, %25, %23
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %10, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %72

42:                                               ; preds = %37
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 %43, 134
  br i1 %44, label %45, label %71

45:                                               ; preds = %42
  store i32 0, i32* %11, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @RRF_RT_DWORD, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* @RRF_RT_DWORD, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i32 4, i32* %11, align 4
  br label %60

52:                                               ; preds = %45
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @RRF_RT_QWORD, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* @RRF_RT_QWORD, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 8, i32* %11, align 4
  br label %59

59:                                               ; preds = %58, %52
  br label %60

60:                                               ; preds = %59, %51
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i64, i64* @ERROR_DATATYPE_MISMATCH, align 8
  %69 = load i64*, i64** %9, align 8
  store i64 %68, i64* %69, align 8
  br label %70

70:                                               ; preds = %67, %63, %60
  br label %71

71:                                               ; preds = %70, %42
  br label %75

72:                                               ; preds = %37
  %73 = load i64, i64* @ERROR_UNSUPPORTED_TYPE, align 8
  %74 = load i64*, i64** %9, align 8
  store i64 %73, i64* %74, align 8
  br label %75

75:                                               ; preds = %72, %71
  br label %76

76:                                               ; preds = %75, %16
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
