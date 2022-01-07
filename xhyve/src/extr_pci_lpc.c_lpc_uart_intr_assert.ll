; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_lpc.c_lpc_uart_intr_assert.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_lpc.c_lpc_uart_intr_assert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpc_uart_softc = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @lpc_uart_intr_assert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpc_uart_intr_assert(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.lpc_uart_softc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.lpc_uart_softc*
  store %struct.lpc_uart_softc* %5, %struct.lpc_uart_softc** %3, align 8
  %6 = load %struct.lpc_uart_softc*, %struct.lpc_uart_softc** %3, align 8
  %7 = getelementptr inbounds %struct.lpc_uart_softc, %struct.lpc_uart_softc* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp sge i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.lpc_uart_softc*, %struct.lpc_uart_softc** %3, align 8
  %13 = getelementptr inbounds %struct.lpc_uart_softc, %struct.lpc_uart_softc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.lpc_uart_softc*, %struct.lpc_uart_softc** %3, align 8
  %16 = getelementptr inbounds %struct.lpc_uart_softc, %struct.lpc_uart_softc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @xh_vm_isa_pulse_irq(i64 %14, i64 %17)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @xh_vm_isa_pulse_irq(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
