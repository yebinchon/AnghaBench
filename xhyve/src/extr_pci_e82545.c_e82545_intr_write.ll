; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_e82545.c_e82545_intr_write.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_e82545.c_e82545_intr_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e82545_softc = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"intr_write: off %x, val %x\0A\0D\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e82545_softc*, i32, i32)* @e82545_intr_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e82545_intr_write(%struct.e82545_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.e82545_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.e82545_softc* %0, %struct.e82545_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %6, align 4
  %9 = call i32 @DPRINTF(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %8)
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %40 [
    i32 132, label %11
    i32 128, label %15
    i32 131, label %19
    i32 129, label %26
    i32 130, label %30
  ]

11:                                               ; preds = %3
  %12 = load %struct.e82545_softc*, %struct.e82545_softc** %4, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @e82545_icr_deassert(%struct.e82545_softc* %12, i32 %13)
  br label %41

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.e82545_softc*, %struct.e82545_softc** %4, align 8
  %18 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  br label %41

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.e82545_softc*, %struct.e82545_softc** %4, align 8
  %22 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.e82545_softc*, %struct.e82545_softc** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @e82545_icr_assert(%struct.e82545_softc* %23, i32 %24)
  br label %41

26:                                               ; preds = %3
  %27 = load %struct.e82545_softc*, %struct.e82545_softc** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @e82545_ims_change(%struct.e82545_softc* %27, i32 %28)
  br label %41

30:                                               ; preds = %3
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.e82545_softc*, %struct.e82545_softc** %4, align 8
  %33 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %6, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.e82545_softc*, %struct.e82545_softc** %4, align 8
  %37 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %41

40:                                               ; preds = %3
  br label %41

41:                                               ; preds = %40, %30, %26, %19, %15, %11
  ret void
}

declare dso_local i32 @DPRINTF(i8*, i32, i32) #1

declare dso_local i32 @e82545_icr_deassert(%struct.e82545_softc*, i32) #1

declare dso_local i32 @e82545_icr_assert(%struct.e82545_softc*, i32) #1

declare dso_local i32 @e82545_ims_change(%struct.e82545_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
