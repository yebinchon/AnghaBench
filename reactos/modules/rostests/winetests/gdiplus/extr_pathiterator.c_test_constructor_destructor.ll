; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_pathiterator.c_test_constructor_destructor.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_pathiterator.c_test_constructor_destructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FillModeAlternate = common dso_local global i32 0, align 4
@InvalidParameter = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Expected iterator to be created\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_constructor_destructor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_constructor_destructor() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @FillModeAlternate, align 4
  %5 = call i32 @GdipCreatePath(i32 %4, i32** %1)
  %6 = load i32*, i32** %1, align 8
  %7 = call i32 @GdipAddPathRectangle(i32* %6, double 5.000000e+00, double 5.000000e+00, double 1.000000e+02, double 5.000000e+01)
  %8 = call i32 @GdipCreatePathIter(i32** null, i32* null)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @InvalidParameter, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @expect(i32 %9, i32 %10)
  store i32* null, i32** %2, align 8
  %12 = call i32 @GdipCreatePathIter(i32** %2, i32* null)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @Ok, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @expect(i32 %13, i32 %14)
  %16 = load i32*, i32** %2, align 8
  %17 = icmp ne i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @ok(i32 %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @GdipDeletePathIter(i32* %20)
  %22 = load i32*, i32** %1, align 8
  %23 = call i32 @GdipCreatePathIter(i32** null, i32* %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* @InvalidParameter, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @expect(i32 %24, i32 %25)
  %27 = call i32 @GdipDeletePathIter(i32* null)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* @InvalidParameter, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @expect(i32 %28, i32 %29)
  %31 = load i32*, i32** %1, align 8
  %32 = call i32 @GdipCreatePathIter(i32** %2, i32* %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* @Ok, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @expect(i32 %33, i32 %34)
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @GdipDeletePathIter(i32* %36)
  %38 = load i32*, i32** %1, align 8
  %39 = call i32 @GdipDeletePath(i32* %38)
  ret void
}

declare dso_local i32 @GdipCreatePath(i32, i32**) #1

declare dso_local i32 @GdipAddPathRectangle(i32*, double, double, double, double) #1

declare dso_local i32 @GdipCreatePathIter(i32**, i32*) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @GdipDeletePathIter(i32*) #1

declare dso_local i32 @GdipDeletePath(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
