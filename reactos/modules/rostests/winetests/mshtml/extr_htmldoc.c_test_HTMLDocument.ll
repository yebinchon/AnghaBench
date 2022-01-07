; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmldoc.c_test_HTMLDocument.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmldoc.c_test_HTMLDocument.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"Testing HTMLDocument (%s, %s)...\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"no load\00", align 1
@report_mime = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"mime\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"no mime\00", align 1
@LD_DOLOAD = common dso_local global i32 0, align 4
@LD_NO = common dso_local global i32 0, align 4
@doc_unk = common dso_local global i32* null, align 8
@S_FALSE = common dso_local global i32 0, align 4
@OLECMDF_SUPPORTED = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@Moniker = common dso_local global i32 0, align 4
@CLIENTSITE_EXPECTPATH = common dso_local global i32 0, align 4
@CustomDocHostUIHandler = common dso_local global i32 0, align 4
@DWL_CSS = common dso_local global i32 0, align 4
@DWL_TRYCSS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@CLIENTSITE_SETNULL = common dso_local global i32 0, align 4
@CallUIActivate_None = common dso_local global i32 0, align 4
@call_UIActivate = common dso_local global i32 0, align 4
@CallUIActivate_AfterShow = common dso_local global i32 0, align 4
@view = common dso_local global i32* null, align 8
@doc_hwnd = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"hwnd is destroyed\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"hwnd is not destroyed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @test_HTMLDocument to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_HTMLDocument(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = icmp ne i64 %6, 0
  %8 = zext i1 %7 to i64
  %9 = select i1 %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %10 = load i64, i64* @report_mime, align 8
  %11 = icmp ne i64 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  %14 = call i32 @trace(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %9, i8* %13)
  %15 = load i64, i64* %3, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @LD_DOLOAD, align 4
  br label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @LD_NO, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  %23 = call i32 @init_test(i32 %22)
  %24 = load i64, i64* %4, align 8
  store i64 %24, i64* @report_mime, align 8
  %25 = call i32* (...) @create_document()
  store i32* %25, i32** %5, align 8
  %26 = load i32*, i32** %5, align 8
  store i32* %26, i32** @doc_unk, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @test_QueryInterface(i32* %27)
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @test_Advise(i32* %29)
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* @S_FALSE, align 4
  %33 = call i32 @test_IsDirty(i32* %31, i32 %32)
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* @OLECMDF_SUPPORTED, align 4
  %36 = call i32 @test_MSHTML_QueryStatus(i32* %34, i32 %35)
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* @FALSE, align 4
  %39 = call i32 @test_external(i32* %37, i32 %38)
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @test_ViewAdviseSink(i32* %40)
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @test_ConnectionPointContainer(i32* %42)
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* @FALSE, align 4
  %46 = call i32 @test_GetCurMoniker(i32* %44, i32* null, i32* null, i32 %45)
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @test_Persist(i32* %47, i32* @Moniker)
  %49 = load i64, i64* %3, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %21
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @test_OnAmbientPropertyChange2(i32* %52)
  br label %54

54:                                               ; preds = %51, %21
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* @CLIENTSITE_EXPECTPATH, align 4
  %57 = call i32 @test_Activate(i32* %55, i32 %56)
  %58 = load i64, i64* %3, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %54
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @set_custom_uihandler(i32* %61, i32* @CustomDocHostUIHandler)
  %63 = load i32, i32* @DWL_CSS, align 4
  %64 = load i32, i32* @DWL_TRYCSS, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @test_download(i32 %65)
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* @FALSE, align 4
  %69 = call i32 @test_GetCurMoniker(i32* %67, i32* @Moniker, i32* null, i32 %68)
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 @test_elem_from_point(i32* %70)
  br label %72

72:                                               ; preds = %60, %54
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* @OLECMDF_SUPPORTED, align 4
  %75 = call i32 @test_MSHTML_QueryStatus(i32* %73, i32 %74)
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @test_OleCommandTarget_fail(i32* %76)
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 @test_OleCommandTarget(i32* %78)
  %80 = load i32*, i32** %5, align 8
  %81 = call i32 @test_exec_optical_zoom(i32* %80, i32 200)
  %82 = load i32*, i32** %5, align 8
  %83 = call i32 @test_exec_optical_zoom(i32* %82, i32 100)
  %84 = load i32*, i32** %5, align 8
  %85 = call i32 @test_OnAmbientPropertyChange(i32* %84)
  %86 = load i32*, i32** %5, align 8
  %87 = load i32, i32* @TRUE, align 4
  %88 = call i32 @test_Window(i32* %86, i32 %87)
  %89 = load i32*, i32** %5, align 8
  %90 = load i32, i32* @TRUE, align 4
  %91 = call i32 @test_external(i32* %89, i32 %90)
  %92 = load i32*, i32** %5, align 8
  %93 = call i32 @test_target_container(i32* %92)
  %94 = call i32 (...) @test_UIDeactivate()
  %95 = load i32*, i32** %5, align 8
  %96 = call i32 @test_OleCommandTarget(i32* %95)
  %97 = load i32*, i32** %5, align 8
  %98 = load i32, i32* @TRUE, align 4
  %99 = call i32 @test_Window(i32* %97, i32 %98)
  %100 = load i32*, i32** %5, align 8
  %101 = load i32, i32* @TRUE, align 4
  %102 = call i32 @test_InPlaceDeactivate(i32* %100, i32 %101)
  %103 = load i32*, i32** %5, align 8
  %104 = load i32, i32* @FALSE, align 4
  %105 = call i32 @test_Window(i32* %103, i32 %104)
  %106 = call i32 (...) @test_Hide()
  %107 = load i32*, i32** %5, align 8
  %108 = load i32, i32* @FALSE, align 4
  %109 = call i32 @test_InPlaceDeactivate(i32* %107, i32 %108)
  %110 = call i32 (...) @test_CloseView()
  %111 = load i32*, i32** %5, align 8
  %112 = load i32, i32* @FALSE, align 4
  %113 = call i32 @test_Close(i32* %111, i32 %112)
  %114 = load i32*, i32** %5, align 8
  %115 = load i32, i32* @CLIENTSITE_SETNULL, align 4
  %116 = call i32 @test_Activate(i32* %114, i32 %115)
  %117 = load i32*, i32** %5, align 8
  %118 = load i32, i32* @TRUE, align 4
  %119 = call i32 @test_Window(i32* %117, i32 %118)
  %120 = load i32*, i32** %5, align 8
  %121 = call i32 @test_OleCommandTarget(i32* %120)
  %122 = call i32 (...) @test_UIDeactivate()
  %123 = load i32*, i32** %5, align 8
  %124 = load i32, i32* @TRUE, align 4
  %125 = call i32 @test_InPlaceDeactivate(i32* %123, i32 %124)
  %126 = load i32*, i32** %5, align 8
  %127 = load i32, i32* @FALSE, align 4
  %128 = call i32 @test_Close(i32* %126, i32 %127)
  %129 = load i32, i32* @CallUIActivate_None, align 4
  store i32 %129, i32* @call_UIActivate, align 4
  %130 = load i32*, i32** %5, align 8
  %131 = load i32, i32* @CLIENTSITE_SETNULL, align 4
  %132 = call i32 @test_Activate(i32* %130, i32 %131)
  %133 = load i32*, i32** %5, align 8
  %134 = load i32, i32* @TRUE, align 4
  %135 = call i32 @test_Window(i32* %133, i32 %134)
  %136 = load i32*, i32** %5, align 8
  %137 = load i32, i32* @TRUE, align 4
  %138 = call i32 @test_external(i32* %136, i32 %137)
  %139 = load i32*, i32** %5, align 8
  %140 = call i32 @set_custom_uihandler(i32* %139, i32* null)
  %141 = load i32*, i32** %5, align 8
  %142 = load i32, i32* @FALSE, align 4
  %143 = call i32 @test_external(i32* %141, i32 %142)
  %144 = call i32 (...) @test_UIDeactivate()
  %145 = load i32*, i32** %5, align 8
  %146 = load i32, i32* @TRUE, align 4
  %147 = call i32 @test_InPlaceDeactivate(i32* %145, i32 %146)
  %148 = call i32 (...) @test_CloseView()
  %149 = call i32 (...) @test_CloseView()
  %150 = load i32*, i32** %5, align 8
  %151 = load i32, i32* @TRUE, align 4
  %152 = call i32 @test_Close(i32* %150, i32 %151)
  %153 = load i32*, i32** %5, align 8
  %154 = call i32 @test_OnAmbientPropertyChange2(i32* %153)
  %155 = load i32*, i32** %5, align 8
  %156 = load i64, i64* %3, align 8
  %157 = icmp ne i64 %156, 0
  %158 = zext i1 %157 to i64
  %159 = select i1 %157, i32* @Moniker, i32* null
  %160 = load i32, i32* @FALSE, align 4
  %161 = call i32 @test_GetCurMoniker(i32* %155, i32* %159, i32* null, i32 %160)
  %162 = load i64, i64* %3, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %181, label %164

164:                                              ; preds = %72
  %165 = load i32, i32* @CallUIActivate_AfterShow, align 4
  store i32 %165, i32* @call_UIActivate, align 4
  %166 = load i32*, i32** %5, align 8
  %167 = call i32 @test_Activate(i32* %166, i32 0)
  %168 = load i32*, i32** %5, align 8
  %169 = load i32, i32* @TRUE, align 4
  %170 = call i32 @test_Window(i32* %168, i32 %169)
  %171 = load i32*, i32** %5, align 8
  %172 = call i32 @test_OleCommandTarget(i32* %171)
  %173 = call i32 (...) @test_UIDeactivate()
  %174 = load i32*, i32** %5, align 8
  %175 = load i32, i32* @TRUE, align 4
  %176 = call i32 @test_InPlaceDeactivate(i32* %174, i32 %175)
  %177 = load i32*, i32** %5, align 8
  %178 = load i32, i32* @FALSE, align 4
  %179 = call i32 @test_Close(i32* %177, i32 %178)
  %180 = load i32, i32* @CallUIActivate_None, align 4
  store i32 %180, i32* @call_UIActivate, align 4
  br label %181

181:                                              ; preds = %164, %72
  %182 = load i32*, i32** @view, align 8
  %183 = icmp ne i32* %182, null
  br i1 %183, label %184, label %187

184:                                              ; preds = %181
  %185 = load i32*, i32** @view, align 8
  %186 = call i32 @IOleDocumentView_Release(i32* %185)
  br label %187

187:                                              ; preds = %184, %181
  store i32* null, i32** @view, align 8
  %188 = load i32, i32* @doc_hwnd, align 4
  %189 = call i32 @IsWindow(i32 %188)
  %190 = call i32 @ok(i32 %189, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %191 = load i32*, i32** %5, align 8
  %192 = call i32 @release_document(i32* %191)
  %193 = load i32, i32* @doc_hwnd, align 4
  %194 = call i32 @IsWindow(i32 %193)
  %195 = icmp ne i32 %194, 0
  %196 = xor i1 %195, true
  %197 = zext i1 %196 to i32
  %198 = call i32 @ok(i32 %197, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i32 @trace(i8*, i8*, i8*) #1

declare dso_local i32 @init_test(i32) #1

declare dso_local i32* @create_document(...) #1

declare dso_local i32 @test_QueryInterface(i32*) #1

declare dso_local i32 @test_Advise(i32*) #1

declare dso_local i32 @test_IsDirty(i32*, i32) #1

declare dso_local i32 @test_MSHTML_QueryStatus(i32*, i32) #1

declare dso_local i32 @test_external(i32*, i32) #1

declare dso_local i32 @test_ViewAdviseSink(i32*) #1

declare dso_local i32 @test_ConnectionPointContainer(i32*) #1

declare dso_local i32 @test_GetCurMoniker(i32*, i32*, i32*, i32) #1

declare dso_local i32 @test_Persist(i32*, i32*) #1

declare dso_local i32 @test_OnAmbientPropertyChange2(i32*) #1

declare dso_local i32 @test_Activate(i32*, i32) #1

declare dso_local i32 @set_custom_uihandler(i32*, i32*) #1

declare dso_local i32 @test_download(i32) #1

declare dso_local i32 @test_elem_from_point(i32*) #1

declare dso_local i32 @test_OleCommandTarget_fail(i32*) #1

declare dso_local i32 @test_OleCommandTarget(i32*) #1

declare dso_local i32 @test_exec_optical_zoom(i32*, i32) #1

declare dso_local i32 @test_OnAmbientPropertyChange(i32*) #1

declare dso_local i32 @test_Window(i32*, i32) #1

declare dso_local i32 @test_target_container(i32*) #1

declare dso_local i32 @test_UIDeactivate(...) #1

declare dso_local i32 @test_InPlaceDeactivate(i32*, i32) #1

declare dso_local i32 @test_Hide(...) #1

declare dso_local i32 @test_CloseView(...) #1

declare dso_local i32 @test_Close(i32*, i32) #1

declare dso_local i32 @IOleDocumentView_Release(i32*) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @IsWindow(i32) #1

declare dso_local i32 @release_document(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
