; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_info.c_ComponentInfo_GetStringValue.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_info.c_ComponentInfo_GetStringValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@E_INVALIDARG = common dso_local global i32 0, align 4
@RRF_RT_REG_SZ = common dso_local global i32 0, align 4
@RRF_NOEXPAND = common dso_local global i32 0, align 4
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@S_OK = common dso_local global i32 0, align 4
@ERROR_MORE_DATA = common dso_local global i64 0, align 8
@WINCODEC_ERR_INSUFFICIENTBUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*, i32*)* @ComponentInfo_GetStringValue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ComponentInfo_GetStringValue(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i32, i32* %9, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %13, align 4
  %18 = load i32*, i32** %11, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %21, i32* %6, align 4
  br label %66

22:                                               ; preds = %5
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @RRF_RT_REG_SZ, align 4
  %26 = load i32, i32* @RRF_NOEXPAND, align 4
  %27 = or i32 %25, %26
  %28 = load i32*, i32** %10, align 8
  %29 = call i64 @RegGetValueW(i32 %23, i32* null, i32 %24, i32 %27, i32* null, i32* %28, i32* %13)
  store i64 %29, i64* %12, align 8
  %30 = load i64, i64* %12, align 8
  %31 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = load i32*, i32** %11, align 8
  store i32 0, i32* %34, align 4
  %35 = load i32, i32* @S_OK, align 4
  store i32 %35, i32* %6, align 4
  br label %66

36:                                               ; preds = %22
  %37 = load i64, i64* %12, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = load i64, i64* %12, align 8
  %41 = load i64, i64* @ERROR_MORE_DATA, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %39, %36
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = udiv i64 %45, 4
  %47 = trunc i64 %46 to i32
  %48 = load i32*, i32** %11, align 8
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %43, %39
  %50 = load i32*, i32** %10, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %56, i32* %6, align 4
  br label %66

57:                                               ; preds = %52, %49
  %58 = load i64, i64* %12, align 8
  %59 = load i64, i64* @ERROR_MORE_DATA, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* @WINCODEC_ERR_INSUFFICIENTBUFFER, align 4
  store i32 %62, i32* %6, align 4
  br label %66

63:                                               ; preds = %57
  %64 = load i64, i64* %12, align 8
  %65 = call i32 @HRESULT_FROM_WIN32(i64 %64)
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %63, %61, %55, %33, %20
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i64 @RegGetValueW(i32, i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @HRESULT_FROM_WIN32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
