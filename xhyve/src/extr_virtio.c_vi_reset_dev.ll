; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_virtio.c_vi_reset_dev.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_virtio.c_vi_reset_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_softc = type { i8*, i64, i32, i64, i64, %struct.vqueue_info*, %struct.TYPE_2__* }
%struct.vqueue_info = type { i8*, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@VIRTIO_MSI_NO_VECTOR = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vi_reset_dev(%struct.virtio_softc* %0) #0 {
  %2 = alloca %struct.virtio_softc*, align 8
  %3 = alloca %struct.vqueue_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.virtio_softc* %0, %struct.virtio_softc** %2, align 8
  %6 = load %struct.virtio_softc*, %struct.virtio_softc** %2, align 8
  %7 = getelementptr inbounds %struct.virtio_softc, %struct.virtio_softc* %6, i32 0, i32 6
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.virtio_softc*, %struct.virtio_softc** %2, align 8
  %12 = getelementptr inbounds %struct.virtio_softc, %struct.virtio_softc* %11, i32 0, i32 5
  %13 = load %struct.vqueue_info*, %struct.vqueue_info** %12, align 8
  store %struct.vqueue_info* %13, %struct.vqueue_info** %3, align 8
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %30, %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %14
  %19 = load %struct.vqueue_info*, %struct.vqueue_info** %3, align 8
  %20 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %19, i32 0, i32 4
  store i64 0, i64* %20, align 8
  %21 = load %struct.vqueue_info*, %struct.vqueue_info** %3, align 8
  %22 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %21, i32 0, i32 3
  store i64 0, i64* %22, align 8
  %23 = load %struct.vqueue_info*, %struct.vqueue_info** %3, align 8
  %24 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %23, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = load %struct.vqueue_info*, %struct.vqueue_info** %3, align 8
  %26 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load i8*, i8** @VIRTIO_MSI_NO_VECTOR, align 8
  %28 = load %struct.vqueue_info*, %struct.vqueue_info** %3, align 8
  %29 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  br label %30

30:                                               ; preds = %18
  %31 = load %struct.vqueue_info*, %struct.vqueue_info** %3, align 8
  %32 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %31, i32 1
  store %struct.vqueue_info* %32, %struct.vqueue_info** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %14

35:                                               ; preds = %14
  %36 = load %struct.virtio_softc*, %struct.virtio_softc** %2, align 8
  %37 = getelementptr inbounds %struct.virtio_softc, %struct.virtio_softc* %36, i32 0, i32 4
  store i64 0, i64* %37, align 8
  %38 = load %struct.virtio_softc*, %struct.virtio_softc** %2, align 8
  %39 = getelementptr inbounds %struct.virtio_softc, %struct.virtio_softc* %38, i32 0, i32 3
  store i64 0, i64* %39, align 8
  %40 = load %struct.virtio_softc*, %struct.virtio_softc** %2, align 8
  %41 = getelementptr inbounds %struct.virtio_softc, %struct.virtio_softc* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %35
  %45 = load %struct.virtio_softc*, %struct.virtio_softc** %2, align 8
  %46 = getelementptr inbounds %struct.virtio_softc, %struct.virtio_softc* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @pci_lintr_deassert(i32 %47)
  br label %49

49:                                               ; preds = %44, %35
  %50 = load %struct.virtio_softc*, %struct.virtio_softc** %2, align 8
  %51 = getelementptr inbounds %struct.virtio_softc, %struct.virtio_softc* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load i8*, i8** @VIRTIO_MSI_NO_VECTOR, align 8
  %53 = load %struct.virtio_softc*, %struct.virtio_softc** %2, align 8
  %54 = getelementptr inbounds %struct.virtio_softc, %struct.virtio_softc* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  ret void
}

declare dso_local i32 @pci_lintr_deassert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
