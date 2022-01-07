; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_irq.c_pci_irq_assert.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_irq.c_pci_irq_assert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pirq = type { i32, i32, i32 }
%struct.pci_devinst = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@pirqs = common dso_local global %struct.pirq* null, align 8
@PIRQ_IRQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_irq_assert(%struct.pci_devinst* %0) #0 {
  %2 = alloca %struct.pci_devinst*, align 8
  %3 = alloca %struct.pirq*, align 8
  store %struct.pci_devinst* %0, %struct.pci_devinst** %2, align 8
  %4 = load %struct.pci_devinst*, %struct.pci_devinst** %2, align 8
  %5 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %62

9:                                                ; preds = %1
  %10 = load %struct.pci_devinst*, %struct.pci_devinst** %2, align 8
  %11 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.pirq*, %struct.pirq** @pirqs, align 8
  %15 = call i32 @nitems(%struct.pirq* %14)
  %16 = icmp ule i32 %13, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.pirq*, %struct.pirq** @pirqs, align 8
  %20 = load %struct.pci_devinst*, %struct.pci_devinst** %2, align 8
  %21 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.pirq, %struct.pirq* %19, i64 %25
  store %struct.pirq* %26, %struct.pirq** %3, align 8
  %27 = load %struct.pirq*, %struct.pirq** %3, align 8
  %28 = getelementptr inbounds %struct.pirq, %struct.pirq* %27, i32 0, i32 2
  %29 = call i32 @pthread_mutex_lock(i32* %28)
  %30 = load %struct.pirq*, %struct.pirq** %3, align 8
  %31 = getelementptr inbounds %struct.pirq, %struct.pirq* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load %struct.pirq*, %struct.pirq** %3, align 8
  %35 = getelementptr inbounds %struct.pirq, %struct.pirq* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %58

38:                                               ; preds = %9
  %39 = load %struct.pirq*, %struct.pirq** %3, align 8
  %40 = getelementptr inbounds %struct.pirq, %struct.pirq* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @pirq_valid_irq(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %38
  %45 = load %struct.pirq*, %struct.pirq** %3, align 8
  %46 = getelementptr inbounds %struct.pirq, %struct.pirq* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @PIRQ_IRQ, align 4
  %49 = and i32 %47, %48
  %50 = load %struct.pci_devinst*, %struct.pci_devinst** %2, align 8
  %51 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @xh_vm_isa_assert_irq(i32 %49, i32 %53)
  %55 = load %struct.pirq*, %struct.pirq** %3, align 8
  %56 = getelementptr inbounds %struct.pirq, %struct.pirq* %55, i32 0, i32 2
  %57 = call i32 @pthread_mutex_unlock(i32* %56)
  br label %68

58:                                               ; preds = %38, %9
  %59 = load %struct.pirq*, %struct.pirq** %3, align 8
  %60 = getelementptr inbounds %struct.pirq, %struct.pirq* %59, i32 0, i32 2
  %61 = call i32 @pthread_mutex_unlock(i32* %60)
  br label %62

62:                                               ; preds = %58, %1
  %63 = load %struct.pci_devinst*, %struct.pci_devinst** %2, align 8
  %64 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @xh_vm_ioapic_assert_irq(i32 %66)
  br label %68

68:                                               ; preds = %62, %44
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @nitems(%struct.pirq*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @pirq_valid_irq(i32) #1

declare dso_local i32 @xh_vm_isa_assert_irq(i32, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @xh_vm_ioapic_assert_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
