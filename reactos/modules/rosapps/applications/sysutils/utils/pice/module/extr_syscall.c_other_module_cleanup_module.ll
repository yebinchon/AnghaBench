; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_syscall.c_other_module_cleanup_module.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_syscall.c_other_module_cleanup_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"other_module_cleanup_module()\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"other_module_cleanup_module(): calling %x\0A\00", align 1
@pModJustFreed = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [77 x i8] c"other_module_cleanup_module(): calling RevirtualizeBreakpointsForModule(%x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @other_module_cleanup_module() #0 {
  %1 = call i32 @DPRINT(i32 ptrtoint ([31 x i8]* @.str to i32))
  br i1 true, label %2, label %5

2:                                                ; preds = %0
  %3 = call i32 @DPRINT(i32 ptrtoint (i32 (...)* @old_cleanup_module to i32))
  %4 = call i32 (...) @old_cleanup_module()
  br label %5

5:                                                ; preds = %2, %0
  %6 = load i64, i64* @pModJustFreed, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %5
  %9 = load i64, i64* @pModJustFreed, align 8
  %10 = trunc i64 %9 to i32
  %11 = call i32 @DPRINT(i32 %10)
  %12 = load i64, i64* @pModJustFreed, align 8
  %13 = call i32 @RevirtualizeBreakpointsForModule(i64 %12)
  br label %14

14:                                               ; preds = %8, %5
  ret void
}

declare dso_local i32 @DPRINT(i32) #1

declare dso_local i32 @old_cleanup_module(...) #1

declare dso_local i32 @RevirtualizeBreakpointsForModule(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
