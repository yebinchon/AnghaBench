; ModuleID = '/home/carl/AnghaBench/tg/extr_main.c_do_halt.c'
source_filename = "/home/carl/AnghaBench/tg/extr_main.c_do_halt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@daemonize = common dso_local global i64 0, align 8
@readline_disabled = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"halt\0A\00", align 1
@unix_socket = common dso_local global i64 0, align 8
@usfd = common dso_local global i64 0, align 8
@sfd = common dso_local global i64 0, align 8
@exit_code = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_halt(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @daemonize, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  ret void

7:                                                ; preds = %1
  %8 = load i32, i32* @readline_disabled, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = call i32 (...) @rl_free_line_state()
  %12 = call i32 (...) @rl_cleanup_after_signal()
  br label %13

13:                                               ; preds = %10, %7
  %14 = call i64 @write(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %17

17:                                               ; preds = %16, %13
  %18 = load i64, i64* @unix_socket, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i64, i64* @unix_socket, align 8
  %22 = call i32 @unlink(i64 %21)
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i64, i64* @usfd, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i64, i64* @usfd, align 8
  %28 = call i32 @close(i64 %27)
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i64, i64* @sfd, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i64, i64* @sfd, align 8
  %34 = call i32 @close(i64 %33)
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i32, i32* @exit_code, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* @exit_code, align 4
  store i32 %39, i32* %3, align 4
  br label %49

40:                                               ; preds = %35
  %41 = load i32, i32* %2, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* @EXIT_FAILURE, align 4
  br label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @EXIT_SUCCESS, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %38
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @exit(i32 %50) #3
  unreachable
}

declare dso_local i32 @rl_free_line_state(...) #1

declare dso_local i32 @rl_cleanup_after_signal(...) #1

declare dso_local i64 @write(i32, i8*, i32) #1

declare dso_local i32 @unlink(i64) #1

declare dso_local i32 @close(i64) #1

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
