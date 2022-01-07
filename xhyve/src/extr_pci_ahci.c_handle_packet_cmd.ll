; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_ahci.c_handle_packet_cmd.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_ahci.c_handle_packet_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_port = type { i32, i32 }

@ATA_I_CMD = common dso_local global i32 0, align 4
@ATA_I_IN = common dso_local global i32 0, align 4
@ATA_S_READY = common dso_local global i32 0, align 4
@ATA_S_DSC = common dso_local global i32 0, align 4
@ATA_SENSE_ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@ATA_S_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahci_port*, i32, i32*)* @handle_packet_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_packet_cmd(%struct.ahci_port* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ahci_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.ahci_port* %0, %struct.ahci_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 64
  store i32* %9, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %94 [
    i32 128, label %13
    i32 138, label %31
    i32 133, label %36
    i32 136, label %41
    i32 132, label %59
    i32 131, label %64
    i32 135, label %69
    i32 134, label %69
    i32 130, label %74
    i32 129, label %79
    i32 137, label %84
    i32 139, label %89
  ]

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 4
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, -8
  %18 = load i32, i32* @ATA_I_CMD, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @ATA_I_IN, align 4
  %21 = or i32 %19, %20
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 4
  store i32 %21, i32* %23, align 4
  %24 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* @ATA_S_READY, align 4
  %28 = load i32, i32* @ATA_S_DSC, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @ahci_write_fis_d2h(%struct.ahci_port* %24, i32 %25, i32* %26, i32 %29)
  br label %122

31:                                               ; preds = %3
  %32 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @atapi_inquiry(%struct.ahci_port* %32, i32 %33, i32* %34)
  br label %122

36:                                               ; preds = %3
  %37 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @atapi_read_capacity(%struct.ahci_port* %37, i32 %38, i32* %39)
  br label %122

41:                                               ; preds = %3
  %42 = load i32*, i32** %6, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 4
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, -8
  %46 = load i32, i32* @ATA_I_CMD, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @ATA_I_IN, align 4
  %49 = or i32 %47, %48
  %50 = load i32*, i32** %6, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 4
  store i32 %49, i32* %51, align 4
  %52 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* @ATA_S_READY, align 4
  %56 = load i32, i32* @ATA_S_DSC, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @ahci_write_fis_d2h(%struct.ahci_port* %52, i32 %53, i32* %54, i32 %57)
  br label %122

59:                                               ; preds = %3
  %60 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @atapi_read_toc(%struct.ahci_port* %60, i32 %61, i32* %62)
  br label %122

64:                                               ; preds = %3
  %65 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @atapi_report_luns(%struct.ahci_port* %65, i32 %66, i32* %67)
  br label %122

69:                                               ; preds = %3, %3
  %70 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %71 = load i32, i32* %5, align 4
  %72 = load i32*, i32** %6, align 8
  %73 = call i32 @atapi_read(%struct.ahci_port* %70, i32 %71, i32* %72, i32 0)
  br label %122

74:                                               ; preds = %3
  %75 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %76 = load i32, i32* %5, align 4
  %77 = load i32*, i32** %6, align 8
  %78 = call i32 @atapi_request_sense(%struct.ahci_port* %75, i32 %76, i32* %77)
  br label %122

79:                                               ; preds = %3
  %80 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %81 = load i32, i32* %5, align 4
  %82 = load i32*, i32** %6, align 8
  %83 = call i32 @atapi_start_stop_unit(%struct.ahci_port* %80, i32 %81, i32* %82)
  br label %122

84:                                               ; preds = %3
  %85 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %86 = load i32, i32* %5, align 4
  %87 = load i32*, i32** %6, align 8
  %88 = call i32 @atapi_mode_sense(%struct.ahci_port* %85, i32 %86, i32* %87)
  br label %122

89:                                               ; preds = %3
  %90 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %91 = load i32, i32* %5, align 4
  %92 = load i32*, i32** %6, align 8
  %93 = call i32 @atapi_get_event_status_notification(%struct.ahci_port* %90, i32 %91, i32* %92)
  br label %122

94:                                               ; preds = %3
  %95 = load i32*, i32** %6, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 4
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, -8
  %99 = load i32, i32* @ATA_I_CMD, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @ATA_I_IN, align 4
  %102 = or i32 %100, %101
  %103 = load i32*, i32** %6, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 4
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* @ATA_SENSE_ILLEGAL_REQUEST, align 4
  %106 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %107 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  %108 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %109 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %108, i32 0, i32 1
  store i32 32, i32* %109, align 4
  %110 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %111 = load i32, i32* %5, align 4
  %112 = load i32*, i32** %6, align 8
  %113 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %114 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = shl i32 %115, 12
  %117 = load i32, i32* @ATA_S_READY, align 4
  %118 = load i32, i32* @ATA_S_ERROR, align 4
  %119 = or i32 %117, %118
  %120 = or i32 %116, %119
  %121 = call i32 @ahci_write_fis_d2h(%struct.ahci_port* %110, i32 %111, i32* %112, i32 %120)
  br label %122

122:                                              ; preds = %94, %89, %84, %79, %74, %69, %64, %59, %41, %36, %31, %13
  ret void
}

declare dso_local i32 @ahci_write_fis_d2h(%struct.ahci_port*, i32, i32*, i32) #1

declare dso_local i32 @atapi_inquiry(%struct.ahci_port*, i32, i32*) #1

declare dso_local i32 @atapi_read_capacity(%struct.ahci_port*, i32, i32*) #1

declare dso_local i32 @atapi_read_toc(%struct.ahci_port*, i32, i32*) #1

declare dso_local i32 @atapi_report_luns(%struct.ahci_port*, i32, i32*) #1

declare dso_local i32 @atapi_read(%struct.ahci_port*, i32, i32*, i32) #1

declare dso_local i32 @atapi_request_sense(%struct.ahci_port*, i32, i32*) #1

declare dso_local i32 @atapi_start_stop_unit(%struct.ahci_port*, i32, i32*) #1

declare dso_local i32 @atapi_mode_sense(%struct.ahci_port*, i32, i32*) #1

declare dso_local i32 @atapi_get_event_status_notification(%struct.ahci_port*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
