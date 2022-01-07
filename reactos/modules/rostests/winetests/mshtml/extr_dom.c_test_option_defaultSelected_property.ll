; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_option_defaultSelected_property.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_option_defaultSelected_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VARIANT_FALSE = common dso_local global i32 0, align 4
@VARIANT_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_option_defaultSelected_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_option_defaultSelected_property(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* @VARIANT_FALSE, align 4
  %5 = call i32 @test_option_defaultSelected(i32* %3, i32 %4)
  %6 = load i32*, i32** %2, align 8
  %7 = load i32, i32* @VARIANT_FALSE, align 4
  %8 = call i32 @test_option_selected(i32* %6, i32 %7)
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @test_option_put_defaultSelected(i32* %9, i32 256)
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* @VARIANT_FALSE, align 4
  %13 = call i32 @test_option_defaultSelected(i32* %11, i32 %12)
  %14 = load i32*, i32** %2, align 8
  %15 = load i32, i32* @VARIANT_FALSE, align 4
  %16 = call i32 @test_option_selected(i32* %14, i32 %15)
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* @VARIANT_TRUE, align 4
  %19 = call i32 @test_option_put_defaultSelected(i32* %17, i32 %18)
  %20 = load i32*, i32** %2, align 8
  %21 = load i32, i32* @VARIANT_TRUE, align 4
  %22 = call i32 @test_option_defaultSelected(i32* %20, i32 %21)
  %23 = load i32*, i32** %2, align 8
  %24 = load i32, i32* @VARIANT_FALSE, align 4
  %25 = call i32 @test_option_selected(i32* %23, i32 %24)
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @test_option_put_defaultSelected(i32* %26, i32 256)
  %28 = load i32*, i32** %2, align 8
  %29 = load i32, i32* @VARIANT_FALSE, align 4
  %30 = call i32 @test_option_defaultSelected(i32* %28, i32 %29)
  %31 = load i32*, i32** %2, align 8
  %32 = load i32, i32* @VARIANT_FALSE, align 4
  %33 = call i32 @test_option_selected(i32* %31, i32 %32)
  %34 = load i32*, i32** %2, align 8
  %35 = load i32, i32* @VARIANT_TRUE, align 4
  %36 = call i32 @test_option_put_selected(i32* %34, i32 %35)
  %37 = load i32*, i32** %2, align 8
  %38 = load i32, i32* @VARIANT_TRUE, align 4
  %39 = call i32 @test_option_selected(i32* %37, i32 %38)
  %40 = load i32*, i32** %2, align 8
  %41 = load i32, i32* @VARIANT_FALSE, align 4
  %42 = call i32 @test_option_defaultSelected(i32* %40, i32 %41)
  %43 = load i32*, i32** %2, align 8
  %44 = load i32, i32* @VARIANT_TRUE, align 4
  %45 = call i32 @test_option_put_defaultSelected(i32* %43, i32 %44)
  %46 = load i32*, i32** %2, align 8
  %47 = load i32, i32* @VARIANT_TRUE, align 4
  %48 = call i32 @test_option_defaultSelected(i32* %46, i32 %47)
  %49 = load i32*, i32** %2, align 8
  %50 = load i32, i32* @VARIANT_TRUE, align 4
  %51 = call i32 @test_option_selected(i32* %49, i32 %50)
  %52 = load i32*, i32** %2, align 8
  %53 = load i32, i32* @VARIANT_TRUE, align 4
  %54 = call i32 @test_option_put_defaultSelected(i32* %52, i32 %53)
  %55 = load i32*, i32** %2, align 8
  %56 = load i32, i32* @VARIANT_FALSE, align 4
  %57 = call i32 @test_option_put_selected(i32* %55, i32 %56)
  ret void
}

declare dso_local i32 @test_option_defaultSelected(i32*, i32) #1

declare dso_local i32 @test_option_selected(i32*, i32) #1

declare dso_local i32 @test_option_put_defaultSelected(i32*, i32) #1

declare dso_local i32 @test_option_put_selected(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
