; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_stylesheet.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_stylesheet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DIID_DispHTMLStyleSheet = common dso_local global i32 0, align 4
@IID_IHTMLStyleSheet = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"[object]\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"Could not get IHTMLStyleSheet: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"get_rules failed: %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"col == NULL\0A\00", align 1
@DIID_DispHTMLStyleSheetRulesCollection = common dso_local global i32 0, align 4
@IID_IHTMLStyleSheetRulesCollection = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"get_href failed: %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"got href != NULL\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c".body {\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [57 x i8] c".div { margin-right: 1px; }\0A.body { margin-right: 2px; }\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c".div {\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [28 x i8] c".div { margin-right: 1px; }\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_stylesheet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_stylesheet(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  store i32* null, i32** %3, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @test_disp2(i32* %7, i32* @DIID_DispHTMLStyleSheet, i32* @IID_IHTMLStyleSheet, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %9 = load i32*, i32** %2, align 8
  %10 = bitcast i32** %4 to i8**
  %11 = call i64 @IDispatch_QueryInterface(i32* %9, i32* @IID_IHTMLStyleSheet, i8** %10)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @S_OK, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = load i64, i64* %5, align 8
  %17 = call i32 (i32, i8*, ...) @ok(i32 %15, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %16)
  %18 = load i32*, i32** %4, align 8
  %19 = call i64 @IHTMLStyleSheet_get_rules(i32* %18, i32** %3)
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @S_OK, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = load i64, i64* %5, align 8
  %25 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %24)
  %26 = load i32*, i32** %3, align 8
  %27 = icmp ne i32* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @test_disp2(i32* %30, i32* @DIID_DispHTMLStyleSheetRulesCollection, i32* @IID_IHTMLStyleSheetRulesCollection, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @IHTMLStyleSheetRulesCollection_Release(i32* %32)
  store i32* inttoptr (i64 3735928559 to i32*), i32** %6, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = call i64 @IHTMLStyleSheet_get_href(i32* %34, i32** %6)
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @S_OK, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = load i64, i64* %5, align 8
  %41 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i64 %40)
  %42 = load i32*, i32** %6, align 8
  %43 = icmp eq i32* %42, null
  %44 = zext i1 %43 to i32
  %45 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @SysFreeString(i32* %46)
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* @FALSE, align 4
  %50 = call i32 @test_stylesheet_csstext(i32* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %49)
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* @TRUE, align 4
  %53 = call i32 @set_stylesheet_csstext(i32* %51, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i64 0, i64 0), i32 %52)
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* @TRUE, align 4
  %56 = call i32 @test_stylesheet_csstext(i32* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %55)
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* @FALSE, align 4
  %59 = call i32 @set_stylesheet_csstext(i32* %57, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), i32 %58)
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* @FALSE, align 4
  %62 = call i32 @test_stylesheet_csstext(i32* %60, i8* null, i32 %61)
  %63 = load i32*, i32** %4, align 8
  %64 = load i32, i32* @FALSE, align 4
  %65 = call i32 @set_stylesheet_csstext(i32* %63, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i32 %64)
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* @FALSE, align 4
  %68 = call i32 @test_stylesheet_csstext(i32* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %67)
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @IHTMLStyleSheet_Release(i32* %69)
  ret void
}

declare dso_local i32 @test_disp2(i32*, i32*, i32*, i8*) #1

declare dso_local i64 @IDispatch_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @IHTMLStyleSheet_get_rules(i32*, i32**) #1

declare dso_local i32 @IHTMLStyleSheetRulesCollection_Release(i32*) #1

declare dso_local i64 @IHTMLStyleSheet_get_href(i32*, i32**) #1

declare dso_local i32 @SysFreeString(i32*) #1

declare dso_local i32 @test_stylesheet_csstext(i32*, i8*, i32) #1

declare dso_local i32 @set_stylesheet_csstext(i32*, i8*, i32) #1

declare dso_local i32 @IHTMLStyleSheet_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
