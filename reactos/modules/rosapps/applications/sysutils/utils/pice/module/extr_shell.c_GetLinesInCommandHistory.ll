; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_shell.c_GetLinesInCommandHistory.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_shell.c_GetLinesInCommandHistory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ulCommandInPos = common dso_local global i32 0, align 4
@ulCommandLastPos = common dso_local global i32 0, align 4
@LINES_IN_COMMAND_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"GetLinesInCommandHistory() returns %u (ulIn %u ulLast %u)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetLinesInCommandHistory() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @ulCommandInPos, align 4
  %3 = load i32, i32* @ulCommandLastPos, align 4
  %4 = sub nsw i32 %2, %3
  %5 = load i32, i32* @LINES_IN_COMMAND_BUFFER, align 4
  %6 = srem i32 %4, %5
  store i32 %6, i32* %1, align 4
  %7 = call i32 (...) @ENTER_FUNC()
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* @ulCommandInPos, align 4
  %10 = load i32, i32* @ulCommandLastPos, align 4
  %11 = call i32 @DPRINT(i32 %10)
  %12 = call i32 (...) @LEAVE_FUNC()
  %13 = load i32, i32* %1, align 4
  ret i32 %13
}

declare dso_local i32 @ENTER_FUNC(...) #1

declare dso_local i32 @DPRINT(i32) #1

declare dso_local i32 @LEAVE_FUNC(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
