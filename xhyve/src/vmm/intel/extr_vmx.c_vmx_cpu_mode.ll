; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/intel/extr_vmx.c_vmx_cpu_mode.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/intel/extr_vmx.c_vmx_cpu_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VMCS_GUEST_IA32_EFER = common dso_local global i32 0, align 4
@EFER_LMA = common dso_local global i32 0, align 4
@VMCS_GUEST_CS_ACCESS_RIGHTS = common dso_local global i32 0, align 4
@CPU_MODE_64BIT = common dso_local global i32 0, align 4
@CPU_MODE_COMPATIBILITY = common dso_local global i32 0, align 4
@VMCS_GUEST_CR0 = common dso_local global i32 0, align 4
@CR0_PE = common dso_local global i32 0, align 4
@CPU_MODE_PROTECTED = common dso_local global i32 0, align 4
@CPU_MODE_REAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vmx_cpu_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmx_cpu_mode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @VMCS_GUEST_IA32_EFER, align 4
  %7 = call i32 @vmcs_read(i32 %5, i32 %6)
  %8 = load i32, i32* @EFER_LMA, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @VMCS_GUEST_CS_ACCESS_RIGHTS, align 4
  %14 = call i32 @vmcs_read(i32 %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, 8192
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load i32, i32* @CPU_MODE_64BIT, align 4
  store i32 %19, i32* %2, align 4
  br label %33

20:                                               ; preds = %11
  %21 = load i32, i32* @CPU_MODE_COMPATIBILITY, align 4
  store i32 %21, i32* %2, align 4
  br label %33

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @VMCS_GUEST_CR0, align 4
  %25 = call i32 @vmcs_read(i32 %23, i32 %24)
  %26 = load i32, i32* @CR0_PE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @CPU_MODE_PROTECTED, align 4
  store i32 %30, i32* %2, align 4
  br label %33

31:                                               ; preds = %22
  %32 = load i32, i32* @CPU_MODE_REAL, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %29, %20, %18
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @vmcs_read(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
