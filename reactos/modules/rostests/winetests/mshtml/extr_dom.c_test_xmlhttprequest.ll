; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_xmlhttprequest.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_xmlhttprequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"get_XMLHttpRequest failed: %08x\0A\00", align 1
@VT_DISPATCH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"expect VT_DISPATCH, got %s\0A\00", align 1
@IID_IHTMLXMLHttpRequestFactory = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"QueryInterface(&IID_IHTMLXMLHttpRequestFactory) failed: %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"factory == NULL\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"create failed: %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"xml == NULL\0A\00", align 1
@DIID_DispHTMLXMLHttpRequest = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"[object]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_xmlhttprequest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_xmlhttprequest(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i64 @IHTMLWindow5_get_XMLHttpRequest(i32* %7, i32* %4)
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @S_OK, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load i64, i64* %3, align 8
  %14 = call i32 (i32, i8*, ...) @ok(i32 %12, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = call i64 @V_VT(i32* %4)
  %16 = load i64, i64* @VT_DISPATCH, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @debugstr_variant(i32* %4)
  %20 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  store i32* null, i32** %5, align 8
  %21 = call i32 @V_DISPATCH(i32* %4)
  %22 = bitcast i32** %5 to i8**
  %23 = call i64 @IDispatch_QueryInterface(i32 %21, i32* @IID_IHTMLXMLHttpRequestFactory, i8** %22)
  store i64 %23, i64* %3, align 8
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* @S_OK, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load i64, i64* %3, align 8
  %29 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i64 %28)
  %30 = load i32*, i32** %5, align 8
  %31 = icmp ne i32* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  store i32* null, i32** %6, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = call i64 @IHTMLXMLHttpRequestFactory_create(i32* %34, i32** %6)
  store i64 %35, i64* %3, align 8
  %36 = load i64, i64* %3, align 8
  %37 = load i64, i64* @S_OK, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = load i64, i64* %3, align 8
  %41 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i64 %40)
  %42 = load i32*, i32** %6, align 8
  %43 = icmp ne i32* %42, null
  %44 = zext i1 %43 to i32
  %45 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @test_disp(i32* %46, i32* @DIID_DispHTMLXMLHttpRequest, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @IHTMLXMLHttpRequest_Release(i32* %48)
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @IHTMLXMLHttpRequestFactory_Release(i32* %50)
  %52 = call i32 @VariantClear(i32* %4)
  ret void
}

declare dso_local i64 @IHTMLWindow5_get_XMLHttpRequest(i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @V_VT(i32*) #1

declare dso_local i32 @debugstr_variant(i32*) #1

declare dso_local i64 @IDispatch_QueryInterface(i32, i32*, i8**) #1

declare dso_local i32 @V_DISPATCH(i32*) #1

declare dso_local i64 @IHTMLXMLHttpRequestFactory_create(i32*, i32**) #1

declare dso_local i32 @test_disp(i32*, i32*, i8*) #1

declare dso_local i32 @IHTMLXMLHttpRequest_Release(i32*) #1

declare dso_local i32 @IHTMLXMLHttpRequestFactory_Release(i32*) #1

declare dso_local i32 @VariantClear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
