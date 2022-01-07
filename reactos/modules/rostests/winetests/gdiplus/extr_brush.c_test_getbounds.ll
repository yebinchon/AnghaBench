; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_brush.c_test_getbounds.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_brush.c_test_getbounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@getbounds_ptf = common dso_local global i32 0, align 4
@WrapModeClamp = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@InvalidParameter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_getbounds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_getbounds() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__, align 4
  %4 = load i32, i32* @getbounds_ptf, align 4
  %5 = load i32, i32* @WrapModeClamp, align 4
  %6 = call i32 @GdipCreatePathGradient(i32 %4, i32 4, i32 %5, i32** %2)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* @Ok, align 4
  %8 = load i32, i32* %1, align 4
  %9 = call i32 @expect(i32 %7, i32 %8)
  %10 = call i32 @GdipGetPathGradientRect(i32* null, %struct.TYPE_3__* null)
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* @InvalidParameter, align 4
  %12 = load i32, i32* %1, align 4
  %13 = call i32 @expect(i32 %11, i32 %12)
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @GdipGetPathGradientRect(i32* %14, %struct.TYPE_3__* null)
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* @InvalidParameter, align 4
  %17 = load i32, i32* %1, align 4
  %18 = call i32 @expect(i32 %16, i32 %17)
  %19 = call i32 @GdipGetPathGradientRect(i32* null, %struct.TYPE_3__* %3)
  store i32 %19, i32* %1, align 4
  %20 = load i32, i32* @InvalidParameter, align 4
  %21 = load i32, i32* %1, align 4
  %22 = call i32 @expect(i32 %20, i32 %21)
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @GdipGetPathGradientRect(i32* %23, %struct.TYPE_3__* %3)
  store i32 %24, i32* %1, align 4
  %25 = load i32, i32* @Ok, align 4
  %26 = load i32, i32* %1, align 4
  %27 = call i32 @expect(i32 %25, i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @expectf(double 0.000000e+00, i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @expectf(double 2.000000e+01, i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @expectf(double 5.000000e+01, i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @expectf(double 3.000000e+01, i32 %38)
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @GdipDeleteBrush(i32* %40)
  ret void
}

declare dso_local i32 @GdipCreatePathGradient(i32, i32, i32, i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @GdipGetPathGradientRect(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @expectf(double, i32) #1

declare dso_local i32 @GdipDeleteBrush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
