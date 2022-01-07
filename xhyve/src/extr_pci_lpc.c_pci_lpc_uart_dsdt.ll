; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_lpc.c_pci_lpc_uart_dsdt.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_lpc.c_pci_lpc_uart_dsdt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpc_uart_softc = type { i64, i64, i32 }

@LPC_UART_NUM = common dso_local global i32 0, align 4
@lpc_uart_softc = common dso_local global %struct.lpc_uart_softc* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Device (%s)\00", align 1
@lpc_uart_names = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"  Name (_HID, EisaId (\22PNP0501\22))\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"  Name (_UID, %d)\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"  Name (_CRS, ResourceTemplate ()\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"  {\00", align 1
@UART_IO_BAR_SIZE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"  })\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pci_lpc_uart_dsdt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_lpc_uart_dsdt() #0 {
  %1 = alloca %struct.lpc_uart_softc*, align 8
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %47, %0
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @LPC_UART_NUM, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %50

7:                                                ; preds = %3
  %8 = load %struct.lpc_uart_softc*, %struct.lpc_uart_softc** @lpc_uart_softc, align 8
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.lpc_uart_softc, %struct.lpc_uart_softc* %8, i64 %10
  store %struct.lpc_uart_softc* %11, %struct.lpc_uart_softc** %1, align 8
  %12 = load %struct.lpc_uart_softc*, %struct.lpc_uart_softc** %1, align 8
  %13 = getelementptr inbounds %struct.lpc_uart_softc, %struct.lpc_uart_softc* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %7
  br label %47

17:                                               ; preds = %7
  %18 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %19 = load i32*, i32** @lpc_uart_names, align 8
  %20 = load i32, i32* %2, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %26 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %27 = load i32, i32* %2, align 4
  %28 = add nsw i32 %27, 1
  %29 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %28)
  %30 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %31 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %32 = call i32 @dsdt_indent(i32 2)
  %33 = load %struct.lpc_uart_softc*, %struct.lpc_uart_softc** %1, align 8
  %34 = getelementptr inbounds %struct.lpc_uart_softc, %struct.lpc_uart_softc* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* @UART_IO_BAR_SIZE, align 4
  %38 = call i32 @dsdt_fixed_ioport(i32 %36, i32 %37)
  %39 = load %struct.lpc_uart_softc*, %struct.lpc_uart_softc** %1, align 8
  %40 = getelementptr inbounds %struct.lpc_uart_softc, %struct.lpc_uart_softc* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i32 @dsdt_fixed_irq(i32 %42)
  %44 = call i32 @dsdt_unindent(i32 2)
  %45 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %46 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %47

47:                                               ; preds = %17, %16
  %48 = load i32, i32* %2, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %2, align 4
  br label %3

50:                                               ; preds = %3
  ret void
}

declare dso_local i32 @dsdt_line(i8*, ...) #1

declare dso_local i32 @dsdt_indent(i32) #1

declare dso_local i32 @dsdt_fixed_ioport(i32, i32) #1

declare dso_local i32 @dsdt_fixed_irq(i32) #1

declare dso_local i32 @dsdt_unindent(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
