; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_virtio_net_vmnet.c_pci_vtnet_tap_tx.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_virtio_net_vmnet.c_pci_vtnet_tap_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_vtnet_softc = type { i32 }
%struct.iovec = type { i8*, i64 }

@pci_vtnet_tap_tx.pad = internal global [60 x i8] zeroinitializer, align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_vtnet_softc*, %struct.iovec*, i32, i32)* @pci_vtnet_tap_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_vtnet_tap_tx(%struct.pci_vtnet_softc* %0, %struct.iovec* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.pci_vtnet_softc*, align 8
  %6 = alloca %struct.iovec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pci_vtnet_softc* %0, %struct.pci_vtnet_softc** %5, align 8
  store %struct.iovec* %1, %struct.iovec** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %5, align 8
  %10 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  br label %40

14:                                               ; preds = %4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 60
  br i1 %16, label %17, label %33

17:                                               ; preds = %14
  %18 = load %struct.iovec*, %struct.iovec** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.iovec, %struct.iovec* %18, i64 %20
  %22 = getelementptr inbounds %struct.iovec, %struct.iovec* %21, i32 0, i32 0
  store i8* getelementptr inbounds ([60 x i8], [60 x i8]* @pci_vtnet_tap_tx.pad, i64 0, i64 0), i8** %22, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sub nsw i32 60, %23
  %25 = sext i32 %24 to i64
  %26 = load %struct.iovec*, %struct.iovec** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.iovec, %struct.iovec* %26, i64 %28
  %30 = getelementptr inbounds %struct.iovec, %struct.iovec* %29, i32 0, i32 1
  store i64 %25, i64* %30, align 8
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %17, %14
  %34 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %5, align 8
  %35 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.iovec*, %struct.iovec** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @vmn_write(i32 %36, %struct.iovec* %37, i32 %38)
  br label %40

40:                                               ; preds = %33, %13
  ret void
}

declare dso_local i32 @vmn_write(i32, %struct.iovec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
