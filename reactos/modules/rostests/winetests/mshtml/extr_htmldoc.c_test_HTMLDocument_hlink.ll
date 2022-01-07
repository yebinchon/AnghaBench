; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmldoc.c_test_HTMLDocument_hlink.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmldoc.c_test_HTMLDocument_hlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"Testing HTMLDocument (hlink)...\0A\00", align 1
@LD_DOLOAD = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ipsex = common dso_local global i32 0, align 4
@doc_unk = common dso_local global i32* null, align 8
@CustomDocHostUIHandler = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@Moniker = common dso_local global i32 0, align 4
@status_code = common dso_local global i32 0, align 4
@DWL_CSS = common dso_local global i32 0, align 4
@DWL_TRYCSS = common dso_local global i32 0, align 4
@HTTP_STATUS_OK = common dso_local global i32 0, align 4
@S_FALSE = common dso_local global i32 0, align 4
@OLECMDF_SUPPORTED = common dso_local global i32 0, align 4
@view = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test_HTMLDocument_hlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_HTMLDocument_hlink(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i32 @trace(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @LD_DOLOAD, align 4
  %6 = call i32 @init_test(i32 %5)
  %7 = load i32, i32* @TRUE, align 4
  store i32 %7, i32* @ipsex, align 4
  %8 = call i32* (...) @create_document()
  store i32* %8, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  store i32* %9, i32** @doc_unk, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @set_custom_uihandler(i32* %10, i32* @CustomDocHostUIHandler)
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @test_ViewAdviseSink(i32* %12)
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @test_ConnectionPointContainer(i32* %14)
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* @FALSE, align 4
  %18 = call i32 @test_GetCurMoniker(i32* %16, i32* null, i32* null, i32 %17)
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @test_Persist(i32* %19, i32* @Moniker)
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @test_Navigate(i32* %21)
  %23 = load i32, i32* %2, align 4
  store i32 %23, i32* @status_code, align 4
  %24 = load i32, i32* @DWL_CSS, align 4
  %25 = load i32, i32* @DWL_TRYCSS, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @test_download(i32 %26)
  %28 = load i32, i32* @HTTP_STATUS_OK, align 4
  store i32 %28, i32* @status_code, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* @S_FALSE, align 4
  %31 = call i32 @test_IsDirty(i32* %29, i32 %30)
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* @OLECMDF_SUPPORTED, align 4
  %34 = call i32 @test_MSHTML_QueryStatus(i32* %32, i32 %33)
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @test_exec_onunload(i32* %35)
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* @TRUE, align 4
  %39 = call i32 @test_Window(i32* %37, i32 %38)
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* @TRUE, align 4
  %42 = call i32 @test_InPlaceDeactivate(i32* %40, i32 %41)
  %43 = load i32*, i32** %3, align 8
  %44 = load i32, i32* @FALSE, align 4
  %45 = call i32 @test_Close(i32* %43, i32 %44)
  %46 = load i32*, i32** %3, align 8
  %47 = load i32, i32* @S_FALSE, align 4
  %48 = call i32 @test_IsDirty(i32* %46, i32 %47)
  %49 = load i32*, i32** %3, align 8
  %50 = load i32, i32* @FALSE, align 4
  %51 = call i32 @test_GetCurMoniker(i32* %49, i32* @Moniker, i32* null, i32 %50)
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @test_clear(i32* %52)
  %54 = load i32*, i32** %3, align 8
  %55 = load i32, i32* @FALSE, align 4
  %56 = call i32 @test_GetCurMoniker(i32* %54, i32* @Moniker, i32* null, i32 %55)
  %57 = load i32*, i32** @view, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %1
  %60 = load i32*, i32** @view, align 8
  %61 = call i32 @IOleDocumentView_Release(i32* %60)
  br label %62

62:                                               ; preds = %59, %1
  store i32* null, i32** @view, align 8
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 @release_document(i32* %63)
  ret void
}

declare dso_local i32 @trace(i8*) #1

declare dso_local i32 @init_test(i32) #1

declare dso_local i32* @create_document(...) #1

declare dso_local i32 @set_custom_uihandler(i32*, i32*) #1

declare dso_local i32 @test_ViewAdviseSink(i32*) #1

declare dso_local i32 @test_ConnectionPointContainer(i32*) #1

declare dso_local i32 @test_GetCurMoniker(i32*, i32*, i32*, i32) #1

declare dso_local i32 @test_Persist(i32*, i32*) #1

declare dso_local i32 @test_Navigate(i32*) #1

declare dso_local i32 @test_download(i32) #1

declare dso_local i32 @test_IsDirty(i32*, i32) #1

declare dso_local i32 @test_MSHTML_QueryStatus(i32*, i32) #1

declare dso_local i32 @test_exec_onunload(i32*) #1

declare dso_local i32 @test_Window(i32*, i32) #1

declare dso_local i32 @test_InPlaceDeactivate(i32*, i32) #1

declare dso_local i32 @test_Close(i32*, i32) #1

declare dso_local i32 @test_clear(i32*) #1

declare dso_local i32 @IOleDocumentView_Release(i32*) #1

declare dso_local i32 @release_document(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
