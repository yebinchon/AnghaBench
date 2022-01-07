; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_virtio.c__vq_record.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_virtio.c__vq_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_desc = type { i32, i32, i32 }
%struct.iovec = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.virtio_desc*, %struct.iovec*, i32, i32*)* @_vq_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_vq_record(i32 %0, %struct.virtio_desc* %1, %struct.iovec* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.virtio_desc*, align 8
  %8 = alloca %struct.iovec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.virtio_desc* %1, %struct.virtio_desc** %7, align 8
  store %struct.iovec* %2, %struct.iovec** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %5
  br label %46

15:                                               ; preds = %5
  %16 = load %struct.virtio_desc*, %struct.virtio_desc** %7, align 8
  %17 = getelementptr inbounds %struct.virtio_desc, %struct.virtio_desc* %16, i32 0, i32 2
  %18 = load volatile i32, i32* %17, align 4
  %19 = load %struct.virtio_desc*, %struct.virtio_desc** %7, align 8
  %20 = getelementptr inbounds %struct.virtio_desc, %struct.virtio_desc* %19, i32 0, i32 1
  %21 = load volatile i32, i32* %20, align 4
  %22 = call i32 @paddr_guest2host(i32 %18, i32 %21)
  %23 = load %struct.iovec*, %struct.iovec** %8, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.iovec, %struct.iovec* %23, i64 %25
  %27 = getelementptr inbounds %struct.iovec, %struct.iovec* %26, i32 0, i32 1
  store i32 %22, i32* %27, align 4
  %28 = load %struct.virtio_desc*, %struct.virtio_desc** %7, align 8
  %29 = getelementptr inbounds %struct.virtio_desc, %struct.virtio_desc* %28, i32 0, i32 1
  %30 = load volatile i32, i32* %29, align 4
  %31 = load %struct.iovec*, %struct.iovec** %8, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.iovec, %struct.iovec* %31, i64 %33
  %35 = getelementptr inbounds %struct.iovec, %struct.iovec* %34, i32 0, i32 0
  store i32 %30, i32* %35, align 4
  %36 = load i32*, i32** %10, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %15
  %39 = load %struct.virtio_desc*, %struct.virtio_desc** %7, align 8
  %40 = getelementptr inbounds %struct.virtio_desc, %struct.virtio_desc* %39, i32 0, i32 0
  %41 = load volatile i32, i32* %40, align 4
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %41, i32* %45, align 4
  br label %46

46:                                               ; preds = %14, %38, %15
  ret void
}

declare dso_local i32 @paddr_guest2host(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
