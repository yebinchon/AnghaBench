; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui_x11.c_gui_x11_create_blank_mouse.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui_x11.c_gui_x11_create_blank_mouse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@gui = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @gui_x11_create_blank_mouse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gui_x11_create_blank_mouse() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 1), align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 2), align 4
  %5 = call i32 @XCreatePixmap(i32 %3, i32 %4, i32 1, i32 1, i32 1)
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 1), align 4
  %7 = load i32, i32* %1, align 4
  %8 = call i32 @XCreateGC(i32 %6, i32 %7, i64 0, i32* null)
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 1), align 4
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @XDrawPoint(i32 %9, i32 %10, i32 %11, i32 0, i32 0)
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 1), align 4
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @XFreeGC(i32 %13, i32 %14)
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 1), align 4
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = call i32 @XCreatePixmapCursor(i32 %16, i32 %17, i32 %18, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 0), i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 0), i32 0, i32 0)
  ret i32 %19
}

declare dso_local i32 @XCreatePixmap(i32, i32, i32, i32, i32) #1

declare dso_local i32 @XCreateGC(i32, i32, i64, i32*) #1

declare dso_local i32 @XDrawPoint(i32, i32, i32, i32, i32) #1

declare dso_local i32 @XFreeGC(i32, i32) #1

declare dso_local i32 @XCreatePixmapCursor(i32, i32, i32, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
