; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/intel/extr_vmx.c_vmx_init.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/intel/extr_vmx.c_vmx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HV_VM_DEFAULT = common dso_local global i32 0, align 4
@HV_NO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"vmx_init: processor not supported by Hypervisor.framework\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"hv_vm_create failed\0A\00", align 1
@HV_VMX_CAP_PROCBASED = common dso_local global i32 0, align 4
@PROCBASED_CTLS_ONE_SETTING = common dso_local global i32 0, align 4
@PROCBASED_CTLS_ZERO_SETTING = common dso_local global i32 0, align 4
@procbased_ctls = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [79 x i8] c"vmx_init: processor does not support desired primary processor-based controls\0A\00", align 1
@PROCBASED_CTLS_WINDOW_SETTING = common dso_local global i32 0, align 4
@HV_VMX_CAP_PROCBASED2 = common dso_local global i32 0, align 4
@PROCBASED_CTLS2_ONE_SETTING = common dso_local global i32 0, align 4
@PROCBASED_CTLS2_ZERO_SETTING = common dso_local global i32 0, align 4
@procbased_ctls2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [81 x i8] c"vmx_init: processor does not support desired secondary processor-based controls\0A\00", align 1
@HV_VMX_CAP_PINBASED = common dso_local global i32 0, align 4
@PINBASED_CTLS_ONE_SETTING = common dso_local global i32 0, align 4
@PINBASED_CTLS_ZERO_SETTING = common dso_local global i32 0, align 4
@pinbased_ctls = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [65 x i8] c"vmx_init: processor does not support desired pin-based controls\0A\00", align 1
@HV_VMX_CAP_EXIT = common dso_local global i32 0, align 4
@VM_EXIT_CTLS_ONE_SETTING = common dso_local global i32 0, align 4
@VM_EXIT_CTLS_ZERO_SETTING = common dso_local global i32 0, align 4
@exit_ctls = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [60 x i8] c"vmx_init: processor does not support desired exit controls\0A\00", align 1
@HV_VMX_CAP_ENTRY = common dso_local global i32 0, align 4
@VM_ENTRY_CTLS_ONE_SETTING = common dso_local global i32 0, align 4
@VM_ENTRY_CTLS_ZERO_SETTING = common dso_local global i32 0, align 4
@entry_ctls = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [61 x i8] c"vmx_init: processor does not support desired entry controls\0A\00", align 1
@cap_halt_exit = common dso_local global i32 0, align 4
@cap_monitor_trap = common dso_local global i32 0, align 4
@cap_pause_exit = common dso_local global i32 0, align 4
@cr4_ones_mask = common dso_local global i32 0, align 4
@cr0_ones_mask = common dso_local global i32 0, align 4
@cr4_zeros_mask = common dso_local global i32 0, align 4
@cr0_zeros_mask = common dso_local global i32 0, align 4
@CR0_NE = common dso_local global i32 0, align 4
@CR0_ET = common dso_local global i32 0, align 4
@CR0_NW = common dso_local global i32 0, align 4
@CR0_CD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @vmx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmx_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @HV_VM_DEFAULT, align 4
  %4 = call i32 @hv_vm_create(i32 %3)
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %0
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @HV_NO_DEVICE, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = call i32 @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* %2, align 4
  store i32 %13, i32* %1, align 4
  br label %83

14:                                               ; preds = %7
  %15 = call i32 @xhyve_abort(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14
  br label %17

17:                                               ; preds = %16, %0
  %18 = load i32, i32* @HV_VMX_CAP_PROCBASED, align 4
  %19 = load i32, i32* @PROCBASED_CTLS_ONE_SETTING, align 4
  %20 = load i32, i32* @PROCBASED_CTLS_ZERO_SETTING, align 4
  %21 = call i32 @vmx_set_ctlreg(i32 %18, i32 %19, i32 %20, i32* @procbased_ctls)
  store i32 %21, i32* %2, align 4
  %22 = load i32, i32* %2, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = call i32 @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i32, i32* %2, align 4
  store i32 %26, i32* %1, align 4
  br label %83

27:                                               ; preds = %17
  %28 = load i32, i32* @PROCBASED_CTLS_WINDOW_SETTING, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* @procbased_ctls, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* @procbased_ctls, align 4
  %32 = load i32, i32* @HV_VMX_CAP_PROCBASED2, align 4
  %33 = load i32, i32* @PROCBASED_CTLS2_ONE_SETTING, align 4
  %34 = load i32, i32* @PROCBASED_CTLS2_ZERO_SETTING, align 4
  %35 = call i32 @vmx_set_ctlreg(i32 %32, i32 %33, i32 %34, i32* @procbased_ctls2)
  store i32 %35, i32* %2, align 4
  %36 = load i32, i32* %2, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %27
  %39 = call i32 @printf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.3, i64 0, i64 0))
  %40 = load i32, i32* %2, align 4
  store i32 %40, i32* %1, align 4
  br label %83

41:                                               ; preds = %27
  %42 = load i32, i32* @HV_VMX_CAP_PINBASED, align 4
  %43 = load i32, i32* @PINBASED_CTLS_ONE_SETTING, align 4
  %44 = load i32, i32* @PINBASED_CTLS_ZERO_SETTING, align 4
  %45 = call i32 @vmx_set_ctlreg(i32 %42, i32 %43, i32 %44, i32* @pinbased_ctls)
  store i32 %45, i32* %2, align 4
  %46 = load i32, i32* %2, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = call i32 @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0))
  %50 = load i32, i32* %2, align 4
  store i32 %50, i32* %1, align 4
  br label %83

51:                                               ; preds = %41
  %52 = load i32, i32* @HV_VMX_CAP_EXIT, align 4
  %53 = load i32, i32* @VM_EXIT_CTLS_ONE_SETTING, align 4
  %54 = load i32, i32* @VM_EXIT_CTLS_ZERO_SETTING, align 4
  %55 = call i32 @vmx_set_ctlreg(i32 %52, i32 %53, i32 %54, i32* @exit_ctls)
  store i32 %55, i32* %2, align 4
  %56 = load i32, i32* %2, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = call i32 @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0))
  %60 = load i32, i32* %2, align 4
  store i32 %60, i32* %1, align 4
  br label %83

61:                                               ; preds = %51
  %62 = load i32, i32* @HV_VMX_CAP_ENTRY, align 4
  %63 = load i32, i32* @VM_ENTRY_CTLS_ONE_SETTING, align 4
  %64 = load i32, i32* @VM_ENTRY_CTLS_ZERO_SETTING, align 4
  %65 = call i32 @vmx_set_ctlreg(i32 %62, i32 %63, i32 %64, i32* @entry_ctls)
  store i32 %65, i32* %2, align 4
  %66 = load i32, i32* %2, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = call i32 @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0))
  %70 = load i32, i32* %2, align 4
  store i32 %70, i32* %1, align 4
  br label %83

71:                                               ; preds = %61
  store i32 1, i32* @cap_halt_exit, align 4
  store i32 1, i32* @cap_monitor_trap, align 4
  store i32 1, i32* @cap_pause_exit, align 4
  store i32 0, i32* @cr4_ones_mask, align 4
  store i32 0, i32* @cr0_ones_mask, align 4
  store i32 0, i32* @cr4_zeros_mask, align 4
  store i32 0, i32* @cr0_zeros_mask, align 4
  %72 = load i32, i32* @CR0_NE, align 4
  %73 = load i32, i32* @CR0_ET, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @cr0_ones_mask, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* @cr0_ones_mask, align 4
  %77 = load i32, i32* @CR0_NW, align 4
  %78 = load i32, i32* @CR0_CD, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @cr0_zeros_mask, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* @cr0_zeros_mask, align 4
  store i32 8192, i32* @cr4_ones_mask, align 4
  %82 = call i32 (...) @vmx_msr_init()
  store i32 0, i32* %1, align 4
  br label %83

83:                                               ; preds = %71, %68, %58, %48, %38, %24, %11
  %84 = load i32, i32* %1, align 4
  ret i32 %84
}

declare dso_local i32 @hv_vm_create(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @xhyve_abort(i8*) #1

declare dso_local i32 @vmx_set_ctlreg(i32, i32, i32, i32*) #1

declare dso_local i32 @vmx_msr_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
