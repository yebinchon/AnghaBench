; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_virtio_net_tap.c_pci_vtnet_ping_txq.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_virtio_net_tap.c_pci_vtnet_ping_txq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vqueue_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_vtnet_softc = type { i64, i32, i32 }

@VRING_USED_F_NO_NOTIFY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.vqueue_info*)* @pci_vtnet_ping_txq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_vtnet_ping_txq(i8* %0, %struct.vqueue_info* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.vqueue_info*, align 8
  %5 = alloca %struct.pci_vtnet_softc*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.vqueue_info* %1, %struct.vqueue_info** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.pci_vtnet_softc*
  store %struct.pci_vtnet_softc* %7, %struct.pci_vtnet_softc** %5, align 8
  %8 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %9 = call i32 @vq_has_descs(%struct.vqueue_info* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %35

12:                                               ; preds = %2
  %13 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %5, align 8
  %14 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %13, i32 0, i32 1
  %15 = call i32 @pthread_mutex_lock(i32* %14)
  %16 = load i32, i32* @VRING_USED_F_NO_NOTIFY, align 4
  %17 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %18 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %16
  store i32 %22, i32* %20, align 4
  %23 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %5, align 8
  %24 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %12
  %28 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %5, align 8
  %29 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %28, i32 0, i32 2
  %30 = call i32 @pthread_cond_signal(i32* %29)
  br label %31

31:                                               ; preds = %27, %12
  %32 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %5, align 8
  %33 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %32, i32 0, i32 1
  %34 = call i32 @pthread_mutex_unlock(i32* %33)
  br label %35

35:                                               ; preds = %31, %11
  ret void
}

declare dso_local i32 @vq_has_descs(%struct.vqueue_info*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
