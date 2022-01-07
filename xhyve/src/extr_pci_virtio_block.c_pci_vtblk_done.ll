; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_virtio_block.c_pci_vtblk_done.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_virtio_block.c_pci_vtblk_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blockif_req = type { %struct.pci_vtblk_ioreq* }
%struct.pci_vtblk_ioreq = type { %struct.pci_vtblk_softc* }
%struct.pci_vtblk_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blockif_req*, i32)* @pci_vtblk_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_vtblk_done(%struct.blockif_req* %0, i32 %1) #0 {
  %3 = alloca %struct.blockif_req*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_vtblk_ioreq*, align 8
  %6 = alloca %struct.pci_vtblk_softc*, align 8
  store %struct.blockif_req* %0, %struct.blockif_req** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.blockif_req*, %struct.blockif_req** %3, align 8
  %8 = getelementptr inbounds %struct.blockif_req, %struct.blockif_req* %7, i32 0, i32 0
  %9 = load %struct.pci_vtblk_ioreq*, %struct.pci_vtblk_ioreq** %8, align 8
  store %struct.pci_vtblk_ioreq* %9, %struct.pci_vtblk_ioreq** %5, align 8
  %10 = load %struct.pci_vtblk_ioreq*, %struct.pci_vtblk_ioreq** %5, align 8
  %11 = getelementptr inbounds %struct.pci_vtblk_ioreq, %struct.pci_vtblk_ioreq* %10, i32 0, i32 0
  %12 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %11, align 8
  store %struct.pci_vtblk_softc* %12, %struct.pci_vtblk_softc** %6, align 8
  %13 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %6, align 8
  %14 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %13, i32 0, i32 0
  %15 = call i32 @pthread_mutex_lock(i32* %14)
  %16 = load %struct.blockif_req*, %struct.blockif_req** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @pci_vtblk_done_locked(%struct.blockif_req* %16, i32 %17)
  %19 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %6, align 8
  %20 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %19, i32 0, i32 0
  %21 = call i32 @pthread_mutex_unlock(i32* %20)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pci_vtblk_done_locked(%struct.blockif_req*, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
