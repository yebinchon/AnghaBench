; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_uart_emul.c_uart_intr_reason.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_uart_emul.c_uart_intr_reason.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, i32, i32, i64 }

@LSR_OE = common dso_local global i32 0, align 4
@IER_ERLS = common dso_local global i32 0, align 4
@IIR_RLS = common dso_local global i32 0, align 4
@IER_ERXRDY = common dso_local global i32 0, align 4
@IIR_RXTOUT = common dso_local global i32 0, align 4
@IER_ETXRDY = common dso_local global i32 0, align 4
@IIR_TXRDY = common dso_local global i32 0, align 4
@MSR_DELTA_MASK = common dso_local global i32 0, align 4
@IER_EMSC = common dso_local global i32 0, align 4
@IIR_MLSC = common dso_local global i32 0, align 4
@IIR_NOPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @uart_intr_reason to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_intr_reason(%struct.uart_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_softc*, align 8
  store %struct.uart_softc* %0, %struct.uart_softc** %3, align 8
  %4 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %5 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @LSR_OE, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %12 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @IER_ERLS, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = load i32, i32* @IIR_RLS, align 4
  store i32 %18, i32* %2, align 4
  br label %64

19:                                               ; preds = %10, %1
  %20 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %21 = call i64 @rxfifo_numchars(%struct.uart_softc* %20)
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %25 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IER_ERXRDY, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @IIR_RXTOUT, align 4
  store i32 %31, i32* %2, align 4
  br label %64

32:                                               ; preds = %23, %19
  %33 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %34 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %39 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IER_ETXRDY, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* @IIR_TXRDY, align 4
  store i32 %45, i32* %2, align 4
  br label %64

46:                                               ; preds = %37, %32
  %47 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %48 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @MSR_DELTA_MASK, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %46
  %54 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %55 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @IER_EMSC, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* @IIR_MLSC, align 4
  store i32 %61, i32* %2, align 4
  br label %64

62:                                               ; preds = %53, %46
  %63 = load i32, i32* @IIR_NOPEND, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %62, %60, %44, %30, %17
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i64 @rxfifo_numchars(%struct.uart_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
