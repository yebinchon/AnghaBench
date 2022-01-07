; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/vbscript/extr_run.c_test_gc.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/vbscript/extr_run.c_test_gc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@strict_dispid_check = common dso_local global i32 0, align 4
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
@SCRIPTSTATE_STARTED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"SetScriptState(SCRIPTSTATE_STARTED) failed: %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [156 x i8] c"class C\0A    Public ref\0A    Public Sub Class_Terminate\0A        Call reportSuccess()\0A    End Sub\0AEnd Class\0ADim x\0Aset x = new C\0Aset x.ref = x\0Aset x = nothing\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"ParseScriptText failed: %08x\0A\00", align 1
@global_success_d = common dso_local global i32 0, align 4
@global_success_i = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_gc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_gc() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = load i32, i32* @FALSE, align 4
  store i32 %5, i32* @strict_dispid_check, align 4
  %6 = call i32* (...) @create_script()
  store i32* %6, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  br label %85

10:                                               ; preds = %0
  %11 = load i32*, i32** %2, align 8
  %12 = bitcast i32** %1 to i8**
  %13 = call i64 @IActiveScript_QueryInterface(i32* %11, i32* @IID_IActiveScriptParse, i8** %12)
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @S_OK, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @ok(i32 %17, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load i32*, i32** %1, align 8
  %21 = call i64 @IActiveScriptParse_InitNew(i32* %20)
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @S_OK, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @ok(i32 %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %26)
  %28 = load i32*, i32** %2, align 8
  %29 = call i64 @IActiveScript_SetScriptSite(i32* %28, i32* @ActiveScriptSite)
  store i64 %29, i64* %4, align 8
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* @S_OK, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @ok(i32 %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %34)
  %36 = load i32*, i32** %2, align 8
  %37 = load i32, i32* @testW, align 4
  %38 = load i32, i32* @SCRIPTITEM_ISVISIBLE, align 4
  %39 = load i32, i32* @SCRIPTITEM_ISSOURCE, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @SCRIPTITEM_GLOBALMEMBERS, align 4
  %42 = or i32 %40, %41
  %43 = call i64 @IActiveScript_AddNamedItem(i32* %36, i32 %37, i32 %42)
  store i64 %43, i64* %4, align 8
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* @S_OK, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i64, i64* %4, align 8
  %49 = call i32 @ok(i32 %47, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %48)
  %50 = load i32*, i32** %2, align 8
  %51 = load i32, i32* @SCRIPTSTATE_STARTED, align 4
  %52 = call i64 @IActiveScript_SetScriptState(i32* %50, i32 %51)
  store i64 %52, i64* %4, align 8
  %53 = load i64, i64* %4, align 8
  %54 = load i64, i64* @S_OK, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i64, i64* %4, align 8
  %58 = call i32 @ok(i32 %56, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i64 %57)
  %59 = call i32 @a2bstr(i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str.5, i64 0, i64 0))
  store i32 %59, i32* %3, align 4
  %60 = load i32*, i32** %1, align 8
  %61 = load i32, i32* %3, align 4
  %62 = call i64 @IActiveScriptParse_ParseScriptText(i32* %60, i32 %61, i32* null, i32* null, i32* null, i32 0, i32 0, i32 0, i32* null, i32* null)
  store i64 %62, i64* %4, align 8
  %63 = load i64, i64* %4, align 8
  %64 = load i64, i64* @S_OK, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = load i64, i64* %4, align 8
  %68 = call i32 @ok(i32 %66, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i64 %67)
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @SysFreeString(i32 %69)
  %71 = load i32, i32* @global_success_d, align 4
  %72 = call i32 @SET_EXPECT(i32 %71)
  %73 = load i32, i32* @global_success_i, align 4
  %74 = call i32 @SET_EXPECT(i32 %73)
  %75 = load i32*, i32** %2, align 8
  %76 = call i32 @IActiveScript_Close(i32* %75)
  %77 = load i32, i32* @global_success_d, align 4
  %78 = call i32 @CHECK_CALLED(i32 %77)
  %79 = load i32, i32* @global_success_i, align 4
  %80 = call i32 @CHECK_CALLED(i32 %79)
  %81 = load i32*, i32** %2, align 8
  %82 = call i32 @IActiveScript_Release(i32* %81)
  %83 = load i32*, i32** %1, align 8
  %84 = call i32 @IActiveScriptParse_Release(i32* %83)
  br label %85

85:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32* @create_script(...) #1

declare dso_local i64 @IActiveScript_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @IActiveScriptParse_InitNew(i32*) #1

declare dso_local i64 @IActiveScript_SetScriptSite(i32*, i32*) #1

declare dso_local i64 @IActiveScript_AddNamedItem(i32*, i32, i32) #1

declare dso_local i64 @IActiveScript_SetScriptState(i32*, i32) #1

declare dso_local i32 @a2bstr(i8*) #1

declare dso_local i64 @IActiveScriptParse_ParseScriptText(i32*, i32, i32*, i32*, i32*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @SysFreeString(i32) #1

declare dso_local i32 @SET_EXPECT(i32) #1

declare dso_local i32 @IActiveScript_Close(i32*) #1

declare dso_local i32 @CHECK_CALLED(i32) #1

declare dso_local i32 @IActiveScript_Release(i32*) #1

declare dso_local i32 @IActiveScriptParse_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
