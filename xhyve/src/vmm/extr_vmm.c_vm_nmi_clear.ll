; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm.c_vm_nmi_clear.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm.c_vm_nmi_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { %struct.vcpu* }
%struct.vcpu = type { i64 }

@VM_MAXCPU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"vm_nmi_pending: invalid vcpuid %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"vm_nmi_clear: inconsistent nmi_pending state\0A\00", align 1
@VCPU_NMI_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_nmi_clear(%struct.vm* %0, i32 %1) #0 {
  %3 = alloca %struct.vm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vcpu*, align 8
  store %struct.vm* %0, %struct.vm** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @VM_MAXCPU, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %8, %2
  %13 = load i32, i32* %4, align 4
  %14 = call i32 (i8*, ...) @xhyve_abort(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %12, %8
  %16 = load %struct.vm*, %struct.vm** %3, align 8
  %17 = getelementptr inbounds %struct.vm, %struct.vm* %16, i32 0, i32 0
  %18 = load %struct.vcpu*, %struct.vcpu** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %18, i64 %20
  store %struct.vcpu* %21, %struct.vcpu** %5, align 8
  %22 = load %struct.vcpu*, %struct.vcpu** %5, align 8
  %23 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %15
  %27 = call i32 (i8*, ...) @xhyve_abort(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %15
  %29 = load %struct.vcpu*, %struct.vcpu** %5, align 8
  %30 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load %struct.vm*, %struct.vm** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @VCPU_NMI_COUNT, align 4
  %34 = call i32 @vmm_stat_incr(%struct.vm* %31, i32 %32, i32 %33, i32 1)
  ret void
}

declare dso_local i32 @xhyve_abort(i8*, ...) #1

declare dso_local i32 @vmm_stat_incr(%struct.vm*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
