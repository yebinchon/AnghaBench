; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_x11_main.c_cleanup.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_x11_main.c_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@xdpy = common dso_local global i32 0, align 4
@xwin = common dso_local global i32 0, align 4
@xicon = common dso_local global i32 0, align 4
@xccaret = common dso_local global i32 0, align 4
@xcwait = common dso_local global i32 0, align 4
@xchand = common dso_local global i32 0, align 4
@xcarrow = common dso_local global i32 0, align 4
@xgc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  store i32* %6, i32** %3, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %8 = call i32 @pdfapp_close(%struct.TYPE_4__* %7)
  %9 = load i32, i32* @xdpy, align 4
  %10 = load i32, i32* @xwin, align 4
  %11 = call i32 @XDestroyWindow(i32 %9, i32 %10)
  %12 = load i32, i32* @xdpy, align 4
  %13 = load i32, i32* @xicon, align 4
  %14 = call i32 @XFreePixmap(i32 %12, i32 %13)
  %15 = load i32, i32* @xdpy, align 4
  %16 = load i32, i32* @xccaret, align 4
  %17 = call i32 @XFreeCursor(i32 %15, i32 %16)
  %18 = load i32, i32* @xdpy, align 4
  %19 = load i32, i32* @xcwait, align 4
  %20 = call i32 @XFreeCursor(i32 %18, i32 %19)
  %21 = load i32, i32* @xdpy, align 4
  %22 = load i32, i32* @xchand, align 4
  %23 = call i32 @XFreeCursor(i32 %21, i32 %22)
  %24 = load i32, i32* @xdpy, align 4
  %25 = load i32, i32* @xcarrow, align 4
  %26 = call i32 @XFreeCursor(i32 %24, i32 %25)
  %27 = load i32, i32* @xdpy, align 4
  %28 = load i32, i32* @xgc, align 4
  %29 = call i32 @XFreeGC(i32 %27, i32 %28)
  %30 = load i32, i32* @xdpy, align 4
  %31 = call i32 @XCloseDisplay(i32 %30)
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @fz_drop_context(i32* %32)
  ret void
}

declare dso_local i32 @pdfapp_close(%struct.TYPE_4__*) #1

declare dso_local i32 @XDestroyWindow(i32, i32) #1

declare dso_local i32 @XFreePixmap(i32, i32) #1

declare dso_local i32 @XFreeCursor(i32, i32) #1

declare dso_local i32 @XFreeGC(i32, i32) #1

declare dso_local i32 @XCloseDisplay(i32) #1

declare dso_local i32 @fz_drop_context(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
