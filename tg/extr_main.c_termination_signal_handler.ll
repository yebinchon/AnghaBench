; ModuleID = '/home/carl/AnghaBench/tg/extr_main.c_termination_signal_handler.c'
source_filename = "/home/carl/AnghaBench/tg/extr_main.c_termination_signal_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@readline_disabled = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"SIGNAL received\0A\00", align 1
@unix_socket = common dso_local global i64 0, align 8
@usfd = common dso_local global i64 0, align 8
@sfd = common dso_local global i64 0, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @termination_signal_handler(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @readline_disabled, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = call i32 (...) @rl_free_line_state()
  %7 = call i32 (...) @rl_cleanup_after_signal()
  br label %8

8:                                                ; preds = %5, %1
  %9 = call i64 @write(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 18)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  br label %12

12:                                               ; preds = %11, %8
  %13 = load i64, i64* @unix_socket, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i64, i64* @unix_socket, align 8
  %17 = call i32 @unlink(i64 %16)
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i64, i64* @usfd, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i64, i64* @usfd, align 8
  %23 = call i32 @close(i64 %22)
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i64, i64* @sfd, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i64, i64* @sfd, align 8
  %29 = call i32 @close(i64 %28)
  br label %30

30:                                               ; preds = %27, %24
  %31 = call i32 (...) @print_backtrace()
  %32 = load i32, i32* @EXIT_FAILURE, align 4
  %33 = call i32 @exit(i32 %32) #3
  unreachable
}

declare dso_local i32 @rl_free_line_state(...) #1

declare dso_local i32 @rl_cleanup_after_signal(...) #1

declare dso_local i64 @write(i32, i8*, i32) #1

declare dso_local i32 @unlink(i64) #1

declare dso_local i32 @close(i64) #1

declare dso_local i32 @print_backtrace(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
