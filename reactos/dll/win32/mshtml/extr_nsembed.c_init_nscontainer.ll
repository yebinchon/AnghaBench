; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_nsembed.c_init_nscontainer.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_nsembed.c_init_nscontainer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32 }

@pCompMgr = common dso_local global i32 0, align 4
@NS_WEBBROWSER_CONTRACTID = common dso_local global i32 0, align 4
@IID_nsIWebBrowser = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Creating WebBrowser failed: %08x\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"SetContainerWindow failed: %08x\0A\00", align 1
@IID_nsIBaseWindow = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Could not get nsIBaseWindow interface: %08x\0A\00", align 1
@IID_nsIWebBrowserSetup = common dso_local global i32 0, align 4
@SETUP_IS_CHROME_WRAPPER = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"SetProperty(SETUP_IS_CHROME_WRAPPER) failed: %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Could not get nsIWebBrowserSetup interface\0A\00", align 1
@IID_nsIWebNavigation = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"Could not get nsIWebNavigation interface: %08x\0A\00", align 1
@IID_nsIWebBrowserFocus = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [50 x i8] c"Could not get nsIWebBrowserFocus interface: %08x\0A\00", align 1
@nscontainer_class = common dso_local global i32 0, align 4
@wszNsContainer = common dso_local global i32 0, align 4
@WS_CHILD = common dso_local global i32 0, align 4
@WS_CLIPSIBLINGS = common dso_local global i32 0, align 4
@WS_CLIPCHILDREN = common dso_local global i32 0, align 4
@hInst = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"Could not create window\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Creating window failed: %08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"InitWindow failed: %08x\0A\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"SetParentURIContentListener failed: %08x\0A\00", align 1
@IID_nsIScrollable = common dso_local global i32 0, align 4
@ScrollOrientation_Y = common dso_local global i32 0, align 4
@Scrollbar_Always = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [47 x i8] c"Could not set default Y scrollbar prefs: %08x\0A\00", align 1
@ScrollOrientation_X = common dso_local global i32 0, align 4
@Scrollbar_Auto = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [47 x i8] c"Could not set default X scrollbar prefs: %08x\0A\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"Could not get nsIScrollable: %08x\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @init_nscontainer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_nscontainer(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %7 = load i32, i32* @pCompMgr, align 4
  %8 = load i32, i32* @NS_WEBBROWSER_CONTRACTID, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = bitcast i32* %10 to i8**
  %12 = call i32 @nsIComponentManager_CreateInstanceByContractID(i32 %7, i32 %8, i32* null, i32* @IID_nsIWebBrowser, i8** %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @NS_FAILED(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  %18 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @E_FAIL, align 4
  store i32 %19, i32* %2, align 4
  br label %226

20:                                               ; preds = %1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 6
  %26 = call i32 @nsIWebBrowser_SetContainerWindow(i32 %23, i32* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @NS_FAILED(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %20
  %31 = load i32, i32* %6, align 4
  %32 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @E_FAIL, align 4
  store i32 %33, i32* %2, align 4
  br label %226

34:                                               ; preds = %20
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = bitcast i32* %39 to i8**
  %41 = call i32 @nsIWebBrowser_QueryInterface(i32 %37, i32* @IID_nsIBaseWindow, i8** %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i64 @NS_FAILED(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %34
  %46 = load i32, i32* %6, align 4
  %47 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @E_FAIL, align 4
  store i32 %48, i32* %2, align 4
  br label %226

49:                                               ; preds = %34
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = bitcast i32** %4 to i8**
  %54 = call i32 @nsIWebBrowser_QueryInterface(i32 %52, i32* @IID_nsIWebBrowserSetup, i8** %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i64 @NS_SUCCEEDED(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %49
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* @SETUP_IS_CHROME_WRAPPER, align 4
  %61 = load i32, i32* @FALSE, align 4
  %62 = call i32 @nsIWebBrowserSetup_SetProperty(i32* %59, i32 %60, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @nsIWebBrowserSetup_Release(i32* %63)
  %65 = load i32, i32* %6, align 4
  %66 = call i64 @NS_FAILED(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %58
  %69 = load i32, i32* %6, align 4
  %70 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @E_FAIL, align 4
  store i32 %71, i32* %2, align 4
  br label %226

72:                                               ; preds = %58
  br label %76

73:                                               ; preds = %49
  %74 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %75 = load i32, i32* @E_FAIL, align 4
  store i32 %75, i32* %2, align 4
  br label %226

76:                                               ; preds = %72
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 5
  %82 = bitcast i32* %81 to i8**
  %83 = call i32 @nsIWebBrowser_QueryInterface(i32 %79, i32* @IID_nsIWebNavigation, i8** %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = call i64 @NS_FAILED(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %76
  %88 = load i32, i32* %6, align 4
  %89 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @E_FAIL, align 4
  store i32 %90, i32* %2, align 4
  br label %226

91:                                               ; preds = %76
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 4
  %97 = bitcast i32* %96 to i8**
  %98 = call i32 @nsIWebBrowser_QueryInterface(i32 %94, i32* @IID_nsIWebBrowserFocus, i8** %97)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = call i64 @NS_FAILED(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %91
  %103 = load i32, i32* %6, align 4
  %104 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* @E_FAIL, align 4
  store i32 %105, i32* %2, align 4
  br label %226

106:                                              ; preds = %91
  %107 = load i32, i32* @nscontainer_class, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %116, label %109

109:                                              ; preds = %106
  %110 = call i32 (...) @register_nscontainer_class()
  %111 = load i32, i32* @nscontainer_class, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %109
  %114 = load i32, i32* @E_FAIL, align 4
  store i32 %114, i32* %2, align 4
  br label %226

115:                                              ; preds = %109
  br label %116

116:                                              ; preds = %115, %106
  %117 = load i32, i32* @wszNsContainer, align 4
  %118 = load i32, i32* @WS_CHILD, align 4
  %119 = load i32, i32* @WS_CLIPSIBLINGS, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @WS_CLIPCHILDREN, align 4
  %122 = or i32 %120, %121
  %123 = call i32 (...) @GetDesktopWindow()
  %124 = load i32, i32* @hInst, align 4
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %126 = call i32 @CreateWindowExW(i32 0, i32 %117, i32* null, i32 %122, i32 0, i32 0, i32 100, i32 100, i32 %123, i32* null, i32 %124, %struct.TYPE_4__* %125)
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 3
  store i32 %126, i32* %128, align 4
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %116
  %134 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %135 = load i32, i32* @E_FAIL, align 4
  store i32 %135, i32* %2, align 4
  br label %226

136:                                              ; preds = %116
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @nsIBaseWindow_InitWindow(i32 %139, i32 %142, i32* null, i32 0, i32 0, i32 100, i32 100)
  store i32 %143, i32* %6, align 4
  %144 = load i32, i32* %6, align 4
  %145 = call i64 @NS_SUCCEEDED(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %170

147:                                              ; preds = %136
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @nsIBaseWindow_Create(i32 %150)
  store i32 %151, i32* %6, align 4
  %152 = load i32, i32* %6, align 4
  %153 = call i64 @NS_FAILED(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %147
  %156 = load i32, i32* %6, align 4
  %157 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %156)
  %158 = load i32, i32* @E_FAIL, align 4
  store i32 %158, i32* %2, align 4
  br label %226

159:                                              ; preds = %147
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @FALSE, align 4
  %164 = call i32 @nsIBaseWindow_SetVisibility(i32 %162, i32 %163)
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @FALSE, align 4
  %169 = call i32 @nsIBaseWindow_SetEnabled(i32 %167, i32 %168)
  br label %174

170:                                              ; preds = %136
  %171 = load i32, i32* %6, align 4
  %172 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %171)
  %173 = load i32, i32* @E_FAIL, align 4
  store i32 %173, i32* %2, align 4
  br label %226

174:                                              ; preds = %159
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 1
  %180 = call i32 @nsIWebBrowser_SetParentURIContentListener(i32 %177, i32* %179)
  store i32 %180, i32* %6, align 4
  %181 = load i32, i32* %6, align 4
  %182 = call i64 @NS_FAILED(i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %174
  %185 = load i32, i32* %6, align 4
  %186 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0), i32 %185)
  br label %187

187:                                              ; preds = %184, %174
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = bitcast i32** %5 to i8**
  %192 = call i32 @nsIWebBrowser_QueryInterface(i32 %190, i32* @IID_nsIScrollable, i8** %191)
  store i32 %192, i32* %6, align 4
  %193 = load i32, i32* %6, align 4
  %194 = call i64 @NS_SUCCEEDED(i32 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %221

196:                                              ; preds = %187
  %197 = load i32*, i32** %5, align 8
  %198 = load i32, i32* @ScrollOrientation_Y, align 4
  %199 = load i32, i32* @Scrollbar_Always, align 4
  %200 = call i32 @nsIScrollable_SetDefaultScrollbarPreferences(i32* %197, i32 %198, i32 %199)
  store i32 %200, i32* %6, align 4
  %201 = load i32, i32* %6, align 4
  %202 = call i64 @NS_FAILED(i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %196
  %205 = load i32, i32* %6, align 4
  %206 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0), i32 %205)
  br label %207

207:                                              ; preds = %204, %196
  %208 = load i32*, i32** %5, align 8
  %209 = load i32, i32* @ScrollOrientation_X, align 4
  %210 = load i32, i32* @Scrollbar_Auto, align 4
  %211 = call i32 @nsIScrollable_SetDefaultScrollbarPreferences(i32* %208, i32 %209, i32 %210)
  store i32 %211, i32* %6, align 4
  %212 = load i32, i32* %6, align 4
  %213 = call i64 @NS_FAILED(i32 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %207
  %216 = load i32, i32* %6, align 4
  %217 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.12, i64 0, i64 0), i32 %216)
  br label %218

218:                                              ; preds = %215, %207
  %219 = load i32*, i32** %5, align 8
  %220 = call i32 @nsIScrollable_Release(i32* %219)
  br label %224

221:                                              ; preds = %187
  %222 = load i32, i32* %6, align 4
  %223 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0), i32 %222)
  br label %224

224:                                              ; preds = %221, %218
  %225 = load i32, i32* @S_OK, align 4
  store i32 %225, i32* %2, align 4
  br label %226

226:                                              ; preds = %224, %170, %155, %133, %113, %102, %87, %73, %68, %45, %30, %16
  %227 = load i32, i32* %2, align 4
  ret i32 %227
}

declare dso_local i32 @nsIComponentManager_CreateInstanceByContractID(i32, i32, i32*, i32*, i8**) #1

declare dso_local i64 @NS_FAILED(i32) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @nsIWebBrowser_SetContainerWindow(i32, i32*) #1

declare dso_local i32 @nsIWebBrowser_QueryInterface(i32, i32*, i8**) #1

declare dso_local i64 @NS_SUCCEEDED(i32) #1

declare dso_local i32 @nsIWebBrowserSetup_SetProperty(i32*, i32, i32) #1

declare dso_local i32 @nsIWebBrowserSetup_Release(i32*) #1

declare dso_local i32 @register_nscontainer_class(...) #1

declare dso_local i32 @CreateWindowExW(i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @GetDesktopWindow(...) #1

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i32 @nsIBaseWindow_InitWindow(i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @nsIBaseWindow_Create(i32) #1

declare dso_local i32 @nsIBaseWindow_SetVisibility(i32, i32) #1

declare dso_local i32 @nsIBaseWindow_SetEnabled(i32, i32) #1

declare dso_local i32 @nsIWebBrowser_SetParentURIContentListener(i32, i32*) #1

declare dso_local i32 @nsIScrollable_SetDefaultScrollbarPreferences(i32*, i32, i32) #1

declare dso_local i32 @nsIScrollable_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
