; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_default_selection.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_default_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"get_selection failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"get_type failed: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"type = %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"createRange failed: %08x\0A\00", align 1
@IID_IHTMLTxtRange = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"Could not get IHTMLTxtRange interface: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_default_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_default_selection(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i64 @IHTMLDocument2_get_selection(i32* %8, i32** %3)
  store i64 %9, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* @S_OK, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @ok(i32 %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load i32*, i32** %3, align 8
  %17 = call i64 @IHTMLSelectionObject_get_type(i32* %16, i32* %6)
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @S_OK, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %22)
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @strcmp_wa(i32 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @wine_dbgstr_w(i32 %29)
  %31 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i64 %30)
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @SysFreeString(i32 %32)
  %34 = load i32*, i32** %3, align 8
  %35 = call i64 @IHTMLSelectionObject_createRange(i32* %34, i32** %5)
  store i64 %35, i64* %7, align 8
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @IHTMLSelectionObject_Release(i32* %36)
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @S_OK, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i64 %42)
  %44 = load i32*, i32** %5, align 8
  %45 = bitcast i32** %4 to i8**
  %46 = call i64 @IDispatch_QueryInterface(i32* %44, i32* @IID_IHTMLTxtRange, i8** %45)
  store i64 %46, i64* %7, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @IDispatch_Release(i32* %47)
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* @S_OK, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @ok(i32 %52, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i64 %53)
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @test_range_text(i32* %55, i32* null)
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @IHTMLTxtRange_Release(i32* %57)
  ret void
}

declare dso_local i64 @IHTMLDocument2_get_selection(i32*, i32**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @IHTMLSelectionObject_get_type(i32*, i32*) #1

declare dso_local i32 @strcmp_wa(i32, i8*) #1

declare dso_local i64 @wine_dbgstr_w(i32) #1

declare dso_local i32 @SysFreeString(i32) #1

declare dso_local i64 @IHTMLSelectionObject_createRange(i32*, i32**) #1

declare dso_local i32 @IHTMLSelectionObject_Release(i32*) #1

declare dso_local i64 @IDispatch_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IDispatch_Release(i32*) #1

declare dso_local i32 @test_range_text(i32*, i32*) #1

declare dso_local i32 @IHTMLTxtRange_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
