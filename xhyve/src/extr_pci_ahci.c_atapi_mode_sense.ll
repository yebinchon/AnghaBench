; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_ahci.c_atapi_mode_sense.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_ahci.c_atapi_mode_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_port = type { i32, i32 }

@ATA_S_READY = common dso_local global i32 0, align 4
@ATA_S_DSC = common dso_local global i32 0, align 4
@ATA_SENSE_ILLEGAL_REQUEST = common dso_local global i8* null, align 8
@ATA_S_ERROR = common dso_local global i32 0, align 4
@ATA_I_CMD = common dso_local global i32 0, align 4
@ATA_I_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahci_port*, i32, i32*)* @atapi_mode_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atapi_mode_sense(%struct.ahci_port* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ahci_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [16 x i32], align 16
  %13 = alloca [30 x i32], align 16
  store %struct.ahci_port* %0, %struct.ahci_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %8, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 64
  store i32* %15, i32** %7, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 7
  %18 = call i32 @be16dec(i32* %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %21, 6
  store i32 %22, i32* %9, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 63
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %9, align 4
  switch i32 %27, label %114 [
    i32 0, label %28
    i32 3, label %83
    i32 1, label %99
    i32 2, label %99
  ]

28:                                               ; preds = %3
  %29 = load i32, i32* %10, align 4
  switch i32 %29, label %81 [
    i32 128, label %30
    i32 129, label %53
  ]

30:                                               ; preds = %28
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp ugt i64 %32, 64
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 64, i32* %11, align 4
  br label %35

35:                                               ; preds = %34, %30
  %36 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %37 = call i32 @memset(i32* %36, i32 0, i32 64)
  %38 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %39 = call i32 @be16enc(i32* %38, i32 14)
  %40 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 2
  store i32 112, i32* %40, align 8
  %41 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 8
  store i32 1, i32* %41, align 16
  %42 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 9
  store i32 6, i32* %42, align 4
  %43 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 11
  store i32 5, i32* %43, align 4
  %44 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @write_prdt(%struct.ahci_port* %44, i32 %45, i32* %46, i32* %47, i32 %48)
  %50 = load i32, i32* @ATA_S_READY, align 4
  %51 = load i32, i32* @ATA_S_DSC, align 4
  %52 = or i32 %50, %51
  store i32 %52, i32* %8, align 4
  br label %82

53:                                               ; preds = %28
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp ugt i64 %55, 120
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 120, i32* %11, align 4
  br label %58

58:                                               ; preds = %57, %53
  %59 = getelementptr inbounds [30 x i32], [30 x i32]* %13, i64 0, i64 0
  %60 = call i32 @memset(i32* %59, i32 0, i32 120)
  %61 = getelementptr inbounds [30 x i32], [30 x i32]* %13, i64 0, i64 0
  %62 = call i32 @be16enc(i32* %61, i32 28)
  %63 = getelementptr inbounds [30 x i32], [30 x i32]* %13, i64 0, i64 2
  store i32 112, i32* %63, align 8
  %64 = getelementptr inbounds [30 x i32], [30 x i32]* %13, i64 0, i64 8
  store i32 42, i32* %64, align 16
  %65 = getelementptr inbounds [30 x i32], [30 x i32]* %13, i64 0, i64 9
  store i32 20, i32* %65, align 4
  %66 = getelementptr inbounds [30 x i32], [30 x i32]* %13, i64 0, i64 10
  store i32 8, i32* %66, align 8
  %67 = getelementptr inbounds [30 x i32], [30 x i32]* %13, i64 0, i64 12
  store i32 113, i32* %67, align 16
  %68 = getelementptr inbounds [30 x i32], [30 x i32]* %13, i64 0, i64 18
  %69 = call i32 @be16enc(i32* %68, i32 2)
  %70 = getelementptr inbounds [30 x i32], [30 x i32]* %13, i64 0, i64 20
  %71 = call i32 @be16enc(i32* %70, i32 512)
  %72 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %73 = load i32, i32* %5, align 4
  %74 = load i32*, i32** %6, align 8
  %75 = getelementptr inbounds [30 x i32], [30 x i32]* %13, i64 0, i64 0
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @write_prdt(%struct.ahci_port* %72, i32 %73, i32* %74, i32* %75, i32 %76)
  %78 = load i32, i32* @ATA_S_READY, align 4
  %79 = load i32, i32* @ATA_S_DSC, align 4
  %80 = or i32 %78, %79
  store i32 %80, i32* %8, align 4
  br label %82

81:                                               ; preds = %28
  br label %98

82:                                               ; preds = %58, %35
  br label %114

83:                                               ; preds = %3
  %84 = load i8*, i8** @ATA_SENSE_ILLEGAL_REQUEST, align 8
  %85 = ptrtoint i8* %84 to i32
  %86 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %87 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  %88 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %89 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %88, i32 0, i32 1
  store i32 57, i32* %89, align 4
  %90 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %91 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = shl i32 %92, 12
  %94 = load i32, i32* @ATA_S_READY, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @ATA_S_ERROR, align 4
  %97 = or i32 %95, %96
  store i32 %97, i32* %8, align 4
  br label %114

98:                                               ; preds = %81
  br label %99

99:                                               ; preds = %3, %3, %98
  %100 = load i8*, i8** @ATA_SENSE_ILLEGAL_REQUEST, align 8
  %101 = ptrtoint i8* %100 to i32
  %102 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %103 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  %104 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %105 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %104, i32 0, i32 1
  store i32 36, i32* %105, align 4
  %106 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %107 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = shl i32 %108, 12
  %110 = load i32, i32* @ATA_S_READY, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @ATA_S_ERROR, align 4
  %113 = or i32 %111, %112
  store i32 %113, i32* %8, align 4
  br label %114

114:                                              ; preds = %3, %99, %83, %82
  %115 = load i32*, i32** %6, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 4
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %117, -8
  %119 = load i32, i32* @ATA_I_CMD, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @ATA_I_IN, align 4
  %122 = or i32 %120, %121
  %123 = load i32*, i32** %6, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 4
  store i32 %122, i32* %124, align 4
  %125 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %126 = load i32, i32* %5, align 4
  %127 = load i32*, i32** %6, align 8
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @ahci_write_fis_d2h(%struct.ahci_port* %125, i32 %126, i32* %127, i32 %128)
  ret void
}

declare dso_local i32 @be16dec(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @be16enc(i32*, i32) #1

declare dso_local i32 @write_prdt(%struct.ahci_port*, i32, i32*, i32*, i32) #1

declare dso_local i32 @ahci_write_fis_d2h(%struct.ahci_port*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
