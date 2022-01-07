; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/vbscript/extr_run.c_test_parse_context.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/vbscript/extr_run.c_test_parse_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_parse_context.xW = internal constant [2 x i8] c"x\00", align 1
@test_parse_context.yW = internal constant [2 x i8] c"y\00", align 1
@global_ref = common dso_local global i32 0, align 4
@IID_IActiveScriptParse = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Could not get IActiveScriptParse: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Call reportSuccess()\0A\00", align 1
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"ParseScriptText failed: %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [106 x i8] c"class Cl\0A    Public Sub ClMethod\0A        Call reportSuccess()\0A    End Sub\0AEnd Class\0ADim x\0Aset x = new Cl\0A\00", align 1
@global_success_d = common dso_local global i32 0, align 4
@global_success_i = common dso_local global i32 0, align 4
@testW = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"global_ref = %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_parse_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_parse_context() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 1, i32* @global_ref, align 4
  %5 = call i32* @create_and_init_script(i32 0)
  store i32* %5, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  br label %90

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
  %18 = trunc i64 %17 to i32
  %19 = call i32 @ok(i32 %16, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = call i32 @a2bstr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 %20, i32* %3, align 4
  %21 = load i32*, i32** %1, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i64 @IActiveScriptParse_ParseScriptText(i32* %21, i32 %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_parse_context.yW, i64 0, i64 0), i32* null, i32* null, i32 0, i32 0, i32 0, i32* null, i32* null)
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @E_INVALIDARG, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load i64, i64* %4, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 @ok(i32 %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @SysFreeString(i32 %31)
  %33 = call i32 @a2bstr(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.3, i64 0, i64 0))
  store i32 %33, i32* %3, align 4
  %34 = load i32*, i32** %1, align 8
  %35 = load i32, i32* %3, align 4
  %36 = call i64 @IActiveScriptParse_ParseScriptText(i32* %34, i32 %35, i8* null, i32* null, i32* null, i32 0, i32 0, i32 0, i32* null, i32* null)
  store i64 %36, i64* %4, align 8
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* @S_OK, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i64, i64* %4, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i32 @ok(i32 %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @SysFreeString(i32 %44)
  %46 = call i32 @a2bstr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 %46, i32* %3, align 4
  %47 = load i32*, i32** %1, align 8
  %48 = load i32, i32* %3, align 4
  %49 = call i64 @IActiveScriptParse_ParseScriptText(i32* %47, i32 %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_parse_context.xW, i64 0, i64 0), i32* null, i32* null, i32 0, i32 0, i32 0, i32* null, i32* null)
  store i64 %49, i64* %4, align 8
  %50 = load i64, i64* %4, align 8
  %51 = load i64, i64* @E_INVALIDARG, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = load i64, i64* %4, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i32 @ok(i32 %53, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @SysFreeString(i32 %57)
  %59 = load i32, i32* @global_success_d, align 4
  %60 = call i32 @SET_EXPECT(i32 %59)
  %61 = load i32, i32* @global_success_i, align 4
  %62 = call i32 @SET_EXPECT(i32 %61)
  %63 = call i32 @a2bstr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 %63, i32* %3, align 4
  %64 = load i32*, i32** %1, align 8
  %65 = load i32, i32* %3, align 4
  %66 = load i8*, i8** @testW, align 8
  %67 = call i64 @IActiveScriptParse_ParseScriptText(i32* %64, i32 %65, i8* %66, i32* null, i32* null, i32 0, i32 0, i32 0, i32* null, i32* null)
  store i64 %67, i64* %4, align 8
  %68 = load i64, i64* %4, align 8
  %69 = load i64, i64* @S_OK, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = load i64, i64* %4, align 8
  %73 = trunc i64 %72 to i32
  %74 = call i32 @ok(i32 %71, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @SysFreeString(i32 %75)
  %77 = load i32, i32* @global_success_d, align 4
  %78 = call i32 @CHECK_CALLED(i32 %77)
  %79 = load i32, i32* @global_success_i, align 4
  %80 = call i32 @CHECK_CALLED(i32 %79)
  %81 = load i32*, i32** %1, align 8
  %82 = call i32 @IActiveScriptParse_Release(i32* %81)
  %83 = load i32*, i32** %2, align 8
  %84 = call i32 @close_script(i32* %83)
  %85 = load i32, i32* @global_ref, align 4
  %86 = icmp eq i32 %85, 1
  %87 = zext i1 %86 to i32
  %88 = load i32, i32* @global_ref, align 4
  %89 = call i32 @ok(i32 %87, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32* @create_and_init_script(i32) #1

declare dso_local i64 @IActiveScript_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @a2bstr(i8*) #1

declare dso_local i64 @IActiveScriptParse_ParseScriptText(i32*, i32, i8*, i32*, i32*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @SysFreeString(i32) #1

declare dso_local i32 @SET_EXPECT(i32) #1

declare dso_local i32 @CHECK_CALLED(i32) #1

declare dso_local i32 @IActiveScriptParse_Release(i32*) #1

declare dso_local i32 @close_script(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
