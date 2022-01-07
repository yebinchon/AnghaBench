; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_spawn-ask-password-agent.c_ask_password_agent_open.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_spawn-ask-password-agent.c_ask_password_agent_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@agent_pid = common dso_local global i64 0, align 8
@STDIN_FILENO = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"(sd-askpwagent)\00", align 1
@SYSTEMD_TTY_ASK_PASSWORD_AGENT_BINARY_PATH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"--watch\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Failed to fork TTY ask password agent: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ask_password_agent_open() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @agent_pid, align 8
  %4 = icmp sgt i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %27

6:                                                ; preds = %0
  %7 = load i32, i32* @STDIN_FILENO, align 4
  %8 = call i32 @isatty(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  store i32 0, i32* %1, align 4
  br label %27

11:                                               ; preds = %6
  %12 = call i32 (...) @is_main_thread()
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* @EPERM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %1, align 4
  br label %27

17:                                               ; preds = %11
  %18 = load i32, i32* @SYSTEMD_TTY_ASK_PASSWORD_AGENT_BINARY_PATH, align 4
  %19 = load i32, i32* @SYSTEMD_TTY_ASK_PASSWORD_AGENT_BINARY_PATH, align 4
  %20 = call i32 @fork_agent(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* null, i32 0, i64* @agent_pid, i32 %18, i32 %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* %2, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @log_error_errno(i32 %24, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  store i32 %25, i32* %1, align 4
  br label %27

26:                                               ; preds = %17
  store i32 1, i32* %1, align 4
  br label %27

27:                                               ; preds = %26, %23, %14, %10, %5
  %28 = load i32, i32* %1, align 4
  ret i32 %28
}

declare dso_local i32 @isatty(i32) #1

declare dso_local i32 @is_main_thread(...) #1

declare dso_local i32 @fork_agent(i8*, i32*, i32, i64*, i32, i32, i8*, i32*) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
