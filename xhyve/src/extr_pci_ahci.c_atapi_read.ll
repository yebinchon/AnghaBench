; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_ahci.c_atapi_read.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_ahci.c_atapi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_port = type { i32, i32, i32, i32, i64, %struct.pci_ahci_softc* }
%struct.pci_ahci_softc = type { i32 }
%struct.ahci_ioreq = type { i64*, i32, i32, i32, %struct.blockif_req }
%struct.blockif_req = type { i64 }
%struct.ahci_cmd_hdr = type { i32 }
%struct.ahci_prdt_entry = type { i32 }

@AHCI_CL_SIZE = common dso_local global i32 0, align 4
@READ_10 = common dso_local global i64 0, align 8
@ATA_I_CMD = common dso_local global i64 0, align 8
@ATA_I_IN = common dso_local global i64 0, align 8
@ATA_S_READY = common dso_local global i32 0, align 4
@ATA_S_DSC = common dso_local global i32 0, align 4
@io_flist = common dso_local global i32 0, align 4
@io_blist = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahci_port*, i32, i64*, i32)* @atapi_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atapi_read(%struct.ahci_port* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca %struct.ahci_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ahci_ioreq*, align 8
  %10 = alloca %struct.ahci_cmd_hdr*, align 8
  %11 = alloca %struct.ahci_prdt_entry*, align 8
  %12 = alloca %struct.blockif_req*, align 8
  %13 = alloca %struct.pci_ahci_softc*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ahci_port* %0, %struct.ahci_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  %18 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %19 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %18, i32 0, i32 5
  %20 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %19, align 8
  store %struct.pci_ahci_softc* %20, %struct.pci_ahci_softc** %13, align 8
  %21 = load i64*, i64** %7, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 64
  store i64* %22, i64** %14, align 8
  %23 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %24 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @AHCI_CL_SIZE, align 4
  %28 = mul nsw i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %25, %29
  %31 = inttoptr i64 %30 to i8*
  %32 = bitcast i8* %31 to %struct.ahci_cmd_hdr*
  store %struct.ahci_cmd_hdr* %32, %struct.ahci_cmd_hdr** %10, align 8
  %33 = load i64*, i64** %7, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 128
  %35 = bitcast i64* %34 to i8*
  %36 = bitcast i8* %35 to %struct.ahci_prdt_entry*
  store %struct.ahci_prdt_entry* %36, %struct.ahci_prdt_entry** %11, align 8
  %37 = load i64*, i64** %14, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 2
  %39 = call i32 @be32dec(i64* %38)
  store i32 %39, i32* %15, align 4
  %40 = load i64*, i64** %14, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @READ_10, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %4
  %46 = load i64*, i64** %14, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 7
  %48 = call i32 @be16dec(i64* %47)
  store i32 %48, i32* %16, align 4
  br label %53

49:                                               ; preds = %4
  %50 = load i64*, i64** %14, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 6
  %52 = call i32 @be32dec(i64* %51)
  store i32 %52, i32* %16, align 4
  br label %53

53:                                               ; preds = %49, %45
  %54 = load i32, i32* %16, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %53
  %57 = load i64*, i64** %7, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 4
  %59 = load i64, i64* %58, align 8
  %60 = and i64 %59, -8
  %61 = load i64, i64* @ATA_I_CMD, align 8
  %62 = or i64 %60, %61
  %63 = load i64, i64* @ATA_I_IN, align 8
  %64 = or i64 %62, %63
  %65 = load i64*, i64** %7, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 4
  store i64 %64, i64* %66, align 8
  %67 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i64*, i64** %7, align 8
  %70 = load i32, i32* @ATA_S_READY, align 4
  %71 = load i32, i32* @ATA_S_DSC, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @ahci_write_fis_d2h(%struct.ahci_port* %67, i32 %68, i64* %69, i32 %72)
  br label %74

74:                                               ; preds = %56, %53
  %75 = load i32, i32* %15, align 4
  %76 = mul nsw i32 %75, 2048
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %16, align 4
  %78 = mul nsw i32 %77, 2048
  store i32 %78, i32* %16, align 4
  %79 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %80 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %79, i32 0, i32 3
  %81 = call %struct.ahci_ioreq* @STAILQ_FIRST(i32* %80)
  store %struct.ahci_ioreq* %81, %struct.ahci_ioreq** %9, align 8
  %82 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %9, align 8
  %83 = icmp ne %struct.ahci_ioreq* %82, null
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert(i32 %84)
  %86 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %87 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %86, i32 0, i32 3
  %88 = load i32, i32* @io_flist, align 4
  %89 = call i32 @STAILQ_REMOVE_HEAD(i32* %87, i32 %88)
  %90 = load i64*, i64** %7, align 8
  %91 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %9, align 8
  %92 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %91, i32 0, i32 0
  store i64* %90, i64** %92, align 8
  %93 = load i32, i32* %6, align 4
  %94 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %9, align 8
  %95 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* %16, align 4
  %97 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %9, align 8
  %98 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %9, align 8
  %101 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 8
  %102 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %9, align 8
  %103 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %102, i32 0, i32 4
  store %struct.blockif_req* %103, %struct.blockif_req** %12, align 8
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %104, %105
  %107 = sext i32 %106 to i64
  %108 = load %struct.blockif_req*, %struct.blockif_req** %12, align 8
  %109 = getelementptr inbounds %struct.blockif_req, %struct.blockif_req* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  %110 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %111 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %9, align 8
  %112 = load %struct.ahci_prdt_entry*, %struct.ahci_prdt_entry** %11, align 8
  %113 = load %struct.ahci_cmd_hdr*, %struct.ahci_cmd_hdr** %10, align 8
  %114 = getelementptr inbounds %struct.ahci_cmd_hdr, %struct.ahci_cmd_hdr* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @ahci_build_iov(%struct.ahci_port* %110, %struct.ahci_ioreq* %111, %struct.ahci_prdt_entry* %112, i32 %115)
  %117 = load i32, i32* %6, align 4
  %118 = shl i32 1, %117
  %119 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %120 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 8
  %123 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %124 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %123, i32 0, i32 2
  %125 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %9, align 8
  %126 = load i32, i32* @io_blist, align 4
  %127 = call i32 @TAILQ_INSERT_HEAD(i32* %124, %struct.ahci_ioreq* %125, i32 %126)
  %128 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %129 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.blockif_req*, %struct.blockif_req** %12, align 8
  %132 = call i32 @blockif_read(i32 %130, %struct.blockif_req* %131)
  store i32 %132, i32* %17, align 4
  %133 = load i32, i32* %17, align 4
  %134 = icmp eq i32 %133, 0
  %135 = zext i1 %134 to i32
  %136 = call i32 @assert(i32 %135)
  ret void
}

declare dso_local i32 @be32dec(i64*) #1

declare dso_local i32 @be16dec(i64*) #1

declare dso_local i32 @ahci_write_fis_d2h(%struct.ahci_port*, i32, i64*, i32) #1

declare dso_local %struct.ahci_ioreq* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @ahci_build_iov(%struct.ahci_port*, %struct.ahci_ioreq*, %struct.ahci_prdt_entry*, i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.ahci_ioreq*, i32) #1

declare dso_local i32 @blockif_read(i32, %struct.blockif_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
