; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_emul.c_pci_lintr_deassert.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_emul.c_pci_lintr_deassert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinst = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32 }

@ASSERTED = common dso_local global i64 0, align 8
@IDLE = common dso_local global i8* null, align 8
@PENDING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_lintr_deassert(%struct.pci_devinst* %0) #0 {
  %2 = alloca %struct.pci_devinst*, align 8
  store %struct.pci_devinst* %0, %struct.pci_devinst** %2, align 8
  %3 = load %struct.pci_devinst*, %struct.pci_devinst** %2, align 8
  %4 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp sgt i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load %struct.pci_devinst*, %struct.pci_devinst** %2, align 8
  %11 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  %13 = call i32 @pthread_mutex_lock(i32* %12)
  %14 = load %struct.pci_devinst*, %struct.pci_devinst** %2, align 8
  %15 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ASSERTED, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load i8*, i8** @IDLE, align 8
  %22 = ptrtoint i8* %21 to i64
  %23 = load %struct.pci_devinst*, %struct.pci_devinst** %2, align 8
  %24 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i64 %22, i64* %25, align 8
  %26 = load %struct.pci_devinst*, %struct.pci_devinst** %2, align 8
  %27 = call i32 @pci_irq_deassert(%struct.pci_devinst* %26)
  br label %42

28:                                               ; preds = %1
  %29 = load %struct.pci_devinst*, %struct.pci_devinst** %2, align 8
  %30 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PENDING, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load i8*, i8** @IDLE, align 8
  %37 = ptrtoint i8* %36 to i64
  %38 = load %struct.pci_devinst*, %struct.pci_devinst** %2, align 8
  %39 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i64 %37, i64* %40, align 8
  br label %41

41:                                               ; preds = %35, %28
  br label %42

42:                                               ; preds = %41, %20
  %43 = load %struct.pci_devinst*, %struct.pci_devinst** %2, align 8
  %44 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = call i32 @pthread_mutex_unlock(i32* %45)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pci_irq_deassert(%struct.pci_devinst*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
