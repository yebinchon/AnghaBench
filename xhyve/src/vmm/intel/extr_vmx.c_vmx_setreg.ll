; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/intel/extr_vmx.c_vmx_setreg.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/intel/extr_vmx.c_vmx_setreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmx = type { i32 }

@VM_REG_GUEST_INTR_SHADOW = common dso_local global i32 0, align 4
@hvregs = common dso_local global i64* null, align 8
@HV_X86_REGISTERS_MAX = common dso_local global i64 0, align 8
@entry_ctls = common dso_local global i32 0, align 4
@VM_ENTRY_LOAD_EFER = common dso_local global i32 0, align 4
@VM_REG_GUEST_EFER = common dso_local global i32 0, align 4
@VMCS_ENTRY_CTLS = common dso_local global i32 0, align 4
@EFER_LMA = common dso_local global i32 0, align 4
@VM_ENTRY_GUEST_LMA = common dso_local global i32 0, align 4
@VM_REG_GUEST_CR3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32)* @vmx_setreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmx_setreg(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.vmx*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.vmx*
  store %struct.vmx* %16, %struct.vmx** %14, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @VM_REG_GUEST_INTR_SHADOW, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %4
  %21 = load %struct.vmx*, %struct.vmx** %14, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @vmx_modify_intr_shadow(%struct.vmx* %21, i32 %22, i32 %23)
  store i32 %24, i32* %5, align 4
  br label %100

25:                                               ; preds = %4
  %26 = load i64*, i64** @hvregs, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %13, align 8
  %31 = load i64, i64* %13, align 8
  %32 = load i64, i64* @HV_X86_REGISTERS_MAX, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %25
  %35 = load i32, i32* %7, align 4
  %36 = load i64, i64* %13, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @reg_write(i32 %35, i64 %36, i32 %37)
  store i32 0, i32* %5, align 4
  br label %100

39:                                               ; preds = %25
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @vmcs_setreg(i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %98

46:                                               ; preds = %39
  %47 = load i32, i32* @entry_ctls, align 4
  %48 = load i32, i32* @VM_ENTRY_LOAD_EFER, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %79

51:                                               ; preds = %46
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @VM_REG_GUEST_EFER, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %79

55:                                               ; preds = %51
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @VMCS_ENTRY_CTLS, align 4
  %58 = call i32 @VMCS_IDENT(i32 %57)
  %59 = call i32 @vmcs_getreg(i32 %56, i32 %58, i32* %12)
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @EFER_LMA, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %55
  %65 = load i32, i32* @VM_ENTRY_GUEST_LMA, align 4
  %66 = load i32, i32* %12, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %12, align 4
  br label %73

68:                                               ; preds = %55
  %69 = load i32, i32* @VM_ENTRY_GUEST_LMA, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %12, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %12, align 4
  br label %73

73:                                               ; preds = %68, %64
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @VMCS_ENTRY_CTLS, align 4
  %76 = call i32 @VMCS_IDENT(i32 %75)
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @vmcs_setreg(i32 %74, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %73, %51, %46
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @vmx_shadow_reg(i32 %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @VMCS_IDENT(i32 %86)
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @vmcs_setreg(i32 %85, i32 %87, i32 %88)
  store i32 %89, i32* %10, align 4
  br label %90

90:                                               ; preds = %84, %79
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @VM_REG_GUEST_CR3, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @hv_vcpu_invalidate_tlb(i32 %95)
  br label %97

97:                                               ; preds = %94, %90
  br label %98

98:                                               ; preds = %97, %39
  %99 = load i32, i32* %10, align 4
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %98, %34, %20
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @vmx_modify_intr_shadow(%struct.vmx*, i32, i32) #1

declare dso_local i32 @reg_write(i32, i64, i32) #1

declare dso_local i32 @vmcs_setreg(i32, i32, i32) #1

declare dso_local i32 @vmcs_getreg(i32, i32, i32*) #1

declare dso_local i32 @VMCS_IDENT(i32) #1

declare dso_local i32 @vmx_shadow_reg(i32) #1

declare dso_local i32 @hv_vcpu_invalidate_tlb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
