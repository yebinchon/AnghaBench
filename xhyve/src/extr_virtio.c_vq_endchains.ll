; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_virtio.c_vq_endchains.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_virtio.c_vq_endchains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vqueue_info = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.virtio_softc* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.virtio_softc = type { i32 }

@VIRTIO_F_NOTIFY_ON_EMPTY = common dso_local global i32 0, align 4
@VIRTIO_RING_F_EVENT_IDX = common dso_local global i32 0, align 4
@VRING_AVAIL_F_NO_INTERRUPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vq_endchains(%struct.vqueue_info* %0, i32 %1) #0 {
  %3 = alloca %struct.vqueue_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.virtio_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vqueue_info* %0, %struct.vqueue_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.vqueue_info*, %struct.vqueue_info** %3, align 8
  %11 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %10, i32 0, i32 3
  %12 = load %struct.virtio_softc*, %struct.virtio_softc** %11, align 8
  store %struct.virtio_softc* %12, %struct.virtio_softc** %5, align 8
  %13 = load %struct.vqueue_info*, %struct.vqueue_info** %3, align 8
  %14 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %8, align 4
  %16 = load %struct.vqueue_info*, %struct.vqueue_info** %3, align 8
  %17 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %16, i32 0, i32 2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load %struct.vqueue_info*, %struct.vqueue_info** %3, align 8
  %22 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %2
  %26 = load %struct.virtio_softc*, %struct.virtio_softc** %5, align 8
  %27 = getelementptr inbounds %struct.virtio_softc, %struct.virtio_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @VIRTIO_F_NOTIFY_ON_EMPTY, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 1, i32* %9, align 4
  br label %70

33:                                               ; preds = %25, %2
  %34 = load %struct.virtio_softc*, %struct.virtio_softc** %5, align 8
  %35 = getelementptr inbounds %struct.virtio_softc, %struct.virtio_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @VIRTIO_RING_F_EVENT_IDX, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %33
  %41 = load %struct.vqueue_info*, %struct.vqueue_info** %3, align 8
  %42 = call i32 @VQ_USED_EVENT_IDX(%struct.vqueue_info* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %6, align 4
  %45 = sub nsw i32 %43, %44
  %46 = sub nsw i32 %45, 1
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = sub nsw i32 %47, %48
  %50 = icmp slt i32 %46, %49
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %9, align 4
  br label %69

52:                                               ; preds = %33
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %52
  %57 = load %struct.vqueue_info*, %struct.vqueue_info** %3, align 8
  %58 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @VRING_AVAIL_F_NO_INTERRUPT, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  br label %66

66:                                               ; preds = %56, %52
  %67 = phi i1 [ false, %52 ], [ %65, %56 ]
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %66, %40
  br label %70

70:                                               ; preds = %69, %32
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load %struct.virtio_softc*, %struct.virtio_softc** %5, align 8
  %75 = load %struct.vqueue_info*, %struct.vqueue_info** %3, align 8
  %76 = call i32 @vq_interrupt(%struct.virtio_softc* %74, %struct.vqueue_info* %75)
  br label %77

77:                                               ; preds = %73, %70
  ret void
}

declare dso_local i32 @VQ_USED_EVENT_IDX(%struct.vqueue_info*) #1

declare dso_local i32 @vq_interrupt(%struct.virtio_softc*, %struct.vqueue_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
