; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/win32nt/ntuser/extr_NtUserSystemParametersInfo.c_Test_SPI_SETMOUSE.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/win32nt/ntuser/extr_NtUserSystemParametersInfo.c_Test_SPI_SETMOUSE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPI_GETMOUSE = common dso_local global i32 0, align 4
@SPI_SETMOUSE = common dso_local global i32 0, align 4
@SPIF_UPDATEINIFILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_SPI_SETMOUSE() #0 {
  %1 = alloca [3 x i32], align 4
  %2 = alloca [3 x i32], align 4
  %3 = load i32, i32* @SPI_GETMOUSE, align 4
  %4 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 0
  %5 = call i32 @NtUserSystemParametersInfo(i32 %3, i32 0, i32* %4, i32 0)
  %6 = load i32, i32* @SPI_GETMOUSE, align 4
  %7 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 0
  %8 = call i32 @NtUserSystemParametersInfo(i32 %6, i32 0, i32* %7, i32 0)
  %9 = icmp eq i32 %8, 1
  %10 = zext i1 %9 to i32
  %11 = call i32 @TEST(i32 %10)
  %12 = load i32, i32* @SPI_GETMOUSE, align 4
  %13 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 0
  %14 = call i32 @NtUserSystemParametersInfo(i32 %12, i32 1, i32* %13, i32 0)
  %15 = icmp eq i32 %14, 1
  %16 = zext i1 %15 to i32
  %17 = call i32 @TEST(i32 %16)
  %18 = load i32, i32* @SPI_GETMOUSE, align 4
  %19 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 0
  %20 = call i32 @NtUserSystemParametersInfo(i32 %18, i32 -1, i32* %19, i32 0)
  %21 = icmp eq i32 %20, 1
  %22 = zext i1 %21 to i32
  %23 = call i32 @TEST(i32 %22)
  %24 = load i32, i32* @SPI_GETMOUSE, align 4
  %25 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 0
  %26 = call i32 @NtUserSystemParametersInfo(i32 %24, i32 -559038737, i32* %25, i32 0)
  %27 = icmp eq i32 %26, 1
  %28 = zext i1 %27 to i32
  %29 = call i32 @TEST(i32 %28)
  %30 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  %33 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 0
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %35, 1
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 1
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 2
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 2
  %41 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 2
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @SPI_SETMOUSE, align 4
  %43 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 0
  %44 = load i32, i32* @SPIF_UPDATEINIFILE, align 4
  %45 = call i32 @NtUserSystemParametersInfo(i32 %42, i32 2, i32* %43, i32 %44)
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 2
  store i32 0, i32* %46, align 4
  %47 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 1
  store i32 0, i32* %47, align 4
  %48 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 0
  store i32 0, i32* %48, align 4
  %49 = load i32, i32* @SPI_GETMOUSE, align 4
  %50 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 0
  %51 = call i32 @NtUserSystemParametersInfo(i32 %49, i32 0, i32* %50, i32 0)
  %52 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  %57 = icmp eq i32 %53, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @TEST(i32 %58)
  %60 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %63, 1
  %65 = icmp eq i32 %61, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @TEST(i32 %66)
  %68 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 2
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 2
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 2
  %73 = icmp eq i32 %69, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @TEST(i32 %74)
  %76 = load i32, i32* @SPI_SETMOUSE, align 4
  %77 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 0
  %78 = load i32, i32* @SPIF_UPDATEINIFILE, align 4
  %79 = call i32 @NtUserSystemParametersInfo(i32 %76, i32 0, i32* %77, i32 %78)
  ret void
}

declare dso_local i32 @NtUserSystemParametersInfo(i32, i32, i32*, i32) #1

declare dso_local i32 @TEST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
