; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_atkbdc.c_atkbdc_dequeue_data.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_atkbdc.c_atkbdc_dequeue_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atkbdc_softc = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64, i64, i32* }

@KBDS_AUX_BUFFER_FULL = common dso_local global i32 0, align 4
@KBDS_KBD_BUFFER_FULL = common dso_local global i32 0, align 4
@KBDO_AUX_OUTFULL = common dso_local global i32 0, align 4
@FIFOSZ = common dso_local global i32 0, align 4
@KBDO_KBD_OUTFULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atkbdc_softc*, i32*)* @atkbdc_dequeue_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atkbdc_dequeue_data(%struct.atkbdc_softc* %0, i32* %1) #0 {
  %3 = alloca %struct.atkbdc_softc*, align 8
  %4 = alloca i32*, align 8
  store %struct.atkbdc_softc* %0, %struct.atkbdc_softc** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %6 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i64 @ps2mouse_read(i32 %7, i32* %8)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %49

11:                                               ; preds = %2
  %12 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %13 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @ps2mouse_fifocnt(i32 %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %46

17:                                               ; preds = %11
  %18 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %19 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %17
  %24 = load i32, i32* @KBDS_AUX_BUFFER_FULL, align 4
  %25 = load i32, i32* @KBDS_KBD_BUFFER_FULL, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %29 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  br label %39

32:                                               ; preds = %17
  %33 = load i32, i32* @KBDS_AUX_BUFFER_FULL, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %36 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 8
  br label %39

39:                                               ; preds = %32, %23
  %40 = load i32, i32* @KBDO_AUX_OUTFULL, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %43 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %39, %11
  %47 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %48 = call i32 @atkbdc_poll(%struct.atkbdc_softc* %47)
  br label %125

49:                                               ; preds = %2
  %50 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %51 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %104

55:                                               ; preds = %49
  %56 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %57 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %61 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds i32, i32* %59, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %4, align 8
  store i32 %65, i32* %66, align 4
  %67 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %68 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add i64 %70, 1
  %72 = load i32, i32* @FIFOSZ, align 4
  %73 = sext i32 %72 to i64
  %74 = urem i64 %71, %73
  %75 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %76 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  store i64 %74, i64* %77, align 8
  %78 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %79 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, -1
  store i64 %82, i64* %80, align 8
  %83 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %84 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %55
  %89 = load i32, i32* @KBDS_KBD_BUFFER_FULL, align 4
  %90 = xor i32 %89, -1
  %91 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %92 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = and i32 %93, %90
  store i32 %94, i32* %92, align 8
  %95 = load i32, i32* @KBDO_KBD_OUTFULL, align 4
  %96 = xor i32 %95, -1
  %97 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %98 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, %96
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %88, %55
  %102 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %103 = call i32 @atkbdc_poll(%struct.atkbdc_softc* %102)
  br label %104

104:                                              ; preds = %101, %49
  %105 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %106 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i64 @ps2mouse_fifocnt(i32 %107)
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %125

110:                                              ; preds = %104
  %111 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %112 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %110
  %117 = load i32, i32* @KBDS_AUX_BUFFER_FULL, align 4
  %118 = load i32, i32* @KBDS_KBD_BUFFER_FULL, align 4
  %119 = or i32 %117, %118
  %120 = xor i32 %119, -1
  %121 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %122 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = and i32 %123, %120
  store i32 %124, i32* %122, align 8
  br label %125

125:                                              ; preds = %46, %116, %110, %104
  ret void
}

declare dso_local i64 @ps2mouse_read(i32, i32*) #1

declare dso_local i64 @ps2mouse_fifocnt(i32) #1

declare dso_local i32 @atkbdc_poll(%struct.atkbdc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
