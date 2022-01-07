; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/jscript/extr_run.c_run_benchmark.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/jscript/extr_run.c_run_benchmark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IActiveScriptParse = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Could not get IActiveScriptParse: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"InitNew failed: %08x\0A\00", align 1
@ActiveScriptSite = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"SetScriptSite failed: %08x\0A\00", align 1
@testW = common dso_local global i32 0, align 4
@SCRIPTITEM_ISVISIBLE = common dso_local global i32 0, align 4
@SCRIPTITEM_ISSOURCE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"AddNamedItem failed: %08x\0A\00", align 1
@SCRIPTSTATE_STARTED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"SetScriptState(SCRIPTSTATE_STARTED) failed: %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"%s: ParseScriptText failed: %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"%s ran in %u ms\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @run_benchmark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_benchmark(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %9 = call i32* (...) @create_script()
  store i32* %9, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %97

13:                                               ; preds = %1
  %14 = load i32*, i32** %4, align 8
  %15 = bitcast i32** %3 to i8**
  %16 = call i64 @IActiveScript_QueryInterface(i32* %14, i32* @IID_IActiveScriptParse, i8** %15)
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @S_OK, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load i64, i64* %8, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = call i32 (i32, i8*, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = load i64, i64* %8, align 8
  %25 = call i64 @FAILED(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %13
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @IActiveScript_Release(i32* %28)
  br label %97

30:                                               ; preds = %13
  %31 = load i32*, i32** %3, align 8
  %32 = call i64 @IActiveScriptParse_InitNew(i32* %31)
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* @S_OK, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load i64, i64* %8, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = call i32 (i32, i8*, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  %40 = load i32*, i32** %4, align 8
  %41 = call i64 @IActiveScript_SetScriptSite(i32* %40, i32* @ActiveScriptSite)
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* @S_OK, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = load i64, i64* %8, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = call i32 (i32, i8*, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %47)
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* @testW, align 4
  %51 = load i32, i32* @SCRIPTITEM_ISVISIBLE, align 4
  %52 = load i32, i32* @SCRIPTITEM_ISSOURCE, align 4
  %53 = or i32 %51, %52
  %54 = call i64 @IActiveScript_AddNamedItem(i32* %49, i32 %50, i32 %53)
  store i64 %54, i64* %8, align 8
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* @S_OK, align 8
  %57 = icmp eq i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = load i64, i64* %8, align 8
  %60 = inttoptr i64 %59 to i8*
  %61 = call i32 (i32, i8*, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %60)
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* @SCRIPTSTATE_STARTED, align 4
  %64 = call i64 @IActiveScript_SetScriptState(i32* %62, i32 %63)
  store i64 %64, i64* %8, align 8
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* @S_OK, align 8
  %67 = icmp eq i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = load i64, i64* %8, align 8
  %70 = inttoptr i64 %69 to i8*
  %71 = call i32 (i32, i8*, i8*, ...) @ok(i32 %68, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i8* %70)
  %72 = load i8*, i8** %2, align 8
  %73 = call i32 @load_res(i8* %72)
  store i32 %73, i32* %7, align 4
  %74 = call i64 (...) @GetTickCount()
  store i64 %74, i64* %5, align 8
  %75 = load i32*, i32** %3, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i64 @IActiveScriptParse_ParseScriptText(i32* %75, i32 %76, i32* null, i32* null, i32* null, i32 0, i32 0, i32 0, i32* null, i32* null)
  store i64 %77, i64* %8, align 8
  %78 = call i64 (...) @GetTickCount()
  store i64 %78, i64* %6, align 8
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* @S_OK, align 8
  %81 = icmp eq i64 %79, %80
  %82 = zext i1 %81 to i32
  %83 = load i8*, i8** %2, align 8
  %84 = load i64, i64* %8, align 8
  %85 = call i32 (i32, i8*, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8* %83, i64 %84)
  %86 = load i8*, i8** %2, align 8
  %87 = load i64, i64* %6, align 8
  %88 = load i64, i64* %5, align 8
  %89 = sub nsw i64 %87, %88
  %90 = call i32 @trace(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* %86, i64 %89)
  %91 = load i32*, i32** %4, align 8
  %92 = call i32 @IActiveScript_Release(i32* %91)
  %93 = load i32*, i32** %3, align 8
  %94 = call i32 @IActiveScriptParse_Release(i32* %93)
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @SysFreeString(i32 %95)
  br label %97

97:                                               ; preds = %30, %27, %12
  ret void
}

declare dso_local i32* @create_script(...) #1

declare dso_local i64 @IActiveScript_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i8*, ...) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @IActiveScript_Release(i32*) #1

declare dso_local i64 @IActiveScriptParse_InitNew(i32*) #1

declare dso_local i64 @IActiveScript_SetScriptSite(i32*, i32*) #1

declare dso_local i64 @IActiveScript_AddNamedItem(i32*, i32, i32) #1

declare dso_local i64 @IActiveScript_SetScriptState(i32*, i32) #1

declare dso_local i32 @load_res(i8*) #1

declare dso_local i64 @GetTickCount(...) #1

declare dso_local i64 @IActiveScriptParse_ParseScriptText(i32*, i32, i32*, i32*, i32*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @trace(i8*, i8*, i64) #1

declare dso_local i32 @IActiveScriptParse_Release(i32*) #1

declare dso_local i32 @SysFreeString(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
