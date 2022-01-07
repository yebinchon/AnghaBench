; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_output.c_DeInstallPrintkHook.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_output.c_DeInstallPrintkHook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"enter DeInstallPrintkHook()\0A\00", align 1
@bIsPrintkPatched = common dso_local global i64 0, align 8
@ulPrintk = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DeInstallPrintkHook() #0 {
  %1 = call i32 (...) @ENTER_FUNC()
  %2 = call i32 @DPRINT(i32 ptrtoint ([29 x i8]* @.str to i32))
  %3 = load i64, i64* @bIsPrintkPatched, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %0
  %6 = load i64, i64* @ulPrintk, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %5
  %9 = load i64, i64* @ulPrintk, align 8
  %10 = call i64 @DeInstallSWBreakpoint(i64 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load i64, i64* @FALSE, align 8
  store i64 %13, i64* @bIsPrintkPatched, align 8
  br label %14

14:                                               ; preds = %12, %8
  br label %15

15:                                               ; preds = %14, %5, %0
  %16 = call i32 (...) @LEAVE_FUNC()
  ret void
}

declare dso_local i32 @ENTER_FUNC(...) #1

declare dso_local i32 @DPRINT(i32) #1

declare dso_local i64 @DeInstallSWBreakpoint(i64) #1

declare dso_local i32 @LEAVE_FUNC(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
