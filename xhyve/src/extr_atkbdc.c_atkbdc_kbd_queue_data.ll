; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_atkbdc.c_atkbdc_kbd_queue_data.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_atkbdc.c_atkbdc_kbd_queue_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atkbdc_softc = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i64, i32* }

@FIFOSZ = common dso_local global i32 0, align 4
@KBDS_KBD_BUFFER_FULL = common dso_local global i32 0, align 4
@KBDO_KBD_OUTFULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"atkbd data buffer full\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atkbdc_softc*, i32)* @atkbdc_kbd_queue_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atkbdc_kbd_queue_data(%struct.atkbdc_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.atkbdc_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.atkbdc_softc* %0, %struct.atkbdc_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %6 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @FIFOSZ, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %48

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %14 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %18 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i32, i32* %16, i64 %20
  store i32 %12, i32* %21, align 4
  %22 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %23 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %25, 1
  %27 = load i32, i32* @FIFOSZ, align 4
  %28 = sext i32 %27 to i64
  %29 = urem i64 %26, %28
  %30 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %31 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i64 %29, i64* %32, align 8
  %33 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %34 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 8
  %38 = load i32, i32* @KBDS_KBD_BUFFER_FULL, align 4
  %39 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %40 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* @KBDO_KBD_OUTFULL, align 4
  %44 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %45 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  br label %50

48:                                               ; preds = %2
  %49 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %11
  %51 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %52 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @FIFOSZ, align 4
  %56 = icmp slt i32 %54, %55
  %57 = zext i1 %56 to i32
  ret i32 %57
}

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
