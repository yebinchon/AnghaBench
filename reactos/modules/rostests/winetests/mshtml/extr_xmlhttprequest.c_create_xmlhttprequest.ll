; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_xmlhttprequest.c_create_xmlhttprequest.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_xmlhttprequest.c_create_xmlhttprequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"get_parentWindow failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"window == NULL\0A\00", align 1
@IID_IHTMLWindow5 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"IHTMLWindow5 not supported\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"get_XMLHttpRequest failed: %08x\0A\00", align 1
@VT_DISPATCH = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [42 x i8] c"V_VT(&var) is %08x, expected VT_DISPATCH\0A\00", align 1
@IID_IHTMLXMLHttpRequestFactory = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [61 x i8] c"QueryInterface(IID_IHTMLXMLHttpRequestFactory) failed: %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"factory == NULL\0A\00", align 1
@xhr = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [21 x i8] c"create failed: %08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"xhr == NULL\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @create_xmlhttprequest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_xmlhttprequest(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i64 @IHTMLDocument2_get_parentWindow(i32* %8, i32** %3)
  store i64 %9, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* @S_OK, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i64, i64* %7, align 8
  %15 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load i32*, i32** %3, align 8
  %17 = icmp ne i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32*, i32** %3, align 8
  %21 = bitcast i32** %4 to i8**
  %22 = call i64 @IHTMLWindow2_QueryInterface(i32* %20, i32* @IID_IHTMLWindow5, i8** %21)
  store i64 %22, i64* %7, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @IHTMLWindow2_Release(i32* %23)
  %25 = load i64, i64* %7, align 8
  %26 = call i64 @FAILED(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = call i32 @win_skip(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %76

30:                                               ; preds = %1
  %31 = call i32 @VariantInit(i32* %5)
  %32 = load i32*, i32** %4, align 8
  %33 = call i64 @IHTMLWindow5_get_XMLHttpRequest(i32* %32, i32* %5)
  store i64 %33, i64* %7, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @IHTMLWindow5_Release(i32* %34)
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* @S_OK, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = load i64, i64* %7, align 8
  %41 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i64 %40)
  %42 = call i64 @V_VT(i32* %5)
  %43 = load i64, i64* @VT_DISPATCH, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i64 @V_VT(i32* %5)
  %47 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i64 %46)
  %48 = call i32 @V_DISPATCH(i32* %5)
  %49 = bitcast i32** %6 to i8**
  %50 = call i64 @IDispatch_QueryInterface(i32 %48, i32* @IID_IHTMLXMLHttpRequestFactory, i8** %49)
  store i64 %50, i64* %7, align 8
  %51 = call i32 @VariantClear(i32* %5)
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* @S_OK, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = load i64, i64* %7, align 8
  %57 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0), i64 %56)
  %58 = load i32*, i32** %6, align 8
  %59 = icmp ne i32* %58, null
  %60 = zext i1 %59 to i32
  %61 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %62 = load i32*, i32** %6, align 8
  %63 = call i64 @IHTMLXMLHttpRequestFactory_create(i32* %62, i32** @xhr)
  store i64 %63, i64* %7, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @IHTMLXMLHttpRequestFactory_Release(i32* %64)
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* @S_OK, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = load i64, i64* %7, align 8
  %71 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i64 %70)
  %72 = load i32*, i32** @xhr, align 8
  %73 = icmp ne i32* %72, null
  %74 = zext i1 %73 to i32
  %75 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  br label %76

76:                                               ; preds = %30, %28
  ret void
}

declare dso_local i64 @IHTMLDocument2_get_parentWindow(i32*, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @IHTMLWindow2_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IHTMLWindow2_Release(i32*) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @VariantInit(i32*) #1

declare dso_local i64 @IHTMLWindow5_get_XMLHttpRequest(i32*, i32*) #1

declare dso_local i32 @IHTMLWindow5_Release(i32*) #1

declare dso_local i64 @V_VT(i32*) #1

declare dso_local i64 @IDispatch_QueryInterface(i32, i32*, i8**) #1

declare dso_local i32 @V_DISPATCH(i32*) #1

declare dso_local i32 @VariantClear(i32*) #1

declare dso_local i64 @IHTMLXMLHttpRequestFactory_create(i32*, i32**) #1

declare dso_local i32 @IHTMLXMLHttpRequestFactory_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
