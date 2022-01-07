; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/vbscript/extr_run.c_parse_script.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/vbscript/extr_run.c_parse_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i64 0, align 8
@IID_IActiveScriptParse = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Could not get IActiveScriptParse: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"GetScriptDispatch failed: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"script_disp == NULL\0A\00", align 1
@Global = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"script_disp == Global\0A\00", align 1
@test_counter = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"ref=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i32*)* @parse_script to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_script(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32* @create_and_init_script(i32 %13)
  store i32* %14, i32** %9, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = load i64, i64* @S_OK, align 8
  store i64 %18, i64* %4, align 8
  br label %72

19:                                               ; preds = %3
  %20 = load i32*, i32** %9, align 8
  %21 = bitcast i32** %8 to i8**
  %22 = call i64 @IActiveScript_QueryInterface(i32* %20, i32* @IID_IActiveScriptParse, i8** %21)
  store i64 %22, i64* %12, align 8
  %23 = load i64, i64* %12, align 8
  %24 = load i64, i64* @S_OK, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i64, i64* %12, align 8
  %28 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = load i64, i64* %12, align 8
  %30 = call i64 @FAILED(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %19
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @IActiveScript_Release(i32* %33)
  %35 = load i64, i64* %12, align 8
  store i64 %35, i64* %4, align 8
  br label %72

36:                                               ; preds = %19
  %37 = load i32*, i32** %9, align 8
  %38 = call i64 @IActiveScript_GetScriptDispatch(i32* %37, i32* null, i32** %10)
  store i64 %38, i64* %12, align 8
  %39 = load i64, i64* %12, align 8
  %40 = load i64, i64* @S_OK, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i64, i64* %12, align 8
  %44 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %43)
  %45 = load i32*, i32** %10, align 8
  %46 = icmp ne i32* %45, null
  %47 = zext i1 %46 to i32
  %48 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32*, i32** %10, align 8
  %50 = icmp ne i32* %49, @Global
  %51 = zext i1 %50 to i32
  %52 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  store i64 0, i64* @test_counter, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = call i64 @IActiveScriptParse_ParseScriptText(i32* %53, i32 %54, i32* null, i32* null, i32* %55, i32 0, i32 0, i32 0, i32* null, i32* null)
  store i64 %56, i64* %12, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @IActiveScript_Close(i32* %57)
  %59 = load i32*, i32** %10, align 8
  %60 = call i32 @IDispatch_Release(i32* %59)
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 @IActiveScript_Release(i32* %61)
  %63 = load i32*, i32** %8, align 8
  %64 = call i64 @IActiveScriptParse_Release(i32* %63)
  store i64 %64, i64* %11, align 8
  %65 = load i64, i64* %11, align 8
  %66 = icmp ne i64 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = load i64, i64* %11, align 8
  %70 = call i32 (i32, i8*, ...) @ok(i32 %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i64 %69)
  %71 = load i64, i64* %12, align 8
  store i64 %71, i64* %4, align 8
  br label %72

72:                                               ; preds = %36, %32, %17
  %73 = load i64, i64* %4, align 8
  ret i64 %73
}

declare dso_local i32* @create_and_init_script(i32) #1

declare dso_local i64 @IActiveScript_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @IActiveScript_Release(i32*) #1

declare dso_local i64 @IActiveScript_GetScriptDispatch(i32*, i32*, i32**) #1

declare dso_local i64 @IActiveScriptParse_ParseScriptText(i32*, i32, i32*, i32*, i32*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @IActiveScript_Close(i32*) #1

declare dso_local i32 @IDispatch_Release(i32*) #1

declare dso_local i64 @IActiveScriptParse_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
