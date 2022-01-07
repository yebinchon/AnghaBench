; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_ahci.c_ahci_handle_flush.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_ahci.c_ahci_handle_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_port = type { i32, i32, i32, i32 }
%struct.ahci_ioreq = type { i32, %struct.blockif_req, i64, i64, i64, i32* }
%struct.blockif_req = type { i32 }

@io_flist = common dso_local global i32 0, align 4
@io_blist = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahci_port*, i32, i32*)* @ahci_handle_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahci_handle_flush(%struct.ahci_port* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ahci_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ahci_ioreq*, align 8
  %8 = alloca %struct.blockif_req*, align 8
  %9 = alloca i32, align 4
  store %struct.ahci_port* %0, %struct.ahci_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %11 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %10, i32 0, i32 3
  %12 = call %struct.ahci_ioreq* @STAILQ_FIRST(i32* %11)
  store %struct.ahci_ioreq* %12, %struct.ahci_ioreq** %7, align 8
  %13 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %7, align 8
  %14 = icmp ne %struct.ahci_ioreq* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %18 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %17, i32 0, i32 3
  %19 = load i32, i32* @io_flist, align 4
  %20 = call i32 @STAILQ_REMOVE_HEAD(i32* %18, i32 %19)
  %21 = load i32*, i32** %6, align 8
  %22 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %7, align 8
  %23 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %22, i32 0, i32 5
  store i32* %21, i32** %23, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %7, align 8
  %26 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %7, align 8
  %28 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %27, i32 0, i32 4
  store i64 0, i64* %28, align 8
  %29 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %7, align 8
  %30 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %29, i32 0, i32 3
  store i64 0, i64* %30, align 8
  %31 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %7, align 8
  %32 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %7, align 8
  %34 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %33, i32 0, i32 1
  store %struct.blockif_req* %34, %struct.blockif_req** %8, align 8
  %35 = load i32, i32* %5, align 4
  %36 = shl i32 1, %35
  %37 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %38 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %42 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %41, i32 0, i32 2
  %43 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %7, align 8
  %44 = load i32, i32* @io_blist, align 4
  %45 = call i32 @TAILQ_INSERT_HEAD(i32* %42, %struct.ahci_ioreq* %43, i32 %44)
  %46 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %47 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.blockif_req*, %struct.blockif_req** %8, align 8
  %50 = call i32 @blockif_flush(i32 %48, %struct.blockif_req* %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp eq i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  ret void
}

declare dso_local %struct.ahci_ioreq* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.ahci_ioreq*, i32) #1

declare dso_local i32 @blockif_flush(i32, %struct.blockif_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
