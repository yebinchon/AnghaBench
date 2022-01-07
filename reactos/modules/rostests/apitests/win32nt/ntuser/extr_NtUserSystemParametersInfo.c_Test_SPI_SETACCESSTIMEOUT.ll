; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/win32nt/ntuser/extr_NtUserSystemParametersInfo.c_Test_SPI_SETACCESSTIMEOUT.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/win32nt/ntuser/extr_NtUserSystemParametersInfo.c_Test_SPI_SETACCESSTIMEOUT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@SPI_GETACCESSTIMEOUT = common dso_local global i32 0, align 4
@SPI_SETACCESSTIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_SPI_SETACCESSTIMEOUT() #0 {
  %1 = alloca %struct.TYPE_3__, align 4
  %2 = alloca %struct.TYPE_3__, align 4
  %3 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  store i32 4, i32* %3, align 4
  %4 = load i32, i32* @SPI_GETACCESSTIMEOUT, align 4
  %5 = call i32 @NtUserSystemParametersInfo(i32 %4, i32 0, %struct.TYPE_3__* %1, i32 0)
  %6 = icmp eq i32 %5, 1
  %7 = zext i1 %6 to i32
  %8 = call i32 @ASSERT(i32 %7)
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 3, i32* %9, align 4
  %10 = load i32, i32* @SPI_GETACCESSTIMEOUT, align 4
  %11 = call i32 @NtUserSystemParametersInfo(i32 %10, i32 0, %struct.TYPE_3__* %2, i32 0)
  %12 = icmp eq i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @TEST(i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 5, i32* %15, align 4
  %16 = load i32, i32* @SPI_GETACCESSTIMEOUT, align 4
  %17 = call i32 @NtUserSystemParametersInfo(i32 %16, i32 0, %struct.TYPE_3__* %2, i32 0)
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @TEST(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 4, i32* %21, align 4
  %22 = load i32, i32* @SPI_GETACCESSTIMEOUT, align 4
  %23 = call i32 @NtUserSystemParametersInfo(i32 %22, i32 0, %struct.TYPE_3__* %2, i32 0)
  %24 = icmp eq i32 %23, 1
  %25 = zext i1 %24 to i32
  %26 = call i32 @TEST(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 4, i32* %27, align 4
  %28 = load i32, i32* @SPI_GETACCESSTIMEOUT, align 4
  %29 = call i32 @NtUserSystemParametersInfo(i32 %28, i32 1, %struct.TYPE_3__* %2, i32 0)
  %30 = icmp eq i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @TEST(i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 4, i32* %33, align 4
  %34 = load i32, i32* @SPI_GETACCESSTIMEOUT, align 4
  %35 = call i32 @NtUserSystemParametersInfo(i32 %34, i32 -1, %struct.TYPE_3__* %2, i32 0)
  %36 = icmp eq i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @TEST(i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 4, i32* %39, align 4
  %40 = load i32, i32* @SPI_GETACCESSTIMEOUT, align 4
  %41 = call i32 @NtUserSystemParametersInfo(i32 %40, i32 4, %struct.TYPE_3__* %2, i32 0)
  %42 = icmp eq i32 %41, 1
  %43 = zext i1 %42 to i32
  %44 = call i32 @TEST(i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 4, i32* %45, align 4
  %46 = load i32, i32* @SPI_GETACCESSTIMEOUT, align 4
  %47 = call i32 @NtUserSystemParametersInfo(i32 %46, i32 3, %struct.TYPE_3__* %2, i32 0)
  %48 = icmp eq i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @TEST(i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 4, i32* %51, align 4
  %52 = load i32, i32* @SPI_GETACCESSTIMEOUT, align 4
  %53 = call i32 @NtUserSystemParametersInfo(i32 %52, i32 5, %struct.TYPE_3__* %2, i32 0)
  %54 = icmp eq i32 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @TEST(i32 %55)
  %57 = load i32, i32* @SPI_SETACCESSTIMEOUT, align 4
  %58 = call i32 @NtUserSystemParametersInfo(i32 %57, i32 4, %struct.TYPE_3__* %1, i32 0)
  %59 = icmp eq i32 %58, 1
  %60 = zext i1 %59 to i32
  %61 = call i32 @ASSERT(i32 %60)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @NtUserSystemParametersInfo(i32, i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @TEST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
