; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_xmlview.c_test_Load.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_xmlview.c_test_Load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_Load.xmlview_xmlW = internal constant [17 x i8] c"/xml/xmlview.xml\00", align 16
@test_Load.res = internal constant [7 x i8] c"res://\00", align 1
@CLSID_XMLView = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@CLSCTX_INPROC_HANDLER = common dso_local global i32 0, align 4
@IID_IPersistMoniker = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to create XMLView instance\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"CoCreateInstance returned %x, expected S_OK\0A\00", align 1
@IID_IHTMLDocument2 = common dso_local global i32 0, align 4
@html_doc = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [58 x i8] c"QueryInterface(HTMLDocument2) returned %x, expected S_OK\0A\00", align 1
@IID_IConnectionPointContainer = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [70 x i8] c"QueryInterface(IConnectionPointContainer) returned %x, expected S_OK\0A\00", align 1
@IID_IDispatch = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"FindConnectionPoint returned %x, expected S_OK\0A\00", align 1
@HTMLEvents = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"Advise returned %x, expected S_OK\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"CreateBindCtx returned %x, expected S_OK\0A\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"CreateUrlMoniker returned %x, expected S_OK\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@loaded = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"Load returned %x, expected S_OK\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"get_body returned %x, expected S_OK\0A\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"get_outerHTML returned %x, expected S_OK\0A\00", align 1
@xmlview_html = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [27 x i8] c"Incorrect HTML source: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_Load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_Load() #0 {
  %1 = alloca [1024 x i8], align 16
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %12 = call i32 @lstrcpyW(i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @test_Load.res, i64 0, i64 0))
  %13 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %15 = call i32 @lstrlenW(i8* %14)
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %13, i64 %16
  %18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %19 = call i64 @ARRAY_SIZE(i8* %18)
  %20 = call i64 @ARRAY_SIZE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @test_Load.res, i64 0, i64 0))
  %21 = sub nsw i64 %19, %20
  %22 = call i32 @GetModuleFileNameW(i32* null, i8* %17, i64 %21)
  %23 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %24 = call i32 @lstrcatW(i8* %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @test_Load.xmlview_xmlW, i64 0, i64 0))
  %25 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %26 = load i32, i32* @CLSCTX_INPROC_HANDLER, align 4
  %27 = or i32 %25, %26
  %28 = bitcast i32** %2 to i8**
  %29 = call i64 @CoCreateInstance(i32* @CLSID_XMLView, i32* null, i32 %27, i32* @IID_IPersistMoniker, i8** %28)
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i64 @FAILED(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %0
  %34 = call i32 @win_skip(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %155

35:                                               ; preds = %0
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* @S_OK, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @ok(i32 %39, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %40)
  %42 = load i32*, i32** %2, align 8
  %43 = call i64 @IPersistMoniker_QueryInterface(i32* %42, i32* @IID_IHTMLDocument2, i8** bitcast (i32** @html_doc to i8**))
  store i64 %43, i64* %8, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* @S_OK, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @ok(i32 %47, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i64 %48)
  %50 = load i32*, i32** %2, align 8
  %51 = bitcast i32** %3 to i8**
  %52 = call i64 @IPersistMoniker_QueryInterface(i32* %50, i32* @IID_IConnectionPointContainer, i8** %51)
  store i64 %52, i64* %8, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* @S_OK, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @ok(i32 %56, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0), i64 %57)
  %59 = load i32*, i32** %3, align 8
  %60 = call i64 @IConnectionPointContainer_FindConnectionPoint(i32* %59, i32* @IID_IDispatch, i32** %4)
  store i64 %60, i64* %8, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* @S_OK, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = load i64, i64* %8, align 8
  %66 = call i32 @ok(i32 %64, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i64 %65)
  %67 = load i32*, i32** %4, align 8
  %68 = call i64 @IConnectionPoint_Advise(i32* %67, i32* @HTMLEvents, i32* null)
  store i64 %68, i64* %8, align 8
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* @S_OK, align 8
  %71 = icmp eq i64 %69, %70
  %72 = zext i1 %71 to i32
  %73 = load i64, i64* %8, align 8
  %74 = call i32 @ok(i32 %72, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i64 %73)
  %75 = load i32*, i32** %4, align 8
  %76 = call i32 @IConnectionPoint_Release(i32* %75)
  %77 = load i32*, i32** %3, align 8
  %78 = call i32 @IConnectionPointContainer_Release(i32* %77)
  %79 = call i64 @CreateBindCtx(i32 0, i32** %6)
  store i64 %79, i64* %8, align 8
  %80 = load i64, i64* %8, align 8
  %81 = load i64, i64* @S_OK, align 8
  %82 = icmp eq i64 %80, %81
  %83 = zext i1 %82 to i32
  %84 = load i64, i64* %8, align 8
  %85 = call i32 @ok(i32 %83, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i64 %84)
  %86 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %87 = call i64 @pCreateURLMoniker(i32* null, i8* %86, i32** %5)
  store i64 %87, i64* %8, align 8
  %88 = load i64, i64* %8, align 8
  %89 = load i64, i64* @S_OK, align 8
  %90 = icmp eq i64 %88, %89
  %91 = zext i1 %90 to i32
  %92 = load i64, i64* %8, align 8
  %93 = call i32 @ok(i32 %91, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i64 %92)
  %94 = load i32, i32* @FALSE, align 4
  store i32 %94, i32* @loaded, align 4
  %95 = load i32*, i32** %2, align 8
  %96 = load i32, i32* @TRUE, align 4
  %97 = load i32*, i32** %5, align 8
  %98 = load i32*, i32** %6, align 8
  %99 = call i64 @IPersistMoniker_Load(i32* %95, i32 %96, i32* %97, i32* %98, i32 0)
  store i64 %99, i64* %8, align 8
  %100 = load i64, i64* %8, align 8
  %101 = load i64, i64* @S_OK, align 8
  %102 = icmp eq i64 %100, %101
  %103 = zext i1 %102 to i32
  %104 = load i64, i64* %8, align 8
  %105 = call i32 @ok(i32 %103, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i64 %104)
  %106 = load i32*, i32** %6, align 8
  %107 = call i32 @IBindCtx_Release(i32* %106)
  %108 = load i32*, i32** %5, align 8
  %109 = call i32 @IMoniker_Release(i32* %108)
  br label %110

110:                                              ; preds = %118, %35
  %111 = load i32, i32* @loaded, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %110
  %114 = call i64 @GetMessageA(i32* %9, i32* null, i32 0, i32 0)
  %115 = icmp ne i64 %114, 0
  br label %116

116:                                              ; preds = %113, %110
  %117 = phi i1 [ false, %110 ], [ %115, %113 ]
  br i1 %117, label %118, label %121

118:                                              ; preds = %116
  %119 = call i32 @TranslateMessage(i32* %9)
  %120 = call i32 @DispatchMessageA(i32* %9)
  br label %110

121:                                              ; preds = %116
  %122 = load i32*, i32** @html_doc, align 8
  %123 = call i64 @IHTMLDocument2_get_body(i32* %122, i32** %7)
  store i64 %123, i64* %8, align 8
  %124 = load i64, i64* %8, align 8
  %125 = load i64, i64* @S_OK, align 8
  %126 = icmp eq i64 %124, %125
  %127 = zext i1 %126 to i32
  %128 = load i64, i64* %8, align 8
  %129 = call i32 @ok(i32 %127, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i64 %128)
  %130 = load i32*, i32** %7, align 8
  %131 = call i64 @IHTMLElement_get_outerHTML(i32* %130, i32* %10)
  store i64 %131, i64* %8, align 8
  %132 = load i64, i64* %8, align 8
  %133 = load i64, i64* @S_OK, align 8
  %134 = icmp eq i64 %132, %133
  %135 = zext i1 %134 to i32
  %136 = load i64, i64* %8, align 8
  %137 = call i32 @ok(i32 %135, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0), i64 %136)
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* @xmlview_html, align 4
  %140 = call i32 @html_src_compare(i32 %138, i32 %139)
  %141 = icmp ne i32 %140, 0
  %142 = xor i1 %141, true
  %143 = zext i1 %142 to i32
  %144 = load i32, i32* %10, align 4
  %145 = call i64 @wine_dbgstr_w(i32 %144)
  %146 = call i32 @ok(i32 %143, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i64 %145)
  %147 = load i32*, i32** %7, align 8
  %148 = call i32 @IHTMLElement_Release(i32* %147)
  %149 = load i32, i32* %10, align 4
  %150 = call i32 @SysFreeString(i32 %149)
  %151 = load i32*, i32** @html_doc, align 8
  %152 = call i32 @IHTMLDocument2_Release(i32* %151)
  store i32* null, i32** @html_doc, align 8
  %153 = load i32*, i32** %2, align 8
  %154 = call i32 @IPersistMoniker_Release(i32* %153)
  br label %155

155:                                              ; preds = %121, %33
  ret void
}

declare dso_local i32 @lstrcpyW(i8*, i8*) #1

declare dso_local i32 @GetModuleFileNameW(i32*, i8*, i64) #1

declare dso_local i32 @lstrlenW(i8*) #1

declare dso_local i64 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @lstrcatW(i8*, i8*) #1

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @IPersistMoniker_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @IConnectionPointContainer_FindConnectionPoint(i32*, i32*, i32**) #1

declare dso_local i64 @IConnectionPoint_Advise(i32*, i32*, i32*) #1

declare dso_local i32 @IConnectionPoint_Release(i32*) #1

declare dso_local i32 @IConnectionPointContainer_Release(i32*) #1

declare dso_local i64 @CreateBindCtx(i32, i32**) #1

declare dso_local i64 @pCreateURLMoniker(i32*, i8*, i32**) #1

declare dso_local i64 @IPersistMoniker_Load(i32*, i32, i32*, i32*, i32) #1

declare dso_local i32 @IBindCtx_Release(i32*) #1

declare dso_local i32 @IMoniker_Release(i32*) #1

declare dso_local i64 @GetMessageA(i32*, i32*, i32, i32) #1

declare dso_local i32 @TranslateMessage(i32*) #1

declare dso_local i32 @DispatchMessageA(i32*) #1

declare dso_local i64 @IHTMLDocument2_get_body(i32*, i32**) #1

declare dso_local i64 @IHTMLElement_get_outerHTML(i32*, i32*) #1

declare dso_local i32 @html_src_compare(i32, i32) #1

declare dso_local i64 @wine_dbgstr_w(i32) #1

declare dso_local i32 @IHTMLElement_Release(i32*) #1

declare dso_local i32 @SysFreeString(i32) #1

declare dso_local i32 @IHTMLDocument2_Release(i32*) #1

declare dso_local i32 @IPersistMoniker_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
