; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/intel/extr_vmx.c_vmx_inject_nmi.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/intel/extr_vmx.c_vmx_inject_nmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmx = type { i32 }

@VMCS_GUEST_INTERRUPTIBILITY = common dso_local global i32 0, align 4
@NMI_BLOCKING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"vmx_inject_nmi: invalid guest interruptibility-state %#x\00", align 1
@VMCS_ENTRY_INTR_INFO = common dso_local global i32 0, align 4
@VMCS_INTR_VALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"vmx_inject_nmi: invalid VM-entry interruption information %#x\00", align 1
@IDT_NMI = common dso_local global i32 0, align 4
@VMCS_INTR_T_NMI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"Injecting vNMI\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmx*, i32)* @vmx_inject_nmi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmx_inject_nmi(%struct.vmx* %0, i32 %1) #0 {
  %3 = alloca %struct.vmx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vmx* %0, %struct.vmx** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @VMCS_GUEST_INTERRUPTIBILITY, align 4
  %9 = call i64 @vmcs_read(i32 %7, i32 %8)
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @NMI_BLOCKING, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i8*
  %19 = call i32 @KASSERT(i32 %15, i8* %18)
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @VMCS_ENTRY_INTR_INFO, align 4
  %22 = call i64 @vmcs_read(i32 %20, i32 %21)
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @VMCS_INTR_VALID, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  %32 = call i32 @KASSERT(i32 %28, i8* %31)
  %33 = load i32, i32* @IDT_NMI, align 4
  %34 = load i32, i32* @VMCS_INTR_T_NMI, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @VMCS_INTR_VALID, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @VMCS_ENTRY_INTR_INFO, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @vmcs_write(i32 %38, i32 %39, i32 %40)
  %42 = load %struct.vmx*, %struct.vmx** %3, align 8
  %43 = getelementptr inbounds %struct.vmx, %struct.vmx* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @VCPU_CTR0(i32 %44, i32 %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %47 = load %struct.vmx*, %struct.vmx** %3, align 8
  %48 = getelementptr inbounds %struct.vmx, %struct.vmx* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @vm_nmi_clear(i32 %49, i32 %50)
  ret void
}

declare dso_local i64 @vmcs_read(i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vmcs_write(i32, i32, i32) #1

declare dso_local i32 @VCPU_CTR0(i32, i32, i8*) #1

declare dso_local i32 @vm_nmi_clear(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
