; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/win32nt/ntuser/extr_NtUserSystemParametersInfo.c_Test_SPI_SETMENUANIMATION.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/win32nt/ntuser/extr_NtUserSystemParametersInfo.c_Test_SPI_SETMENUANIMATION.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPI_GETMENUANIMATION = common dso_local global i32 0, align 4
@SPI_SETMENUANIMATION = common dso_local global i32 0, align 4
@SPIF_UPDATEINIFILE = common dso_local global i32 0, align 4
@KEY_DESKTOP = common dso_local global i32 0, align 4
@VAL_PREFMASK = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@UPM_MENUANIMATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_SPI_SETMENUANIMATION() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %5 = load i32, i32* @SPI_GETMENUANIMATION, align 4
  %6 = call i32 @NtUserSystemParametersInfo(i32 %5, i32 0, i32* %1, i32 0)
  %7 = load i32, i32* @SPI_SETMENUANIMATION, align 4
  %8 = load i32, i32* @SPIF_UPDATEINIFILE, align 4
  %9 = call i32 @NtUserSystemParametersInfo(i32 %7, i32 0, i32* null, i32 %8)
  %10 = load i32, i32* @SPI_GETMENUANIMATION, align 4
  %11 = call i32 @NtUserSystemParametersInfo(i32 %10, i32 0, i32* %2, i32 0)
  %12 = load i32, i32* %2, align 4
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @TEST(i32 %14)
  store i32 4, i32* %4, align 4
  %16 = load i32, i32* @KEY_DESKTOP, align 4
  %17 = load i32, i32* @VAL_PREFMASK, align 4
  %18 = call i64 @QueryUserRegValueW(i32 %16, i32 %17, i32* %3, i32* %4, i32* null)
  %19 = load i64, i64* @ERROR_SUCCESS, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @TEST(i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @UPM_MENUANIMATION, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @TEST(i32 %27)
  %29 = load i32, i32* @SPI_SETMENUANIMATION, align 4
  %30 = load i32, i32* @SPIF_UPDATEINIFILE, align 4
  %31 = call i32 @NtUserSystemParametersInfo(i32 %29, i32 0, i32* inttoptr (i64 1 to i32*), i32 %30)
  %32 = load i32, i32* @SPI_GETMENUANIMATION, align 4
  %33 = call i32 @NtUserSystemParametersInfo(i32 %32, i32 0, i32* %2, i32 0)
  %34 = load i32, i32* %2, align 4
  %35 = icmp eq i32 %34, 1
  %36 = zext i1 %35 to i32
  %37 = call i32 @TEST(i32 %36)
  store i32 4, i32* %4, align 4
  %38 = load i32, i32* @KEY_DESKTOP, align 4
  %39 = load i32, i32* @VAL_PREFMASK, align 4
  %40 = call i64 @QueryUserRegValueW(i32 %38, i32 %39, i32* %3, i32* %4, i32* null)
  %41 = load i64, i64* @ERROR_SUCCESS, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @TEST(i32 %43)
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @UPM_MENUANIMATION, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @TEST(i32 %49)
  %51 = load i32, i32* @SPI_SETMENUANIMATION, align 4
  %52 = load i32, i32* %1, align 4
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i32*
  %55 = load i32, i32* @SPIF_UPDATEINIFILE, align 4
  %56 = call i32 @NtUserSystemParametersInfo(i32 %51, i32 0, i32* %54, i32 %55)
  ret void
}

declare dso_local i32 @NtUserSystemParametersInfo(i32, i32, i32*, i32) #1

declare dso_local i32 @TEST(i32) #1

declare dso_local i64 @QueryUserRegValueW(i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
