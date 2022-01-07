; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_atkbdc.c_atkbdc_init.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_atkbdc.c_atkbdc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inout_port = type { i8*, i32, %struct.atkbdc_softc*, i32, i8*, i32 }
%struct.atkbdc_softc = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [7 x i8] c"atkdbc\00", align 1
@KBD_STS_CTL_PORT = common dso_local global i32 0, align 4
@IOPORT_F_INOUT = common dso_local global i8* null, align 8
@atkbdc_sts_ctl_handler = common dso_local global i32 0, align 4
@KBD_DATA_PORT = common dso_local global i32 0, align 4
@atkbdc_data_handler = common dso_local global i32 0, align 4
@KBD_DEV_IRQ = common dso_local global i8* null, align 8
@AUX_DEV_IRQ = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @atkbdc_init() #0 {
  %1 = alloca %struct.inout_port, align 8
  %2 = alloca %struct.atkbdc_softc*, align 8
  %3 = alloca i32, align 4
  %4 = call %struct.atkbdc_softc* @calloc(i32 1, i32 32)
  store %struct.atkbdc_softc* %4, %struct.atkbdc_softc** %2, align 8
  %5 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %2, align 8
  %6 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %5, i32 0, i32 4
  %7 = call i32 @pthread_mutex_init(i32* %6, i32* null)
  %8 = call i32 @bzero(%struct.inout_port* %1, i32 48)
  %9 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %10 = load i32, i32* @KBD_STS_CTL_PORT, align 4
  %11 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %1, i32 0, i32 5
  store i32 %10, i32* %11, align 8
  %12 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %1, i32 0, i32 1
  store i32 1, i32* %12, align 8
  %13 = load i8*, i8** @IOPORT_F_INOUT, align 8
  %14 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %1, i32 0, i32 4
  store i8* %13, i8** %14, align 8
  %15 = load i32, i32* @atkbdc_sts_ctl_handler, align 4
  %16 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %1, i32 0, i32 3
  store i32 %15, i32* %16, align 8
  %17 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %2, align 8
  %18 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %1, i32 0, i32 2
  store %struct.atkbdc_softc* %17, %struct.atkbdc_softc** %18, align 8
  %19 = call i32 @register_inout(%struct.inout_port* %1)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = call i32 @bzero(%struct.inout_port* %1, i32 48)
  %25 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %25, align 8
  %26 = load i32, i32* @KBD_DATA_PORT, align 4
  %27 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %1, i32 0, i32 5
  store i32 %26, i32* %27, align 8
  %28 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %1, i32 0, i32 1
  store i32 1, i32* %28, align 8
  %29 = load i8*, i8** @IOPORT_F_INOUT, align 8
  %30 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %1, i32 0, i32 4
  store i8* %29, i8** %30, align 8
  %31 = load i32, i32* @atkbdc_data_handler, align 4
  %32 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %1, i32 0, i32 3
  store i32 %31, i32* %32, align 8
  %33 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %2, align 8
  %34 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %1, i32 0, i32 2
  store %struct.atkbdc_softc* %33, %struct.atkbdc_softc** %34, align 8
  %35 = call i32 @register_inout(%struct.inout_port* %1)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp eq i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i8*, i8** @KBD_DEV_IRQ, align 8
  %41 = call i32 @pci_irq_reserve(i8* %40)
  %42 = load i8*, i8** @KBD_DEV_IRQ, align 8
  %43 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %2, align 8
  %44 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i8* %42, i8** %45, align 8
  %46 = load i8*, i8** @AUX_DEV_IRQ, align 8
  %47 = call i32 @pci_irq_reserve(i8* %46)
  %48 = load i8*, i8** @AUX_DEV_IRQ, align 8
  %49 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %2, align 8
  %50 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i8* %48, i8** %51, align 8
  %52 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %2, align 8
  %53 = call i32 @ps2kbd_init(%struct.atkbdc_softc* %52)
  %54 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %2, align 8
  %55 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %2, align 8
  %57 = call i32 @ps2mouse_init(%struct.atkbdc_softc* %56)
  %58 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %2, align 8
  %59 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  ret void
}

declare dso_local %struct.atkbdc_softc* @calloc(i32, i32) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @bzero(%struct.inout_port*, i32) #1

declare dso_local i32 @register_inout(%struct.inout_port*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pci_irq_reserve(i8*) #1

declare dso_local i32 @ps2kbd_init(%struct.atkbdc_softc*) #1

declare dso_local i32 @ps2mouse_init(%struct.atkbdc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
