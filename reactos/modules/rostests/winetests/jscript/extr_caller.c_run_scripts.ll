; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/jscript/extr_caller.c_run_scripts.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/jscript/extr_caller.c_run_scripts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IVariantChangeType = common dso_local global i32 0, align 4
@script_change_type = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Could not get IVariantChangeType iface: %08x\0A\00", align 1
@testArgConv = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [116 x i8] c"var obj = {    toString: function() { return 'strval'; },    valueOf: function()  { return 10; }};testArgConv(obj);\00", align 1
@stored_obj = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @run_scripts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_scripts() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = call i32* (...) @create_script()
  store i32* %3, i32** %1, align 8
  %4 = load i32*, i32** %1, align 8
  %5 = call i64 @IActiveScriptParse_QueryInterface(i32* %4, i32* @IID_IVariantChangeType, i8** bitcast (i32* @script_change_type to i8**))
  store i64 %5, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = load i64, i64* @S_OK, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = load i64, i64* %2, align 8
  %11 = call i32 @ok(i32 %9, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %10)
  %12 = load i32, i32* @testArgConv, align 4
  %13 = call i32 @SET_EXPECT(i32 %12)
  %14 = load i32*, i32** %1, align 8
  %15 = call i32 @parse_script_a(i32* %14, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32, i32* @testArgConv, align 4
  %17 = call i32 @CHECK_CALLED(i32 %16)
  %18 = load i32, i32* @script_change_type, align 4
  %19 = load i32, i32* @stored_obj, align 4
  %20 = call i32 @test_change_types(i32 %18, i32 %19)
  %21 = load i32, i32* @stored_obj, align 4
  %22 = call i32 @IDispatch_Release(i32 %21)
  %23 = load i32, i32* @script_change_type, align 4
  %24 = call i32 @IVariantChangeType_Release(i32 %23)
  %25 = load i32*, i32** %1, align 8
  %26 = call i32 @IActiveScriptParse_Release(i32* %25)
  ret void
}

declare dso_local i32* @create_script(...) #1

declare dso_local i64 @IActiveScriptParse_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @SET_EXPECT(i32) #1

declare dso_local i32 @parse_script_a(i32*, i8*) #1

declare dso_local i32 @CHECK_CALLED(i32) #1

declare dso_local i32 @test_change_types(i32, i32) #1

declare dso_local i32 @IDispatch_Release(i32) #1

declare dso_local i32 @IVariantChangeType_Release(i32) #1

declare dso_local i32 @IActiveScriptParse_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
