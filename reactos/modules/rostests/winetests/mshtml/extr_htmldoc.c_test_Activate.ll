; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmldoc.c_test_Activate.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmldoc.c_test_Activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@doc_hwnd = common dso_local global i32 0, align 4
@last_hwnd = common dso_local global i32 0, align 4
@view = common dso_local global i32* null, align 8
@IID_IOleObject = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"QueryInterface(IID_IOleObject) failed: %08x\0A\00", align 1
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [54 x i8] c"GetUserClassID returned: %08x, expected E_INVALIDARG\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"GetUserClassID failed: %08x\0A\00", align 1
@CLSID_HTMLDocument = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"guid != CLSID_HTMLDocument\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@call_UIActivate = common dso_local global i64 0, align 8
@CallUIActivate_AfterShow = common dso_local global i64 0, align 8
@IID_IOleDocumentView = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [52 x i8] c"IOleObject_QueryInterface failed with error 0x%08x\0A\00", align 1
@OnFocus_TRUE = common dso_local global i32 0, align 4
@SetActiveObject = common dso_local global i32 0, align 4
@ShowUI = common dso_local global i32 0, align 4
@InPlaceUIWindow_SetActiveObject = common dso_local global i32 0, align 4
@InPlaceFrame_SetBorderSpace = common dso_local global i32 0, align 4
@expect_status_text = common dso_local global i32* null, align 8
@TRUE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [54 x i8] c"IOleDocumentView_UIActivate failed with error 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @test_Activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_Activate(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %5, align 8
  %9 = load i32, i32* @doc_hwnd, align 4
  store i32 %9, i32* @last_hwnd, align 4
  %10 = load i32*, i32** @view, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32*, i32** @view, align 8
  %14 = call i32 @IOleDocumentView_Release(i32* %13)
  br label %15

15:                                               ; preds = %12, %2
  store i32* null, i32** @view, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = bitcast i32** %5 to i8**
  %18 = call i64 @IHTMLDocument2_QueryInterface(i32* %16, i32* @IID_IOleObject, i8** %17)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @S_OK, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load i64, i64* %8, align 8
  %24 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %23)
  %25 = load i32*, i32** %5, align 8
  %26 = call i64 @IOleObject_GetUserClassID(i32* %25, i32* null)
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @E_INVALIDARG, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i64, i64* %8, align 8
  %32 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  %33 = load i32*, i32** %5, align 8
  %34 = call i64 @IOleObject_GetUserClassID(i32* %33, i32* %7)
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* @S_OK, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i64, i64* %8, align 8
  %40 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %39)
  %41 = call i32 @IsEqualGUID(i32* %7, i32* @CLSID_HTMLDocument)
  %42 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @test_OnFrameWindowActivate(i32* %43)
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @test_ClientSite(i32* %45, i32 %46)
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* @FALSE, align 4
  %50 = call i32 @test_InPlaceDeactivate(i32* %48, i32 %49)
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @test_DoVerb(i32* %51)
  %53 = load i64, i64* @call_UIActivate, align 8
  %54 = load i64, i64* @CallUIActivate_AfterShow, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %97

56:                                               ; preds = %15
  %57 = load i32*, i32** %5, align 8
  %58 = bitcast i32** %6 to i8**
  %59 = call i64 @IOleObject_QueryInterface(i32* %57, i32* @IID_IOleDocumentView, i8** %58)
  store i64 %59, i64* %8, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* @S_OK, align 8
  %62 = icmp eq i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = load i64, i64* %8, align 8
  %65 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i64 %64)
  %66 = load i32, i32* @OnFocus_TRUE, align 4
  %67 = call i32 @SET_EXPECT(i32 %66)
  %68 = load i32, i32* @SetActiveObject, align 4
  %69 = call i32 @SET_EXPECT(i32 %68)
  %70 = load i32, i32* @ShowUI, align 4
  %71 = call i32 @SET_EXPECT(i32 %70)
  %72 = load i32, i32* @InPlaceUIWindow_SetActiveObject, align 4
  %73 = call i32 @SET_EXPECT(i32 %72)
  %74 = load i32, i32* @InPlaceFrame_SetBorderSpace, align 4
  %75 = call i32 @SET_EXPECT(i32 %74)
  store i32* null, i32** @expect_status_text, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* @TRUE, align 4
  %78 = call i64 @IOleDocumentView_UIActivate(i32* %76, i32 %77)
  store i64 %78, i64* %8, align 8
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* @S_OK, align 8
  %81 = icmp eq i64 %79, %80
  %82 = zext i1 %81 to i32
  %83 = load i64, i64* %8, align 8
  %84 = call i32 (i32, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i64 %83)
  %85 = load i32, i32* @OnFocus_TRUE, align 4
  %86 = call i32 @CHECK_CALLED(i32 %85)
  %87 = load i32, i32* @SetActiveObject, align 4
  %88 = call i32 @CHECK_CALLED(i32 %87)
  %89 = load i32, i32* @ShowUI, align 4
  %90 = call i32 @CHECK_CALLED(i32 %89)
  %91 = load i32, i32* @InPlaceUIWindow_SetActiveObject, align 4
  %92 = call i32 @CHECK_CALLED(i32 %91)
  %93 = load i32, i32* @InPlaceFrame_SetBorderSpace, align 4
  %94 = call i32 @CHECK_CALLED(i32 %93)
  %95 = load i32*, i32** %6, align 8
  %96 = call i32 @IOleDocumentView_Release(i32* %95)
  br label %97

97:                                               ; preds = %56, %15
  %98 = load i32*, i32** %5, align 8
  %99 = call i32 @IOleObject_Release(i32* %98)
  %100 = load i32*, i32** %3, align 8
  %101 = call i32 @test_OnFrameWindowActivate(i32* %100)
  ret void
}

declare dso_local i32 @IOleDocumentView_Release(i32*) #1

declare dso_local i64 @IHTMLDocument2_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @IOleObject_GetUserClassID(i32*, i32*) #1

declare dso_local i32 @IsEqualGUID(i32*, i32*) #1

declare dso_local i32 @test_OnFrameWindowActivate(i32*) #1

declare dso_local i32 @test_ClientSite(i32*, i32) #1

declare dso_local i32 @test_InPlaceDeactivate(i32*, i32) #1

declare dso_local i32 @test_DoVerb(i32*) #1

declare dso_local i64 @IOleObject_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @SET_EXPECT(i32) #1

declare dso_local i64 @IOleDocumentView_UIActivate(i32*, i32) #1

declare dso_local i32 @CHECK_CALLED(i32) #1

declare dso_local i32 @IOleObject_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
