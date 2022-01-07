; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_uart_emul.c_rxfifo_getchar.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_uart_emul.c_rxfifo_getchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, %struct.TYPE_2__, %struct.fifo }
%struct.TYPE_2__ = type { i64 }
%struct.fifo = type { i64, i32*, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @rxfifo_getchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxfifo_getchar(%struct.uart_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_softc*, align 8
  %4 = alloca %struct.fifo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %9 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %8, i32 0, i32 2
  store %struct.fifo* %9, %struct.fifo** %4, align 8
  %10 = load %struct.fifo*, %struct.fifo** %4, align 8
  %11 = getelementptr inbounds %struct.fifo, %struct.fifo* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %63

14:                                               ; preds = %1
  %15 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %16 = call i32 @rxfifo_available(%struct.uart_softc* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  store i32 1, i32* %7, align 4
  br label %19

19:                                               ; preds = %18, %14
  %20 = load %struct.fifo*, %struct.fifo** %4, align 8
  %21 = getelementptr inbounds %struct.fifo, %struct.fifo* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.fifo*, %struct.fifo** %4, align 8
  %24 = getelementptr inbounds %struct.fifo, %struct.fifo* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %5, align 4
  %28 = load %struct.fifo*, %struct.fifo** %4, align 8
  %29 = getelementptr inbounds %struct.fifo, %struct.fifo* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = add i64 %30, 1
  %32 = load %struct.fifo*, %struct.fifo** %4, align 8
  %33 = getelementptr inbounds %struct.fifo, %struct.fifo* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = urem i64 %31, %35
  %37 = load %struct.fifo*, %struct.fifo** %4, align 8
  %38 = getelementptr inbounds %struct.fifo, %struct.fifo* %37, i32 0, i32 2
  store i64 %36, i64* %38, align 8
  %39 = load %struct.fifo*, %struct.fifo** %4, align 8
  %40 = getelementptr inbounds %struct.fifo, %struct.fifo* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, -1
  store i64 %42, i64* %40, align 8
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %19
  %46 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %47 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %45
  %52 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %53 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @mevent_enable(i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp eq i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  br label %60

60:                                               ; preds = %51, %45
  br label %61

61:                                               ; preds = %60, %19
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* %2, align 4
  br label %64

63:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %64

64:                                               ; preds = %63, %61
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @rxfifo_available(%struct.uart_softc*) #1

declare dso_local i32 @mevent_enable(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
