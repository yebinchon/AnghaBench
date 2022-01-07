; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/jscript/extr_run.c_parse_script_expr.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/jscript/extr_run.c_parse_script_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@E_FAIL = common dso_local global i64 0, align 8
@IID_IActiveScriptParse = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Could not get IActiveScriptParse: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"InitNew failed: %08x\0A\00", align 1
@ActiveScriptSite = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"SetScriptSite failed: %08x\0A\00", align 1
@GetItemInfo_testVal = common dso_local global i32 0, align 4
@test_valW = common dso_local global i32 0, align 4
@SCRIPTITEM_ISVISIBLE = common dso_local global i32 0, align 4
@SCRIPTITEM_ISSOURCE = common dso_local global i32 0, align 4
@SCRIPTITEM_GLOBALMEMBERS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"AddNamedItem failed: %08x\0A\00", align 1
@SCRIPTSTATE_STARTED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"SetScriptState(SCRIPTSTATE_STARTED) failed: %08x\0A\00", align 1
@SCRIPTTEXT_ISEXPRESSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32*, i32**)* @parse_script_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_script_expr(i8* %0, i32* %1, i32** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32** %2, i32*** %7, align 8
  %12 = call i32* (...) @create_script()
  store i32* %12, i32** %9, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = load i64, i64* @E_FAIL, align 8
  store i64 %16, i64* %4, align 8
  br label %93

17:                                               ; preds = %3
  %18 = load i32*, i32** %9, align 8
  %19 = bitcast i32** %8 to i8**
  %20 = call i64 @IActiveScript_QueryInterface(i32* %18, i32* @IID_IActiveScriptParse, i8** %19)
  store i64 %20, i64* %11, align 8
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* @S_OK, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = load i64, i64* %11, align 8
  %26 = call i32 @ok(i32 %24, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = load i32*, i32** %8, align 8
  %28 = call i64 @IActiveScriptParse_InitNew(i32* %27)
  store i64 %28, i64* %11, align 8
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* @S_OK, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i64, i64* %11, align 8
  %34 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %33)
  %35 = load i32*, i32** %9, align 8
  %36 = call i64 @IActiveScript_SetScriptSite(i32* %35, i32* @ActiveScriptSite)
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* @S_OK, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i64, i64* %11, align 8
  %42 = call i32 @ok(i32 %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %41)
  %43 = load i32, i32* @GetItemInfo_testVal, align 4
  %44 = call i32 @SET_EXPECT(i32 %43)
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* @test_valW, align 4
  %47 = load i32, i32* @SCRIPTITEM_ISVISIBLE, align 4
  %48 = load i32, i32* @SCRIPTITEM_ISSOURCE, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @SCRIPTITEM_GLOBALMEMBERS, align 4
  %51 = or i32 %49, %50
  %52 = call i64 @IActiveScript_AddNamedItem(i32* %45, i32 %46, i32 %51)
  store i64 %52, i64* %11, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* @S_OK, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i64, i64* %11, align 8
  %58 = call i32 @ok(i32 %56, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %57)
  %59 = load i32, i32* @GetItemInfo_testVal, align 4
  %60 = call i32 @CHECK_CALLED(i32 %59)
  %61 = load i32*, i32** %9, align 8
  %62 = load i32, i32* @SCRIPTSTATE_STARTED, align 4
  %63 = call i64 @IActiveScript_SetScriptState(i32* %61, i32 %62)
  store i64 %63, i64* %11, align 8
  %64 = load i64, i64* %11, align 8
  %65 = load i64, i64* @S_OK, align 8
  %66 = icmp eq i64 %64, %65
  %67 = zext i1 %66 to i32
  %68 = load i64, i64* %11, align 8
  %69 = call i32 @ok(i32 %67, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i64 %68)
  %70 = load i8*, i8** %5, align 8
  %71 = call i32 @a2bstr(i8* %70)
  store i32 %71, i32* %10, align 4
  %72 = load i32*, i32** %8, align 8
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @SCRIPTTEXT_ISEXPRESSION, align 4
  %75 = load i32*, i32** %6, align 8
  %76 = call i64 @IActiveScriptParse_ParseScriptText(i32* %72, i32 %73, i32* null, i32* null, i32* null, i32 0, i32 0, i32 %74, i32* %75, i32* null)
  store i64 %76, i64* %11, align 8
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @SysFreeString(i32 %77)
  %79 = load i32*, i32** %8, align 8
  %80 = call i32 @IActiveScriptParse_Release(i32* %79)
  %81 = load i32**, i32*** %7, align 8
  %82 = icmp ne i32** %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %17
  %84 = load i32*, i32** %9, align 8
  %85 = load i32**, i32*** %7, align 8
  store i32* %84, i32** %85, align 8
  br label %91

86:                                               ; preds = %17
  %87 = load i32*, i32** %9, align 8
  %88 = call i32 @IActiveScript_Close(i32* %87)
  %89 = load i32*, i32** %9, align 8
  %90 = call i32 @IActiveScript_Release(i32* %89)
  br label %91

91:                                               ; preds = %86, %83
  %92 = load i64, i64* %11, align 8
  store i64 %92, i64* %4, align 8
  br label %93

93:                                               ; preds = %91, %15
  %94 = load i64, i64* %4, align 8
  ret i64 %94
}

declare dso_local i32* @create_script(...) #1

declare dso_local i64 @IActiveScript_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @IActiveScriptParse_InitNew(i32*) #1

declare dso_local i64 @IActiveScript_SetScriptSite(i32*, i32*) #1

declare dso_local i32 @SET_EXPECT(i32) #1

declare dso_local i64 @IActiveScript_AddNamedItem(i32*, i32, i32) #1

declare dso_local i32 @CHECK_CALLED(i32) #1

declare dso_local i64 @IActiveScript_SetScriptState(i32*, i32) #1

declare dso_local i32 @a2bstr(i8*) #1

declare dso_local i64 @IActiveScriptParse_ParseScriptText(i32*, i32, i32*, i32*, i32*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @SysFreeString(i32) #1

declare dso_local i32 @IActiveScriptParse_Release(i32*) #1

declare dso_local i32 @IActiveScript_Close(i32*) #1

declare dso_local i32 @IActiveScript_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
