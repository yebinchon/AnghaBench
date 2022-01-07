; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/strmbase/extr_dllfunc.c_SetupRegisterClass.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/strmbase/extr_dllfunc.c_SetupRegisterClass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@REG_SZ = common dso_local global i32 0, align 4
@tmodel_keyname = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64, i64, i64, i64)* @SetupRegisterClass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetupRegisterClass(i32* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i32* null, i32** %15, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = call i64 @RegCreateKeyW(i32* %17, i64 %18, i32** %14)
  store i64 %19, i64* %16, align 8
  %20 = load i64, i64* @ERROR_SUCCESS, align 8
  %21 = load i64, i64* %16, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %6
  %24 = load i64, i64* %16, align 8
  %25 = call i32 @HRESULT_FROM_WIN32(i64 %24)
  store i32 %25, i32* %7, align 4
  br label %88

26:                                               ; preds = %6
  %27 = load i32*, i32** %14, align 8
  %28 = load i32, i32* @REG_SZ, align 4
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* %10, align 8
  %31 = call i32 @lstrlenW(i64 %30)
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = mul i64 4, %33
  %35 = trunc i64 %34 to i32
  %36 = call i64 @RegSetValueW(i32* %27, i32* null, i32 %28, i64 %29, i32 %35)
  store i64 %36, i64* %16, align 8
  %37 = load i64, i64* @ERROR_SUCCESS, align 8
  %38 = load i64, i64* %16, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %26
  br label %77

41:                                               ; preds = %26
  %42 = load i32*, i32** %14, align 8
  %43 = load i64, i64* %12, align 8
  %44 = call i64 @RegCreateKeyW(i32* %42, i64 %43, i32** %15)
  store i64 %44, i64* %16, align 8
  %45 = load i64, i64* @ERROR_SUCCESS, align 8
  %46 = load i64, i64* %16, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %77

49:                                               ; preds = %41
  %50 = load i32*, i32** %15, align 8
  %51 = load i32, i32* @REG_SZ, align 4
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* %11, align 8
  %54 = call i32 @lstrlenW(i64 %53)
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = mul i64 4, %56
  %58 = trunc i64 %57 to i32
  %59 = call i64 @RegSetValueW(i32* %50, i32* null, i32 %51, i64 %52, i32 %58)
  store i64 %59, i64* %16, align 8
  %60 = load i64, i64* @ERROR_SUCCESS, align 8
  %61 = load i64, i64* %16, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %49
  br label %77

64:                                               ; preds = %49
  %65 = load i32*, i32** %15, align 8
  %66 = load i32, i32* @tmodel_keyname, align 4
  %67 = load i32, i32* @REG_SZ, align 4
  %68 = load i64, i64* %13, align 8
  %69 = inttoptr i64 %68 to i32*
  %70 = load i64, i64* %13, align 8
  %71 = call i32 @lstrlenW(i64 %70)
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = mul i64 4, %73
  %75 = trunc i64 %74 to i32
  %76 = call i64 @RegSetValueExW(i32* %65, i32 %66, i64 0, i32 %67, i32* %69, i32 %75)
  store i64 %76, i64* %16, align 8
  br label %77

77:                                               ; preds = %64, %63, %48, %40
  %78 = load i32*, i32** %15, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32*, i32** %15, align 8
  %82 = call i32 @RegCloseKey(i32* %81)
  br label %83

83:                                               ; preds = %80, %77
  %84 = load i32*, i32** %14, align 8
  %85 = call i32 @RegCloseKey(i32* %84)
  %86 = load i64, i64* %16, align 8
  %87 = call i32 @HRESULT_FROM_WIN32(i64 %86)
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %83, %23
  %89 = load i32, i32* %7, align 4
  ret i32 %89
}

declare dso_local i64 @RegCreateKeyW(i32*, i64, i32**) #1

declare dso_local i32 @HRESULT_FROM_WIN32(i64) #1

declare dso_local i64 @RegSetValueW(i32*, i32*, i32, i64, i32) #1

declare dso_local i32 @lstrlenW(i64) #1

declare dso_local i64 @RegSetValueExW(i32*, i32, i64, i32, i32*, i32) #1

declare dso_local i32 @RegCloseKey(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
