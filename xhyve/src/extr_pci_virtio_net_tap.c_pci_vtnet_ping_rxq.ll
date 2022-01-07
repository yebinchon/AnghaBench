; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_virtio_net_tap.c_pci_vtnet_ping_rxq.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_virtio_net_tap.c_pci_vtnet_ping_rxq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vqueue_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_vtnet_softc = type { i32 }

@VRING_USED_F_NO_NOTIFY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.vqueue_info*)* @pci_vtnet_ping_rxq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_vtnet_ping_rxq(i8* %0, %struct.vqueue_info* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.vqueue_info*, align 8
  %5 = alloca %struct.pci_vtnet_softc*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.vqueue_info* %1, %struct.vqueue_info** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.pci_vtnet_softc*
  store %struct.pci_vtnet_softc* %7, %struct.pci_vtnet_softc** %5, align 8
  %8 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %5, align 8
  %9 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %5, align 8
  %14 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %13, i32 0, i32 0
  store i32 1, i32* %14, align 4
  %15 = load i32, i32* @VRING_USED_F_NO_NOTIFY, align 4
  %16 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %17 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %15
  store i32 %21, i32* %19, align 4
  br label %22

22:                                               ; preds = %12, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
