; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_style.c_basic_style_test.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_style.c_basic_style_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"get_body failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"get_style failed: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"divid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @basic_style_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @basic_style_test(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i64 @IHTMLDocument2_get_body(i32* %7, i32** %4)
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @S_OK, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @ok(i32 %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load i32*, i32** %4, align 8
  %16 = call i64 @IHTMLElement_get_style(i32* %15, i32** %5)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @S_OK, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %21)
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @test_body_style(i32* %23)
  %25 = load i32*, i32** %4, align 8
  %26 = call i32* @get_current_style(i32* %25)
  store i32* %26, i32** %3, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @test_current_style(i32* %27)
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @IHTMLCurrentStyle_Release(i32* %29)
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @IHTMLElement_Release(i32* %31)
  %33 = load i32*, i32** %2, align 8
  %34 = call i32* @get_element_by_id(i32* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32* %34, i32** %4, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @test_style_filters(i32* %35)
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @test_set_csstext(i32* %37)
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @IHTMLStyle_Release(i32* %39)
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @IHTMLElement_Release(i32* %41)
  ret void
}

declare dso_local i64 @IHTMLDocument2_get_body(i32*, i32**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @IHTMLElement_get_style(i32*, i32**) #1

declare dso_local i32 @test_body_style(i32*) #1

declare dso_local i32* @get_current_style(i32*) #1

declare dso_local i32 @test_current_style(i32*) #1

declare dso_local i32 @IHTMLCurrentStyle_Release(i32*) #1

declare dso_local i32 @IHTMLElement_Release(i32*) #1

declare dso_local i32* @get_element_by_id(i32*, i8*) #1

declare dso_local i32 @test_style_filters(i32*) #1

declare dso_local i32 @test_set_csstext(i32*) #1

declare dso_local i32 @IHTMLStyle_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
