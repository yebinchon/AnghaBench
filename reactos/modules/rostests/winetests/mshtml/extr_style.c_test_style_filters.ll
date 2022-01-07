; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_style.c_test_style_filters.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_style.c_test_style_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"get_style failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"alpha(opacity=50.0040)\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"alpha(opacity=100)\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"xxx(a,b,c) alpha(opacity=100)\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@VARIANT_TRUE = common dso_local global i32 0, align 4
@VARIANT_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_style_filters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_style_filters(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i32* @get_elem2_iface(i32* %8)
  store i32* %9, i32** %3, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = call i64 @IHTMLElement_get_style(i32* %10, i32** %6)
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @S_OK, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @ok(i32 %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load i32*, i32** %3, align 8
  %19 = call i64 @IHTMLElement2_get_currentStyle(i32* %18, i32** %5)
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @S_OK, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @ok(i32 %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %24)
  %26 = load i32*, i32** %5, align 8
  %27 = call i32* @get_current_style2_iface(i32* %26)
  store i32* %27, i32** %4, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @test_style_filter(i32* %28, i8* null)
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @test_current_style_filter(i32* %30, i8* null)
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @set_style_filter(i32* %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @test_current_style_filter(i32* %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @set_style_filter(i32* %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @IHTMLStyle_Release(i32* %38)
  %40 = load i32*, i32** %2, align 8
  %41 = call i64 @IHTMLElement_get_style(i32* %40, i32** %6)
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* @S_OK, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @ok(i32 %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %46)
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @test_style_filter(i32* %48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @set_style_filter(i32* %50, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @set_style_filter(i32* %52, i8* null)
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @set_style_filter(i32* %54, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* @VARIANT_TRUE, align 4
  %58 = call i32 @test_style_remove_attribute(i32* %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %57)
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* @VARIANT_FALSE, align 4
  %61 = call i32 @test_style_remove_attribute(i32* %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %60)
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @test_style_filter(i32* %62, i8* null)
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @IHTMLCurrentStyle2_Release(i32* %64)
  %66 = load i32*, i32** %6, align 8
  %67 = call i32 @IHTMLStyle_Release(i32* %66)
  %68 = load i32*, i32** %3, align 8
  %69 = call i32 @IHTMLElement2_Release(i32* %68)
  ret void
}

declare dso_local i32* @get_elem2_iface(i32*) #1

declare dso_local i64 @IHTMLElement_get_style(i32*, i32**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @IHTMLElement2_get_currentStyle(i32*, i32**) #1

declare dso_local i32* @get_current_style2_iface(i32*) #1

declare dso_local i32 @test_style_filter(i32*, i8*) #1

declare dso_local i32 @test_current_style_filter(i32*, i8*) #1

declare dso_local i32 @set_style_filter(i32*, i8*) #1

declare dso_local i32 @IHTMLStyle_Release(i32*) #1

declare dso_local i32 @test_style_remove_attribute(i32*, i8*, i32) #1

declare dso_local i32 @IHTMLCurrentStyle2_Release(i32*) #1

declare dso_local i32 @IHTMLElement2_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
