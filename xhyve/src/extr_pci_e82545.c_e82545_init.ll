; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_e82545.c_e82545_init.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_e82545.c_e82545_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinst = type { %struct.e82545_softc* }
%struct.e82545_softc = type { %struct.TYPE_2__*, i32, i32, i32, i32, %struct.pci_devinst* }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [27 x i8] c"Loading with options: %s\0D\0A\00", align 1
@e82545_tx_thread = common dso_local global i32 0, align 4
@PCIR_DEVICE = common dso_local global i32 0, align 4
@E82545_DEV_ID_82545EM_COPPER = common dso_local global i32 0, align 4
@PCIR_VENDOR = common dso_local global i32 0, align 4
@E82545_VENDOR_ID_INTEL = common dso_local global i32 0, align 4
@PCIR_CLASS = common dso_local global i32 0, align 4
@PCIC_NETWORK = common dso_local global i32 0, align 4
@PCIR_SUBCLASS = common dso_local global i32 0, align 4
@PCIS_NETWORK_ETHERNET = common dso_local global i32 0, align 4
@PCIR_SUBDEV_0 = common dso_local global i32 0, align 4
@E82545_SUBDEV_ID = common dso_local global i32 0, align 4
@PCIR_SUBVEND_0 = common dso_local global i32 0, align 4
@PCIR_HDRTYPE = common dso_local global i32 0, align 4
@PCIM_HDRTYPE_NORMAL = common dso_local global i32 0, align 4
@PCIR_INTPIN = common dso_local global i32 0, align 4
@E82545_BAR_REGISTER = common dso_local global i32 0, align 4
@PCIBAR_MEM32 = common dso_local global i32 0, align 4
@E82545_BAR_REGISTER_LEN = common dso_local global i32 0, align 4
@E82545_BAR_FLASH = common dso_local global i32 0, align 4
@E82545_BAR_FLASH_LEN = common dso_local global i32 0, align 4
@E82545_BAR_IO = common dso_local global i32 0, align 4
@PCIBAR_IO = common dso_local global i32 0, align 4
@E82545_BAR_IO_LEN = common dso_local global i32 0, align 4
@print_mac = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"MAC: %02x:%02x:%02x:%02x:%02x:%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_devinst*, i8*)* @e82545_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e82545_init(%struct.pci_devinst* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_devinst*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.e82545_softc*, align 8
  store %struct.pci_devinst* %0, %struct.pci_devinst** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i32 @DPRINTF(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %7)
  %9 = call %struct.e82545_softc* @calloc(i32 1, i32 32)
  store %struct.e82545_softc* %9, %struct.e82545_softc** %6, align 8
  %10 = load %struct.e82545_softc*, %struct.e82545_softc** %6, align 8
  %11 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %12 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %11, i32 0, i32 0
  store %struct.e82545_softc* %10, %struct.e82545_softc** %12, align 8
  %13 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %14 = load %struct.e82545_softc*, %struct.e82545_softc** %6, align 8
  %15 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %14, i32 0, i32 5
  store %struct.pci_devinst* %13, %struct.pci_devinst** %15, align 8
  %16 = load %struct.e82545_softc*, %struct.e82545_softc** %6, align 8
  %17 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %16, i32 0, i32 4
  %18 = call i32 @pthread_mutex_init(i32* %17, i32* null)
  %19 = load %struct.e82545_softc*, %struct.e82545_softc** %6, align 8
  %20 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %19, i32 0, i32 3
  %21 = call i32 @pthread_cond_init(i32* %20, i32* null)
  %22 = load %struct.e82545_softc*, %struct.e82545_softc** %6, align 8
  %23 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %22, i32 0, i32 2
  %24 = call i32 @pthread_cond_init(i32* %23, i32* null)
  %25 = load %struct.e82545_softc*, %struct.e82545_softc** %6, align 8
  %26 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %25, i32 0, i32 1
  %27 = load i32, i32* @e82545_tx_thread, align 4
  %28 = load %struct.e82545_softc*, %struct.e82545_softc** %6, align 8
  %29 = call i32 @pthread_create(i32* %26, i32* null, i32 %27, %struct.e82545_softc* %28)
  %30 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %31 = load i32, i32* @PCIR_DEVICE, align 4
  %32 = load i32, i32* @E82545_DEV_ID_82545EM_COPPER, align 4
  %33 = call i32 @pci_set_cfgdata16(%struct.pci_devinst* %30, i32 %31, i32 %32)
  %34 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %35 = load i32, i32* @PCIR_VENDOR, align 4
  %36 = load i32, i32* @E82545_VENDOR_ID_INTEL, align 4
  %37 = call i32 @pci_set_cfgdata16(%struct.pci_devinst* %34, i32 %35, i32 %36)
  %38 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %39 = load i32, i32* @PCIR_CLASS, align 4
  %40 = load i32, i32* @PCIC_NETWORK, align 4
  %41 = call i32 @pci_set_cfgdata8(%struct.pci_devinst* %38, i32 %39, i32 %40)
  %42 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %43 = load i32, i32* @PCIR_SUBCLASS, align 4
  %44 = load i32, i32* @PCIS_NETWORK_ETHERNET, align 4
  %45 = call i32 @pci_set_cfgdata8(%struct.pci_devinst* %42, i32 %43, i32 %44)
  %46 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %47 = load i32, i32* @PCIR_SUBDEV_0, align 4
  %48 = load i32, i32* @E82545_SUBDEV_ID, align 4
  %49 = call i32 @pci_set_cfgdata16(%struct.pci_devinst* %46, i32 %47, i32 %48)
  %50 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %51 = load i32, i32* @PCIR_SUBVEND_0, align 4
  %52 = load i32, i32* @E82545_VENDOR_ID_INTEL, align 4
  %53 = call i32 @pci_set_cfgdata16(%struct.pci_devinst* %50, i32 %51, i32 %52)
  %54 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %55 = load i32, i32* @PCIR_HDRTYPE, align 4
  %56 = load i32, i32* @PCIM_HDRTYPE_NORMAL, align 4
  %57 = call i32 @pci_set_cfgdata8(%struct.pci_devinst* %54, i32 %55, i32 %56)
  %58 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %59 = load i32, i32* @PCIR_INTPIN, align 4
  %60 = call i32 @pci_set_cfgdata8(%struct.pci_devinst* %58, i32 %59, i32 1)
  %61 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %62 = call i32 @pci_lintr_request(%struct.pci_devinst* %61)
  %63 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %64 = load i32, i32* @E82545_BAR_REGISTER, align 4
  %65 = load i32, i32* @PCIBAR_MEM32, align 4
  %66 = load i32, i32* @E82545_BAR_REGISTER_LEN, align 4
  %67 = call i32 @pci_emul_alloc_bar(%struct.pci_devinst* %63, i32 %64, i32 %65, i32 %66)
  %68 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %69 = load i32, i32* @E82545_BAR_FLASH, align 4
  %70 = load i32, i32* @PCIBAR_MEM32, align 4
  %71 = load i32, i32* @E82545_BAR_FLASH_LEN, align 4
  %72 = call i32 @pci_emul_alloc_bar(%struct.pci_devinst* %68, i32 %69, i32 %70, i32 %71)
  %73 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %74 = load i32, i32* @E82545_BAR_IO, align 4
  %75 = load i32, i32* @PCIBAR_IO, align 4
  %76 = load i32, i32* @E82545_BAR_IO_LEN, align 4
  %77 = call i32 @pci_emul_alloc_bar(%struct.pci_devinst* %73, i32 %74, i32 %75, i32 %76)
  %78 = load %struct.e82545_softc*, %struct.e82545_softc** %6, align 8
  %79 = call i32 @vmn_create(%struct.e82545_softc* %78)
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %82

81:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %133

82:                                               ; preds = %2
  %83 = load i32, i32* @print_mac, align 4
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %130

85:                                               ; preds = %82
  %86 = load %struct.e82545_softc*, %struct.e82545_softc** %6, align 8
  %87 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.e82545_softc*, %struct.e82545_softc** %6, align 8
  %94 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %93, i32 0, i32 0
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.e82545_softc*, %struct.e82545_softc** %6, align 8
  %101 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.e82545_softc*, %struct.e82545_softc** %6, align 8
  %108 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %107, i32 0, i32 0
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 3
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.e82545_softc*, %struct.e82545_softc** %6, align 8
  %115 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %114, i32 0, i32 0
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 4
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.e82545_softc*, %struct.e82545_softc** %6, align 8
  %122 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %121, i32 0, i32 0
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 5
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %92, i32 %99, i32 %106, i32 %113, i32 %120, i32 %127)
  %129 = call i32 @exit(i32 0) #3
  unreachable

130:                                              ; preds = %82
  %131 = load %struct.e82545_softc*, %struct.e82545_softc** %6, align 8
  %132 = call i32 @e82545_reset(%struct.e82545_softc* %131, i32 0)
  store i32 0, i32* %3, align 4
  br label %133

133:                                              ; preds = %130, %81
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i32 @DPRINTF(i8*, i8*) #1

declare dso_local %struct.e82545_softc* @calloc(i32, i32) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @pthread_cond_init(i32*, i32*) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.e82545_softc*) #1

declare dso_local i32 @pci_set_cfgdata16(%struct.pci_devinst*, i32, i32) #1

declare dso_local i32 @pci_set_cfgdata8(%struct.pci_devinst*, i32, i32) #1

declare dso_local i32 @pci_lintr_request(%struct.pci_devinst*) #1

declare dso_local i32 @pci_emul_alloc_bar(%struct.pci_devinst*, i32, i32, i32) #1

declare dso_local i32 @vmn_create(%struct.e82545_softc*) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @e82545_reset(%struct.e82545_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
