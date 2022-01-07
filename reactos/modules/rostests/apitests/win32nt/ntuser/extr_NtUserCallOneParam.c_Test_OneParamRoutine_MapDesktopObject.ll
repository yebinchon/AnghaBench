; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/win32nt/ntuser/extr_NtUserCallOneParam.c_Test_OneParamRoutine_MapDesktopObject.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/win32nt/ntuser/extr_NtUserCallOneParam.c_Test_OneParamRoutine_MapDesktopObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_ONEPARAM_ROUTINE_MAPDEKTOPOBJECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_OneParamRoutine_MapDesktopObject() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = call i64 (...) @GetDesktopWindow()
  store i64 %4, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = trunc i64 %5 to i32
  %7 = load i32, i32* @_ONEPARAM_ROUTINE_MAPDEKTOPOBJECT, align 4
  %8 = call i32 @NtUserCallOneParam(i32 %6, i32 %7)
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = icmp sgt i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @TEST(i32 %11)
  %13 = load i32, i32* %1, align 4
  %14 = icmp ult i32 %13, -2147483648
  %15 = zext i1 %14 to i32
  %16 = call i32 @TEST(i32 %15)
  %17 = call i64 (...) @CreateMenu()
  store i64 %17, i64* %3, align 8
  %18 = load i64, i64* %3, align 8
  %19 = trunc i64 %18 to i32
  %20 = load i32, i32* @_ONEPARAM_ROUTINE_MAPDEKTOPOBJECT, align 4
  %21 = call i32 @NtUserCallOneParam(i32 %19, i32 %20)
  store i32 %21, i32* %1, align 4
  %22 = load i64, i64* %3, align 8
  %23 = call i32 @DestroyMenu(i64 %22)
  %24 = load i32, i32* %1, align 4
  %25 = icmp sgt i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @TEST(i32 %26)
  %28 = load i32, i32* %1, align 4
  %29 = icmp ult i32 %28, -2147483648
  %30 = zext i1 %29 to i32
  %31 = call i32 @TEST(i32 %30)
  ret void
}

declare dso_local i64 @GetDesktopWindow(...) #1

declare dso_local i32 @NtUserCallOneParam(i32, i32) #1

declare dso_local i32 @TEST(i32) #1

declare dso_local i64 @CreateMenu(...) #1

declare dso_local i32 @DestroyMenu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
