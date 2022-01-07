; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_ahci.c_atapi_read_capacity.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_ahci.c_atapi_read_capacity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_port = type { i32 }

@ATA_I_CMD = common dso_local global i32 0, align 4
@ATA_I_IN = common dso_local global i32 0, align 4
@ATA_S_READY = common dso_local global i32 0, align 4
@ATA_S_DSC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahci_port*, i32, i32*)* @atapi_read_capacity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atapi_read_capacity(%struct.ahci_port* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ahci_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca [8 x i32], align 16
  %8 = alloca i32, align 4
  store %struct.ahci_port* %0, %struct.ahci_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %10 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @blockif_size(i32 %11)
  %13 = sdiv i32 %12, 2048
  store i32 %13, i32* %8, align 4
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %15 = load i32, i32* %8, align 4
  %16 = sub nsw i32 %15, 1
  %17 = call i32 @be32enc(i32* %14, i32 %16)
  %18 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %19 = getelementptr inbounds i32, i32* %18, i64 4
  %20 = call i32 @be32enc(i32* %19, i32 2048)
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 4
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, -8
  %25 = load i32, i32* @ATA_I_CMD, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @ATA_I_IN, align 4
  %28 = or i32 %26, %27
  %29 = load i32*, i32** %6, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 4
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %35 = call i32 @write_prdt(%struct.ahci_port* %31, i32 %32, i32* %33, i32* %34, i32 32)
  %36 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* @ATA_S_READY, align 4
  %40 = load i32, i32* @ATA_S_DSC, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @ahci_write_fis_d2h(%struct.ahci_port* %36, i32 %37, i32* %38, i32 %41)
  ret void
}

declare dso_local i32 @blockif_size(i32) #1

declare dso_local i32 @be32enc(i32*, i32) #1

declare dso_local i32 @write_prdt(%struct.ahci_port*, i32, i32*, i32*, i32) #1

declare dso_local i32 @ahci_write_fis_d2h(%struct.ahci_port*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
