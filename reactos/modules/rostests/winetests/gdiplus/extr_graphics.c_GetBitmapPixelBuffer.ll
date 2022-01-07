; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphics.c_GetBitmapPixelBuffer.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphics.c_GetBitmapPixelBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i32 }

@BI_RGB = common dso_local global i32 0, align 4
@DIB_RGB_COLORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Expected GetDIBits:%p,%d->%d,%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32, i32, i32)* @GetBitmapPixelBuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @GetBitmapPixelBuffer(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_2__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = mul nsw i32 %12, %13
  %15 = mul nsw i32 %14, 4
  %16 = call i64 @GdipAlloc(i32 %15)
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %11, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i32 72, i32* %18, align 8
  %19 = load i32, i32* %7, align 4
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %8, align 4
  %22 = sub nsw i32 0, %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  store i32 %22, i32* %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 3
  store i32 1, i32* %24, align 4
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 4
  store i32 32, i32* %25, align 8
  %26 = load i32, i32* @BI_RGB, align 4
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 10
  store i32 %26, i32* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 9
  store i64 0, i64* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 8
  store i64 0, i64* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 7
  store i64 0, i64* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 6
  store i64 0, i64* %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 5
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32*, i32** %11, align 8
  %37 = bitcast %struct.TYPE_2__* %9 to i32*
  %38 = load i32, i32* @DIB_RGB_COLORS, align 4
  %39 = call i32 @GetDIBits(i32 %33, i32 %34, i32 0, i32 %35, i32* %36, i32* %37, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 (...) @GetLastError()
  %48 = call i32 @ok(i32 %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32* %44, i32 %45, i32 %46, i32 %47)
  %49 = load i32*, i32** %11, align 8
  ret i32* %49
}

declare dso_local i64 @GdipAlloc(i32) #1

declare dso_local i32 @GetDIBits(i32, i32, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, i32*, i32, i32, i32) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
