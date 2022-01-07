; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_virtio_net_tap.c_pci_vtnet_proctx.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_virtio_net_tap.c_pci_vtnet_proctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_vtnet_softc = type { i32 }
%struct.vqueue_info = type { i32 }
%struct.iovec = type { i64 }

@VTNET_MAXSEGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"virtio: packet send, %d bytes, %d segs\0A\0D\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_vtnet_softc*, %struct.vqueue_info*)* @pci_vtnet_proctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_vtnet_proctx(%struct.pci_vtnet_softc* %0, %struct.vqueue_info* %1) #0 {
  %3 = alloca %struct.pci_vtnet_softc*, align 8
  %4 = alloca %struct.vqueue_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pci_vtnet_softc* %0, %struct.pci_vtnet_softc** %3, align 8
  store %struct.vqueue_info* %1, %struct.vqueue_info** %4, align 8
  %12 = load i32, i32* @VTNET_MAXSEGS, align 4
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %5, align 8
  %16 = alloca %struct.iovec, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  %17 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %18 = load i32, i32* @VTNET_MAXSEGS, align 4
  %19 = call i32 @vq_getchain(%struct.vqueue_info* %17, i32* %11, %struct.iovec* %16, i32 %18, i32* null)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp sge i32 %20, 1
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @VTNET_MAXSEGS, align 4
  %25 = icmp sle i32 %23, %24
  br label %26

26:                                               ; preds = %22, %2
  %27 = phi i1 [ false, %2 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  store i32 0, i32* %9, align 4
  %30 = getelementptr inbounds %struct.iovec, %struct.iovec* %16, i64 0
  %31 = getelementptr inbounds %struct.iovec, %struct.iovec* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 16
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %10, align 4
  store i32 1, i32* %7, align 4
  br label %34

34:                                               ; preds = %57, %26
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %60

38:                                               ; preds = %34
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.iovec, %struct.iovec* %16, i64 %40
  %42 = getelementptr inbounds %struct.iovec, %struct.iovec* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %45, %43
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.iovec, %struct.iovec* %16, i64 %49
  %51 = getelementptr inbounds %struct.iovec, %struct.iovec* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %38
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %34

60:                                               ; preds = %34
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = inttoptr i64 %63 to i8*
  %65 = call i32 @DPRINTF(i8* %64)
  %66 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %3, align 8
  %67 = getelementptr inbounds %struct.iovec, %struct.iovec* %16, i64 1
  %68 = load i32, i32* %8, align 4
  %69 = sub nsw i32 %68, 1
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @pci_vtnet_tap_tx(%struct.pci_vtnet_softc* %66, %struct.iovec* %67, i32 %69, i32 %70)
  %72 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @vq_relchain(%struct.vqueue_info* %72, i32 %73, i32 %74)
  %76 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %76)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @vq_getchain(%struct.vqueue_info*, i32*, %struct.iovec*, i32, i32*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @DPRINTF(i8*) #2

declare dso_local i32 @pci_vtnet_tap_tx(%struct.pci_vtnet_softc*, %struct.iovec*, i32, i32) #2

declare dso_local i32 @vq_relchain(%struct.vqueue_info*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
