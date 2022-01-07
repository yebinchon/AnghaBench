; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/vbscript/extr_createobj.c_create_script.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/vbscript/extr_createobj.c_create_script.c"
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
@QI_IObjectWithSite_hres = common dso_local global i64 0, align 8
@SetSite_hres = common dso_local global i64 0, align 8
@CLSID_VBScript = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @create_script to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create_script(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i64, i64* @S_OK, align 8
  store i64 %7, i64* @QS_SecMgr_hres, align 8
  %8 = load i64, i64* @S_OK, align 8
  store i64 %8, i64* @ProcessUrlAction_hres, align 8
  %9 = load i8*, i8** @URLPOLICY_ALLOW, align 8
  store i8* %9, i8** @ProcessUrlAction_policy, align 8
  %10 = load i64, i64* @S_OK, align 8
  store i64 %10, i64* @CreateInstance_hres, align 8
  %11 = load i64, i64* @S_OK, align 8
  store i64 %11, i64* @QueryCustomPolicy_hres, align 8
  store i32 4, i32* @QueryCustomPolicy_psize, align 4
  %12 = load i8*, i8** @URLPOLICY_ALLOW, align 8
  store i8* %12, i8** @QueryCustomPolicy_policy, align 8
  %13 = load i64, i64* @S_OK, align 8
  store i64 %13, i64* @QI_IDispatch_hres, align 8
  %14 = load i64, i64* @S_OK, align 8
  store i64 %14, i64* @QI_IObjectWithSite_hres, align 8
  %15 = load i64, i64* @S_OK, align 8
  store i64 %15, i64* @SetSite_hres, align 8
  %16 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %17 = load i32, i32* @CLSCTX_INPROC_HANDLER, align 4
  %18 = or i32 %16, %17
  %19 = bitcast i32** %5 to i8**
  %20 = call i64 @CoCreateInstance(i32* @CLSID_VBScript, i32* null, i32 %18, i32* @IID_IActiveScript, i8** %19)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @S_OK, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @ok(i32 %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = load i64, i64* %6, align 8
  %28 = call i64 @FAILED(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %86

31:                                               ; preds = %1
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @set_safety_options(i32* %32, i32 %33)
  %35 = load i32*, i32** %5, align 8
  %36 = bitcast i32** %4 to i8**
  %37 = call i64 @IActiveScript_QueryInterface(i32* %35, i32* @IID_IActiveScriptParse, i8** %36)
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @S_OK, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %42)
  %44 = load i32*, i32** %4, align 8
  %45 = call i64 @IActiveScriptParse_InitNew(i32* %44)
  store i64 %45, i64* %6, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* @S_OK, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @ok(i32 %49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %50)
  %52 = load i32*, i32** %5, align 8
  %53 = call i64 @IActiveScript_SetScriptSite(i32* %52, i32* @ActiveScriptSite)
  store i64 %53, i64* %6, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* @S_OK, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = load i64, i64* %6, align 8
  %59 = call i32 @ok(i32 %57, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %58)
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* @testW, align 4
  %62 = load i32, i32* @SCRIPTITEM_ISVISIBLE, align 4
  %63 = load i32, i32* @SCRIPTITEM_ISSOURCE, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @SCRIPTITEM_GLOBALMEMBERS, align 4
  %66 = or i32 %64, %65
  %67 = call i64 @IActiveScript_AddNamedItem(i32* %60, i32 %61, i32 %66)
  store i64 %67, i64* %6, align 8
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* @S_OK, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = load i64, i64* %6, align 8
  %73 = call i32 @ok(i32 %71, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %72)
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* @SCRIPTSTATE_STARTED, align 4
  %76 = call i64 @IActiveScript_SetScriptState(i32* %74, i32 %75)
  store i64 %76, i64* %6, align 8
  %77 = load i64, i64* %6, align 8
  %78 = load i64, i64* @S_OK, align 8
  %79 = icmp eq i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = load i64, i64* %6, align 8
  %82 = call i32 @ok(i32 %80, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i64 %81)
  %83 = load i32*, i32** %5, align 8
  %84 = call i32 @IActiveScript_Release(i32* %83)
  %85 = load i32*, i32** %4, align 8
  store i32* %85, i32** %2, align 8
  br label %86

86:                                               ; preds = %31, %30
  %87 = load i32*, i32** %2, align 8
  ret i32* %87
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

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
