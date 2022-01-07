; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_e82545.c_e82545_init_eeprom.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_e82545.c_e82545_init_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e82545_softc = type { i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@NVM_MAC_ADDR = common dso_local global i64 0, align 8
@E82545_SUBDEV_ID = common dso_local global i64 0, align 8
@NVM_SUB_DEV_ID = common dso_local global i64 0, align 8
@E82545_VENDOR_ID_INTEL = common dso_local global i8* null, align 8
@NVM_SUB_VEN_ID = common dso_local global i64 0, align 8
@E82545_DEV_ID_82545EM_COPPER = common dso_local global i64 0, align 8
@NVM_DEV_ID = common dso_local global i64 0, align 8
@NVM_VEN_ID = common dso_local global i64 0, align 8
@NVM_CHECKSUM_REG = common dso_local global i64 0, align 8
@NVM_SUM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"eeprom checksum: 0x%x\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e82545_softc*)* @e82545_init_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e82545_init_eeprom(%struct.e82545_softc* %0) #0 {
  %2 = alloca %struct.e82545_softc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.e82545_softc* %0, %struct.e82545_softc** %2, align 8
  %5 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %6 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %13 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 %18, 8
  %20 = or i32 %11, %19
  %21 = sext i32 %20 to i64
  %22 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %23 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i64, i64* @NVM_MAC_ADDR, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  store i64 %21, i64* %26, align 8
  %27 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %28 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %35 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 3
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 8
  %42 = or i32 %33, %41
  %43 = sext i32 %42 to i64
  %44 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %45 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* @NVM_MAC_ADDR, align 8
  %48 = add i64 %47, 1
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  store i64 %43, i64* %49, align 8
  %50 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %51 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 4
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %58 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 5
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 %63, 8
  %65 = or i32 %56, %64
  %66 = sext i32 %65 to i64
  %67 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %68 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = load i64, i64* @NVM_MAC_ADDR, align 8
  %71 = add i64 %70, 2
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  store i64 %66, i64* %72, align 8
  %73 = load i64, i64* @E82545_SUBDEV_ID, align 8
  %74 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %75 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = load i64, i64* @NVM_SUB_DEV_ID, align 8
  %78 = getelementptr inbounds i64, i64* %76, i64 %77
  store i64 %73, i64* %78, align 8
  %79 = load i8*, i8** @E82545_VENDOR_ID_INTEL, align 8
  %80 = ptrtoint i8* %79 to i64
  %81 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %82 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = load i64, i64* @NVM_SUB_VEN_ID, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  store i64 %80, i64* %85, align 8
  %86 = load i64, i64* @E82545_DEV_ID_82545EM_COPPER, align 8
  %87 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %88 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %87, i32 0, i32 0
  %89 = load i64*, i64** %88, align 8
  %90 = load i64, i64* @NVM_DEV_ID, align 8
  %91 = getelementptr inbounds i64, i64* %89, i64 %90
  store i64 %86, i64* %91, align 8
  %92 = load i8*, i8** @E82545_VENDOR_ID_INTEL, align 8
  %93 = ptrtoint i8* %92 to i64
  %94 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %95 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = load i64, i64* @NVM_VEN_ID, align 8
  %98 = getelementptr inbounds i64, i64* %96, i64 %97
  store i64 %93, i64* %98, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %99

99:                                               ; preds = %112, %1
  %100 = load i64, i64* %4, align 8
  %101 = load i64, i64* @NVM_CHECKSUM_REG, align 8
  %102 = icmp ult i64 %100, %101
  br i1 %102, label %103, label %115

103:                                              ; preds = %99
  %104 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %105 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %104, i32 0, i32 0
  %106 = load i64*, i64** %105, align 8
  %107 = load i64, i64* %4, align 8
  %108 = getelementptr inbounds i64, i64* %106, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %3, align 8
  %111 = add i64 %110, %109
  store i64 %111, i64* %3, align 8
  br label %112

112:                                              ; preds = %103
  %113 = load i64, i64* %4, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %4, align 8
  br label %99

115:                                              ; preds = %99
  %116 = load i64, i64* @NVM_SUM, align 8
  %117 = load i64, i64* %3, align 8
  %118 = sub i64 %116, %117
  store i64 %118, i64* %3, align 8
  %119 = load i64, i64* %3, align 8
  %120 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %121 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %120, i32 0, i32 0
  %122 = load i64*, i64** %121, align 8
  %123 = load i64, i64* @NVM_CHECKSUM_REG, align 8
  %124 = getelementptr inbounds i64, i64* %122, i64 %123
  store i64 %119, i64* %124, align 8
  %125 = load i64, i64* %3, align 8
  %126 = call i32 @DPRINTF(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %125)
  ret void
}

declare dso_local i32 @DPRINTF(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
