; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_lpc.c_lpc_init.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_lpc.c_lpc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpc_uart_softc = type { i8*, i8*, i32, i32, i32, i32 }
%struct.inout_port = type { i8*, %struct.lpc_uart_softc*, i32, i32, i32, i32 }

@romfile = common dso_local global i32* null, align 8
@LPC_UART_NUM = common dso_local global i32 0, align 4
@lpc_uart_softc = common dso_local global %struct.lpc_uart_softc* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Unable to allocate resources for LPC device %s\0A\00", align 1
@lpc_uart_intr_assert = common dso_local global i32 0, align 4
@lpc_uart_intr_deassert = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Unable to initialize backend '%s' for LPC device %s\0A\00", align 1
@UART_IO_BAR_SIZE = common dso_local global i32 0, align 4
@IOPORT_F_INOUT = common dso_local global i32 0, align 4
@lpc_uart_io_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @lpc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lpc_uart_softc*, align 8
  %3 = alloca %struct.inout_port, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32*, i32** @romfile, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %0
  %9 = load i32*, i32** @romfile, align 8
  %10 = call i32 @bootrom_init(i32* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %1, align 4
  br label %99

15:                                               ; preds = %8
  br label %16

16:                                               ; preds = %15, %0
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %95, %16
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @LPC_UART_NUM, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %98

21:                                               ; preds = %17
  %22 = load %struct.lpc_uart_softc*, %struct.lpc_uart_softc** @lpc_uart_softc, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.lpc_uart_softc, %struct.lpc_uart_softc* %22, i64 %24
  store %struct.lpc_uart_softc* %25, %struct.lpc_uart_softc** %2, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.lpc_uart_softc*, %struct.lpc_uart_softc** %2, align 8
  %28 = getelementptr inbounds %struct.lpc_uart_softc, %struct.lpc_uart_softc* %27, i32 0, i32 3
  %29 = load %struct.lpc_uart_softc*, %struct.lpc_uart_softc** %2, align 8
  %30 = getelementptr inbounds %struct.lpc_uart_softc, %struct.lpc_uart_softc* %29, i32 0, i32 5
  %31 = call i64 @uart_legacy_alloc(i32 %26, i32* %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %21
  %34 = load i32, i32* @stderr, align 4
  %35 = load %struct.lpc_uart_softc*, %struct.lpc_uart_softc** %2, align 8
  %36 = getelementptr inbounds %struct.lpc_uart_softc, %struct.lpc_uart_softc* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %37)
  store i32 -1, i32* %1, align 4
  br label %99

39:                                               ; preds = %21
  %40 = load %struct.lpc_uart_softc*, %struct.lpc_uart_softc** %2, align 8
  %41 = getelementptr inbounds %struct.lpc_uart_softc, %struct.lpc_uart_softc* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @pci_irq_reserve(i32 %42)
  %44 = load i32, i32* @lpc_uart_intr_assert, align 4
  %45 = load i32, i32* @lpc_uart_intr_deassert, align 4
  %46 = load %struct.lpc_uart_softc*, %struct.lpc_uart_softc** %2, align 8
  %47 = call i32 @uart_init(i32 %44, i32 %45, %struct.lpc_uart_softc* %46)
  %48 = load %struct.lpc_uart_softc*, %struct.lpc_uart_softc** %2, align 8
  %49 = getelementptr inbounds %struct.lpc_uart_softc, %struct.lpc_uart_softc* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 8
  %50 = load %struct.lpc_uart_softc*, %struct.lpc_uart_softc** %2, align 8
  %51 = getelementptr inbounds %struct.lpc_uart_softc, %struct.lpc_uart_softc* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.lpc_uart_softc*, %struct.lpc_uart_softc** %2, align 8
  %54 = getelementptr inbounds %struct.lpc_uart_softc, %struct.lpc_uart_softc* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.lpc_uart_softc*, %struct.lpc_uart_softc** %2, align 8
  %57 = getelementptr inbounds %struct.lpc_uart_softc, %struct.lpc_uart_softc* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i64 @uart_set_backend(i32 %52, i8* %55, i8* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %39
  %62 = load i32, i32* @stderr, align 4
  %63 = load %struct.lpc_uart_softc*, %struct.lpc_uart_softc** %2, align 8
  %64 = getelementptr inbounds %struct.lpc_uart_softc, %struct.lpc_uart_softc* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.lpc_uart_softc*, %struct.lpc_uart_softc** %2, align 8
  %67 = getelementptr inbounds %struct.lpc_uart_softc, %struct.lpc_uart_softc* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %62, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i8* %65, i8* %68)
  store i32 -1, i32* %1, align 4
  br label %99

70:                                               ; preds = %39
  %71 = call i32 @bzero(%struct.inout_port* %3, i32 32)
  %72 = load %struct.lpc_uart_softc*, %struct.lpc_uart_softc** %2, align 8
  %73 = getelementptr inbounds %struct.lpc_uart_softc, %struct.lpc_uart_softc* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %3, i32 0, i32 0
  store i8* %74, i8** %75, align 8
  %76 = load %struct.lpc_uart_softc*, %struct.lpc_uart_softc** %2, align 8
  %77 = getelementptr inbounds %struct.lpc_uart_softc, %struct.lpc_uart_softc* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %3, i32 0, i32 5
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* @UART_IO_BAR_SIZE, align 4
  %81 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %3, i32 0, i32 4
  store i32 %80, i32* %81, align 8
  %82 = load i32, i32* @IOPORT_F_INOUT, align 4
  %83 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %3, i32 0, i32 3
  store i32 %82, i32* %83, align 4
  %84 = load i32, i32* @lpc_uart_io_handler, align 4
  %85 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %3, i32 0, i32 2
  store i32 %84, i32* %85, align 8
  %86 = load %struct.lpc_uart_softc*, %struct.lpc_uart_softc** %2, align 8
  %87 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %3, i32 0, i32 1
  store %struct.lpc_uart_softc* %86, %struct.lpc_uart_softc** %87, align 8
  %88 = call i32 @register_inout(%struct.inout_port* %3)
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = icmp eq i32 %89, 0
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  %93 = load %struct.lpc_uart_softc*, %struct.lpc_uart_softc** %2, align 8
  %94 = getelementptr inbounds %struct.lpc_uart_softc, %struct.lpc_uart_softc* %93, i32 0, i32 2
  store i32 1, i32* %94, align 8
  br label %95

95:                                               ; preds = %70
  %96 = load i32, i32* %4, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %4, align 4
  br label %17

98:                                               ; preds = %17
  store i32 0, i32* %1, align 4
  br label %99

99:                                               ; preds = %98, %61, %33, %13
  %100 = load i32, i32* %1, align 4
  ret i32 %100
}

declare dso_local i32 @bootrom_init(i32*) #1

declare dso_local i64 @uart_legacy_alloc(i32, i32*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @pci_irq_reserve(i32) #1

declare dso_local i32 @uart_init(i32, i32, %struct.lpc_uart_softc*) #1

declare dso_local i64 @uart_set_backend(i32, i8*, i8*) #1

declare dso_local i32 @bzero(%struct.inout_port*, i32) #1

declare dso_local i32 @register_inout(%struct.inout_port*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
