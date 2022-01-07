; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_xcb.c_x11_disable_decoration.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_xcb.c_x11_disable_decoration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.MotifWMHints = type { i32, i32, i32, i64, i32 }
%struct.MotifWMHints.0 = type opaque

@netatoms = common dso_local global i32* null, align 8
@_MOTIF_WM_HINTS = common dso_local global i64 0, align 8
@xcb = common dso_local global %struct.TYPE_2__* null, align 8
@XCB_PROP_MODE_REPLACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @x11_disable_decoration(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.MotifWMHints, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 2, i32* %3, align 4
  %6 = getelementptr inbounds %struct.MotifWMHints, %struct.MotifWMHints* %4, i32 0, i32 0
  store i32 2, i32* %6, align 8
  %7 = getelementptr inbounds %struct.MotifWMHints, %struct.MotifWMHints* %4, i32 0, i32 2
  store i32 0, i32* %7, align 8
  %8 = getelementptr inbounds %struct.MotifWMHints, %struct.MotifWMHints* %4, i32 0, i32 1
  store i32 0, i32* %8, align 4
  %9 = getelementptr inbounds %struct.MotifWMHints, %struct.MotifWMHints* %4, i32 0, i32 3
  store i64 0, i64* %9, align 8
  %10 = getelementptr inbounds %struct.MotifWMHints, %struct.MotifWMHints* %4, i32 0, i32 4
  store i32 0, i32* %10, align 8
  %11 = load i32*, i32** @netatoms, align 8
  %12 = load i64, i64* @_MOTIF_WM_HINTS, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xcb, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @XCB_PROP_MODE_REPLACE, align 4
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = bitcast %struct.MotifWMHints* %4 to %struct.MotifWMHints.0*
  %23 = call i32 @xcb_change_property(i32 %17, i32 %18, i32 %19, i32 %20, i32 %21, i32 32, i32 5, %struct.MotifWMHints.0* %22)
  ret void
}

declare dso_local i32 @xcb_change_property(i32, i32, i32, i32, i32, i32, i32, %struct.MotifWMHints.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
