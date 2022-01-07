; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/intel/extr_vmx.c_vmx_paging_mode.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/intel/extr_vmx.c_vmx_paging_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VMCS_GUEST_CR0 = common dso_local global i32 0, align 4
@CR0_PG = common dso_local global i32 0, align 4
@PAGING_MODE_FLAT = common dso_local global i32 0, align 4
@VMCS_GUEST_CR4 = common dso_local global i32 0, align 4
@CR4_PAE = common dso_local global i32 0, align 4
@PAGING_MODE_32 = common dso_local global i32 0, align 4
@VMCS_GUEST_IA32_EFER = common dso_local global i32 0, align 4
@EFER_LME = common dso_local global i32 0, align 4
@PAGING_MODE_64 = common dso_local global i32 0, align 4
@PAGING_MODE_PAE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vmx_paging_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmx_paging_mode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @VMCS_GUEST_CR0, align 4
  %6 = call i32 @vmcs_read(i32 %4, i32 %5)
  %7 = load i32, i32* @CR0_PG, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @PAGING_MODE_FLAT, align 4
  store i32 %11, i32* %2, align 4
  br label %32

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @VMCS_GUEST_CR4, align 4
  %15 = call i32 @vmcs_read(i32 %13, i32 %14)
  %16 = load i32, i32* @CR4_PAE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  %20 = load i32, i32* @PAGING_MODE_32, align 4
  store i32 %20, i32* %2, align 4
  br label %32

21:                                               ; preds = %12
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @VMCS_GUEST_IA32_EFER, align 4
  %24 = call i32 @vmcs_read(i32 %22, i32 %23)
  %25 = load i32, i32* @EFER_LME, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* @PAGING_MODE_64, align 4
  store i32 %29, i32* %2, align 4
  br label %32

30:                                               ; preds = %21
  %31 = load i32, i32* @PAGING_MODE_PAE, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %30, %28, %19, %10
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @vmcs_read(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
