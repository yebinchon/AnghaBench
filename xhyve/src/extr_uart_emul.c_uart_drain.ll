; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_uart_emul.c_uart_drain.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_uart_emul.c_uart_drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EVF_READ = common dso_local global i32 0, align 4
@MCR_LOOPBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @uart_drain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uart_drain(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.uart_softc*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.uart_softc*
  store %struct.uart_softc* %10, %struct.uart_softc** %7, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.uart_softc*, %struct.uart_softc** %7, align 8
  %13 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %11, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @EVF_READ, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.uart_softc*, %struct.uart_softc** %7, align 8
  %25 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %24, i32 0, i32 1
  %26 = call i32 @pthread_mutex_lock(i32* %25)
  %27 = load %struct.uart_softc*, %struct.uart_softc** %7, align 8
  %28 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MCR_LOOPBACK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %3
  %34 = load %struct.uart_softc*, %struct.uart_softc** %7, align 8
  %35 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %34, i32 0, i32 2
  %36 = call i32 @ttyread(%struct.TYPE_2__* %35)
  br label %56

37:                                               ; preds = %3
  br label %38

38:                                               ; preds = %49, %37
  %39 = load %struct.uart_softc*, %struct.uart_softc** %7, align 8
  %40 = call i64 @rxfifo_available(%struct.uart_softc* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load %struct.uart_softc*, %struct.uart_softc** %7, align 8
  %44 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %43, i32 0, i32 2
  %45 = call i32 @ttyread(%struct.TYPE_2__* %44)
  store i32 %45, i32* %8, align 4
  %46 = icmp ne i32 %45, -1
  br label %47

47:                                               ; preds = %42, %38
  %48 = phi i1 [ false, %38 ], [ %46, %42 ]
  br i1 %48, label %49, label %53

49:                                               ; preds = %47
  %50 = load %struct.uart_softc*, %struct.uart_softc** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @rxfifo_putchar(%struct.uart_softc* %50, i32 %51)
  br label %38

53:                                               ; preds = %47
  %54 = load %struct.uart_softc*, %struct.uart_softc** %7, align 8
  %55 = call i32 @uart_toggle_intr(%struct.uart_softc* %54)
  br label %56

56:                                               ; preds = %53, %33
  %57 = load %struct.uart_softc*, %struct.uart_softc** %7, align 8
  %58 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %57, i32 0, i32 1
  %59 = call i32 @pthread_mutex_unlock(i32* %58)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @ttyread(%struct.TYPE_2__*) #1

declare dso_local i64 @rxfifo_available(%struct.uart_softc*) #1

declare dso_local i32 @rxfifo_putchar(%struct.uart_softc*, i32) #1

declare dso_local i32 @uart_toggle_intr(%struct.uart_softc*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
