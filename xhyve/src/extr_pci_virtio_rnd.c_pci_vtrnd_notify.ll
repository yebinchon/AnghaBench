; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_virtio_rnd.c_pci_vtrnd_notify.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_virtio_rnd.c_pci_vtrnd_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vqueue_info = type { i32 }
%struct.iovec = type { i32, i32 }
%struct.pci_vtrnd_softc = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c"vtrnd: vtrnd_notify(): %d\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.vqueue_info*)* @pci_vtrnd_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_vtrnd_notify(i8* %0, %struct.vqueue_info* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.vqueue_info*, align 8
  %5 = alloca %struct.iovec, align 4
  %6 = alloca %struct.pci_vtrnd_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.vqueue_info* %1, %struct.vqueue_info** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.pci_vtrnd_softc*
  store %struct.pci_vtrnd_softc* %10, %struct.pci_vtrnd_softc** %6, align 8
  %11 = load %struct.pci_vtrnd_softc*, %struct.pci_vtrnd_softc** %6, align 8
  %12 = getelementptr inbounds %struct.pci_vtrnd_softc, %struct.pci_vtrnd_softc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %17 = call i32 @vq_endchains(%struct.vqueue_info* %16, i32 0)
  br label %50

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %23, %18
  %20 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %21 = call i64 @vq_has_descs(%struct.vqueue_info* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %19
  %24 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %25 = call i32 @vq_getchain(%struct.vqueue_info* %24, i32* %8, %struct.iovec* %5, i32 1, i32* null)
  %26 = load %struct.pci_vtrnd_softc*, %struct.pci_vtrnd_softc** %6, align 8
  %27 = getelementptr inbounds %struct.pci_vtrnd_softc, %struct.pci_vtrnd_softc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.iovec, %struct.iovec* %5, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.iovec, %struct.iovec* %5, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @read(i64 %28, i32 %30, i32 %32)
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i8*
  %38 = call i32 @DPRINTF(i8* %37)
  %39 = load i32, i32* %7, align 4
  %40 = icmp sgt i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @vq_relchain(%struct.vqueue_info* %43, i32 %44, i32 %45)
  br label %19

47:                                               ; preds = %19
  %48 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %49 = call i32 @vq_endchains(%struct.vqueue_info* %48, i32 1)
  br label %50

50:                                               ; preds = %47, %15
  ret void
}

declare dso_local i32 @vq_endchains(%struct.vqueue_info*, i32) #1

declare dso_local i64 @vq_has_descs(%struct.vqueue_info*) #1

declare dso_local i32 @vq_getchain(%struct.vqueue_info*, i32*, %struct.iovec*, i32, i32*) #1

declare dso_local i64 @read(i64, i32, i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vq_relchain(%struct.vqueue_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
