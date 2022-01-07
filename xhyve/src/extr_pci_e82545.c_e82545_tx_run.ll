; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_e82545.c_e82545_tx_run.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_e82545.c_e82545_tx_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e82545_softc = type { i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [37 x i8] c"tx_run: head %x, rhead %x, tail %x\0D\0A\00", align 1
@E1000_ICR_TXDW = common dso_local global i32 0, align 4
@E1000_ICR_TXQE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"tx_run done: head %x, rhead %x, tail %x\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e82545_softc*)* @e82545_tx_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e82545_tx_run(%struct.e82545_softc* %0) #0 {
  %2 = alloca %struct.e82545_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.e82545_softc* %0, %struct.e82545_softc** %2, align 8
  %11 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %12 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %4, align 4
  %14 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %15 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %18 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = sdiv i32 %19, 16
  store i32 %20, i32* %7, align 4
  %21 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %22 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %25 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %28 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @DPRINTF(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26, i32 %29)
  %31 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %32 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %31, i32 0, i32 4
  %33 = call i32 @pthread_mutex_unlock(i32* %32)
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %35 = load i32, i32* %7, align 4
  %36 = sdiv i32 %35, 4
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %58, %1
  %38 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %39 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %38, i32 0, i32 5
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* %8, align 4
  %44 = icmp sgt i32 %43, 0
  br label %45

45:                                               ; preds = %42, %37
  %46 = phi i1 [ false, %37 ], [ %44, %42 ]
  br i1 %46, label %47, label %62

47:                                               ; preds = %45
  %48 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @e82545_transmit(%struct.e82545_softc* %48, i32 %49, i32 %50, i32 %51, i32* %5, i32* %9)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %62

56:                                               ; preds = %47
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %56
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %8, align 4
  %61 = sub nsw i32 %60, %59
  store i32 %61, i32* %8, align 4
  br label %37

62:                                               ; preds = %55, %45
  %63 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %64 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %63, i32 0, i32 4
  %65 = call i32 @pthread_mutex_lock(i32* %64)
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %68 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %71 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  store i32 0, i32* %3, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %62
  %75 = load i32, i32* @E1000_ICR_TXDW, align 4
  %76 = load i32, i32* %3, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %74, %62
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %7, align 4
  %81 = sdiv i32 %80, 4
  %82 = icmp ne i32 %79, %81
  br i1 %82, label %83, label %95

83:                                               ; preds = %78
  %84 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %85 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %88 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %86, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %83
  %92 = load i32, i32* @E1000_ICR_TXQE, align 4
  %93 = load i32, i32* %3, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %91, %83, %78
  %96 = load i32, i32* %3, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %100 = load i32, i32* %3, align 4
  %101 = call i32 @e82545_icr_assert(%struct.e82545_softc* %99, i32 %100)
  br label %102

102:                                              ; preds = %98, %95
  %103 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %104 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %107 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %110 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @DPRINTF(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %105, i32 %108, i32 %111)
  ret void
}

declare dso_local i32 @DPRINTF(i8*, i32, i32, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @e82545_transmit(%struct.e82545_softc*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @e82545_icr_assert(%struct.e82545_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
