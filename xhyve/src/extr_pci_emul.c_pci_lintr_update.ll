; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_emul.c_pci_lintr_update.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_emul.c_pci_lintr_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinst = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@ASSERTED = common dso_local global i64 0, align 8
@PENDING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_devinst*)* @pci_lintr_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_lintr_update(%struct.pci_devinst* %0) #0 {
  %2 = alloca %struct.pci_devinst*, align 8
  store %struct.pci_devinst* %0, %struct.pci_devinst** %2, align 8
  %3 = load %struct.pci_devinst*, %struct.pci_devinst** %2, align 8
  %4 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 1
  %6 = call i32 @pthread_mutex_lock(i32* %5)
  %7 = load %struct.pci_devinst*, %struct.pci_devinst** %2, align 8
  %8 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ASSERTED, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load %struct.pci_devinst*, %struct.pci_devinst** %2, align 8
  %15 = call i64 @pci_lintr_permitted(%struct.pci_devinst* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  %18 = load %struct.pci_devinst*, %struct.pci_devinst** %2, align 8
  %19 = call i32 @pci_irq_deassert(%struct.pci_devinst* %18)
  %20 = load i64, i64* @PENDING, align 8
  %21 = load %struct.pci_devinst*, %struct.pci_devinst** %2, align 8
  %22 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i64 %20, i64* %23, align 8
  br label %43

24:                                               ; preds = %13, %1
  %25 = load %struct.pci_devinst*, %struct.pci_devinst** %2, align 8
  %26 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PENDING, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %24
  %32 = load %struct.pci_devinst*, %struct.pci_devinst** %2, align 8
  %33 = call i64 @pci_lintr_permitted(%struct.pci_devinst* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load i64, i64* @ASSERTED, align 8
  %37 = load %struct.pci_devinst*, %struct.pci_devinst** %2, align 8
  %38 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i64 %36, i64* %39, align 8
  %40 = load %struct.pci_devinst*, %struct.pci_devinst** %2, align 8
  %41 = call i32 @pci_irq_assert(%struct.pci_devinst* %40)
  br label %42

42:                                               ; preds = %35, %31, %24
  br label %43

43:                                               ; preds = %42, %17
  %44 = load %struct.pci_devinst*, %struct.pci_devinst** %2, align 8
  %45 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = call i32 @pthread_mutex_unlock(i32* %46)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @pci_lintr_permitted(%struct.pci_devinst*) #1

declare dso_local i32 @pci_irq_deassert(%struct.pci_devinst*) #1

declare dso_local i32 @pci_irq_assert(%struct.pci_devinst*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
