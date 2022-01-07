; ModuleID = '/home/carl/AnghaBench/systemd/src/login/extr_test-login-tables.c_main.c'
source_filename = "/home/carl/AnghaBench/systemd/src/login/extr_test-login-tables.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@handle_action = common dso_local global i32 0, align 4
@HANDLE_ACTION = common dso_local global i32 0, align 4
@inhibit_mode = common dso_local global i32 0, align 4
@INHIBIT_MODE = common dso_local global i32 0, align 4
@kill_who = common dso_local global i32 0, align 4
@KILL_WHO = common dso_local global i32 0, align 4
@session_class = common dso_local global i32 0, align 4
@SESSION_CLASS = common dso_local global i32 0, align 4
@session_state = common dso_local global i32 0, align 4
@SESSION_STATE = common dso_local global i32 0, align 4
@session_type = common dso_local global i32 0, align 4
@SESSION_TYPE = common dso_local global i32 0, align 4
@user_state = common dso_local global i32 0, align 4
@USER_STATE = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = load i32, i32* @handle_action, align 4
  %7 = load i32, i32* @HANDLE_ACTION, align 4
  %8 = call i32 @test_table(i32 %6, i32 %7)
  %9 = load i32, i32* @inhibit_mode, align 4
  %10 = load i32, i32* @INHIBIT_MODE, align 4
  %11 = call i32 @test_table(i32 %9, i32 %10)
  %12 = load i32, i32* @kill_who, align 4
  %13 = load i32, i32* @KILL_WHO, align 4
  %14 = call i32 @test_table(i32 %12, i32 %13)
  %15 = load i32, i32* @session_class, align 4
  %16 = load i32, i32* @SESSION_CLASS, align 4
  %17 = call i32 @test_table(i32 %15, i32 %16)
  %18 = load i32, i32* @session_state, align 4
  %19 = load i32, i32* @SESSION_STATE, align 4
  %20 = call i32 @test_table(i32 %18, i32 %19)
  %21 = load i32, i32* @session_type, align 4
  %22 = load i32, i32* @SESSION_TYPE, align 4
  %23 = call i32 @test_table(i32 %21, i32 %22)
  %24 = load i32, i32* @user_state, align 4
  %25 = load i32, i32* @USER_STATE, align 4
  %26 = call i32 @test_table(i32 %24, i32 %25)
  %27 = load i32, i32* @EXIT_SUCCESS, align 4
  ret i32 %27
}

declare dso_local i32 @test_table(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
