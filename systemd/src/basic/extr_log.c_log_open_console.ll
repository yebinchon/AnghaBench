; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_log.c_log_open_console.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_log.c_log_open_console.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@always_reopen_console = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@console_fd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"/dev/console\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_NOCTTY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @log_open_console to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @log_open_console() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @always_reopen_console, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @STDERR_FILENO, align 4
  store i32 %6, i32* @console_fd, align 4
  store i32 0, i32* %1, align 4
  br label %25

7:                                                ; preds = %0
  %8 = load i32, i32* @console_fd, align 4
  %9 = icmp slt i32 %8, 3
  br i1 %9, label %10, label %24

10:                                               ; preds = %7
  %11 = load i32, i32* @O_WRONLY, align 4
  %12 = load i32, i32* @O_NOCTTY, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @O_CLOEXEC, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @open_terminal(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %10
  %20 = load i32, i32* %2, align 4
  store i32 %20, i32* %1, align 4
  br label %25

21:                                               ; preds = %10
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @fd_move_above_stdio(i32 %22)
  store i32 %23, i32* @console_fd, align 4
  br label %24

24:                                               ; preds = %21, %7
  store i32 0, i32* %1, align 4
  br label %25

25:                                               ; preds = %24, %19, %5
  %26 = load i32, i32* %1, align 4
  ret i32 %26
}

declare dso_local i32 @open_terminal(i8*, i32) #1

declare dso_local i32 @fd_move_above_stdio(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
