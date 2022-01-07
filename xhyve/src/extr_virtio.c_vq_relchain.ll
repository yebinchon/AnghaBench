; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_virtio.c_vq_relchain.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_virtio.c_vq_relchain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vqueue_info = type { i64, %struct.vring_used* }
%struct.vring_used = type { i64, %struct.virtio_used* }
%struct.virtio_used = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vq_relchain(%struct.vqueue_info* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.vqueue_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.vring_used*, align 8
  %10 = alloca %struct.virtio_used*, align 8
  store %struct.vqueue_info* %0, %struct.vqueue_info** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %12 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = sub i64 %13, 1
  store i64 %14, i64* %8, align 8
  %15 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %16 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %15, i32 0, i32 1
  %17 = load %struct.vring_used*, %struct.vring_used** %16, align 8
  store %struct.vring_used* %17, %struct.vring_used** %9, align 8
  %18 = load %struct.vring_used*, %struct.vring_used** %9, align 8
  %19 = getelementptr inbounds %struct.vring_used, %struct.vring_used* %18, i32 0, i32 0
  %20 = load volatile i64, i64* %19, align 8
  store i64 %20, i64* %7, align 8
  %21 = load %struct.vring_used*, %struct.vring_used** %9, align 8
  %22 = getelementptr inbounds %struct.vring_used, %struct.vring_used* %21, i32 0, i32 1
  %23 = load volatile %struct.virtio_used*, %struct.virtio_used** %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = and i64 %24, %26
  %28 = getelementptr inbounds %struct.virtio_used, %struct.virtio_used* %23, i64 %27
  store %struct.virtio_used* %28, %struct.virtio_used** %10, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.virtio_used*, %struct.virtio_used** %10, align 8
  %31 = getelementptr inbounds %struct.virtio_used, %struct.virtio_used* %30, i32 0, i32 0
  store volatile i64 %29, i64* %31, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.virtio_used*, %struct.virtio_used** %10, align 8
  %34 = getelementptr inbounds %struct.virtio_used, %struct.virtio_used* %33, i32 0, i32 1
  store volatile i32 %32, i32* %34, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.vring_used*, %struct.vring_used** %9, align 8
  %37 = getelementptr inbounds %struct.vring_used, %struct.vring_used* %36, i32 0, i32 0
  store volatile i64 %35, i64* %37, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
