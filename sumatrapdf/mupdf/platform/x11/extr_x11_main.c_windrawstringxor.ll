; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_x11_main.c_windrawstringxor.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_x11_main.c_windrawstringxor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@xdpy = common dso_local global i32 0, align 4
@xgc = common dso_local global i32 0, align 4
@GCFunction = common dso_local global i32 0, align 4
@GXxor = common dso_local global i32 0, align 4
@xwin = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i8*)* @windrawstringxor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @windrawstringxor(i32* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = load i32, i32* @xdpy, align 4
  %12 = load i32, i32* @xgc, align 4
  %13 = load i32, i32* @GCFunction, align 4
  %14 = call i32 @XGetGCValues(i32 %11, i32 %12, i32 %13, %struct.TYPE_4__* %10)
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* @GXxor, align 4
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @xdpy, align 4
  %20 = load i32, i32* @xgc, align 4
  %21 = load i32, i32* @GCFunction, align 4
  %22 = call i32 @XChangeGC(i32 %19, i32 %20, i32 %21, %struct.TYPE_4__* %10)
  %23 = load i32, i32* @xdpy, align 4
  %24 = load i32, i32* @xgc, align 4
  %25 = load i32, i32* @xdpy, align 4
  %26 = load i32, i32* @xdpy, align 4
  %27 = call i32 @DefaultScreen(i32 %26)
  %28 = call i32 @WhitePixel(i32 %25, i32 %27)
  %29 = call i32 @XSetForeground(i32 %23, i32 %24, i32 %28)
  %30 = load i32, i32* @xdpy, align 4
  %31 = load i32, i32* @xwin, align 4
  %32 = load i32, i32* @xgc, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i8*, i8** %8, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @strlen(i8* %36)
  %38 = call i32 @XDrawString(i32 %30, i32 %31, i32 %32, i32 %33, i32 %34, i8* %35, i32 %37)
  %39 = load i32, i32* @xdpy, align 4
  %40 = call i32 @XFlush(i32 %39)
  %41 = load i32, i32* @xdpy, align 4
  %42 = load i32, i32* @xgc, align 4
  %43 = load i32, i32* @GCFunction, align 4
  %44 = call i32 @XGetGCValues(i32 %41, i32 %42, i32 %43, %struct.TYPE_4__* %10)
  %45 = load i32, i32* %9, align 4
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* @xdpy, align 4
  %48 = load i32, i32* @xgc, align 4
  %49 = load i32, i32* @GCFunction, align 4
  %50 = call i32 @XChangeGC(i32 %47, i32 %48, i32 %49, %struct.TYPE_4__* %10)
  ret void
}

declare dso_local i32 @XGetGCValues(i32, i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @XChangeGC(i32, i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @XSetForeground(i32, i32, i32) #1

declare dso_local i32 @WhitePixel(i32, i32) #1

declare dso_local i32 @DefaultScreen(i32) #1

declare dso_local i32 @XDrawString(i32, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @XFlush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
