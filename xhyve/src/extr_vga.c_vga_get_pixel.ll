; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_vga.c_vga_get_pixel.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_vga.c_vga_get_pixel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vga_softc = type { i32, i32*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i64, i32, i32*, i64, i64 }

@KB = common dso_local global i32 0, align 4
@ATC_MC_IPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vga_softc*, i32, i32)* @vga_get_pixel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vga_get_pixel(%struct.vga_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vga_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.vga_softc* %0, %struct.vga_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.vga_softc*, %struct.vga_softc** %4, align 8
  %13 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = mul nsw i32 %11, %14
  %16 = sdiv i32 %15, 8
  %17 = load i32, i32* %5, align 4
  %18 = sdiv i32 %17, 8
  %19 = add nsw i32 %16, %18
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = srem i32 %20, 8
  %22 = sub nsw i32 7, %21
  store i32 %22, i32* %8, align 4
  %23 = load %struct.vga_softc*, %struct.vga_softc** %4, align 8
  %24 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @KB, align 4
  %28 = mul nsw i32 0, %27
  %29 = add i32 %26, %28
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %25, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %8, align 4
  %34 = ashr i32 %32, %33
  %35 = and i32 %34, 1
  %36 = shl i32 %35, 0
  %37 = sext i32 %36 to i64
  %38 = load %struct.vga_softc*, %struct.vga_softc** %4, align 8
  %39 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @KB, align 4
  %43 = mul nsw i32 64, %42
  %44 = add i32 %41, %43
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %40, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %8, align 4
  %49 = ashr i32 %47, %48
  %50 = and i32 %49, 1
  %51 = shl i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = or i64 %37, %52
  %54 = load %struct.vga_softc*, %struct.vga_softc** %4, align 8
  %55 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @KB, align 4
  %59 = mul nsw i32 128, %58
  %60 = add i32 %57, %59
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %56, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %8, align 4
  %65 = ashr i32 %63, %64
  %66 = and i32 %65, 1
  %67 = shl i32 %66, 2
  %68 = sext i32 %67 to i64
  %69 = or i64 %53, %68
  %70 = load %struct.vga_softc*, %struct.vga_softc** %4, align 8
  %71 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @KB, align 4
  %75 = mul nsw i32 192, %74
  %76 = add i32 %73, %75
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %72, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %8, align 4
  %81 = ashr i32 %79, %80
  %82 = and i32 %81, 1
  %83 = shl i32 %82, 3
  %84 = sext i32 %83 to i64
  %85 = or i64 %69, %84
  store i64 %85, i64* %9, align 8
  %86 = load %struct.vga_softc*, %struct.vga_softc** %4, align 8
  %87 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %9, align 8
  %91 = and i64 %90, %89
  store i64 %91, i64* %9, align 8
  %92 = load %struct.vga_softc*, %struct.vga_softc** %4, align 8
  %93 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @ATC_MC_IPS, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %115

99:                                               ; preds = %3
  %100 = load %struct.vga_softc*, %struct.vga_softc** %4, align 8
  %101 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = load i64, i64* %9, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, 15
  %108 = sext i32 %107 to i64
  store i64 %108, i64* %10, align 8
  %109 = load %struct.vga_softc*, %struct.vga_softc** %4, align 8
  %110 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %10, align 8
  %114 = or i64 %113, %112
  store i64 %114, i64* %10, align 8
  br label %124

115:                                              ; preds = %3
  %116 = load %struct.vga_softc*, %struct.vga_softc** %4, align 8
  %117 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = load i64, i64* %9, align 8
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  store i64 %123, i64* %10, align 8
  br label %124

124:                                              ; preds = %115, %99
  %125 = load %struct.vga_softc*, %struct.vga_softc** %4, align 8
  %126 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* %10, align 8
  %130 = or i64 %129, %128
  store i64 %130, i64* %10, align 8
  %131 = load %struct.vga_softc*, %struct.vga_softc** %4, align 8
  %132 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i64, i64* %10, align 8
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  %137 = load i32, i32* %136, align 4
  ret i32 %137
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
