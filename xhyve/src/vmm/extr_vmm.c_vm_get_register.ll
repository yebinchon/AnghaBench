; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm.c_vm_get_register.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm.c_vm_get_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32 }

@VM_MAXCPU = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VM_REG_LAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_get_register(%struct.vm* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.vm* %0, %struct.vm** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @VM_MAXCPU, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12, %4
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %5, align 4
  br label %32

18:                                               ; preds = %12
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @VM_REG_LAST, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %5, align 4
  br label %32

24:                                               ; preds = %18
  %25 = load %struct.vm*, %struct.vm** %6, align 8
  %26 = getelementptr inbounds %struct.vm, %struct.vm* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @VMGETREG(i32 %27, i32 %28, i32 %29, i32* %30)
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %24, %22, %16
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @VMGETREG(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
