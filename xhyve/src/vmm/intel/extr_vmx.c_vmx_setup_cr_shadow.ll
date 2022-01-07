; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/intel/extr_vmx.c_vmx_setup_cr_shadow.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/intel/extr_vmx.c_vmx_setup_cr_shadow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"vmx_setup_cr_shadow: unknown cr%d\00", align 1
@VMCS_CR0_MASK = common dso_local global i32 0, align 4
@cr0_ones_mask = common dso_local global i32 0, align 4
@cr0_zeros_mask = common dso_local global i32 0, align 4
@CR0_PG = common dso_local global i32 0, align 4
@CR0_PE = common dso_local global i32 0, align 4
@VMCS_CR0_SHADOW = common dso_local global i32 0, align 4
@VMCS_CR4_MASK = common dso_local global i32 0, align 4
@cr4_ones_mask = common dso_local global i32 0, align 4
@cr4_zeros_mask = common dso_local global i32 0, align 4
@VMCS_CR4_SHADOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @vmx_setup_cr_shadow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmx_setup_cr_shadow(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 4
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @xhyve_abort(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %17, %14, %3
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %20
  %24 = load i32, i32* @VMCS_CR0_MASK, align 4
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* @cr0_ones_mask, align 4
  %26 = load i32, i32* @cr0_zeros_mask, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @CR0_PG, align 4
  %29 = load i32, i32* @CR0_PE, align 4
  %30 = or i32 %28, %29
  %31 = or i32 %27, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* @VMCS_CR0_SHADOW, align 4
  store i32 %32, i32* %10, align 4
  br label %39

33:                                               ; preds = %20
  %34 = load i32, i32* @VMCS_CR4_MASK, align 4
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* @cr4_ones_mask, align 4
  %36 = load i32, i32* @cr4_zeros_mask, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* @VMCS_CR4_SHADOW, align 4
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %33, %23
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @VMCS_IDENT(i32 %41)
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @vmcs_setreg(i32 %40, i32 %42, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %4, align 4
  br label %60

49:                                               ; preds = %39
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @VMCS_IDENT(i32 %51)
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @vmcs_setreg(i32 %50, i32 %52, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %4, align 4
  br label %60

59:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %57, %47
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @xhyve_abort(i8*, i32) #1

declare dso_local i32 @vmcs_setreg(i32, i32, i32) #1

declare dso_local i32 @VMCS_IDENT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
