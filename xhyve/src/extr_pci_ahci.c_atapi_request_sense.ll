; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_ahci.c_atapi_request_sense.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_ahci.c_atapi_request_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_port = type { i32, i32 }

@ATA_I_CMD = common dso_local global i32 0, align 4
@ATA_I_IN = common dso_local global i32 0, align 4
@ATA_S_READY = common dso_local global i32 0, align 4
@ATA_S_DSC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahci_port*, i32, i32*)* @atapi_request_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atapi_request_sense(%struct.ahci_port* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ahci_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca [64 x i32], align 16
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.ahci_port* %0, %struct.ahci_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 64
  store i32* %11, i32** %8, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 4
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ugt i64 %16, 256
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 256, i32* %9, align 4
  br label %19

19:                                               ; preds = %18, %3
  %20 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 0
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @memset(i32* %20, i32 0, i32 %21)
  %23 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 0
  store i32 240, i32* %23, align 16
  %24 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %25 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 2
  store i32 %26, i32* %27, align 8
  %28 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 7
  store i32 10, i32* %28, align 4
  %29 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %30 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 12
  store i32 %31, i32* %32, align 16
  %33 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 0
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @write_prdt(%struct.ahci_port* %33, i32 %34, i32* %35, i32* %36, i32 %37)
  %39 = load i32*, i32** %6, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 4
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, -8
  %43 = load i32, i32* @ATA_I_CMD, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @ATA_I_IN, align 4
  %46 = or i32 %44, %45
  %47 = load i32*, i32** %6, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 4
  store i32 %46, i32* %48, align 4
  %49 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* @ATA_S_READY, align 4
  %53 = load i32, i32* @ATA_S_DSC, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @ahci_write_fis_d2h(%struct.ahci_port* %49, i32 %50, i32* %51, i32 %54)
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @write_prdt(%struct.ahci_port*, i32, i32*, i32*, i32) #1

declare dso_local i32 @ahci_write_fis_d2h(%struct.ahci_port*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
