; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_e82545.c_e82545_rx_ctl.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_e82545.c_e82545_rx_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e82545_softc = type { i32, i32, i32, i32*, i64 }

@E1000_RCTL_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"rx_ctl - %s RCTL %x, val %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@E1000_RCTL_LBM_TCVR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e82545_softc*, i32)* @e82545_rx_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e82545_rx_ctl(%struct.e82545_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.e82545_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.e82545_softc* %0, %struct.e82545_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @E1000_RCTL_EN, align 4
  %8 = and i32 %6, %7
  %9 = load i32, i32* @E1000_RCTL_EN, align 4
  %10 = icmp eq i32 %8, %9
  %11 = zext i1 %10 to i32
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, 115323902
  %14 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %15 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %20 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %21 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @DPRINTF(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %19, i32 %22, i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %27 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %25, %28
  br i1 %29, label %30, label %61

30:                                               ; preds = %2
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %30
  %34 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %35 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @E1000_RCTL_LBM_TCVR, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %42 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %41, i32 0, i32 2
  store i32 1, i32* %42, align 8
  br label %46

43:                                               ; preds = %33
  %44 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %45 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %44, i32 0, i32 2
  store i32 0, i32* %45, align 8
  br label %46

46:                                               ; preds = %43, %40
  %47 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %48 = call i32 @e82545_rx_update_rdba(%struct.e82545_softc* %47)
  %49 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %50 = call i32 @e82545_rx_enable(%struct.e82545_softc* %49)
  br label %60

51:                                               ; preds = %30
  %52 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %53 = call i32 @e82545_rx_disable(%struct.e82545_softc* %52)
  %54 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %55 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %54, i32 0, i32 2
  store i32 0, i32* %55, align 8
  %56 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %57 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %56, i32 0, i32 4
  store i64 0, i64* %57, align 8
  %58 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %59 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %58, i32 0, i32 3
  store i32* null, i32** %59, align 8
  br label %60

60:                                               ; preds = %51, %46
  br label %61

61:                                               ; preds = %60, %2
  ret void
}

declare dso_local i32 @DPRINTF(i8*, i8*, i32, i32) #1

declare dso_local i32 @e82545_rx_update_rdba(%struct.e82545_softc*) #1

declare dso_local i32 @e82545_rx_enable(%struct.e82545_softc*) #1

declare dso_local i32 @e82545_rx_disable(%struct.e82545_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
