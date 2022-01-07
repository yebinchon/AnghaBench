; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_api.c_xh_vm_run.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_api.c_xh_vm_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_exit = type { i32 }

@vm = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xh_vm_run(i32 %0, %struct.vm_exit* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vm_exit*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.vm_exit* %1, %struct.vm_exit** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @vcpu_freeze(i32 %6, i32 1)
  %8 = load i32, i32* @vm, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.vm_exit*, %struct.vm_exit** %4, align 8
  %11 = call i32 @vm_run(i32 %8, i32 %9, %struct.vm_exit* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @vcpu_freeze(i32 %12, i32 0)
  %14 = load i32, i32* %5, align 4
  ret i32 %14
}

declare dso_local i32 @vcpu_freeze(i32, i32) #1

declare dso_local i32 @vm_run(i32, i32, %struct.vm_exit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
