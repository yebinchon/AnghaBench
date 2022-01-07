; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/jscript/extr_run.c_test_isvisible.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/jscript/extr_run.c_test_isvisible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_isvisible.script_textW = internal constant [17 x i8] c"var v = testVal;\00", align 16
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
@.str.5 = private unnamed_addr constant [30 x i8] c"ParseScriptText failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @test_isvisible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_isvisible(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = call i32* (...) @create_script()
  store i32* %6, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %116

10:                                               ; preds = %1
  %11 = load i32*, i32** %4, align 8
  %12 = bitcast i32** %3 to i8**
  %13 = call i64 @IActiveScript_QueryInterface(i32* %11, i32* @IID_IActiveScriptParse, i8** %12)
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @S_OK, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @ok(i32 %17, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load i64, i64* %5, align 8
  %21 = call i64 @FAILED(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %10
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @IActiveScript_Release(i32* %24)
  br label %116

26:                                               ; preds = %10
  %27 = load i32*, i32** %3, align 8
  %28 = call i64 @IActiveScriptParse_InitNew(i32* %27)
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @S_OK, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %33)
  %35 = load i32*, i32** %4, align 8
  %36 = call i64 @IActiveScript_SetScriptSite(i32* %35, i32* @ActiveScriptSite)
  store i64 %36, i64* %5, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @S_OK, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @ok(i32 %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %41)
  %43 = load i64, i64* %2, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %26
  %46 = load i32, i32* @GetItemInfo_testVal, align 4
  %47 = call i32 @SET_EXPECT(i32 %46)
  br label %48

48:                                               ; preds = %45, %26
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* @test_valW, align 4
  %51 = load i32, i32* @SCRIPTITEM_ISVISIBLE, align 4
  %52 = load i32, i32* @SCRIPTITEM_ISSOURCE, align 4
  %53 = or i32 %51, %52
  %54 = load i64, i64* %2, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* @SCRIPTITEM_GLOBALMEMBERS, align 4
  br label %59

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %58, %56
  %60 = phi i32 [ %57, %56 ], [ 0, %58 ]
  %61 = or i32 %53, %60
  %62 = call i64 @IActiveScript_AddNamedItem(i32* %49, i32 %50, i32 %61)
  store i64 %62, i64* %5, align 8
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* @S_OK, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @ok(i32 %66, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %67)
  %69 = load i64, i64* %2, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %59
  %72 = load i32, i32* @GetItemInfo_testVal, align 4
  %73 = call i32 @CHECK_CALLED(i32 %72)
  br label %74

74:                                               ; preds = %71, %59
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* @SCRIPTSTATE_STARTED, align 4
  %77 = call i64 @IActiveScript_SetScriptState(i32* %75, i32 %76)
  store i64 %77, i64* %5, align 8
  %78 = load i64, i64* %5, align 8
  %79 = load i64, i64* @S_OK, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = load i64, i64* %5, align 8
  %83 = call i32 @ok(i32 %81, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i64 %82)
  %84 = load i64, i64* %2, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %74
  %87 = load i32, i32* @GetItemInfo_testVal, align 4
  %88 = call i32 @SET_EXPECT(i32 %87)
  br label %89

89:                                               ; preds = %86, %74
  %90 = load i32*, i32** %3, align 8
  %91 = call i64 @IActiveScriptParse_ParseScriptText(i32* %90, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @test_isvisible.script_textW, i64 0, i64 0), i32* null, i32* null, i32* null, i32 0, i32 0, i32 0, i32* null, i32* null)
  store i64 %91, i64* %5, align 8
  %92 = load i64, i64* %5, align 8
  %93 = load i64, i64* @S_OK, align 8
  %94 = icmp eq i64 %92, %93
  %95 = zext i1 %94 to i32
  %96 = load i64, i64* %5, align 8
  %97 = call i32 @ok(i32 %95, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i64 %96)
  %98 = load i64, i64* %2, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %89
  %101 = load i32, i32* @GetItemInfo_testVal, align 4
  %102 = call i32 @CHECK_CALLED(i32 %101)
  br label %103

103:                                              ; preds = %100, %89
  %104 = load i32*, i32** %3, align 8
  %105 = call i64 @IActiveScriptParse_ParseScriptText(i32* %104, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @test_isvisible.script_textW, i64 0, i64 0), i32* null, i32* null, i32* null, i32 0, i32 0, i32 0, i32* null, i32* null)
  store i64 %105, i64* %5, align 8
  %106 = load i64, i64* %5, align 8
  %107 = load i64, i64* @S_OK, align 8
  %108 = icmp eq i64 %106, %107
  %109 = zext i1 %108 to i32
  %110 = load i64, i64* %5, align 8
  %111 = call i32 @ok(i32 %109, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i64 %110)
  %112 = load i32*, i32** %4, align 8
  %113 = call i32 @IActiveScript_Release(i32* %112)
  %114 = load i32*, i32** %3, align 8
  %115 = call i32 @IActiveScriptParse_Release(i32* %114)
  br label %116

116:                                              ; preds = %103, %23, %9
  ret void
}

declare dso_local i32* @create_script(...) #1

declare dso_local i64 @IActiveScript_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @IActiveScript_Release(i32*) #1

declare dso_local i64 @IActiveScriptParse_InitNew(i32*) #1

declare dso_local i64 @IActiveScript_SetScriptSite(i32*, i32*) #1

declare dso_local i32 @SET_EXPECT(i32) #1

declare dso_local i64 @IActiveScript_AddNamedItem(i32*, i32, i32) #1

declare dso_local i32 @CHECK_CALLED(i32) #1

declare dso_local i64 @IActiveScript_SetScriptState(i32*, i32) #1

declare dso_local i64 @IActiveScriptParse_ParseScriptText(i32*, i8*, i32*, i32*, i32*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @IActiveScriptParse_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
