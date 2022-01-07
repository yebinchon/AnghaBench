; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_uart_emul.c_rxfifo_numchars.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_uart_emul.c_rxfifo_numchars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { %struct.fifo }
%struct.fifo = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @rxfifo_numchars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxfifo_numchars(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca %struct.fifo*, align 8
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  %4 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %5 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %4, i32 0, i32 0
  store %struct.fifo* %5, %struct.fifo** %3, align 8
  %6 = load %struct.fifo*, %struct.fifo** %3, align 8
  %7 = getelementptr inbounds %struct.fifo, %struct.fifo* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  ret i32 %8
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
