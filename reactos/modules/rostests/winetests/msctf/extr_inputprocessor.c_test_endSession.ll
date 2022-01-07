; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msctf/extr_inputprocessor.c_test_endSession.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msctf/extr_inputprocessor.c_test_endSession.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@test_ShouldDeactivate = common dso_local global i32 0, align 4
@test_CurrentFocus = common dso_local global i32* null, align 8
@g_dm = common dso_local global i32 0, align 4
@test_PrevFocus = common dso_local global i32 0, align 4
@SINK_OPTIONAL = common dso_local global i32 0, align 4
@test_OnSetFocus = common dso_local global i32 0, align 4
@g_tm = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Failed to Deactivate\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"OnSetFocus\00", align 1
@SINK_UNEXPECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_endSession to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_endSession() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @TRUE, align 4
  store i32 %2, i32* @test_ShouldDeactivate, align 4
  store i32* null, i32** @test_CurrentFocus, align 8
  %3 = load i32, i32* @g_dm, align 4
  store i32 %3, i32* @test_PrevFocus, align 4
  %4 = load i32, i32* @SINK_OPTIONAL, align 4
  store i32 %4, i32* @test_OnSetFocus, align 4
  %5 = load i32, i32* @g_tm, align 4
  %6 = call i32 @ITfThreadMgr_Deactivate(i32 %5)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = call i32 @SUCCEEDED(i32 %7)
  %9 = call i32 @ok(i32 %8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @sink_check_ok(i32* @test_OnSetFocus, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %11 = load i32, i32* @SINK_UNEXPECTED, align 4
  store i32 %11, i32* @test_OnSetFocus, align 4
  ret void
}

declare dso_local i32 @ITfThreadMgr_Deactivate(i32) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @SUCCEEDED(i32) #1

declare dso_local i32 @sink_check_ok(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
