; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/win32nt/ntgdi/extr_NtGdiSelectBitmap.c_Test_SelectDIBSection.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/win32nt/ntgdi/extr_NtGdiSelectBitmap.c_Test_SelectDIBSection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { %struct.TYPE_2__, [100 x i32] }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }

@BI_RGB = common dso_local global i32 0, align 4
@DIB_PAL_COLORS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_SelectDIBSection() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.anon, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = ptrtoint %struct.anon* %3 to i32
  store i32 %6, i32* %4, align 4
  %7 = call i32 @CreateCompatibleDC(i32 0)
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = call i32 @ASSERT(i32 %8)
  %10 = getelementptr inbounds %struct.anon, %struct.anon* %3, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 56, i32* %11, align 8
  %12 = getelementptr inbounds %struct.anon, %struct.anon* %3, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store i32 2, i32* %13, align 4
  %14 = getelementptr inbounds %struct.anon, %struct.anon* %3, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  store i32 2, i32* %15, align 8
  %16 = getelementptr inbounds %struct.anon, %struct.anon* %3, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  store i32 1, i32* %17, align 4
  %18 = getelementptr inbounds %struct.anon, %struct.anon* %3, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 4
  store i32 1, i32* %19, align 8
  %20 = load i32, i32* @BI_RGB, align 4
  %21 = getelementptr inbounds %struct.anon, %struct.anon* %3, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 10
  store i32 %20, i32* %22, align 8
  %23 = getelementptr inbounds %struct.anon, %struct.anon* %3, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 9
  store i64 0, i64* %24, align 8
  %25 = getelementptr inbounds %struct.anon, %struct.anon* %3, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 5
  store i32 100, i32* %26, align 4
  %27 = getelementptr inbounds %struct.anon, %struct.anon* %3, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 6
  store i32 100, i32* %28, align 8
  %29 = getelementptr inbounds %struct.anon, %struct.anon* %3, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 7
  store i32 2, i32* %30, align 4
  %31 = getelementptr inbounds %struct.anon, %struct.anon* %3, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 8
  store i32 2, i32* %32, align 8
  %33 = load i32, i32* %1, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @DIB_PAL_COLORS, align 4
  %36 = call i32 @CreateDIBSection(i32 %33, i32 %34, i32 %35, i32* %5, i32* null, i32 0)
  store i32 %36, i32* %2, align 4
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @ASSERT(i32 %37)
  %39 = load i32, i32* %1, align 4
  %40 = load i32, i32* %2, align 4
  %41 = call i64 @NtGdiSelectBitmap(i32 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @TEST(i32 %43)
  ret void
}

declare dso_local i32 @CreateCompatibleDC(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @CreateDIBSection(i32, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @TEST(i32) #1

declare dso_local i64 @NtGdiSelectBitmap(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
