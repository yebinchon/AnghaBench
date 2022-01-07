; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/jscript/extr_activex.c_create_script.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/jscript/extr_activex.c_create_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i64 0, align 8
@QS_SecMgr_hres = common dso_local global i64 0, align 8
@ProcessUrlAction_hres = common dso_local global i64 0, align 8
@URLPOLICY_ALLOW = common dso_local global i8* null, align 8
@ProcessUrlAction_policy = common dso_local global i8* null, align 8
@CreateInstance_hres = common dso_local global i64 0, align 8
@QueryCustomPolicy_hres = common dso_local global i64 0, align 8
@QueryCustomPolicy_psize = common dso_local global i32 0, align 4
@QueryCustomPolicy_policy = common dso_local global i8* null, align 8
@QI_IDispatch_hres = common dso_local global i64 0, align 8
@SetSite_hres = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@AllowIServiceProvider = common dso_local global i32 0, align 4
@CLSID_JScript = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@CLSCTX_INPROC_HANDLER = common dso_local global i32 0, align 4
@IID_IActiveScript = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"CoCreateInstance failed: %08x\0A\00", align 1
@IID_IActiveScriptParse = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Could not get IActiveScriptParse: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"InitNew failed: %08x\0A\00", align 1
@ActiveScriptSite = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"SetScriptSite failed: %08x\0A\00", align 1
@testW = common dso_local global i32 0, align 4
@SCRIPTITEM_ISVISIBLE = common dso_local global i32 0, align 4
@SCRIPTITEM_ISSOURCE = common dso_local global i32 0, align 4
@SCRIPTITEM_GLOBALMEMBERS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"AddNamedItem failed: %08x\0A\00", align 1
@SCRIPTSTATE_STARTED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [50 x i8] c"SetScriptState(SCRIPTSTATE_STARTED) failed: %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [305 x i8] c"function testException(func, type, number) {\0A    try {\0A        func();\0A    }catch(e) {\0A        ok(e.name === type, 'e.name = ' + e.name + ', expected ' + type)\0A        ok(e.number === number, 'e.number = ' + e.number + ', expected ' + number);\0A        return;\0A    }\0A    ok(false, 'exception expected');\0A}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32)* @create_script to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create_script(i32 %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i64, i64* @S_OK, align 8
  store i64 %9, i64* @QS_SecMgr_hres, align 8
  %10 = load i64, i64* @S_OK, align 8
  store i64 %10, i64* @ProcessUrlAction_hres, align 8
  %11 = load i8*, i8** @URLPOLICY_ALLOW, align 8
  store i8* %11, i8** @ProcessUrlAction_policy, align 8
  %12 = load i64, i64* @S_OK, align 8
  store i64 %12, i64* @CreateInstance_hres, align 8
  %13 = load i64, i64* @S_OK, align 8
  store i64 %13, i64* @QueryCustomPolicy_hres, align 8
  store i32 4, i32* @QueryCustomPolicy_psize, align 4
  %14 = load i8*, i8** @URLPOLICY_ALLOW, align 8
  store i8* %14, i8** @QueryCustomPolicy_policy, align 8
  %15 = load i64, i64* @S_OK, align 8
  store i64 %15, i64* @QI_IDispatch_hres, align 8
  %16 = load i64, i64* @S_OK, align 8
  store i64 %16, i64* @SetSite_hres, align 8
  %17 = load i32, i32* @TRUE, align 4
  store i32 %17, i32* @AllowIServiceProvider, align 4
  %18 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %19 = load i32, i32* @CLSCTX_INPROC_HANDLER, align 4
  %20 = or i32 %18, %19
  %21 = bitcast i32** %7 to i8**
  %22 = call i64 @CoCreateInstance(i32* @CLSID_JScript, i32* null, i32 %20, i32* @IID_IActiveScript, i8** %21)
  store i64 %22, i64* %8, align 8
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %2
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* @S_OK, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %30)
  br label %32

32:                                               ; preds = %25, %2
  %33 = load i64, i64* %8, align 8
  %34 = call i64 @FAILED(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32* null, i32** %3, align 8
  br label %102

37:                                               ; preds = %32
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @set_safety_options(i32* %41, i32 %42)
  br label %44

44:                                               ; preds = %40, %37
  %45 = load i32*, i32** %7, align 8
  %46 = bitcast i32** %6 to i8**
  %47 = call i64 @IActiveScript_QueryInterface(i32* %45, i32* @IID_IActiveScriptParse, i8** %46)
  store i64 %47, i64* %8, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* @S_OK, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @ok(i32 %51, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %52)
  %54 = load i32*, i32** %6, align 8
  %55 = call i64 @IActiveScriptParse_InitNew(i32* %54)
  store i64 %55, i64* %8, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* @S_OK, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = load i64, i64* %8, align 8
  %61 = call i32 @ok(i32 %59, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %60)
  %62 = load i32*, i32** %7, align 8
  %63 = call i64 @IActiveScript_SetScriptSite(i32* %62, i32* @ActiveScriptSite)
  store i64 %63, i64* %8, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* @S_OK, align 8
  %66 = icmp eq i64 %64, %65
  %67 = zext i1 %66 to i32
  %68 = load i64, i64* %8, align 8
  %69 = call i32 @ok(i32 %67, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %68)
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* @testW, align 4
  %72 = load i32, i32* @SCRIPTITEM_ISVISIBLE, align 4
  %73 = load i32, i32* @SCRIPTITEM_ISSOURCE, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @SCRIPTITEM_GLOBALMEMBERS, align 4
  %76 = or i32 %74, %75
  %77 = call i64 @IActiveScript_AddNamedItem(i32* %70, i32 %71, i32 %76)
  store i64 %77, i64* %8, align 8
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* @S_OK, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = load i64, i64* %8, align 8
  %83 = call i32 @ok(i32 %81, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %82)
  %84 = load i32*, i32** %7, align 8
  %85 = load i32, i32* @SCRIPTSTATE_STARTED, align 4
  %86 = call i64 @IActiveScript_SetScriptState(i32* %84, i32 %85)
  store i64 %86, i64* %8, align 8
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* @S_OK, align 8
  %89 = icmp eq i64 %87, %88
  %90 = zext i1 %89 to i32
  %91 = load i64, i64* %8, align 8
  %92 = call i32 @ok(i32 %90, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i64 %91)
  %93 = load i32*, i32** %7, align 8
  %94 = call i32 @IActiveScript_Release(i32* %93)
  %95 = load i32, i32* %4, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %44
  %98 = load i32*, i32** %6, align 8
  %99 = call i32 @parse_script_a(i32* %98, i8* getelementptr inbounds ([305 x i8], [305 x i8]* @.str.6, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %44
  %101 = load i32*, i32** %6, align 8
  store i32* %101, i32** %3, align 8
  br label %102

102:                                              ; preds = %100, %36
  %103 = load i32*, i32** %3, align 8
  ret i32* %103
}

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @set_safety_options(i32*, i32) #1

declare dso_local i64 @IActiveScript_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @IActiveScriptParse_InitNew(i32*) #1

declare dso_local i64 @IActiveScript_SetScriptSite(i32*, i32*) #1

declare dso_local i64 @IActiveScript_AddNamedItem(i32*, i32, i32) #1

declare dso_local i64 @IActiveScript_SetScriptState(i32*, i32) #1

declare dso_local i32 @IActiveScript_Release(i32*) #1

declare dso_local i32 @parse_script_a(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
