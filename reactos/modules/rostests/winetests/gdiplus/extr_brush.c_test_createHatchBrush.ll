; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_brush.c_test_createHatchBrush.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_brush.c_test_createHatchBrush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HatchStyleMin = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Expected the brush to be initialized.\0A\00", align 1
@HatchStyleMax = common dso_local global i32 0, align 4
@HatchStyle05Percent = common dso_local global i32 0, align 4
@InvalidParameter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_createHatchBrush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_createHatchBrush() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = load i32, i32* @HatchStyleMin, align 4
  %4 = call i32 @GdipCreateHatchBrush(i32 %3, i32 1, i32 2, i32** %2)
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* @Ok, align 4
  %6 = load i32, i32* %1, align 4
  %7 = call i32 @expect(i32 %5, i32 %6)
  %8 = load i32*, i32** %2, align 8
  %9 = icmp ne i32* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @ok(i32 %10, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @GdipDeleteBrush(i32* %12)
  %14 = load i32, i32* @HatchStyleMax, align 4
  %15 = call i32 @GdipCreateHatchBrush(i32 %14, i32 1, i32 2, i32** %2)
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* @Ok, align 4
  %17 = load i32, i32* %1, align 4
  %18 = call i32 @expect(i32 %16, i32 %17)
  %19 = load i32*, i32** %2, align 8
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @GdipDeleteBrush(i32* %23)
  %25 = load i32, i32* @HatchStyle05Percent, align 4
  %26 = call i32 @GdipCreateHatchBrush(i32 %25, i32 1, i32 2, i32** null)
  store i32 %26, i32* %1, align 4
  %27 = load i32, i32* @InvalidParameter, align 4
  %28 = load i32, i32* %1, align 4
  %29 = call i32 @expect(i32 %27, i32 %28)
  %30 = load i32, i32* @HatchStyleMin, align 4
  %31 = sub nsw i32 %30, 1
  %32 = call i32 @GdipCreateHatchBrush(i32 %31, i32 1, i32 2, i32** %2)
  store i32 %32, i32* %1, align 4
  %33 = load i32, i32* @InvalidParameter, align 4
  %34 = load i32, i32* %1, align 4
  %35 = call i32 @expect(i32 %33, i32 %34)
  %36 = load i32, i32* @HatchStyleMax, align 4
  %37 = add nsw i32 %36, 1
  %38 = call i32 @GdipCreateHatchBrush(i32 %37, i32 1, i32 2, i32** %2)
  store i32 %38, i32* %1, align 4
  %39 = load i32, i32* @InvalidParameter, align 4
  %40 = load i32, i32* %1, align 4
  %41 = call i32 @expect(i32 %39, i32 %40)
  ret void
}

declare dso_local i32 @GdipCreateHatchBrush(i32, i32, i32, i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @GdipDeleteBrush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
