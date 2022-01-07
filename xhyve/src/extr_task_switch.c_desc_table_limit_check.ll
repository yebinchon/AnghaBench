; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_task_switch.c_desc_table_limit_check.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_task_switch.c_desc_table_limit_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VM_REG_GUEST_LDTR = common dso_local global i32 0, align 4
@VM_REG_GUEST_GDTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @desc_table_limit_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @desc_table_limit_check(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @ISLDT(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @VM_REG_GUEST_LDTR, align 4
  br label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @VM_REG_GUEST_GDTR, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @xh_vm_get_desc(i32 %20, i32 %21, i32* %6, i64* %7, i64* %8)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @VM_REG_GUEST_LDTR, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %18
  %31 = load i64, i64* %8, align 8
  %32 = call i64 @SEG_DESC_UNUSABLE(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @SEG_DESC_PRESENT(i64 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34, %30
  store i32 -1, i32* %3, align 4
  br label %47

39:                                               ; preds = %34
  br label %40

40:                                               ; preds = %39, %18
  %41 = load i64, i64* %7, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i64 @SEL_LIMIT(i32 %42)
  %44 = icmp slt i64 %41, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 -1, i32* %3, align 4
  br label %47

46:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %45, %38
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i64 @ISLDT(i32) #1

declare dso_local i32 @xh_vm_get_desc(i32, i32, i32*, i64*, i64*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @SEG_DESC_UNUSABLE(i64) #1

declare dso_local i32 @SEG_DESC_PRESENT(i64) #1

declare dso_local i64 @SEL_LIMIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
