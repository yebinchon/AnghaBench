; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/vbscript/extr_run.c_create_and_init_script.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/vbscript/extr_run.c_create_and_init_script.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @create_and_init_script to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create_and_init_script(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %7 = call i32* (...) @create_script()
  store i32* %7, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %63

11:                                               ; preds = %1
  %12 = load i32*, i32** %5, align 8
  %13 = bitcast i32** %4 to i8**
  %14 = call i64 @IActiveScript_QueryInterface(i32* %12, i32* @IID_IActiveScriptParse, i8** %13)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @S_OK, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @ok(i32 %18, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load i32*, i32** %4, align 8
  %22 = call i64 @IActiveScriptParse_InitNew(i32* %21)
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @S_OK, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %27)
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @IActiveScriptParse_Release(i32* %29)
  %31 = load i32*, i32** %5, align 8
  %32 = call i64 @IActiveScript_SetScriptSite(i32* %31, i32* @ActiveScriptSite)
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @S_OK, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @ok(i32 %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %37)
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* @testW, align 4
  %41 = load i32, i32* @SCRIPTITEM_ISVISIBLE, align 4
  %42 = load i32, i32* @SCRIPTITEM_ISSOURCE, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* %3, align 4
  %45 = or i32 %43, %44
  %46 = call i64 @IActiveScript_AddNamedItem(i32* %39, i32 %40, i32 %45)
  store i64 %46, i64* %6, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* @S_OK, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @ok(i32 %50, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %51)
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* @SCRIPTSTATE_STARTED, align 4
  %55 = call i64 @IActiveScript_SetScriptState(i32* %53, i32 %54)
  store i64 %55, i64* %6, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* @S_OK, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @ok(i32 %59, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i64 %60)
  %62 = load i32*, i32** %5, align 8
  store i32* %62, i32** %2, align 8
  br label %63

63:                                               ; preds = %11, %10
  %64 = load i32*, i32** %2, align 8
  ret i32* %64
}

declare dso_local i32* @create_script(...) #1

declare dso_local i64 @IActiveScript_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @IActiveScriptParse_InitNew(i32*) #1

declare dso_local i32 @IActiveScriptParse_Release(i32*) #1

declare dso_local i64 @IActiveScript_SetScriptSite(i32*, i32*) #1

declare dso_local i64 @IActiveScript_AddNamedItem(i32*, i32, i32) #1

declare dso_local i64 @IActiveScript_SetScriptState(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
