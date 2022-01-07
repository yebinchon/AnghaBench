; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/user32/extr_DeferWindowPos.c_Test_DWP_OwnerZOrder.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/user32/extr_DeferWindowPos.c_Test_DWP_OwnerZOrder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hWnd1 = common dso_local global i32 0, align 4
@OwnerZOrderAParams = common dso_local global i32 0, align 4
@OwnerZOrder1A_chain = common dso_local global i32 0, align 4
@hWnd2 = common dso_local global i32 0, align 4
@OwnerZOrder2A_chain = common dso_local global i32 0, align 4
@hWnd3 = common dso_local global i32 0, align 4
@OwnerZOrder3A_chain = common dso_local global i32 0, align 4
@OwnerZOrder4A_chain = common dso_local global i32 0, align 4
@hWnd4 = common dso_local global i32 0, align 4
@OwnerZOrder5A_chain = common dso_local global i32 0, align 4
@OwnerZOrderBParams = common dso_local global i32 0, align 4
@OwnerZOrder1B_chain = common dso_local global i32 0, align 4
@OwnerZOrder2B_chain = common dso_local global i32 0, align 4
@OwnerZOrder3B_chain = common dso_local global i32 0, align 4
@OwnerZOrder4B_chain = common dso_local global i32 0, align 4
@OwnerZOrder5B_chain = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Test_DWP_OwnerZOrder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Test_DWP_OwnerZOrder() #0 {
  %1 = call i32 @EXPECT_CHAIN(i32 4, i32 3, i32 1, i32 2)
  %2 = load i32, i32* @hWnd1, align 4
  %3 = load i32, i32* @OwnerZOrderAParams, align 4
  %4 = call i32 @SetWindowPos(i32 %2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 %3)
  %5 = call i32 (...) @FlushMessages()
  %6 = load i32, i32* @OwnerZOrder1A_chain, align 4
  %7 = call i32 @COMPARE_CACHE(i32 %6)
  %8 = call i32 @EXPECT_CHAIN(i32 4, i32 3, i32 1, i32 2)
  %9 = load i32, i32* @hWnd2, align 4
  %10 = load i32, i32* @OwnerZOrderAParams, align 4
  %11 = call i32 @SetWindowPos(i32 %9, i32 0, i32 0, i32 0, i32 0, i32 0, i32 %10)
  %12 = call i32 (...) @FlushMessages()
  %13 = load i32, i32* @OwnerZOrder2A_chain, align 4
  %14 = call i32 @COMPARE_CACHE(i32 %13)
  %15 = call i32 @EXPECT_CHAIN(i32 2, i32 4, i32 3, i32 1)
  %16 = load i32, i32* @hWnd3, align 4
  %17 = load i32, i32* @OwnerZOrderAParams, align 4
  %18 = call i32 @SetWindowPos(i32 %16, i32 0, i32 0, i32 0, i32 0, i32 0, i32 %17)
  %19 = call i32 (...) @FlushMessages()
  %20 = load i32, i32* @OwnerZOrder3A_chain, align 4
  %21 = call i32 @COMPARE_CACHE(i32 %20)
  %22 = call i32 @EXPECT_CHAIN(i32 3, i32 4, i32 1, i32 2)
  %23 = load i32, i32* @hWnd1, align 4
  %24 = load i32, i32* @OwnerZOrderAParams, align 4
  %25 = call i32 @SetWindowPos(i32 %23, i32 0, i32 0, i32 0, i32 0, i32 0, i32 %24)
  %26 = call i32 (...) @FlushMessages()
  %27 = load i32, i32* @OwnerZOrder4A_chain, align 4
  %28 = call i32 @COMPARE_CACHE(i32 %27)
  %29 = call i32 @EXPECT_CHAIN(i32 3, i32 4, i32 1, i32 2)
  %30 = load i32, i32* @hWnd4, align 4
  %31 = load i32, i32* @OwnerZOrderAParams, align 4
  %32 = call i32 @SetWindowPos(i32 %30, i32 0, i32 0, i32 0, i32 0, i32 0, i32 %31)
  %33 = call i32 (...) @FlushMessages()
  %34 = load i32, i32* @OwnerZOrder5A_chain, align 4
  %35 = call i32 @COMPARE_CACHE(i32 %34)
  %36 = call i32 @EXPECT_CHAIN(i32 4, i32 3, i32 1, i32 2)
  %37 = call i32 (...) @set_default_pos()
  %38 = call i32 @EXPECT_CHAIN(i32 4, i32 3, i32 2, i32 1)
  %39 = load i32, i32* @hWnd1, align 4
  %40 = load i32, i32* @OwnerZOrderBParams, align 4
  %41 = call i32 @SetWindowPos(i32 %39, i32 0, i32 0, i32 0, i32 0, i32 0, i32 %40)
  %42 = call i32 (...) @FlushMessages()
  %43 = load i32, i32* @OwnerZOrder1B_chain, align 4
  %44 = call i32 @COMPARE_CACHE(i32 %43)
  %45 = call i32 @EXPECT_CHAIN(i32 1, i32 4, i32 3, i32 2)
  %46 = load i32, i32* @hWnd2, align 4
  %47 = load i32, i32* @OwnerZOrderBParams, align 4
  %48 = call i32 @SetWindowPos(i32 %46, i32 0, i32 0, i32 0, i32 0, i32 0, i32 %47)
  %49 = call i32 (...) @FlushMessages()
  %50 = load i32, i32* @OwnerZOrder2B_chain, align 4
  %51 = call i32 @COMPARE_CACHE(i32 %50)
  %52 = call i32 @EXPECT_CHAIN(i32 2, i32 1, i32 4, i32 3)
  %53 = load i32, i32* @hWnd3, align 4
  %54 = load i32, i32* @OwnerZOrderBParams, align 4
  %55 = call i32 @SetWindowPos(i32 %53, i32 0, i32 0, i32 0, i32 0, i32 0, i32 %54)
  %56 = call i32 (...) @FlushMessages()
  %57 = load i32, i32* @OwnerZOrder3B_chain, align 4
  %58 = call i32 @COMPARE_CACHE(i32 %57)
  %59 = call i32 @EXPECT_CHAIN(i32 3, i32 2, i32 1, i32 4)
  %60 = load i32, i32* @hWnd1, align 4
  %61 = load i32, i32* @OwnerZOrderBParams, align 4
  %62 = call i32 @SetWindowPos(i32 %60, i32 0, i32 0, i32 0, i32 0, i32 0, i32 %61)
  %63 = call i32 (...) @FlushMessages()
  %64 = load i32, i32* @OwnerZOrder4B_chain, align 4
  %65 = call i32 @COMPARE_CACHE(i32 %64)
  %66 = call i32 @EXPECT_CHAIN(i32 1, i32 3, i32 2, i32 4)
  %67 = load i32, i32* @hWnd4, align 4
  %68 = load i32, i32* @OwnerZOrderBParams, align 4
  %69 = call i32 @SetWindowPos(i32 %67, i32 0, i32 0, i32 0, i32 0, i32 0, i32 %68)
  %70 = call i32 (...) @FlushMessages()
  %71 = load i32, i32* @OwnerZOrder5B_chain, align 4
  %72 = call i32 @COMPARE_CACHE(i32 %71)
  %73 = call i32 @EXPECT_CHAIN(i32 4, i32 1, i32 3, i32 2)
  ret void
}

declare dso_local i32 @EXPECT_CHAIN(i32, i32, i32, i32) #1

declare dso_local i32 @SetWindowPos(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FlushMessages(...) #1

declare dso_local i32 @COMPARE_CACHE(i32) #1

declare dso_local i32 @set_default_pos(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
