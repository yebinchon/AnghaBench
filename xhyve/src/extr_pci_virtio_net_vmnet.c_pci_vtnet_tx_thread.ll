; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_virtio_net_vmnet.c_pci_vtnet_tx_thread.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_virtio_net_vmnet.c_pci_vtnet_tx_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_vtnet_softc = type { i32, i32, i32, i64, %struct.vqueue_info* }
%struct.vqueue_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@VTNET_TXQ = common dso_local global i64 0, align 8
@VRING_USED_F_NO_NOTIFY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @pci_vtnet_tx_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pci_vtnet_tx_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pci_vtnet_softc*, align 8
  %4 = alloca %struct.vqueue_info*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.pci_vtnet_softc*
  store %struct.pci_vtnet_softc* %7, %struct.pci_vtnet_softc** %3, align 8
  %8 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %3, align 8
  %9 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %8, i32 0, i32 4
  %10 = load %struct.vqueue_info*, %struct.vqueue_info** %9, align 8
  %11 = load i64, i64* @VTNET_TXQ, align 8
  %12 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %10, i64 %11
  store %struct.vqueue_info* %12, %struct.vqueue_info** %4, align 8
  %13 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %3, align 8
  %14 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %13, i32 0, i32 1
  %15 = call i32 @pthread_mutex_lock(i32* %14)
  %16 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %3, align 8
  %17 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %16, i32 0, i32 2
  %18 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %3, align 8
  %19 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %18, i32 0, i32 1
  %20 = call i32 @pthread_cond_wait(i32* %17, i32* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  br label %25

25:                                               ; preds = %90, %1
  br label %26

26:                                               ; preds = %57, %25
  %27 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %3, align 8
  %28 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %33 = call i64 @vq_has_descs(%struct.vqueue_info* %32)
  %34 = icmp ne i64 %33, 0
  %35 = xor i1 %34, true
  br label %36

36:                                               ; preds = %31, %26
  %37 = phi i1 [ true, %26 ], [ %35, %31 ]
  br i1 %37, label %38, label %69

38:                                               ; preds = %36
  %39 = load i32, i32* @VRING_USED_F_NO_NOTIFY, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %42 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %40
  store i32 %46, i32* %44, align 4
  %47 = call i32 (...) @mb()
  %48 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %3, align 8
  %49 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %38
  %53 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %54 = call i64 @vq_has_descs(%struct.vqueue_info* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %69

57:                                               ; preds = %52, %38
  %58 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %3, align 8
  %59 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  %60 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %3, align 8
  %61 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %60, i32 0, i32 2
  %62 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %3, align 8
  %63 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %62, i32 0, i32 1
  %64 = call i32 @pthread_cond_wait(i32* %61, i32* %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp eq i32 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  br label %26

69:                                               ; preds = %56, %36
  %70 = load i32, i32* @VRING_USED_F_NO_NOTIFY, align 4
  %71 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %72 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %70
  store i32 %76, i32* %74, align 4
  %77 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %3, align 8
  %78 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  %79 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %3, align 8
  %80 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %79, i32 0, i32 1
  %81 = call i32 @pthread_mutex_unlock(i32* %80)
  br label %82

82:                                               ; preds = %86, %69
  %83 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %3, align 8
  %84 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %85 = call i32 @pci_vtnet_proctx(%struct.pci_vtnet_softc* %83, %struct.vqueue_info* %84)
  br label %86

86:                                               ; preds = %82
  %87 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %88 = call i64 @vq_has_descs(%struct.vqueue_info* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %82, label %90

90:                                               ; preds = %86
  %91 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %92 = call i32 @vq_endchains(%struct.vqueue_info* %91, i32 1)
  %93 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %3, align 8
  %94 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %93, i32 0, i32 1
  %95 = call i32 @pthread_mutex_lock(i32* %94)
  br label %25
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @vq_has_descs(%struct.vqueue_info*) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @pci_vtnet_proctx(%struct.pci_vtnet_softc*, %struct.vqueue_info*) #1

declare dso_local i32 @vq_endchains(%struct.vqueue_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
