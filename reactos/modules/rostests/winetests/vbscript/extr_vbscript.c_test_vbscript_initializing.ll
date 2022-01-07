; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/vbscript/extr_vbscript.c_test_vbscript_initializing.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/vbscript/extr_vbscript.c_test_vbscript_initializing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IActiveScriptParse = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Could not get IActiveScriptParse: %08x\0A\00", align 1
@SCRIPTSTATE_UNINITIALIZED = common dso_local global i32 0, align 4
@GetLCID = common dso_local global i32 0, align 4
@ActiveScriptSite = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"SetScriptSite failed: %08x\0A\00", align 1
@OnStateChange_INITIALIZED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"InitNew failed: %08x\0A\00", align 1
@E_UNEXPECTED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [51 x i8] c"SetScriptSite failed: %08x, expected E_UNEXPECTED\0A\00", align 1
@OnStateChange_CLOSED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"Close failed: %08x\0A\00", align 1
@SCRIPTSTATE_CLOSED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"ref = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_vbscript_initializing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_vbscript_initializing() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = call i32* (...) @create_vbscript()
  store i32* %5, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = bitcast i32** %1 to i8**
  %8 = call i64 @IActiveScript_QueryInterface(i32* %6, i32* @IID_IActiveScriptParse, i8** %7)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @S_OK, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @ok(i32 %12, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* @SCRIPTSTATE_UNINITIALIZED, align 4
  %17 = call i32 @test_state(i32* %15, i32 %16)
  %18 = load i32, i32* @GetLCID, align 4
  %19 = call i32 @SET_EXPECT(i32 %18)
  %20 = load i32*, i32** %2, align 8
  %21 = call i64 @IActiveScript_SetScriptSite(i32* %20, i32* @ActiveScriptSite)
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @S_OK, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @ok(i32 %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %26)
  %28 = load i32, i32* @GetLCID, align 4
  %29 = call i32 @CHECK_CALLED(i32 %28)
  %30 = load i32, i32* @OnStateChange_INITIALIZED, align 4
  %31 = call i32 @SET_EXPECT(i32 %30)
  %32 = load i32*, i32** %1, align 8
  %33 = call i64 @IActiveScriptParse_InitNew(i32* %32)
  store i64 %33, i64* %4, align 8
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* @S_OK, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @ok(i32 %37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %38)
  %40 = load i32, i32* @OnStateChange_INITIALIZED, align 4
  %41 = call i32 @CHECK_CALLED(i32 %40)
  %42 = load i32*, i32** %2, align 8
  %43 = call i64 @IActiveScript_SetScriptSite(i32* %42, i32* @ActiveScriptSite)
  store i64 %43, i64* %4, align 8
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* @E_UNEXPECTED, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i64, i64* %4, align 8
  %49 = call i32 @ok(i32 %47, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i64 %48)
  %50 = load i32, i32* @OnStateChange_CLOSED, align 4
  %51 = call i32 @SET_EXPECT(i32 %50)
  %52 = load i32*, i32** %2, align 8
  %53 = call i64 @IActiveScript_Close(i32* %52)
  store i64 %53, i64* %4, align 8
  %54 = load i64, i64* %4, align 8
  %55 = load i64, i64* @S_OK, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = load i64, i64* %4, align 8
  %59 = call i32 @ok(i32 %57, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i64 %58)
  %60 = load i32, i32* @OnStateChange_CLOSED, align 4
  %61 = call i32 @CHECK_CALLED(i32 %60)
  %62 = load i32*, i32** %2, align 8
  %63 = load i32, i32* @SCRIPTSTATE_CLOSED, align 4
  %64 = call i32 @test_state(i32* %62, i32 %63)
  %65 = load i32*, i32** %1, align 8
  %66 = call i32 @IActiveScriptParse_Release(i32* %65)
  %67 = load i32*, i32** %2, align 8
  %68 = call i64 @IActiveScript_Release(i32* %67)
  store i64 %68, i64* %3, align 8
  %69 = load i64, i64* %3, align 8
  %70 = icmp ne i64 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = load i64, i64* %3, align 8
  %74 = call i32 @ok(i32 %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i64 %73)
  ret void
}

declare dso_local i32* @create_vbscript(...) #1

declare dso_local i64 @IActiveScript_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @test_state(i32*, i32) #1

declare dso_local i32 @SET_EXPECT(i32) #1

declare dso_local i64 @IActiveScript_SetScriptSite(i32*, i32*) #1

declare dso_local i32 @CHECK_CALLED(i32) #1

declare dso_local i64 @IActiveScriptParse_InitNew(i32*) #1

declare dso_local i64 @IActiveScript_Close(i32*) #1

declare dso_local i32 @IActiveScriptParse_Release(i32*) #1

declare dso_local i64 @IActiveScript_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
