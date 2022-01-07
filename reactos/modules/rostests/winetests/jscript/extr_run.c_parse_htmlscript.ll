; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/jscript/extr_run.c_parse_htmlscript.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/jscript/extr_run.c_parse_htmlscript.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"</SCRIPT>\00", align 1
@E_FAIL = common dso_local global i64 0, align 8
@IID_IActiveScriptParse = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @parse_htmlscript to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_htmlscript(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = call i32 @a2bstr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %8, i32* %7, align 4
  %9 = call i32* (...) @create_script()
  store i32* %9, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = load i64, i64* @E_FAIL, align 8
  store i64 %13, i64* %2, align 8
  br label %82

14:                                               ; preds = %1
  %15 = load i32*, i32** %5, align 8
  %16 = bitcast i32** %4 to i8**
  %17 = call i64 @IActiveScript_QueryInterface(i32* %15, i32* @IID_IActiveScriptParse, i8** %16)
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @S_OK, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %22)
  %24 = load i64, i64* %6, align 8
  %25 = call i64 @FAILED(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %14
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @IActiveScript_Release(i32* %28)
  %30 = load i64, i64* @E_FAIL, align 8
  store i64 %30, i64* %2, align 8
  br label %82

31:                                               ; preds = %14
  %32 = load i32*, i32** %4, align 8
  %33 = call i64 @IActiveScriptParse_InitNew(i32* %32)
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @S_OK, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @ok(i32 %37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %38)
  %40 = load i32*, i32** %5, align 8
  %41 = call i64 @IActiveScript_SetScriptSite(i32* %40, i32* @ActiveScriptSite)
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @S_OK, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @ok(i32 %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %46)
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* @testW, align 4
  %50 = load i32, i32* @SCRIPTITEM_ISVISIBLE, align 4
  %51 = load i32, i32* @SCRIPTITEM_ISSOURCE, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @SCRIPTITEM_GLOBALMEMBERS, align 4
  %54 = or i32 %52, %53
  %55 = call i64 @IActiveScript_AddNamedItem(i32* %48, i32 %49, i32 %54)
  store i64 %55, i64* %6, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* @S_OK, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @ok(i32 %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %60)
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* @SCRIPTSTATE_STARTED, align 4
  %64 = call i64 @IActiveScript_SetScriptState(i32* %62, i32 %63)
  store i64 %64, i64* %6, align 8
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* @S_OK, align 8
  %67 = icmp eq i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = load i64, i64* %6, align 8
  %70 = call i32 @ok(i32 %68, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i64 %69)
  %71 = load i32*, i32** %4, align 8
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i64 @IActiveScriptParse_ParseScriptText(i32* %71, i32 %72, i32* null, i32* null, i32 %73, i32 0, i32 0, i32 0, i32* null, i32* null)
  store i64 %74, i64* %6, align 8
  %75 = load i32*, i32** %5, align 8
  %76 = call i32 @IActiveScript_Release(i32* %75)
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @IActiveScriptParse_Release(i32* %77)
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @SysFreeString(i32 %79)
  %81 = load i64, i64* %6, align 8
  store i64 %81, i64* %2, align 8
  br label %82

82:                                               ; preds = %31, %27, %12
  %83 = load i64, i64* %2, align 8
  ret i64 %83
}

declare dso_local i32 @a2bstr(i8*) #1

declare dso_local i32* @create_script(...) #1

declare dso_local i64 @IActiveScript_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @IActiveScript_Release(i32*) #1

declare dso_local i64 @IActiveScriptParse_InitNew(i32*) #1

declare dso_local i64 @IActiveScript_SetScriptSite(i32*, i32*) #1

declare dso_local i64 @IActiveScript_AddNamedItem(i32*, i32, i32) #1

declare dso_local i64 @IActiveScript_SetScriptState(i32*, i32) #1

declare dso_local i64 @IActiveScriptParse_ParseScriptText(i32*, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @IActiveScriptParse_Release(i32*) #1

declare dso_local i32 @SysFreeString(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
