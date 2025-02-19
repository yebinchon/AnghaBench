; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/user32/extr_SetActiveWindow.c_Test_msg_simple.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/user32/extr_SetActiveWindow.c_Test_msg_simple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hWnd1 = common dso_local global i32 0, align 4
@activate2to1_chain = common dso_local global i32 0, align 4
@hWnd2 = common dso_local global i32 0, align 4
@activate1to2_chain = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_msg_simple() #0 {
  %1 = call i32 @SetCursorPos(i32 0, i32 0)
  %2 = call i32 (...) @create_test_windows()
  %3 = call i32 (...) @set_default_zorder()
  %4 = load i32, i32* @hWnd1, align 4
  %5 = call i32 @SetActiveWindow(i32 %4)
  %6 = call i32 (...) @FlushMessages()
  %7 = load i32, i32* @activate2to1_chain, align 4
  %8 = call i32 @COMPARE_CACHE(i32 %7)
  %9 = load i32, i32* @hWnd2, align 4
  %10 = call i32 @SetActiveWindow(i32 %9)
  %11 = call i32 (...) @FlushMessages()
  %12 = load i32, i32* @activate1to2_chain, align 4
  %13 = call i32 @COMPARE_CACHE(i32 %12)
  %14 = call i32 (...) @destroy_test_window()
  ret void
}

declare dso_local i32 @SetCursorPos(i32, i32) #1

declare dso_local i32 @create_test_windows(...) #1

declare dso_local i32 @set_default_zorder(...) #1

declare dso_local i32 @SetActiveWindow(i32) #1

declare dso_local i32 @FlushMessages(...) #1

declare dso_local i32 @COMPARE_CACHE(i32) #1

declare dso_local i32 @destroy_test_window(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
