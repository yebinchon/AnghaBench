; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/jscript/extr_caller.c_create_script.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/jscript/extr_caller.c_create_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLSID_JScript = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@CLSCTX_INPROC_HANDLER = common dso_local global i32 0, align 4
@IID_IActiveScript = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @create_script to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create_script() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %6 = load i32, i32* @CLSCTX_INPROC_HANDLER, align 4
  %7 = or i32 %5, %6
  %8 = bitcast i32** %3 to i8**
  %9 = call i64 @CoCreateInstance(i32* @CLSID_JScript, i32* null, i32 %7, i32* @IID_IActiveScript, i8** %8)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i64 @FAILED(i64 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %0
  store i32* null, i32** %1, align 8
  br label %66

14:                                               ; preds = %0
  %15 = load i32*, i32** %3, align 8
  %16 = bitcast i32** %2 to i8**
  %17 = call i64 @IActiveScript_QueryInterface(i32* %15, i32* @IID_IActiveScriptParse, i8** %16)
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @S_OK, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load i32*, i32** %2, align 8
  %25 = call i64 @IActiveScriptParse_InitNew(i32* %24)
  store i64 %25, i64* %4, align 8
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @S_OK, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %30)
  %32 = load i32*, i32** %3, align 8
  %33 = call i64 @IActiveScript_SetScriptSite(i32* %32, i32* @ActiveScriptSite)
  store i64 %33, i64* %4, align 8
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* @S_OK, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @ok(i32 %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %38)
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* @testW, align 4
  %42 = load i32, i32* @SCRIPTITEM_ISVISIBLE, align 4
  %43 = load i32, i32* @SCRIPTITEM_ISSOURCE, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @SCRIPTITEM_GLOBALMEMBERS, align 4
  %46 = or i32 %44, %45
  %47 = call i64 @IActiveScript_AddNamedItem(i32* %40, i32 %41, i32 %46)
  store i64 %47, i64* %4, align 8
  %48 = load i64, i64* %4, align 8
  %49 = load i64, i64* @S_OK, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i64, i64* %4, align 8
  %53 = call i32 @ok(i32 %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %52)
  %54 = load i32*, i32** %3, align 8
  %55 = load i32, i32* @SCRIPTSTATE_STARTED, align 4
  %56 = call i64 @IActiveScript_SetScriptState(i32* %54, i32 %55)
  store i64 %56, i64* %4, align 8
  %57 = load i64, i64* %4, align 8
  %58 = load i64, i64* @S_OK, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = load i64, i64* %4, align 8
  %62 = call i32 @ok(i32 %60, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i64 %61)
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 @IActiveScript_Release(i32* %63)
  %65 = load i32*, i32** %2, align 8
  store i32* %65, i32** %1, align 8
  br label %66

66:                                               ; preds = %14, %13
  %67 = load i32*, i32** %1, align 8
  ret i32* %67
}

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @IActiveScript_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

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
