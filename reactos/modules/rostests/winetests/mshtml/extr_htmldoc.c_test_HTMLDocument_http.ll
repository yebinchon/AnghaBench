; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmldoc.c_test_HTMLDocument_http.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmldoc.c_test_HTMLDocument_http.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"Testing HTMLDocument (http%s)...\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c" with IWebBrowserApp\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@support_wbapp = common dso_local global i64 0, align 8
@winetest_interactive = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"IE running in Enhanced Security Configuration\0A\00", align 1
@LD_DOLOAD = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@ipsex = common dso_local global i64 0, align 8
@doc_unk = common dso_local global i32* null, align 8
@http_urlW = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"CreateURLMoniker failed: %08x\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@DWL_HTTP = common dso_local global i32 0, align 4
@S_FALSE = common dso_local global i32 0, align 4
@OLECMDF_SUPPORTED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"http://test.winehq.org/tests/winehq_snapshot/\00", align 1
@nav_serv_url = common dso_local global i8* null, align 8
@nav_url = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"#test\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"http://test.winehq.org/tests/winehq_snapshot/#test\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"#hash_test\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"javascript:external%20&&undefined\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"about:blank\00", align 1
@DWL_EXPECT_HISTUPDATE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [14 x i8] c"about:replace\00", align 1
@prev_url = common dso_local global i32* null, align 8
@.str.12 = private unnamed_addr constant [43 x i8] c"http://test.winehq.org/tests/file.winetest\00", align 1
@DWL_EXTERNAL = common dso_local global i32 0, align 4
@view = common dso_local global i32* null, align 8
@.str.13 = private unnamed_addr constant [20 x i8] c"ref=%d, expected 0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @test_HTMLDocument_http to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_HTMLDocument_http(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %11 = call i32 @trace(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = load i64, i64* %2, align 8
  store i64 %12, i64* @support_wbapp, align 8
  %13 = load i32, i32* @winetest_interactive, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = call i64 (...) @is_ie_hardened()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 @win_skip(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  br label %174

20:                                               ; preds = %15, %1
  %21 = load i32, i32* @LD_DOLOAD, align 4
  %22 = call i32 @init_test(i32 %21)
  %23 = load i64, i64* @TRUE, align 8
  store i64 %23, i64* @ipsex, align 8
  %24 = call i32* (...) @create_document()
  store i32* %24, i32** %4, align 8
  %25 = load i32*, i32** %4, align 8
  store i32* %25, i32** @doc_unk, align 8
  %26 = load i32, i32* @http_urlW, align 4
  %27 = call i64 @CreateURLMoniker(i32* null, i32 %26, i32** %3)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @S_OK, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @ok(i32 %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i64 %32)
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @test_ViewAdviseSink(i32* %34)
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @test_ConnectionPointContainer(i32* %36)
  %38 = load i32*, i32** %4, align 8
  %39 = load i64, i64* @FALSE, align 8
  %40 = call i32 @test_GetCurMoniker(i32* %38, i32* null, i32* null, i64 %39)
  %41 = load i32*, i32** %4, align 8
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @test_Persist(i32* %41, i32* %42)
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @test_Navigate(i32* %44)
  %46 = load i32, i32* @DWL_HTTP, align 4
  %47 = call i32 @test_download(i32 %46)
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @test_cookies(i32* %48)
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* @S_FALSE, align 4
  %52 = call i32 @test_IsDirty(i32* %50, i32 %51)
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* @OLECMDF_SUPPORTED, align 4
  %55 = call i32 @test_MSHTML_QueryStatus(i32* %53, i32 %54)
  %56 = load i32*, i32** %4, align 8
  %57 = load i32*, i32** %3, align 8
  %58 = load i64, i64* @FALSE, align 8
  %59 = call i32 @test_GetCurMoniker(i32* %56, i32* %57, i32* null, i64 %58)
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @test_travellog(i32* %60)
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @test_binding_ui(i32* %62)
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i8** @nav_serv_url, align 8
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i8** @nav_url, align 8
  %64 = load i64, i64* @support_wbapp, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %20
  %67 = load i32*, i32** %4, align 8
  %68 = load i64, i64* @FALSE, align 8
  %69 = load i64, i64* @FALSE, align 8
  %70 = load i64, i64* @TRUE, align 8
  %71 = call i32 @test_put_href(i32* %67, i64 %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0), i64 %69, i64 %70, i32 0)
  %72 = load i32*, i32** %4, align 8
  %73 = call i32 @test_put_hash(i32* %72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @test_travellog(i32* %74)
  %76 = load i32*, i32** %4, align 8
  %77 = call i32 @test_refresh(i32* %76)
  br label %78

78:                                               ; preds = %66, %20
  %79 = load i32*, i32** %4, align 8
  %80 = load i64, i64* @FALSE, align 8
  %81 = load i64, i64* @TRUE, align 8
  %82 = load i64, i64* @FALSE, align 8
  %83 = call i32 @test_put_href(i32* %79, i64 %80, i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i64 %81, i64 %82, i32 0)
  %84 = load i32*, i32** %4, align 8
  %85 = load i64, i64* @FALSE, align 8
  %86 = load i64, i64* @FALSE, align 8
  %87 = load i64, i64* @FALSE, align 8
  %88 = load i64, i64* @support_wbapp, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %78
  %91 = load i32, i32* @DWL_EXPECT_HISTUPDATE, align 4
  br label %93

92:                                               ; preds = %78
  br label %93

93:                                               ; preds = %92, %90
  %94 = phi i32 [ %91, %90 ], [ 0, %92 ]
  %95 = call i32 @test_put_href(i32* %84, i64 %85, i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i64 %86, i64 %87, i32 %94)
  %96 = load i32*, i32** %4, align 8
  %97 = load i64, i64* @TRUE, align 8
  %98 = load i64, i64* @FALSE, align 8
  %99 = load i64, i64* @FALSE, align 8
  %100 = call i32 @test_put_href(i32* %96, i64 %97, i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i64 %98, i64 %99, i32 0)
  %101 = load i64, i64* @support_wbapp, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %120

103:                                              ; preds = %93
  %104 = load i32*, i32** %4, align 8
  %105 = call i32 @test_load_history(i32* %104)
  %106 = load i32*, i32** %4, align 8
  %107 = call i32 @test_OmHistory(i32* %106)
  %108 = load i32*, i32** %4, align 8
  %109 = load i64, i64* @FALSE, align 8
  %110 = load i64, i64* @FALSE, align 8
  %111 = load i64, i64* @FALSE, align 8
  %112 = load i64, i64* @support_wbapp, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %103
  %115 = load i32, i32* @DWL_EXPECT_HISTUPDATE, align 4
  br label %117

116:                                              ; preds = %103
  br label %117

117:                                              ; preds = %116, %114
  %118 = phi i32 [ %115, %114 ], [ 0, %116 ]
  %119 = call i32 @test_put_href(i32* %108, i64 %109, i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i64 %110, i64 %111, i32 %118)
  br label %120

120:                                              ; preds = %117, %93
  %121 = load i8*, i8** @nav_serv_url, align 8
  %122 = bitcast i8* %121 to i32*
  store i32* %122, i32** @prev_url, align 8
  %123 = load i32*, i32** %4, align 8
  %124 = load i64, i64* @TRUE, align 8
  %125 = call i32 @test_open_window(i32* %123, i64 %124)
  %126 = load i64, i64* @support_wbapp, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %120
  %129 = load i32*, i32** %4, align 8
  %130 = load i64, i64* @FALSE, align 8
  %131 = call i32 @test_open_window(i32* %129, i64 %130)
  br label %132

132:                                              ; preds = %128, %120
  %133 = load i64, i64* @support_wbapp, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %132
  %136 = load i32*, i32** %4, align 8
  %137 = load i64, i64* @FALSE, align 8
  %138 = load i64, i64* @FALSE, align 8
  %139 = load i64, i64* @FALSE, align 8
  %140 = load i32, i32* @DWL_EXTERNAL, align 4
  %141 = call i32 @test_put_href(i32* %136, i64 %137, i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0), i64 %138, i64 %139, i32 %140)
  %142 = load i32*, i32** %4, align 8
  %143 = call i32 @test_window_close(i32* %142)
  br label %144

144:                                              ; preds = %135, %132
  %145 = load i32*, i32** %4, align 8
  %146 = load i64, i64* @TRUE, align 8
  %147 = call i32 @test_InPlaceDeactivate(i32* %145, i64 %146)
  %148 = load i32*, i32** %4, align 8
  %149 = load i64, i64* @FALSE, align 8
  %150 = call i32 @test_Close(i32* %148, i64 %149)
  %151 = load i32*, i32** %4, align 8
  %152 = load i32, i32* @S_FALSE, align 4
  %153 = call i32 @test_IsDirty(i32* %151, i32 %152)
  %154 = load i32*, i32** %4, align 8
  %155 = load i32*, i32** @prev_url, align 8
  %156 = load i64, i64* @support_wbapp, align 8
  %157 = call i32 @test_GetCurMoniker(i32* %154, i32* null, i32* %155, i64 %156)
  %158 = load i32*, i32** @view, align 8
  %159 = icmp ne i32* %158, null
  br i1 %159, label %160, label %163

160:                                              ; preds = %144
  %161 = load i32*, i32** @view, align 8
  %162 = call i32 @IOleDocumentView_Release(i32* %161)
  br label %163

163:                                              ; preds = %160, %144
  store i32* null, i32** @view, align 8
  %164 = load i32*, i32** %4, align 8
  %165 = call i32 @release_document(i32* %164)
  %166 = load i32*, i32** %3, align 8
  %167 = call i64 @IMoniker_Release(i32* %166)
  store i64 %167, i64* %5, align 8
  %168 = load i64, i64* %5, align 8
  %169 = icmp ne i64 %168, 0
  %170 = xor i1 %169, true
  %171 = zext i1 %170 to i32
  %172 = load i64, i64* %5, align 8
  %173 = call i32 @ok(i32 %171, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i64 %172)
  br label %174

174:                                              ; preds = %163, %18
  ret void
}

declare dso_local i32 @trace(i8*, i8*) #1

declare dso_local i64 @is_ie_hardened(...) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @init_test(i32) #1

declare dso_local i32* @create_document(...) #1

declare dso_local i64 @CreateURLMoniker(i32*, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @test_ViewAdviseSink(i32*) #1

declare dso_local i32 @test_ConnectionPointContainer(i32*) #1

declare dso_local i32 @test_GetCurMoniker(i32*, i32*, i32*, i64) #1

declare dso_local i32 @test_Persist(i32*, i32*) #1

declare dso_local i32 @test_Navigate(i32*) #1

declare dso_local i32 @test_download(i32) #1

declare dso_local i32 @test_cookies(i32*) #1

declare dso_local i32 @test_IsDirty(i32*, i32) #1

declare dso_local i32 @test_MSHTML_QueryStatus(i32*, i32) #1

declare dso_local i32 @test_travellog(i32*) #1

declare dso_local i32 @test_binding_ui(i32*) #1

declare dso_local i32 @test_put_href(i32*, i64, i8*, i8*, i64, i64, i32) #1

declare dso_local i32 @test_put_hash(i32*, i8*) #1

declare dso_local i32 @test_refresh(i32*) #1

declare dso_local i32 @test_load_history(i32*) #1

declare dso_local i32 @test_OmHistory(i32*) #1

declare dso_local i32 @test_open_window(i32*, i64) #1

declare dso_local i32 @test_window_close(i32*) #1

declare dso_local i32 @test_InPlaceDeactivate(i32*, i64) #1

declare dso_local i32 @test_Close(i32*, i64) #1

declare dso_local i32 @IOleDocumentView_Release(i32*) #1

declare dso_local i32 @release_document(i32*) #1

declare dso_local i64 @IMoniker_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
