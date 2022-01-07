; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_virtio_net_vmnet.c_pci_vtnet_reset.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_virtio_net_vmnet.c_pci_vtnet_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_vtnet_softc = type { i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [33 x i8] c"vtnet: device reset requested !\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @pci_vtnet_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_vtnet_reset(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pci_vtnet_softc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.pci_vtnet_softc*
  store %struct.pci_vtnet_softc* %5, %struct.pci_vtnet_softc** %3, align 8
  %6 = call i32 @DPRINTF(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %3, align 8
  %8 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %7, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %3, align 8
  %10 = call i32 @pci_vtnet_txwait(%struct.pci_vtnet_softc* %9)
  %11 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %3, align 8
  %12 = call i32 @pci_vtnet_rxwait(%struct.pci_vtnet_softc* %11)
  %13 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %3, align 8
  %14 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %13, i32 0, i32 4
  store i64 0, i64* %14, align 8
  %15 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %3, align 8
  %16 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %15, i32 0, i32 1
  store i32 1, i32* %16, align 4
  %17 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %3, align 8
  %18 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %17, i32 0, i32 2
  store i32 4, i32* %18, align 8
  %19 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %3, align 8
  %20 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %19, i32 0, i32 3
  %21 = call i32 @vi_reset_dev(i32* %20)
  %22 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %3, align 8
  %23 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  ret void
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @pci_vtnet_txwait(%struct.pci_vtnet_softc*) #1

declare dso_local i32 @pci_vtnet_rxwait(%struct.pci_vtnet_softc*) #1

declare dso_local i32 @vi_reset_dev(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
