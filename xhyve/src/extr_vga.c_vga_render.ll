; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_vga.c_vga_render.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_vga.c_vga_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhyvegc = type { i32 }
%struct.vga_softc = type { %struct.TYPE_5__, %struct.TYPE_4__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@ATC_MC_GA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vga_render(%struct.bhyvegc* %0, i8* %1) #0 {
  %3 = alloca %struct.bhyvegc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vga_softc*, align 8
  store %struct.bhyvegc* %0, %struct.bhyvegc** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.vga_softc*
  store %struct.vga_softc* %7, %struct.vga_softc** %5, align 8
  %8 = load %struct.bhyvegc*, %struct.bhyvegc** %3, align 8
  %9 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %10 = call i32 @vga_check_size(%struct.bhyvegc* %8, %struct.vga_softc* %9)
  %11 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %12 = call i64 @vga_in_reset(%struct.vga_softc* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %2
  %15 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %16 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %15, i32 0, i32 2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %21 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %20, i32 0, i32 2
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %26 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %25, i32 0, i32 2
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %24, %29
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = trunc i64 %32 to i32
  %34 = call i32 @memset(i32 %19, i32 0, i32 %33)
  br label %55

35:                                               ; preds = %2
  %36 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %37 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %35
  %42 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %43 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @ATC_MC_GA, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %51 = call i32 @vga_render_graphics(%struct.vga_softc* %50)
  br label %55

52:                                               ; preds = %41, %35
  %53 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %54 = call i32 @vga_render_text(%struct.vga_softc* %53)
  br label %55

55:                                               ; preds = %14, %52, %49
  ret void
}

declare dso_local i32 @vga_check_size(%struct.bhyvegc*, %struct.vga_softc*) #1

declare dso_local i64 @vga_in_reset(%struct.vga_softc*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @vga_render_graphics(%struct.vga_softc*) #1

declare dso_local i32 @vga_render_text(%struct.vga_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
