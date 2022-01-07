; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/jscript/extr_run.c_test_automagic.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/jscript/extr_run.c_test_automagic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@script_engine = common dso_local global i32* null, align 8
@IID_IActiveScriptParse = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Could not get IActiveScriptParse: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"InitNew failed: %08x\0A\00", align 1
@ActiveScriptSite = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"SetScriptSite failed: %08x\0A\00", align 1
@testW = common dso_local global i32 0, align 4
@SCRIPTITEM_ISVISIBLE = common dso_local global i32 0, align 4
@SCRIPTITEM_ISSOURCE = common dso_local global i32 0, align 4
@SCRIPTITEM_GLOBALMEMBERS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"AddNamedItem failed: %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"function bindEventHandler::eventName() {}\0AreportSuccess();\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"ParseScriptText failed: %08x\0A\00", align 1
@BindHandler = common dso_local global i32 0, align 4
@global_success_d = common dso_local global i32 0, align 4
@global_success_i = common dso_local global i32 0, align 4
@SCRIPTSTATE_STARTED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [50 x i8] c"SetScriptState(SCRIPTSTATE_STARTED) failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_automagic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_automagic() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = call i32* (...) @create_script()
  store i32* %5, i32** %2, align 8
  store i32* %5, i32** @script_engine, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  br label %86

9:                                                ; preds = %0
  %10 = load i32*, i32** %2, align 8
  %11 = bitcast i32** %1 to i8**
  %12 = call i64 @IActiveScript_QueryInterface(i32* %10, i32* @IID_IActiveScriptParse, i8** %11)
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @S_OK, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @ok(i32 %16, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load i32*, i32** %1, align 8
  %20 = call i64 @IActiveScriptParse_InitNew(i32* %19)
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @S_OK, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @ok(i32 %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %25)
  %27 = load i32*, i32** %2, align 8
  %28 = call i64 @IActiveScript_SetScriptSite(i32* %27, i32* @ActiveScriptSite)
  store i64 %28, i64* %4, align 8
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* @S_OK, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %33)
  %35 = load i32*, i32** %2, align 8
  %36 = load i32, i32* @testW, align 4
  %37 = load i32, i32* @SCRIPTITEM_ISVISIBLE, align 4
  %38 = load i32, i32* @SCRIPTITEM_ISSOURCE, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @SCRIPTITEM_GLOBALMEMBERS, align 4
  %41 = or i32 %39, %40
  %42 = call i64 @IActiveScript_AddNamedItem(i32* %35, i32 %36, i32 %41)
  store i64 %42, i64* %4, align 8
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* @S_OK, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @ok(i32 %46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %47)
  %49 = call i32 @a2bstr(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0))
  store i32 %49, i32* %3, align 4
  %50 = load i32*, i32** %1, align 8
  %51 = load i32, i32* %3, align 4
  %52 = call i64 @IActiveScriptParse_ParseScriptText(i32* %50, i32 %51, i32* null, i32* null, i32* null, i32 0, i32 0, i32 0, i32* null, i32* null)
  store i64 %52, i64* %4, align 8
  %53 = load i64, i64* %4, align 8
  %54 = load i64, i64* @S_OK, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i64, i64* %4, align 8
  %58 = call i32 @ok(i32 %56, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i64 %57)
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @SysFreeString(i32 %59)
  %61 = load i32, i32* @BindHandler, align 4
  %62 = call i32 @SET_EXPECT(i32 %61)
  %63 = load i32, i32* @global_success_d, align 4
  %64 = call i32 @SET_EXPECT(i32 %63)
  %65 = load i32, i32* @global_success_i, align 4
  %66 = call i32 @SET_EXPECT(i32 %65)
  %67 = load i32*, i32** %2, align 8
  %68 = load i32, i32* @SCRIPTSTATE_STARTED, align 4
  %69 = call i64 @IActiveScript_SetScriptState(i32* %67, i32 %68)
  store i64 %69, i64* %4, align 8
  %70 = load i64, i64* %4, align 8
  %71 = load i64, i64* @S_OK, align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = load i64, i64* %4, align 8
  %75 = call i32 @ok(i32 %73, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i64 %74)
  %76 = load i32, i32* @BindHandler, align 4
  %77 = call i32 @CHECK_CALLED(i32 %76)
  %78 = load i32, i32* @global_success_d, align 4
  %79 = call i32 @CHECK_CALLED(i32 %78)
  %80 = load i32, i32* @global_success_i, align 4
  %81 = call i32 @CHECK_CALLED(i32 %80)
  %82 = load i32*, i32** %2, align 8
  %83 = call i32 @IActiveScript_Release(i32* %82)
  %84 = load i32*, i32** %1, align 8
  %85 = call i32 @IActiveScriptParse_Release(i32* %84)
  store i32* null, i32** @script_engine, align 8
  br label %86

86:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32* @create_script(...) #1

declare dso_local i64 @IActiveScript_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @IActiveScriptParse_InitNew(i32*) #1

declare dso_local i64 @IActiveScript_SetScriptSite(i32*, i32*) #1

declare dso_local i64 @IActiveScript_AddNamedItem(i32*, i32, i32) #1

declare dso_local i32 @a2bstr(i8*) #1

declare dso_local i64 @IActiveScriptParse_ParseScriptText(i32*, i32, i32*, i32*, i32*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @SysFreeString(i32) #1

declare dso_local i32 @SET_EXPECT(i32) #1

declare dso_local i64 @IActiveScript_SetScriptState(i32*, i32) #1

declare dso_local i32 @CHECK_CALLED(i32) #1

declare dso_local i32 @IActiveScript_Release(i32*) #1

declare dso_local i32 @IActiveScriptParse_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
