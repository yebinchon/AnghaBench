; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/imagesoft/extr_floatwindow.c_FloatWindowPaintHueSlider.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/imagesoft/extr_floatwindow.c_FloatWindowPaintHueSlider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FloatWindowPaintHueSlider(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @TRUE, align 4
  %8 = call i32 @InvalidateRect(i32 %6, i32* null, i32 %7)
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @UpdateWindow(i32 %9)
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @GetDC(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @GetClientRect(i32 %13, %struct.TYPE_3__* %5)
  %15 = load i32, i32* %4, align 4
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @Rectangle(i32 %15, i32 %17, i32 %19, i32 %21, i32 %23)
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @ReleaseDC(i32 %25, i32 %26)
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @InvalidateRect(i32, i32*, i32) #1

declare dso_local i32 @UpdateWindow(i32) #1

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @Rectangle(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
