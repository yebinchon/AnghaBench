; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_navigate.c_navigate_new_window.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_navigate.c_navigate_new_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32*, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@CLSID_InternetExplorer = common dso_local global i32 0, align 4
@CLSCTX_LOCAL_SERVER = common dso_local global i32 0, align 4
@IID_IWebBrowser2 = common dso_local global i32 0, align 4
@IID_ITargetFramePriv2 = common dso_local global i32 0, align 4
@HLNF_DISABLEWINDOWRESTRICTIONS = common dso_local global i32 0, align 4
@HLNF_OPENINNEWWINDOW = common dso_local global i32 0, align 4
@emptyW = common dso_local global i32 0, align 4
@SID_SHTMLWindow = common dso_local global i32 0, align 4
@IID_IHTMLWindow2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Could not create InternetExplorer instance: %08x\0A\00", align 1
@VARIANT_TRUE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @navigate_new_window(i32* %0, i32* %1, i32* %2, %struct.TYPE_7__* %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %10, align 8
  store i32** %4, i32*** %11, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %19 = icmp ne %struct.TYPE_7__* %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %5
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @FALSE, align 4
  %31 = call i32 @create_channelbsc(i32* null, i32* %23, i32* %26, i32 %29, i32 %30, %struct.TYPE_8__** %15)
  store i32 %31, i32* %16, align 4
  br label %35

32:                                               ; preds = %5
  %33 = load i32, i32* @FALSE, align 4
  %34 = call i32 @create_channelbsc(i32* null, i32* null, i32* null, i32 0, i32 %33, %struct.TYPE_8__** %15)
  store i32 %34, i32* %16, align 4
  br label %35

35:                                               ; preds = %32, %20
  %36 = load i32, i32* %16, align 4
  %37 = call i64 @FAILED(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* %16, align 4
  store i32 %40, i32* %6, align 4
  br label %133

41:                                               ; preds = %35
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = call i32 @CreateAsyncBindCtx(i32 0, i32* %44, i32* null, i32** %14)
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %16, align 4
  %47 = call i64 @FAILED(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %41
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = call i32 @IBindStatusCallback_Release(i32* %52)
  %54 = load i32, i32* %16, align 4
  store i32 %54, i32* %6, align 4
  br label %133

55:                                               ; preds = %41
  %56 = load i32, i32* @CLSCTX_LOCAL_SERVER, align 4
  %57 = bitcast i32** %12 to i8**
  %58 = call i32 @CoCreateInstance(i32* @CLSID_InternetExplorer, i32* null, i32 %56, i32* @IID_IWebBrowser2, i8** %57)
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %16, align 4
  %60 = call i64 @SUCCEEDED(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %102

62:                                               ; preds = %55
  %63 = load i32*, i32** %12, align 8
  %64 = bitcast i32** %17 to i8**
  %65 = call i32 @IWebBrowser2_QueryInterface(i32* %63, i32* @IID_ITargetFramePriv2, i8** %64)
  store i32 %65, i32* %16, align 4
  %66 = load i32, i32* %16, align 4
  %67 = call i64 @SUCCEEDED(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %92

69:                                               ; preds = %62
  %70 = load i32*, i32** %17, align 8
  %71 = load i32, i32* @HLNF_DISABLEWINDOWRESTRICTIONS, align 4
  %72 = load i32, i32* @HLNF_OPENINNEWWINDOW, align 4
  %73 = or i32 %71, %72
  %74 = load i32*, i32** %14, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32*, i32** %9, align 8
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* @emptyW, align 4
  %81 = call i32 @ITargetFramePriv2_AggregatedNavigation2(i32* %70, i32 %73, i32* %74, i32* %77, i32* %78, i32* %79, i32 %80)
  store i32 %81, i32* %16, align 4
  %82 = load i32*, i32** %17, align 8
  %83 = call i32 @ITargetFramePriv2_Release(i32* %82)
  %84 = load i32, i32* %16, align 4
  %85 = call i64 @SUCCEEDED(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %69
  %88 = load i32*, i32** %12, align 8
  %89 = bitcast i32** %13 to i8**
  %90 = call i32 @do_query_service(i32* %88, i32* @SID_SHTMLWindow, i32* @IID_IHTMLWindow2, i8** %89)
  store i32 %90, i32* %16, align 4
  br label %91

91:                                               ; preds = %87, %69
  br label %92

92:                                               ; preds = %91, %62
  %93 = load i32, i32* %16, align 4
  %94 = call i64 @FAILED(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = load i32*, i32** %12, align 8
  %98 = call i32 @IWebBrowser2_Quit(i32* %97)
  %99 = load i32*, i32** %12, align 8
  %100 = call i32 @IWebBrowser2_Release(i32* %99)
  br label %101

101:                                              ; preds = %96, %92
  br label %105

102:                                              ; preds = %55
  %103 = load i32, i32* %16, align 4
  %104 = call i32 @WARN(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %102, %101
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = call i32 @IBindStatusCallback_Release(i32* %108)
  %110 = load i32*, i32** %14, align 8
  %111 = call i32 @IBindCtx_Release(i32* %110)
  %112 = load i32, i32* %16, align 4
  %113 = call i64 @FAILED(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %105
  %116 = load i32, i32* %16, align 4
  store i32 %116, i32* %6, align 4
  br label %133

117:                                              ; preds = %105
  %118 = load i32*, i32** %12, align 8
  %119 = load i32, i32* @VARIANT_TRUE, align 4
  %120 = call i32 @IWebBrowser2_put_Visible(i32* %118, i32 %119)
  %121 = load i32*, i32** %12, align 8
  %122 = call i32 @IWebBrowser2_Release(i32* %121)
  %123 = load i32**, i32*** %11, align 8
  %124 = icmp ne i32** %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %117
  %126 = load i32*, i32** %13, align 8
  %127 = load i32**, i32*** %11, align 8
  store i32* %126, i32** %127, align 8
  br label %131

128:                                              ; preds = %117
  %129 = load i32*, i32** %13, align 8
  %130 = call i32 @IHTMLWindow2_Release(i32* %129)
  br label %131

131:                                              ; preds = %128, %125
  %132 = load i32, i32* @S_OK, align 4
  store i32 %132, i32* %6, align 4
  br label %133

133:                                              ; preds = %131, %115, %49, %39
  %134 = load i32, i32* %6, align 4
  ret i32 %134
}

declare dso_local i32 @create_channelbsc(i32*, i32*, i32*, i32, i32, %struct.TYPE_8__**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @CreateAsyncBindCtx(i32, i32*, i32*, i32**) #1

declare dso_local i32 @IBindStatusCallback_Release(i32*) #1

declare dso_local i32 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @IWebBrowser2_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ITargetFramePriv2_AggregatedNavigation2(i32*, i32, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @ITargetFramePriv2_Release(i32*) #1

declare dso_local i32 @do_query_service(i32*, i32*, i32*, i8**) #1

declare dso_local i32 @IWebBrowser2_Quit(i32*) #1

declare dso_local i32 @IWebBrowser2_Release(i32*) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @IBindCtx_Release(i32*) #1

declare dso_local i32 @IWebBrowser2_put_Visible(i32*, i32) #1

declare dso_local i32 @IHTMLWindow2_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
