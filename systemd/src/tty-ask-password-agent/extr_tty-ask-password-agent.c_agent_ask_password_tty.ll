; ModuleID = '/home/carl/AnghaBench/systemd/src/tty-ask-password-agent/extr_tty-ask-password-agent.c_agent_ask_password_tty.c'
source_filename = "/home/carl/AnghaBench/systemd/src/tty-ask-password-agent/extr_tty-ask-password-agent.c_agent_ask_password_tty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arg_console = common dso_local global i64 0, align 8
@arg_device = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"/dev/console\00", align 1
@ACQUIRE_TERMINAL_WAIT = common dso_local global i32 0, align 4
@USEC_INFINITY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to acquire %s: %m\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Failed to reset terminal, ignoring: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i8*, i8***)* @agent_ask_password_tty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agent_ask_password_tty(i8* %0, i32 %1, i32 %2, i8* %3, i8*** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8***, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8*** %4, i8**** %11, align 8
  store i32 -1, i32* %12, align 4
  %15 = load i64, i64* @arg_console, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %44

17:                                               ; preds = %5
  %18 = load i64, i64* @arg_device, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = inttoptr i64 %18 to i8*
  br label %23

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i8* [ %21, %20 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %22 ]
  store i8* %24, i8** %14, align 8
  %25 = load i8*, i8** %14, align 8
  %26 = load i32, i32* @ACQUIRE_TERMINAL_WAIT, align 4
  %27 = load i32, i32* @USEC_INFINITY, align 4
  %28 = call i32 @acquire_terminal(i8* %25, i32 %26, i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load i32, i32* %12, align 4
  %33 = load i8*, i8** %14, align 8
  %34 = call i32 @log_error_errno(i32 %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  store i32 %34, i32* %6, align 4
  br label %59

35:                                               ; preds = %23
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @reset_terminal_fd(i32 %36, i32 1)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @log_warning_errno(i32 %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %35
  br label %44

44:                                               ; preds = %43, %5
  %45 = load i32, i32* %12, align 4
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i8*, i8** %10, align 8
  %50 = load i8***, i8**** %11, align 8
  %51 = call i32 @ask_password_tty(i32 %45, i8* %46, i32* null, i32 %47, i32 %48, i8* %49, i8*** %50)
  store i32 %51, i32* %13, align 4
  %52 = load i64, i64* @arg_console, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %44
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @safe_close(i32 %55)
  store i32 %56, i32* %12, align 4
  %57 = call i32 (...) @release_terminal()
  br label %58

58:                                               ; preds = %54, %44
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %58, %31
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local i32 @acquire_terminal(i8*, i32, i32) #1

declare dso_local i32 @log_error_errno(i32, i8*, i8*) #1

declare dso_local i32 @reset_terminal_fd(i32, i32) #1

declare dso_local i32 @log_warning_errno(i32, i8*) #1

declare dso_local i32 @ask_password_tty(i32, i8*, i32*, i32, i32, i8*, i8***) #1

declare dso_local i32 @safe_close(i32) #1

declare dso_local i32 @release_terminal(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
