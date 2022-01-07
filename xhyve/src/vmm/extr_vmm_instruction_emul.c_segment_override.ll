; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_instruction_emul.c_segment_override.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_instruction_emul.c_segment_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VM_REG_GUEST_CS = common dso_local global i32 0, align 4
@VM_REG_GUEST_SS = common dso_local global i32 0, align 4
@VM_REG_GUEST_DS = common dso_local global i32 0, align 4
@VM_REG_GUEST_ES = common dso_local global i32 0, align 4
@VM_REG_GUEST_FS = common dso_local global i32 0, align 4
@VM_REG_GUEST_GS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @segment_override to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @segment_override(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %25 [
    i32 46, label %7
    i32 54, label %10
    i32 62, label %13
    i32 38, label %16
    i32 100, label %19
    i32 101, label %22
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @VM_REG_GUEST_CS, align 4
  %9 = load i32*, i32** %5, align 8
  store i32 %8, i32* %9, align 4
  br label %26

10:                                               ; preds = %2
  %11 = load i32, i32* @VM_REG_GUEST_SS, align 4
  %12 = load i32*, i32** %5, align 8
  store i32 %11, i32* %12, align 4
  br label %26

13:                                               ; preds = %2
  %14 = load i32, i32* @VM_REG_GUEST_DS, align 4
  %15 = load i32*, i32** %5, align 8
  store i32 %14, i32* %15, align 4
  br label %26

16:                                               ; preds = %2
  %17 = load i32, i32* @VM_REG_GUEST_ES, align 4
  %18 = load i32*, i32** %5, align 8
  store i32 %17, i32* %18, align 4
  br label %26

19:                                               ; preds = %2
  %20 = load i32, i32* @VM_REG_GUEST_FS, align 4
  %21 = load i32*, i32** %5, align 8
  store i32 %20, i32* %21, align 4
  br label %26

22:                                               ; preds = %2
  %23 = load i32, i32* @VM_REG_GUEST_GS, align 4
  %24 = load i32*, i32** %5, align 8
  store i32 %23, i32* %24, align 4
  br label %26

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %27

26:                                               ; preds = %22, %19, %16, %13, %10, %7
  store i32 1, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %25
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
