; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_virtio_net_tap.c_pci_vtnet_txwait.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_virtio_net_tap.c_pci_vtnet_txwait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_vtnet_softc = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_vtnet_softc*)* @pci_vtnet_txwait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_vtnet_txwait(%struct.pci_vtnet_softc* %0) #0 {
  %2 = alloca %struct.pci_vtnet_softc*, align 8
  store %struct.pci_vtnet_softc* %0, %struct.pci_vtnet_softc** %2, align 8
  %3 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %2, align 8
  %4 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %3, i32 0, i32 0
  %5 = call i32 @pthread_mutex_lock(i32* %4)
  br label %6

6:                                                ; preds = %11, %1
  %7 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %2, align 8
  %8 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %6
  %12 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %2, align 8
  %13 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %12, i32 0, i32 0
  %14 = call i32 @pthread_mutex_unlock(i32* %13)
  %15 = call i32 @usleep(i32 10000)
  %16 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %2, align 8
  %17 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %16, i32 0, i32 0
  %18 = call i32 @pthread_mutex_lock(i32* %17)
  br label %6

19:                                               ; preds = %6
  %20 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %2, align 8
  %21 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %20, i32 0, i32 0
  %22 = call i32 @pthread_mutex_unlock(i32* %21)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @usleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
