; ModuleID = '/home/carl/AnghaBench/tig/src/extr_display.c_init_tty.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_display.c_init_tty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"/dev/tty\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@opt_tty = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to open tty for input\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Failed allocation for tty attributes\00", align 1
@SIGTTOU = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@done_display = common dso_local global i32 0, align 4
@die_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_tty() #0 {
  %1 = call i32 @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 %1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opt_tty, i32 0, i32 3), align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opt_tty, i32 0, i32 3), align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = call i32 @die(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %6

6:                                                ; preds = %4, %0
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opt_tty, i32 0, i32 3), align 4
  %8 = call i32 @fileno(i32 %7)
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opt_tty, i32 0, i32 0), align 4
  %9 = call i32 @calloc(i32 1, i32 4)
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opt_tty, i32 0, i32 2), align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opt_tty, i32 0, i32 2), align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = call i32 @die(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %6
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opt_tty, i32 0, i32 0), align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opt_tty, i32 0, i32 2), align 4
  %17 = call i32 @tcgetattr(i32 %15, i32 %16)
  %18 = load i32, i32* @SIGTTOU, align 4
  %19 = load i32, i32* @SIG_IGN, align 4
  %20 = call i32 @signal(i32 %18, i32 %19)
  %21 = call i32 (...) @getpid()
  %22 = call i32 (...) @getpid()
  %23 = call i32 @setpgid(i32 %21, i32 %22)
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opt_tty, i32 0, i32 0), align 4
  %25 = call i32 @tcgetpgrp(i32 %24)
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opt_tty, i32 0, i32 1), align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opt_tty, i32 0, i32 0), align 4
  %27 = call i32 (...) @getpid()
  %28 = call i32 @tcsetpgrp(i32 %26, i32 %27)
  %29 = load i32, i32* @SIGTTOU, align 4
  %30 = load i32, i32* @SIG_DFL, align 4
  %31 = call i32 @signal(i32 %29, i32 %30)
  %32 = load i32, i32* @done_display, align 4
  store i32 %32, i32* @die_callback, align 4
  ret void
}

declare dso_local i32 @fopen(i8*, i8*) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @fileno(i32) #1

declare dso_local i32 @calloc(i32, i32) #1

declare dso_local i32 @tcgetattr(i32, i32) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @setpgid(i32, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @tcgetpgrp(i32) #1

declare dso_local i32 @tcsetpgrp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
