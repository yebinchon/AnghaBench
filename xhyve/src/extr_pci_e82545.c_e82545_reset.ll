; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_e82545.c_e82545_reset.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_e82545.c_e82545_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e82545_softc = type { i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i32*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_6__*, %struct.TYPE_6__*, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i64, i32, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@E82545_NVM_MODE_OPADDR = common dso_local global i32 0, align 4
@E82545_NVM_OPADDR_BITS = common dso_local global i32 0, align 4
@E1000_EECD_PRES = common dso_local global i32 0, align 4
@E82545_EECD_FWE_EN = common dso_local global i32 0, align 4
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e82545_softc*, i32)* @e82545_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e82545_reset(%struct.e82545_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.e82545_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.e82545_softc* %0, %struct.e82545_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %7 = call i32 @e82545_rx_disable(%struct.e82545_softc* %6)
  %8 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %9 = call i32 @e82545_tx_disable(%struct.e82545_softc* %8)
  %10 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %11 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %10, i32 0, i32 48
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %16 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %15, i32 0, i32 47
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @pci_lintr_deassert(i32 %17)
  br label %19

19:                                               ; preds = %14, %2
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %19
  %23 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %24 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %23, i32 0, i32 46
  store i64 0, i64* %24, align 8
  %25 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %26 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %25, i32 0, i32 45
  store i64 0, i64* %26, align 8
  %27 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %28 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %27, i32 0, i32 44
  store i64 0, i64* %28, align 8
  %29 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %30 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %29, i32 0, i32 43
  store i64 0, i64* %30, align 8
  %31 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %32 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %31, i32 0, i32 42
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %22, %19
  %34 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %35 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %34, i32 0, i32 0
  store i32 117838594, i32* %35, align 8
  %36 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %37 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %36, i32 0, i32 1
  store i32 1048624, i32* %37, align 4
  %38 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %39 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %38, i32 0, i32 41
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* @E82545_NVM_MODE_OPADDR, align 4
  %41 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %42 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %41, i32 0, i32 40
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @E82545_NVM_OPADDR_BITS, align 4
  %44 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %45 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %44, i32 0, i32 39
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @E1000_EECD_PRES, align 4
  %47 = load i32, i32* @E82545_EECD_FWE_EN, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %50 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %52 = call i32 @e82545_init_eeprom(%struct.e82545_softc* %51)
  %53 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %54 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %53, i32 0, i32 38
  store i64 0, i64* %54, align 8
  %55 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %56 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %55, i32 0, i32 3
  store i32 250, i32* %56, align 4
  %57 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %58 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %57, i32 0, i32 37
  store i64 0, i64* %58, align 8
  %59 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %60 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %59, i32 0, i32 36
  store i64 0, i64* %60, align 8
  %61 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %62 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %61, i32 0, i32 35
  store i64 0, i64* %62, align 8
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %97, label %65

65:                                               ; preds = %33
  %66 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %67 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %66, i32 0, i32 34
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = call i32 @memset(%struct.TYPE_6__* %68, i32 0, i32 8)
  %70 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %71 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %70, i32 0, i32 33
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = call i32 @memset(%struct.TYPE_6__* %72, i32 0, i32 8)
  %74 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %75 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %74, i32 0, i32 31
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = call i32 @memset(%struct.TYPE_6__* %76, i32 0, i32 8)
  %78 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %79 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %78, i32 0, i32 31
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i64 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  store i32 1, i32* %82, align 4
  %83 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %84 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %83, i32 0, i32 31
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i64 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %91 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %90, i32 0, i32 32
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %96 = call i32 @memcpy(i32 %89, i32 %94, i32 %95)
  br label %113

97:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %98

98:                                               ; preds = %109, %97
  %99 = load i32, i32* %5, align 4
  %100 = icmp slt i32 %99, 16
  br i1 %100, label %101, label %112

101:                                              ; preds = %98
  %102 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %103 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %102, i32 0, i32 31
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  store i32 0, i32* %108, align 4
  br label %109

109:                                              ; preds = %101
  %110 = load i32, i32* %5, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %5, align 4
  br label %98

112:                                              ; preds = %98
  br label %113

113:                                              ; preds = %112, %65
  %114 = load i32, i32* %4, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %113
  %117 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %118 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %117, i32 0, i32 30
  store i64 0, i64* %118, align 8
  %119 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %120 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %119, i32 0, i32 29
  store i64 0, i64* %120, align 8
  br label %121

121:                                              ; preds = %116, %113
  %122 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %123 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %122, i32 0, i32 28
  store i64 0, i64* %123, align 8
  %124 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %125 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %124, i32 0, i32 27
  store i64 0, i64* %125, align 8
  %126 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %127 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %126, i32 0, i32 26
  store i64 0, i64* %127, align 8
  %128 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %129 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %128, i32 0, i32 25
  store i64 0, i64* %129, align 8
  %130 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %131 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %130, i32 0, i32 24
  store i64 0, i64* %131, align 8
  %132 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %133 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %132, i32 0, i32 23
  store i64 0, i64* %133, align 8
  %134 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %135 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %134, i32 0, i32 22
  store i64 0, i64* %135, align 8
  %136 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %137 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %136, i32 0, i32 4
  store i32 16842752, i32* %137, align 8
  %138 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %139 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %138, i32 0, i32 21
  store i64 0, i64* %139, align 8
  %140 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %141 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %140, i32 0, i32 20
  store i64 0, i64* %141, align 8
  %142 = load i32, i32* %4, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %157, label %144

144:                                              ; preds = %121
  %145 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %146 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %145, i32 0, i32 19
  store i64 0, i64* %146, align 8
  %147 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %148 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %147, i32 0, i32 18
  store i64 0, i64* %148, align 8
  %149 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %150 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %149, i32 0, i32 17
  store i64 0, i64* %150, align 8
  %151 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %152 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %151, i32 0, i32 16
  store i64 0, i64* %152, align 8
  %153 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %154 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %153, i32 0, i32 15
  store i64 0, i64* %154, align 8
  %155 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %156 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %155, i32 0, i32 14
  store i64 0, i64* %156, align 8
  br label %157

157:                                              ; preds = %144, %121
  %158 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %159 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %158, i32 0, i32 13
  store i64 0, i64* %159, align 8
  %160 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %161 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %160, i32 0, i32 12
  store i32* null, i32** %161, align 8
  %162 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %163 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %162, i32 0, i32 11
  store i64 0, i64* %163, align 8
  %164 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %165 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %164, i32 0, i32 10
  store i64 0, i64* %165, align 8
  %166 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %167 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %166, i32 0, i32 9
  store i64 0, i64* %167, align 8
  %168 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %169 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %168, i32 0, i32 8
  store i64 0, i64* %169, align 8
  %170 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %171 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %170, i32 0, i32 6
  store i64 0, i64* %171, align 8
  %172 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %173 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %172, i32 0, i32 7
  store i64 0, i64* %173, align 8
  %174 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %175 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %174, i32 0, i32 5
  store i64 0, i64* %175, align 8
  ret void
}

declare dso_local i32 @e82545_rx_disable(%struct.e82545_softc*) #1

declare dso_local i32 @e82545_tx_disable(%struct.e82545_softc*) #1

declare dso_local i32 @pci_lintr_deassert(i32) #1

declare dso_local i32 @e82545_init_eeprom(%struct.e82545_softc*) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
