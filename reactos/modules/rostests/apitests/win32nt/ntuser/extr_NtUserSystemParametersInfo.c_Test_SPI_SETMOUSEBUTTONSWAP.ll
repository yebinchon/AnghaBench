; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/win32nt/ntuser/extr_NtUserSystemParametersInfo.c_Test_SPI_SETMOUSEBUTTONSWAP.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/win32nt/ntuser/extr_NtUserSystemParametersInfo.c_Test_SPI_SETMOUSEBUTTONSWAP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SM_SWAPBUTTON = common dso_local global i32 0, align 4
@SPI_SETMOUSEBUTTONSWAP = common dso_local global i32 0, align 4
@SPIF_UPDATEINIFILE = common dso_local global i32 0, align 4
@KEY_MOUSE = common dso_local global i32 0, align 4
@VAL_SWAP = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i32] [i32 48, i32 0], align 4
@.str.1 = private unnamed_addr constant [2 x i32] [i32 49, i32 0], align 4
@.str.2 = private unnamed_addr constant [2 x i32] [i32 50, i32 0], align 4
@.str.3 = private unnamed_addr constant [3 x i32] [i32 45, i32 49, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_SPI_SETMOUSEBUTTONSWAP() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [10 x i32], align 16
  %4 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %5 = load i32, i32* @SM_SWAPBUTTON, align 4
  %6 = call i32 @GetSystemMetrics(i32 %5)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* @SPI_SETMOUSEBUTTONSWAP, align 4
  %8 = load i32, i32* @SPIF_UPDATEINIFILE, align 4
  %9 = call i32 @NtUserSystemParametersInfo(i32 %7, i32 0, i32* null, i32 %8)
  %10 = load i32, i32* @SM_SWAPBUTTON, align 4
  %11 = call i32 @GetSystemMetrics(i32 %10)
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @TEST(i32 %14)
  store i32 40, i32* %4, align 4
  %16 = load i32, i32* @KEY_MOUSE, align 4
  %17 = load i32, i32* @VAL_SWAP, align 4
  %18 = bitcast [10 x i32]* %3 to i32**
  %19 = call i64 @QueryUserRegValueW(i32 %16, i32 %17, i32** %18, i32* %4, i32* null)
  %20 = load i64, i64* @ERROR_SUCCESS, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @TEST(i32 %22)
  %24 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 0
  %25 = call i64 @_wcsicmp(i32* %24, i8* bitcast ([2 x i32]* @.str to i8*))
  %26 = icmp eq i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @TEST(i32 %27)
  %29 = load i32, i32* @SPI_SETMOUSEBUTTONSWAP, align 4
  %30 = load i32, i32* @SPIF_UPDATEINIFILE, align 4
  %31 = call i32 @NtUserSystemParametersInfo(i32 %29, i32 1, i32* null, i32 %30)
  %32 = load i32, i32* @SM_SWAPBUTTON, align 4
  %33 = call i32 @GetSystemMetrics(i32 %32)
  store i32 %33, i32* %2, align 4
  %34 = load i32, i32* %2, align 4
  %35 = icmp eq i32 %34, 1
  %36 = zext i1 %35 to i32
  %37 = call i32 @TEST(i32 %36)
  store i32 40, i32* %4, align 4
  %38 = load i32, i32* @KEY_MOUSE, align 4
  %39 = load i32, i32* @VAL_SWAP, align 4
  %40 = bitcast [10 x i32]* %3 to i32**
  %41 = call i64 @QueryUserRegValueW(i32 %38, i32 %39, i32** %40, i32* %4, i32* null)
  %42 = load i64, i64* @ERROR_SUCCESS, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @TEST(i32 %44)
  %46 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 0
  %47 = call i64 @_wcsicmp(i32* %46, i8* bitcast ([2 x i32]* @.str.1 to i8*))
  %48 = icmp eq i64 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @TEST(i32 %49)
  %51 = load i32, i32* @SPI_SETMOUSEBUTTONSWAP, align 4
  %52 = load i32, i32* @SPIF_UPDATEINIFILE, align 4
  %53 = call i32 @NtUserSystemParametersInfo(i32 %51, i32 2, i32* null, i32 %52)
  %54 = load i32, i32* @SM_SWAPBUTTON, align 4
  %55 = call i32 @GetSystemMetrics(i32 %54)
  store i32 %55, i32* %2, align 4
  %56 = load i32, i32* %2, align 4
  %57 = icmp eq i32 %56, 1
  %58 = zext i1 %57 to i32
  %59 = call i32 @TEST(i32 %58)
  store i32 40, i32* %4, align 4
  %60 = load i32, i32* @KEY_MOUSE, align 4
  %61 = load i32, i32* @VAL_SWAP, align 4
  %62 = bitcast [10 x i32]* %3 to i32**
  %63 = call i64 @QueryUserRegValueW(i32 %60, i32 %61, i32** %62, i32* %4, i32* null)
  %64 = load i64, i64* @ERROR_SUCCESS, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @TEST(i32 %66)
  %68 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 0
  %69 = call i64 @_wcsicmp(i32* %68, i8* bitcast ([2 x i32]* @.str.2 to i8*))
  %70 = icmp eq i64 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i32 @TEST(i32 %71)
  %73 = load i32, i32* @SPI_SETMOUSEBUTTONSWAP, align 4
  %74 = load i32, i32* @SPIF_UPDATEINIFILE, align 4
  %75 = call i32 @NtUserSystemParametersInfo(i32 %73, i32 -1, i32* null, i32 %74)
  %76 = load i32, i32* @SM_SWAPBUTTON, align 4
  %77 = call i32 @GetSystemMetrics(i32 %76)
  store i32 %77, i32* %2, align 4
  %78 = load i32, i32* %2, align 4
  %79 = icmp eq i32 %78, 1
  %80 = zext i1 %79 to i32
  %81 = call i32 @TEST(i32 %80)
  store i32 40, i32* %4, align 4
  %82 = load i32, i32* @KEY_MOUSE, align 4
  %83 = load i32, i32* @VAL_SWAP, align 4
  %84 = bitcast [10 x i32]* %3 to i32**
  %85 = call i64 @QueryUserRegValueW(i32 %82, i32 %83, i32** %84, i32* %4, i32* null)
  %86 = load i64, i64* @ERROR_SUCCESS, align 8
  %87 = icmp eq i64 %85, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 @TEST(i32 %88)
  %90 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 0
  %91 = call i64 @_wcsicmp(i32* %90, i8* bitcast ([3 x i32]* @.str.3 to i8*))
  %92 = icmp eq i64 %91, 0
  %93 = zext i1 %92 to i32
  %94 = call i32 @TEST(i32 %93)
  %95 = load i32, i32* @SPI_SETMOUSEBUTTONSWAP, align 4
  %96 = load i32, i32* %1, align 4
  %97 = load i32, i32* @SPIF_UPDATEINIFILE, align 4
  %98 = call i32 @NtUserSystemParametersInfo(i32 %95, i32 %96, i32* null, i32 %97)
  ret void
}

declare dso_local i32 @GetSystemMetrics(i32) #1

declare dso_local i32 @NtUserSystemParametersInfo(i32, i32, i32*, i32) #1

declare dso_local i32 @TEST(i32) #1

declare dso_local i64 @QueryUserRegValueW(i32, i32, i32**, i32*, i32*) #1

declare dso_local i64 @_wcsicmp(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
