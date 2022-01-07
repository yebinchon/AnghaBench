; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/win32nt/ntgdi/extr_NtGdiRestoreDC.c_Test_SaveRestore.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/win32nt/ntgdi/extr_NtGdiRestoreDC.c_Test_SaveRestore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @Test_SaveRestore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Test_SaveRestore(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @SetSpecialDCState(i32 %5)
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @NtGdiSaveDC(i32 %7)
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @SetSpecialDCState2(i32 %9)
  %11 = call i32 @SetLastError(i32 0)
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @NtGdiRestoreDC(i32 %12, i32 2)
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @TEST(i32 %15)
  %17 = call i64 (...) @GetLastError()
  %18 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @TEST(i32 %20)
  %22 = call i32 @SetLastError(i32 0)
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @NtGdiRestoreDC(i32 %23, i32 0)
  %25 = icmp eq i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @TEST(i32 %26)
  %28 = call i64 (...) @GetLastError()
  %29 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @TEST(i32 %31)
  %33 = call i32 @SetLastError(i32 0)
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @NtGdiRestoreDC(i32 %34, i32 -2)
  %36 = icmp eq i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @TEST(i32 %37)
  %39 = call i64 (...) @GetLastError()
  %40 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @TEST(i32 %42)
  %44 = call i32 @SetLastError(i32 0)
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @NtGdiRestoreDC(i32 %45, i32 1)
  %47 = icmp eq i32 %46, 1
  %48 = zext i1 %47 to i32
  %49 = call i32 @TEST(i32 %48)
  %50 = call i64 (...) @GetLastError()
  %51 = icmp eq i64 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @TEST(i32 %52)
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @Test_IsSpecialState(i32 %54, i32 %55)
  ret void
}

declare dso_local i32 @SetSpecialDCState(i32) #1

declare dso_local i32 @NtGdiSaveDC(i32) #1

declare dso_local i32 @SetSpecialDCState2(i32) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @TEST(i32) #1

declare dso_local i32 @NtGdiRestoreDC(i32, i32) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @Test_IsSpecialState(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
