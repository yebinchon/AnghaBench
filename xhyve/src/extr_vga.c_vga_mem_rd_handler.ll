; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_vga.c_vga_mem_rd_handler.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_vga.c_vga_mem_rd_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vga_softc = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i64, i64 }

@KB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @vga_mem_rd_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vga_mem_rd_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vga_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.vga_softc*
  store %struct.vga_softc* %9, %struct.vga_softc** %5, align 8
  %10 = load i32, i32* %3, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %12 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %41 [
    i32 0, label %15
    i32 1, label %23
    i32 2, label %31
    i32 3, label %33
  ]

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  %17 = sub nsw i32 %16, 655360
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @KB, align 4
  %19 = mul nsw i32 128, %18
  %20 = sub nsw i32 %19, 1
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %7, align 4
  br label %41

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  %25 = sub nsw i32 %24, 655360
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* @KB, align 4
  %27 = mul nsw i32 64, %26
  %28 = sub nsw i32 %27, 1
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %7, align 4
  br label %41

31:                                               ; preds = %2
  %32 = call i32 @assert(i32 0)
  br label %33

33:                                               ; preds = %2, %31
  %34 = load i32, i32* %7, align 4
  %35 = sub nsw i32 %34, 753664
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* @KB, align 4
  %37 = mul nsw i32 32, %36
  %38 = sub nsw i32 %37, 1
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %2, %33, %23, %15
  %42 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %43 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @KB, align 4
  %47 = mul nsw i32 0, %46
  %48 = add nsw i32 %45, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %44, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %53 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 4
  %55 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %56 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @KB, align 4
  %60 = mul nsw i32 64, %59
  %61 = add nsw i32 %58, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %57, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %66 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  store i32 %64, i32* %67, align 8
  %68 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %69 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @KB, align 4
  %73 = mul nsw i32 128, %72
  %74 = add nsw i32 %71, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %70, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %79 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 3
  store i32 %77, i32* %80, align 4
  %81 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %82 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @KB, align 4
  %86 = mul nsw i32 192, %85
  %87 = add nsw i32 %84, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %83, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %92 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 4
  store i32 %90, i32* %93, align 8
  %94 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %95 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 7
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %41
  %100 = call i32 @assert(i32 0)
  br label %101

101:                                              ; preds = %99, %41
  %102 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %103 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %6, align 4
  %106 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %107 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 6
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %101
  %112 = load i32, i32* %7, align 4
  %113 = and i32 %112, 1
  %114 = load i32, i32* %6, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %7, align 4
  %117 = and i32 %116, -2
  store i32 %117, i32* %7, align 4
  br label %118

118:                                              ; preds = %111, %101
  %119 = load i32, i32* %6, align 4
  %120 = mul nsw i32 %119, 64
  %121 = load i32, i32* @KB, align 4
  %122 = mul nsw i32 %120, %121
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* %7, align 4
  %125 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %126 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  ret i32 %131
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
