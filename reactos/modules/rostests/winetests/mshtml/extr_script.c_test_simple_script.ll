; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_script.c_test_simple_script.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_script.c_test_simple_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CreateInstance = common dso_local global i32 0, align 4
@GetInterfaceSafetyOptions = common dso_local global i32 0, align 4
@SetInterfaceSafetyOptions = common dso_local global i32 0, align 4
@SetProperty_INVOKEVERSIONING = common dso_local global i32 0, align 4
@SetProperty_HACK_TRIDENTEVENTSINK = common dso_local global i32 0, align 4
@InitNew = common dso_local global i32 0, align 4
@SetScriptSite = common dso_local global i32 0, align 4
@GetScriptState = common dso_local global i32 0, align 4
@SetScriptState_STARTED = common dso_local global i32 0, align 4
@AddNamedItem = common dso_local global i32 0, align 4
@SetProperty_ABBREVIATE_GLOBALNAME_RESOLUTION = common dso_local global i32 0, align 4
@ParseScriptText_script = common dso_local global i32 0, align 4
@SetScriptState_CONNECTED = common dso_local global i32 0, align 4
@simple_script_str = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"execScript call\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"TestScript\00", align 1
@site = common dso_local global i64 0, align 8
@window_dispex = common dso_local global i64 0, align 8
@SetScriptState_DISCONNECTED = common dso_local global i32 0, align 4
@Close = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_simple_script to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_simple_script() #0 {
  %1 = alloca i32*, align 8
  %2 = call i32* (...) @create_document()
  store i32* %2, i32** %1, align 8
  %3 = load i32*, i32** %1, align 8
  %4 = icmp ne i32* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %86

6:                                                ; preds = %0
  %7 = load i32, i32* @CreateInstance, align 4
  %8 = call i32 @SET_EXPECT(i32 %7)
  %9 = load i32, i32* @GetInterfaceSafetyOptions, align 4
  %10 = call i32 @SET_EXPECT(i32 %9)
  %11 = load i32, i32* @SetInterfaceSafetyOptions, align 4
  %12 = call i32 @SET_EXPECT(i32 %11)
  %13 = load i32, i32* @SetProperty_INVOKEVERSIONING, align 4
  %14 = call i32 @SET_EXPECT(i32 %13)
  %15 = load i32, i32* @SetProperty_HACK_TRIDENTEVENTSINK, align 4
  %16 = call i32 @SET_EXPECT(i32 %15)
  %17 = load i32, i32* @InitNew, align 4
  %18 = call i32 @SET_EXPECT(i32 %17)
  %19 = load i32, i32* @SetScriptSite, align 4
  %20 = call i32 @SET_EXPECT(i32 %19)
  %21 = load i32, i32* @GetScriptState, align 4
  %22 = call i32 @SET_EXPECT(i32 %21)
  %23 = load i32, i32* @SetScriptState_STARTED, align 4
  %24 = call i32 @SET_EXPECT(i32 %23)
  %25 = load i32, i32* @AddNamedItem, align 4
  %26 = call i32 @SET_EXPECT(i32 %25)
  %27 = load i32, i32* @SetProperty_ABBREVIATE_GLOBALNAME_RESOLUTION, align 4
  %28 = call i32 @SET_EXPECT(i32 %27)
  %29 = load i32, i32* @ParseScriptText_script, align 4
  %30 = call i32 @SET_EXPECT(i32 %29)
  %31 = load i32, i32* @SetScriptState_CONNECTED, align 4
  %32 = call i32 @SET_EXPECT(i32 %31)
  %33 = load i32*, i32** %1, align 8
  %34 = load i32, i32* @simple_script_str, align 4
  %35 = call i32 @load_doc(i32* %33, i32 %34)
  %36 = load i32, i32* @CreateInstance, align 4
  %37 = call i32 @CHECK_CALLED(i32 %36)
  %38 = load i32, i32* @GetInterfaceSafetyOptions, align 4
  %39 = call i32 @CHECK_CALLED(i32 %38)
  %40 = load i32, i32* @SetInterfaceSafetyOptions, align 4
  %41 = call i32 @CHECK_CALLED(i32 %40)
  %42 = load i32, i32* @SetProperty_INVOKEVERSIONING, align 4
  %43 = call i32 @CHECK_CALLED_BROKEN(i32 %42)
  %44 = load i32, i32* @SetProperty_HACK_TRIDENTEVENTSINK, align 4
  %45 = call i32 @CHECK_CALLED(i32 %44)
  %46 = load i32, i32* @InitNew, align 4
  %47 = call i32 @CHECK_CALLED(i32 %46)
  %48 = load i32, i32* @SetScriptSite, align 4
  %49 = call i32 @CHECK_CALLED(i32 %48)
  %50 = load i32, i32* @GetScriptState, align 4
  %51 = call i32 @CHECK_CALLED(i32 %50)
  %52 = load i32, i32* @SetScriptState_STARTED, align 4
  %53 = call i32 @CHECK_CALLED(i32 %52)
  %54 = load i32, i32* @AddNamedItem, align 4
  %55 = call i32 @CHECK_CALLED(i32 %54)
  %56 = load i32, i32* @SetProperty_ABBREVIATE_GLOBALNAME_RESOLUTION, align 4
  %57 = call i32 @CHECK_CALLED_BROKEN(i32 %56)
  %58 = load i32, i32* @ParseScriptText_script, align 4
  %59 = call i32 @CHECK_CALLED(i32 %58)
  %60 = load i32, i32* @SetScriptState_CONNECTED, align 4
  %61 = call i32 @CHECK_CALLED(i32 %60)
  %62 = load i32*, i32** %1, align 8
  %63 = call i32 @test_exec_script(i32* %62, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i64, i64* @site, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %6
  %67 = load i64, i64* @site, align 8
  %68 = call i32 @IActiveScriptSite_Release(i64 %67)
  br label %69

69:                                               ; preds = %66, %6
  %70 = load i64, i64* @window_dispex, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i64, i64* @window_dispex, align 8
  %74 = call i32 @IDispatchEx_Release(i64 %73)
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i32, i32* @SetScriptState_DISCONNECTED, align 4
  %77 = call i32 @SET_EXPECT(i32 %76)
  %78 = load i32, i32* @Close, align 4
  %79 = call i32 @SET_EXPECT(i32 %78)
  %80 = load i32*, i32** %1, align 8
  %81 = call i32 @IHTMLDocument2_Release(i32* %80)
  %82 = load i32, i32* @SetScriptState_DISCONNECTED, align 4
  %83 = call i32 @CHECK_CALLED(i32 %82)
  %84 = load i32, i32* @Close, align 4
  %85 = call i32 @CHECK_CALLED(i32 %84)
  br label %86

86:                                               ; preds = %75, %5
  ret void
}

declare dso_local i32* @create_document(...) #1

declare dso_local i32 @SET_EXPECT(i32) #1

declare dso_local i32 @load_doc(i32*, i32) #1

declare dso_local i32 @CHECK_CALLED(i32) #1

declare dso_local i32 @CHECK_CALLED_BROKEN(i32) #1

declare dso_local i32 @test_exec_script(i32*, i8*, i8*) #1

declare dso_local i32 @IActiveScriptSite_Release(i64) #1

declare dso_local i32 @IDispatchEx_Release(i64) #1

declare dso_local i32 @IHTMLDocument2_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
