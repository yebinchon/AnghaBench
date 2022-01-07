; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_e82545.c_e82545_icr_deassert.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_e82545.c_e82545_icr_deassert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e82545_softc = type { i32, i32, i64, i32 }

@.str = private unnamed_addr constant [21 x i8] c"icr deassert: 0x%x\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"icr deassert: lintr deassert %x\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e82545_softc*, i32)* @e82545_icr_deassert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e82545_icr_deassert(%struct.e82545_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.e82545_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.e82545_softc* %0, %struct.e82545_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @DPRINTF(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load i32, i32* %4, align 4
  %8 = xor i32 %7, -1
  %9 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %10 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = and i32 %11, %8
  store i32 %12, i32* %10, align 8
  %13 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %14 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %2
  %18 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %19 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %22 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %17
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @DPRINTF(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %30 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @pci_lintr_deassert(i32 %31)
  %33 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %34 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %33, i32 0, i32 2
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %26, %17, %2
  ret void
}

declare dso_local i32 @DPRINTF(i8*, i32) #1

declare dso_local i32 @pci_lintr_deassert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
