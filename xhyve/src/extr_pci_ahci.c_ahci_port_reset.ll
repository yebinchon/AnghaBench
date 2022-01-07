; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_ahci.c_ahci_port_reset.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_ahci.c_ahci_port_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_port = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }

@ATA_UDMA6 = common dso_local global i32 0, align 4
@ATA_SS_DET_NO_DEVICE = common dso_local global i32 0, align 4
@ATA_SS_DET_PHY_ONLINE = common dso_local global i32 0, align 4
@ATA_SS_IPM_ACTIVE = common dso_local global i32 0, align 4
@ATA_SC_SPD_MASK = common dso_local global i32 0, align 4
@ATA_SS_SPD_GEN3 = common dso_local global i32 0, align 4
@ATA_S_DSC = common dso_local global i32 0, align 4
@ATA_S_DMA = common dso_local global i32 0, align 4
@PxSIG_ATA = common dso_local global i32 0, align 4
@ATA_S_READY = common dso_local global i32 0, align 4
@PxSIG_ATAPI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahci_port*)* @ahci_port_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahci_port_reset(%struct.ahci_port* %0) #0 {
  %2 = alloca %struct.ahci_port*, align 8
  store %struct.ahci_port* %0, %struct.ahci_port** %2, align 8
  %3 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %4 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %3, i32 0, i32 9
  store i64 0, i64* %4, align 8
  %5 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %6 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %5, i32 0, i32 8
  store i64 0, i64* %6, align 8
  %7 = load i32, i32* @ATA_UDMA6, align 4
  %8 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %9 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %8, i32 0, i32 7
  store i32 %7, i32* %9, align 4
  %10 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %11 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %10, i32 0, i32 0
  store i32 128, i32* %11, align 8
  %12 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %13 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ATA_SS_DET_NO_DEVICE, align 4
  %18 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %19 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %21 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %20, i32 0, i32 2
  store i32 -1, i32* %21, align 8
  %22 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %23 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %22, i32 0, i32 3
  store i32 127, i32* %23, align 4
  br label %79

24:                                               ; preds = %1
  %25 = load i32, i32* @ATA_SS_DET_PHY_ONLINE, align 4
  %26 = load i32, i32* @ATA_SS_IPM_ACTIVE, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %29 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %31 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @ATA_SC_SPD_MASK, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %24
  %37 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %38 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @ATA_SC_SPD_MASK, align 4
  %41 = and i32 %39, %40
  %42 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %43 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %52

46:                                               ; preds = %24
  %47 = load i32, i32* @ATA_SS_SPD_GEN3, align 4
  %48 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %49 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %46, %36
  %53 = load i32, i32* @ATA_S_DSC, align 4
  %54 = or i32 256, %53
  %55 = load i32, i32* @ATA_S_DMA, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %58 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %60 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %52
  %64 = load i32, i32* @PxSIG_ATA, align 4
  %65 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %66 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* @ATA_S_READY, align 4
  %68 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %69 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %76

72:                                               ; preds = %52
  %73 = load i32, i32* @PxSIG_ATAPI, align 4
  %74 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %75 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  br label %76

76:                                               ; preds = %72, %63
  %77 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %78 = call i32 @ahci_write_reset_fis_d2h(%struct.ahci_port* %77)
  br label %79

79:                                               ; preds = %76, %16
  ret void
}

declare dso_local i32 @ahci_write_reset_fis_d2h(%struct.ahci_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
