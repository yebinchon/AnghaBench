; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_hardware.c_ConsoleShutdown.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_hardware.c_ConsoleShutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@eTerminalMode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ConsoleShutdown() #0 {
  %1 = call i32 (...) @ENTER_FUNC()
  %2 = call i32 @KeStallExecutionProcessor(i32 5000000)
  %3 = load i32, i32* @eTerminalMode, align 4
  switch i32 %3, label %12 [
    i32 132, label %4
    i32 131, label %6
    i32 128, label %7
    i32 129, label %9
    i32 130, label %11
  ]

4:                                                ; preds = %0
  %5 = call i32 (...) @ConsoleShutdownHercules()
  br label %13

6:                                                ; preds = %0
  br label %13

7:                                                ; preds = %0
  %8 = call i32 (...) @ConsoleShutdownVga()
  br label %13

9:                                                ; preds = %0
  %10 = call i32 (...) @ConsoleShutdownSerial()
  br label %13

11:                                               ; preds = %0
  br label %12

12:                                               ; preds = %0, %11
  br label %13

13:                                               ; preds = %12, %9, %7, %6, %4
  %14 = call i32 (...) @LEAVE_FUNC()
  ret void
}

declare dso_local i32 @ENTER_FUNC(...) #1

declare dso_local i32 @KeStallExecutionProcessor(i32) #1

declare dso_local i32 @ConsoleShutdownHercules(...) #1

declare dso_local i32 @ConsoleShutdownVga(...) #1

declare dso_local i32 @ConsoleShutdownSerial(...) #1

declare dso_local i32 @LEAVE_FUNC(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
