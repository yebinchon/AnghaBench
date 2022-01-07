; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_ahci.c_handle_atapi_identify.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_ahci.c_handle_atapi_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_port = type { i8*, i32, i32, i32 }

@ATA_E_ABORT = common dso_local global i32 0, align 4
@ATA_S_READY = common dso_local global i32 0, align 4
@ATA_S_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"001\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"BHYVE SATA DVD ROM\00", align 1
@ATA_WDMA0 = common dso_local global i32 0, align 4
@ATA_SATA_GEN1 = common dso_local global i32 0, align 4
@ATA_SATA_GEN2 = common dso_local global i32 0, align 4
@ATA_SATA_GEN3 = common dso_local global i32 0, align 4
@ATA_SS_SPD_MASK = common dso_local global i32 0, align 4
@ATA_SUPPORT_POWERMGT = common dso_local global i32 0, align 4
@ATA_SUPPORT_PACKET = common dso_local global i32 0, align 4
@ATA_SUPPORT_RESET = common dso_local global i32 0, align 4
@ATA_SUPPORT_NOP = common dso_local global i32 0, align 4
@ATA_UDMA0 = common dso_local global i32 0, align 4
@ATA_S_DSC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahci_port*, i32, i32*)* @handle_atapi_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_atapi_identify(%struct.ahci_port* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ahci_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca [256 x i32], align 16
  store %struct.ahci_port* %0, %struct.ahci_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %9 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %3
  %13 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* @ATA_E_ABORT, align 4
  %17 = shl i32 %16, 8
  %18 = load i32, i32* @ATA_S_READY, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @ATA_S_ERROR, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @ahci_write_fis_d2h(%struct.ahci_port* %13, i32 %14, i32* %15, i32 %21)
  br label %137

23:                                               ; preds = %3
  %24 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 0
  %25 = call i32 @memset(i32* %24, i32 0, i32 1024)
  %26 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 0
  store i32 34240, i32* %26, align 16
  %27 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 0
  %28 = getelementptr inbounds i32, i32* %27, i64 10
  %29 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %30 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @ata_string(i32* %28, i8* %31, i32 20)
  %33 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 0
  %34 = getelementptr inbounds i32, i32* %33, i64 23
  %35 = call i32 @ata_string(i32* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 8)
  %36 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 0
  %37 = getelementptr inbounds i32, i32* %36, i64 27
  %38 = call i32 @ata_string(i32* %37, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 40)
  %39 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 49
  store i32 768, i32* %39, align 4
  %40 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 50
  store i32 16385, i32* %40, align 8
  %41 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 53
  store i32 6, i32* %41, align 4
  %42 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 62
  store i32 63, i32* %42, align 8
  %43 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 63
  store i32 7, i32* %43, align 4
  %44 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %45 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @ATA_WDMA0, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %23
  %51 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %52 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %53, 7
  %55 = add nsw i32 %54, 8
  %56 = shl i32 1, %55
  %57 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 63
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %56
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %50, %23
  %61 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 64
  store i32 3, i32* %61, align 16
  %62 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 65
  store i32 120, i32* %62, align 4
  %63 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 66
  store i32 120, i32* %63, align 8
  %64 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 67
  store i32 120, i32* %64, align 4
  %65 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 68
  store i32 120, i32* %65, align 16
  %66 = load i32, i32* @ATA_SATA_GEN1, align 4
  %67 = load i32, i32* @ATA_SATA_GEN2, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @ATA_SATA_GEN3, align 4
  %70 = or i32 %68, %69
  %71 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 76
  store i32 %70, i32* %71, align 16
  %72 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %73 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @ATA_SS_SPD_MASK, align 4
  %76 = and i32 %74, %75
  %77 = ashr i32 %76, 3
  %78 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 77
  store i32 %77, i32* %78, align 4
  %79 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 78
  store i32 32, i32* %79, align 8
  %80 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 80
  store i32 1008, i32* %80, align 16
  %81 = load i32, i32* @ATA_SUPPORT_POWERMGT, align 4
  %82 = load i32, i32* @ATA_SUPPORT_PACKET, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @ATA_SUPPORT_RESET, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @ATA_SUPPORT_NOP, align 4
  %87 = or i32 %85, %86
  %88 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 82
  store i32 %87, i32* %88, align 8
  %89 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 83
  store i32 16384, i32* %89, align 4
  %90 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 84
  store i32 16384, i32* %90, align 16
  %91 = load i32, i32* @ATA_SUPPORT_POWERMGT, align 4
  %92 = load i32, i32* @ATA_SUPPORT_PACKET, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @ATA_SUPPORT_RESET, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @ATA_SUPPORT_NOP, align 4
  %97 = or i32 %95, %96
  %98 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 85
  store i32 %97, i32* %98, align 4
  %99 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 87
  store i32 16384, i32* %99, align 4
  %100 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 88
  store i32 127, i32* %100, align 16
  %101 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %102 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @ATA_UDMA0, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %60
  %108 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %109 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = and i32 %110, 7
  %112 = add nsw i32 %111, 8
  %113 = shl i32 1, %112
  %114 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 88
  %115 = load i32, i32* %114, align 16
  %116 = or i32 %115, %113
  store i32 %116, i32* %114, align 16
  br label %117

117:                                              ; preds = %107, %60
  %118 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 222
  store i32 4128, i32* %118, align 8
  %119 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 255
  store i32 165, i32* %119, align 4
  %120 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 0
  %121 = call i32 @ahci_checksum(i32* %120, i32 1024)
  %122 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %123 = call i32 @ahci_write_fis_piosetup(%struct.ahci_port* %122)
  %124 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %125 = load i32, i32* %5, align 4
  %126 = load i32*, i32** %6, align 8
  %127 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 0
  %128 = bitcast i32* %127 to i8*
  %129 = call i32 @write_prdt(%struct.ahci_port* %124, i32 %125, i32* %126, i8* %128, i32 1024)
  %130 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %131 = load i32, i32* %5, align 4
  %132 = load i32*, i32** %6, align 8
  %133 = load i32, i32* @ATA_S_DSC, align 4
  %134 = load i32, i32* @ATA_S_READY, align 4
  %135 = or i32 %133, %134
  %136 = call i32 @ahci_write_fis_d2h(%struct.ahci_port* %130, i32 %131, i32* %132, i32 %135)
  br label %137

137:                                              ; preds = %117, %12
  ret void
}

declare dso_local i32 @ahci_write_fis_d2h(%struct.ahci_port*, i32, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ata_string(i32*, i8*, i32) #1

declare dso_local i32 @ahci_checksum(i32*, i32) #1

declare dso_local i32 @ahci_write_fis_piosetup(%struct.ahci_port*) #1

declare dso_local i32 @write_prdt(%struct.ahci_port*, i32, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
