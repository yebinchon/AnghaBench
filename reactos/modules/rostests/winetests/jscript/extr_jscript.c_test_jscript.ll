; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/jscript/extr_jscript.c_test_jscript.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/jscript/extr_jscript.c_test_jscript.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IActiveScriptParse = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Could not get IActiveScriptParse: %08x\0A\00", align 1
@SCRIPTSTATE_UNINITIALIZED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"InitNew failed: %08x\0A\00", align 1
@E_UNEXPECTED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"InitNew failed: %08x, expected E_UNEXPECTED\0A\00", align 1
@E_POINTER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [48 x i8] c"SetScriptSite failed: %08x, expected E_POINTER\0A\00", align 1
@GetLCID = common dso_local global i32 0, align 4
@OnStateChange_INITIALIZED = common dso_local global i32 0, align 4
@ActiveScriptSite = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"SetScriptSite failed: %08x\0A\00", align 1
@SCRIPTSTATE_INITIALIZED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c"SetScriptSite failed: %08x, expected E_UNEXPECTED\0A\00", align 1
@OnStateChange_STARTED = common dso_local global i32 0, align 4
@SCRIPTSTATE_STARTED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [50 x i8] c"SetScriptState(SCRIPTSTATE_STARTED) failed: %08x\0A\00", align 1
@OnStateChange_CLOSED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"Close failed: %08x\0A\00", align 1
@SCRIPTSTATE_CLOSED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"ref = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_jscript to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_jscript() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = call i32* (...) @create_jscript()
  store i32* %6, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = bitcast i32** %1 to i8**
  %9 = call i64 @IActiveScript_QueryInterface(i32* %7, i32* @IID_IActiveScriptParse, i8** %8)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @S_OK, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @ok(i32 %13, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* @SCRIPTSTATE_UNINITIALIZED, align 4
  %18 = call i32 @test_state(i32* %16, i32 %17)
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @test_safety(i32* %19)
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @test_invoke_versioning(i32* %21)
  %23 = load i32*, i32** %1, align 8
  %24 = call i64 @IActiveScriptParse_InitNew(i32* %23)
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @S_OK, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  %31 = load i32*, i32** %1, align 8
  %32 = call i64 @IActiveScriptParse_InitNew(i32* %31)
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @E_UNEXPECTED, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @ok(i32 %36, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %37)
  %39 = load i32*, i32** %2, align 8
  %40 = call i64 @IActiveScript_SetScriptSite(i32* %39, i32* null)
  store i64 %40, i64* %5, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* @E_POINTER, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @ok(i32 %44, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i64 %45)
  %47 = load i32*, i32** %2, align 8
  %48 = load i32, i32* @SCRIPTSTATE_UNINITIALIZED, align 4
  %49 = call i32 @test_state(i32* %47, i32 %48)
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @test_no_script_dispatch(i32* %50)
  %52 = load i32, i32* @GetLCID, align 4
  %53 = call i32 @SET_EXPECT(i32 %52)
  %54 = load i32, i32* @OnStateChange_INITIALIZED, align 4
  %55 = call i32 @SET_EXPECT(i32 %54)
  %56 = load i32*, i32** %2, align 8
  %57 = call i64 @IActiveScript_SetScriptSite(i32* %56, i32* @ActiveScriptSite)
  store i64 %57, i64* %5, align 8
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* @S_OK, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = load i64, i64* %5, align 8
  %63 = call i32 @ok(i32 %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i64 %62)
  %64 = load i32, i32* @GetLCID, align 4
  %65 = call i32 @CHECK_CALLED(i32 %64)
  %66 = load i32, i32* @OnStateChange_INITIALIZED, align 4
  %67 = call i32 @CHECK_CALLED(i32 %66)
  %68 = load i32*, i32** %2, align 8
  %69 = load i32, i32* @SCRIPTSTATE_INITIALIZED, align 4
  %70 = call i32 @test_state(i32* %68, i32 %69)
  %71 = load i32*, i32** %2, align 8
  %72 = call i64 @IActiveScript_SetScriptSite(i32* %71, i32* @ActiveScriptSite)
  store i64 %72, i64* %5, align 8
  %73 = load i64, i64* %5, align 8
  %74 = load i64, i64* @E_UNEXPECTED, align 8
  %75 = icmp eq i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = load i64, i64* %5, align 8
  %78 = call i32 @ok(i32 %76, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i64 %77)
  %79 = load i32*, i32** %2, align 8
  %80 = call i32* @get_script_dispatch(i32* %79)
  store i32* %80, i32** %3, align 8
  %81 = load i32*, i32** %3, align 8
  %82 = call i32 @test_script_dispatch(i32* %81)
  %83 = load i32, i32* @OnStateChange_STARTED, align 4
  %84 = call i32 @SET_EXPECT(i32 %83)
  %85 = load i32*, i32** %2, align 8
  %86 = load i32, i32* @SCRIPTSTATE_STARTED, align 4
  %87 = call i64 @IActiveScript_SetScriptState(i32* %85, i32 %86)
  store i64 %87, i64* %5, align 8
  %88 = load i64, i64* %5, align 8
  %89 = load i64, i64* @S_OK, align 8
  %90 = icmp eq i64 %88, %89
  %91 = zext i1 %90 to i32
  %92 = load i64, i64* %5, align 8
  %93 = call i32 @ok(i32 %91, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i64 %92)
  %94 = load i32, i32* @OnStateChange_STARTED, align 4
  %95 = call i32 @CHECK_CALLED(i32 %94)
  %96 = load i32*, i32** %2, align 8
  %97 = load i32, i32* @SCRIPTSTATE_STARTED, align 4
  %98 = call i32 @test_state(i32* %96, i32 %97)
  %99 = load i32, i32* @OnStateChange_CLOSED, align 4
  %100 = call i32 @SET_EXPECT(i32 %99)
  %101 = load i32*, i32** %2, align 8
  %102 = call i64 @IActiveScript_Close(i32* %101)
  store i64 %102, i64* %5, align 8
  %103 = load i64, i64* %5, align 8
  %104 = load i64, i64* @S_OK, align 8
  %105 = icmp eq i64 %103, %104
  %106 = zext i1 %105 to i32
  %107 = load i64, i64* %5, align 8
  %108 = call i32 @ok(i32 %106, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i64 %107)
  %109 = load i32, i32* @OnStateChange_CLOSED, align 4
  %110 = call i32 @CHECK_CALLED(i32 %109)
  %111 = load i32*, i32** %2, align 8
  %112 = load i32, i32* @SCRIPTSTATE_CLOSED, align 4
  %113 = call i32 @test_state(i32* %111, i32 %112)
  %114 = load i32*, i32** %2, align 8
  %115 = call i32 @test_no_script_dispatch(i32* %114)
  %116 = load i32*, i32** %3, align 8
  %117 = call i32 @test_script_dispatch(i32* %116)
  %118 = load i32*, i32** %3, align 8
  %119 = call i32 @IDispatchEx_Release(i32* %118)
  %120 = load i32*, i32** %1, align 8
  %121 = call i32 @IActiveScriptParse_Release(i32* %120)
  %122 = load i32*, i32** %2, align 8
  %123 = call i64 @IActiveScript_Release(i32* %122)
  store i64 %123, i64* %4, align 8
  %124 = load i64, i64* %4, align 8
  %125 = icmp ne i64 %124, 0
  %126 = xor i1 %125, true
  %127 = zext i1 %126 to i32
  %128 = load i64, i64* %4, align 8
  %129 = call i32 @ok(i32 %127, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i64 %128)
  ret void
}

declare dso_local i32* @create_jscript(...) #1

declare dso_local i64 @IActiveScript_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @test_state(i32*, i32) #1

declare dso_local i32 @test_safety(i32*) #1

declare dso_local i32 @test_invoke_versioning(i32*) #1

declare dso_local i64 @IActiveScriptParse_InitNew(i32*) #1

declare dso_local i64 @IActiveScript_SetScriptSite(i32*, i32*) #1

declare dso_local i32 @test_no_script_dispatch(i32*) #1

declare dso_local i32 @SET_EXPECT(i32) #1

declare dso_local i32 @CHECK_CALLED(i32) #1

declare dso_local i32* @get_script_dispatch(i32*) #1

declare dso_local i32 @test_script_dispatch(i32*) #1

declare dso_local i64 @IActiveScript_SetScriptState(i32*, i32) #1

declare dso_local i64 @IActiveScript_Close(i32*) #1

declare dso_local i32 @IDispatchEx_Release(i32*) #1

declare dso_local i32 @IActiveScriptParse_Release(i32*) #1

declare dso_local i64 @IActiveScript_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
