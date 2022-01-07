; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_vga.c_vga_render_graphics.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_vga.c_vga_render_graphics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vga_softc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vga_softc*)* @vga_render_graphics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vga_render_graphics(%struct.vga_softc* %0) #0 {
  %2 = alloca %struct.vga_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vga_softc* %0, %struct.vga_softc** %2, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %43, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.vga_softc*, %struct.vga_softc** %2, align 8
  %9 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %46

12:                                               ; preds = %6
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %39, %12
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.vga_softc*, %struct.vga_softc** %2, align 8
  %16 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %42

19:                                               ; preds = %13
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.vga_softc*, %struct.vga_softc** %2, align 8
  %22 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %20, %23
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %5, align 4
  %27 = load %struct.vga_softc*, %struct.vga_softc** %2, align 8
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @vga_get_pixel(%struct.vga_softc* %27, i32 %28, i32 %29)
  %31 = load %struct.vga_softc*, %struct.vga_softc** %2, align 8
  %32 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %30, i32* %38, align 4
  br label %39

39:                                               ; preds = %19
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %13

42:                                               ; preds = %13
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %6

46:                                               ; preds = %6
  ret void
}

declare dso_local i32 @vga_get_pixel(%struct.vga_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
