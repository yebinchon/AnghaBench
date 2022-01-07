; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm.c_vcpu_get_state.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm.c_vcpu_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { %struct.vcpu* }
%struct.vcpu = type { i32 }

@VM_MAXCPU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"vm_get_run_state: invalid vcpuid %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vcpu_get_state(%struct.vm* %0, i32 %1) #0 {
  %3 = alloca %struct.vm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vcpu*, align 8
  %6 = alloca i32, align 4
  store %struct.vm* %0, %struct.vm** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @VM_MAXCPU, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %9, %2
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @xhyve_abort(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %13, %9
  %17 = load %struct.vm*, %struct.vm** %3, align 8
  %18 = getelementptr inbounds %struct.vm, %struct.vm* %17, i32 0, i32 0
  %19 = load %struct.vcpu*, %struct.vcpu** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %19, i64 %21
  store %struct.vcpu* %22, %struct.vcpu** %5, align 8
  %23 = load %struct.vcpu*, %struct.vcpu** %5, align 8
  %24 = call i32 @vcpu_lock(%struct.vcpu* %23)
  %25 = load %struct.vcpu*, %struct.vcpu** %5, align 8
  %26 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %6, align 4
  %28 = load %struct.vcpu*, %struct.vcpu** %5, align 8
  %29 = call i32 @vcpu_unlock(%struct.vcpu* %28)
  %30 = load i32, i32* %6, align 4
  ret i32 %30
}

declare dso_local i32 @xhyve_abort(i8*, i32) #1

declare dso_local i32 @vcpu_lock(%struct.vcpu*) #1

declare dso_local i32 @vcpu_unlock(%struct.vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
