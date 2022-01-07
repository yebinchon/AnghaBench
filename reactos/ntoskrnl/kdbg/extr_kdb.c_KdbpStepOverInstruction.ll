; ModuleID = '/home/carl/AnghaBench/reactos/ntoskrnl/kdbg/extr_kdb.c_KdbpStepOverInstruction.c'
source_filename = "/home/carl/AnghaBench/reactos/ntoskrnl/kdbg/extr_kdb.c_KdbpStepOverInstruction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@KdbBreakPointTemporary = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @KdbpStepOverInstruction(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call i32 @KdbpShouldStepOverInstruction(i64 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %2, align 4
  br label %31

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @KdbpGetInstLength(i64 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %2, align 4
  br label %31

17:                                               ; preds = %10
  %18 = load i64, i64* %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %18, %20
  %22 = load i32, i32* @KdbBreakPointTemporary, align 4
  %23 = load i32, i32* @FALSE, align 4
  %24 = call i32 @KdbpInsertBreakPoint(i64 %21, i32 %22, i32 0, i32 0, i32* null, i32 %23, i32* null)
  %25 = call i32 @NT_SUCCESS(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %17
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %2, align 4
  br label %31

29:                                               ; preds = %17
  %30 = load i32, i32* @TRUE, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %29, %27, %15, %8
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @KdbpShouldStepOverInstruction(i64) #1

declare dso_local i32 @KdbpGetInstLength(i64) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @KdbpInsertBreakPoint(i64, i32, i32, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
