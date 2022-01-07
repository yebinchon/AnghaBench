; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/intel/extr_vmx.c_vmx_clear_nmi_window_exiting.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/intel/extr_vmx.c_vmx_clear_nmi_window_exiting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmx = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PROCBASED_NMI_WINDOW_EXITING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"nmi_window_exiting not set %#x\00", align 1
@VMCS_PRI_PROC_BASED_CTLS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Disabling NMI window exiting\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmx*, i32)* @vmx_clear_nmi_window_exiting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmx_clear_nmi_window_exiting(%struct.vmx* %0, i32 %1) #0 {
  %3 = alloca %struct.vmx*, align 8
  %4 = alloca i32, align 4
  store %struct.vmx* %0, %struct.vmx** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.vmx*, %struct.vmx** %3, align 8
  %6 = getelementptr inbounds %struct.vmx, %struct.vmx* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PROCBASED_NMI_WINDOW_EXITING, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = load %struct.vmx*, %struct.vmx** %3, align 8
  %18 = getelementptr inbounds %struct.vmx, %struct.vmx* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 @KASSERT(i32 %16, i8* %26)
  %28 = load i32, i32* @PROCBASED_NMI_WINDOW_EXITING, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.vmx*, %struct.vmx** %3, align 8
  %31 = getelementptr inbounds %struct.vmx, %struct.vmx* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %29
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @VMCS_PRI_PROC_BASED_CTLS, align 4
  %41 = load %struct.vmx*, %struct.vmx** %3, align 8
  %42 = getelementptr inbounds %struct.vmx, %struct.vmx* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @vmcs_write(i32 %39, i32 %40, i32 %48)
  %50 = load %struct.vmx*, %struct.vmx** %3, align 8
  %51 = getelementptr inbounds %struct.vmx, %struct.vmx* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @VCPU_CTR0(i32 %52, i32 %53, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vmcs_write(i32, i32, i32) #1

declare dso_local i32 @VCPU_CTR0(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
