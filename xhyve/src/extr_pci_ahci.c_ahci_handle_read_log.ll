; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_ahci.c_ahci_handle_read_log.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_ahci.c_ahci_handle_read_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_port = type { i32, i64, i64 }
%struct.ahci_cmd_hdr = type { i64 }

@AHCI_CL_SIZE = common dso_local global i32 0, align 4
@ATA_E_ABORT = common dso_local global i32 0, align 4
@ATA_S_READY = common dso_local global i32 0, align 4
@ATA_S_ERROR = common dso_local global i32 0, align 4
@ATA_READ_LOG_EXT = common dso_local global i32 0, align 4
@ATA_S_DSC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahci_port*, i32, i32*)* @ahci_handle_read_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahci_handle_read_log(%struct.ahci_port* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ahci_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ahci_cmd_hdr*, align 8
  %8 = alloca [512 x i32], align 16
  store %struct.ahci_port* %0, %struct.ahci_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %10 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @AHCI_CL_SIZE, align 4
  %14 = mul nsw i32 %12, %13
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %11, %15
  %17 = inttoptr i64 %16 to i8*
  %18 = bitcast i8* %17 to %struct.ahci_cmd_hdr*
  store %struct.ahci_cmd_hdr* %18, %struct.ahci_cmd_hdr** %7, align 8
  %19 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %20 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %53, label %23

23:                                               ; preds = %3
  %24 = load %struct.ahci_cmd_hdr*, %struct.ahci_cmd_hdr** %7, align 8
  %25 = getelementptr inbounds %struct.ahci_cmd_hdr, %struct.ahci_cmd_hdr* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %53, label %28

28:                                               ; preds = %23
  %29 = load i32*, i32** %6, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 4
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 16
  br i1 %32, label %53, label %33

33:                                               ; preds = %28
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 5
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %53, label %38

38:                                               ; preds = %33
  %39 = load i32*, i32** %6, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 9
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %38
  %44 = load i32*, i32** %6, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 12
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 1
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load i32*, i32** %6, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 13
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %48, %43, %38, %33, %28, %23, %3
  %54 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* @ATA_E_ABORT, align 4
  %58 = shl i32 %57, 8
  %59 = load i32, i32* @ATA_S_READY, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @ATA_S_ERROR, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @ahci_write_fis_d2h(%struct.ahci_port* %54, i32 %55, i32* %56, i32 %62)
  br label %96

64:                                               ; preds = %48
  %65 = getelementptr inbounds [512 x i32], [512 x i32]* %8, i64 0, i64 0
  %66 = call i32 @memset(i32* %65, i32 0, i32 2048)
  %67 = getelementptr inbounds [512 x i32], [512 x i32]* %8, i64 0, i64 0
  %68 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %69 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @memcpy(i32* %67, i32 %70, i32 4)
  %72 = getelementptr inbounds [512 x i32], [512 x i32]* %8, i64 0, i64 0
  %73 = call i32 @ahci_checksum(i32* %72, i32 2048)
  %74 = load i32*, i32** %6, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @ATA_READ_LOG_EXT, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %64
  %80 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %81 = call i32 @ahci_write_fis_piosetup(%struct.ahci_port* %80)
  br label %82

82:                                               ; preds = %79, %64
  %83 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %84 = load i32, i32* %5, align 4
  %85 = load i32*, i32** %6, align 8
  %86 = getelementptr inbounds [512 x i32], [512 x i32]* %8, i64 0, i64 0
  %87 = bitcast i32* %86 to i8*
  %88 = call i32 @write_prdt(%struct.ahci_port* %83, i32 %84, i32* %85, i8* %87, i32 2048)
  %89 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %90 = load i32, i32* %5, align 4
  %91 = load i32*, i32** %6, align 8
  %92 = load i32, i32* @ATA_S_DSC, align 4
  %93 = load i32, i32* @ATA_S_READY, align 4
  %94 = or i32 %92, %93
  %95 = call i32 @ahci_write_fis_d2h(%struct.ahci_port* %89, i32 %90, i32* %91, i32 %94)
  br label %96

96:                                               ; preds = %82, %53
  ret void
}

declare dso_local i32 @ahci_write_fis_d2h(%struct.ahci_port*, i32, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @ahci_checksum(i32*, i32) #1

declare dso_local i32 @ahci_write_fis_piosetup(%struct.ahci_port*) #1

declare dso_local i32 @write_prdt(%struct.ahci_port*, i32, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
