; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmldoc.c_test_HTMLDocument_StreamLoad.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmldoc.c_test_HTMLDocument_StreamLoad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [46 x i8] c"Testing HTMLDocument (IPersistStreamInit)...\0A\00", align 1
@LD_DOLOAD = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@load_from_stream = common dso_local global i32 0, align 4
@doc_unk = common dso_local global i32* null, align 8
@IID_IOleObject = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Could not get IOleObject: %08x\0A\00", align 1
@AdviseSink = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Advise failed: %08x\0A\00", align 1
@S_FALSE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@CLIENTSITE_EXPECTPATH = common dso_local global i32 0, align 4
@OLECMDF_SUPPORTED = common dso_local global i32 0, align 4
@DWL_VERBDONE = common dso_local global i32 0, align 4
@DWL_TRYCSS = common dso_local global i32 0, align 4
@Advise_Close = common dso_local global i32 0, align 4
@CustomDocHostUIHandler = common dso_local global i32 0, align 4
@CLIENTSITE_SETNULL = common dso_local global i32 0, align 4
@CLIENTSITE_DONTSET = common dso_local global i32 0, align 4
@view = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_HTMLDocument_StreamLoad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_HTMLDocument_StreamLoad() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = call i32 @trace(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @LD_DOLOAD, align 4
  %7 = call i32 @init_test(i32 %6)
  %8 = load i32, i32* @TRUE, align 4
  store i32 %8, i32* @load_from_stream, align 4
  %9 = call i32* (...) @create_document()
  store i32* %9, i32** %1, align 8
  %10 = load i32*, i32** %1, align 8
  store i32* %10, i32** @doc_unk, align 8
  %11 = load i32*, i32** %1, align 8
  %12 = bitcast i32** %2 to i8**
  %13 = call i64 @IHTMLDocument2_QueryInterface(i32* %11, i32* @IID_IOleObject, i8** %12)
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @S_OK, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @ok(i32 %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %18)
  %20 = load i32*, i32** %2, align 8
  %21 = call i64 @IOleObject_Advise(i32* %20, i32* @AdviseSink, i32* %3)
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @S_OK, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @ok(i32 %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %26)
  %28 = load i32*, i32** %1, align 8
  %29 = call i32 @test_readyState(i32* %28)
  %30 = load i32*, i32** %1, align 8
  %31 = load i32, i32* @S_FALSE, align 4
  %32 = call i32 @test_IsDirty(i32* %30, i32 %31)
  %33 = load i32*, i32** %1, align 8
  %34 = call i32 @test_ViewAdviseSink(i32* %33)
  %35 = load i32*, i32** %1, align 8
  %36 = call i32 @test_ConnectionPointContainer(i32* %35)
  %37 = load i32*, i32** %1, align 8
  %38 = load i32, i32* @FALSE, align 4
  %39 = call i32 @test_QueryService(i32* %37, i32 %38)
  %40 = load i32*, i32** %2, align 8
  %41 = load i32, i32* @CLIENTSITE_EXPECTPATH, align 4
  %42 = call i32 @test_ClientSite(i32* %40, i32 %41)
  %43 = load i32*, i32** %1, align 8
  %44 = load i32, i32* @TRUE, align 4
  %45 = call i32 @test_QueryService(i32* %43, i32 %44)
  %46 = load i32*, i32** %2, align 8
  %47 = call i32 @test_DoVerb(i32* %46)
  %48 = load i32*, i32** %1, align 8
  %49 = load i32, i32* @OLECMDF_SUPPORTED, align 4
  %50 = call i32 @test_MSHTML_QueryStatus(i32* %48, i32 %49)
  %51 = load i32*, i32** %1, align 8
  %52 = load i32, i32* @FALSE, align 4
  %53 = call i32 @test_GetCurMoniker(i32* %51, i32* null, i32* null, i32 %52)
  %54 = load i32*, i32** %1, align 8
  %55 = call i32 @test_StreamLoad(i32* %54)
  %56 = load i32, i32* @DWL_VERBDONE, align 4
  %57 = load i32, i32* @DWL_TRYCSS, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @test_download(i32 %58)
  %60 = load i32*, i32** %1, align 8
  %61 = load i32, i32* @OLECMDF_SUPPORTED, align 4
  %62 = call i32 @test_MSHTML_QueryStatus(i32* %60, i32 %61)
  %63 = call i32 (...) @test_UIDeactivate()
  %64 = load i32*, i32** %1, align 8
  %65 = load i32, i32* @TRUE, align 4
  %66 = call i32 @test_InPlaceDeactivate(i32* %64, i32 %65)
  %67 = load i32, i32* @Advise_Close, align 4
  %68 = call i32 @SET_EXPECT(i32 %67)
  %69 = load i32*, i32** %1, align 8
  %70 = load i32, i32* @TRUE, align 4
  %71 = call i32 @test_Close(i32* %69, i32 %70)
  %72 = load i32, i32* @Advise_Close, align 4
  %73 = call i32 @CHECK_CALLED(i32 %72)
  %74 = load i32*, i32** %1, align 8
  %75 = load i32, i32* @FALSE, align 4
  %76 = call i32 @test_external(i32* %74, i32 %75)
  %77 = load i32*, i32** %1, align 8
  %78 = load i32, i32* @S_FALSE, align 4
  %79 = call i32 @test_IsDirty(i32* %77, i32 %78)
  %80 = load i32*, i32** %1, align 8
  %81 = call i32 @set_custom_uihandler(i32* %80, i32* @CustomDocHostUIHandler)
  %82 = load i32*, i32** %2, align 8
  %83 = load i32, i32* @CLIENTSITE_SETNULL, align 4
  %84 = call i32 @test_ClientSite(i32* %82, i32 %83)
  %85 = load i32*, i32** %1, align 8
  %86 = load i32, i32* @TRUE, align 4
  %87 = call i32 @test_external(i32* %85, i32 %86)
  %88 = load i32*, i32** %2, align 8
  %89 = load i32, i32* @CLIENTSITE_SETNULL, align 4
  %90 = load i32, i32* @CLIENTSITE_DONTSET, align 4
  %91 = or i32 %89, %90
  %92 = call i32 @test_ClientSite(i32* %88, i32 %91)
  %93 = load i32*, i32** %1, align 8
  %94 = load i32, i32* @TRUE, align 4
  %95 = call i32 @test_external(i32* %93, i32 %94)
  %96 = load i32*, i32** %1, align 8
  %97 = call i32 @set_custom_uihandler(i32* %96, i32* null)
  %98 = load i32*, i32** %2, align 8
  %99 = load i32, i32* @CLIENTSITE_SETNULL, align 4
  %100 = load i32, i32* @CLIENTSITE_DONTSET, align 4
  %101 = or i32 %99, %100
  %102 = call i32 @test_ClientSite(i32* %98, i32 %101)
  %103 = load i32*, i32** %2, align 8
  %104 = call i32 @IOleObject_Release(i32* %103)
  %105 = load i32*, i32** @view, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %0
  %108 = load i32*, i32** @view, align 8
  %109 = call i32 @IOleDocumentView_Release(i32* %108)
  store i32* null, i32** @view, align 8
  br label %110

110:                                              ; preds = %107, %0
  %111 = load i32*, i32** %1, align 8
  %112 = call i32 @release_document(i32* %111)
  ret void
}

declare dso_local i32 @trace(i8*) #1

declare dso_local i32 @init_test(i32) #1

declare dso_local i32* @create_document(...) #1

declare dso_local i64 @IHTMLDocument2_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @IOleObject_Advise(i32*, i32*, i32*) #1

declare dso_local i32 @test_readyState(i32*) #1

declare dso_local i32 @test_IsDirty(i32*, i32) #1

declare dso_local i32 @test_ViewAdviseSink(i32*) #1

declare dso_local i32 @test_ConnectionPointContainer(i32*) #1

declare dso_local i32 @test_QueryService(i32*, i32) #1

declare dso_local i32 @test_ClientSite(i32*, i32) #1

declare dso_local i32 @test_DoVerb(i32*) #1

declare dso_local i32 @test_MSHTML_QueryStatus(i32*, i32) #1

declare dso_local i32 @test_GetCurMoniker(i32*, i32*, i32*, i32) #1

declare dso_local i32 @test_StreamLoad(i32*) #1

declare dso_local i32 @test_download(i32) #1

declare dso_local i32 @test_UIDeactivate(...) #1

declare dso_local i32 @test_InPlaceDeactivate(i32*, i32) #1

declare dso_local i32 @SET_EXPECT(i32) #1

declare dso_local i32 @test_Close(i32*, i32) #1

declare dso_local i32 @CHECK_CALLED(i32) #1

declare dso_local i32 @test_external(i32*, i32) #1

declare dso_local i32 @set_custom_uihandler(i32*, i32*) #1

declare dso_local i32 @IOleObject_Release(i32*) #1

declare dso_local i32 @IOleDocumentView_Release(i32*) #1

declare dso_local i32 @release_document(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
