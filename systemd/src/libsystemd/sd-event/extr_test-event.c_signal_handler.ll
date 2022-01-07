; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-event/extr_test-event.c_signal_handler.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-event/extr_test-event.c_signal_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.signalfd_siginfo = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"got signal on %c\00", align 1
@SIG_BLOCK = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@WEXITED = common dso_local global i32 0, align 4
@child_handler = common dso_local global i32 0, align 4
@SD_EVENT_ONESHOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.signalfd_siginfo*, i8*)* @signal_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @signal_handler(i32* %0, %struct.signalfd_siginfo* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.signalfd_siginfo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.signalfd_siginfo* %1, %struct.signalfd_siginfo** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32* null, i32** %7, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = ptrtoint i32* %9 to i32
  %11 = call i32 @assert_se(i32 %10)
  %12 = load %struct.signalfd_siginfo*, %struct.signalfd_siginfo** %5, align 8
  %13 = ptrtoint %struct.signalfd_siginfo* %12 to i32
  %14 = call i32 @assert_se(i32 %13)
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @PTR_TO_INT(i8* %15)
  %17 = call i32 @log_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i8*, i8** %6, align 8
  %19 = call i8* @INT_TO_PTR(float 1.010000e+02)
  %20 = icmp eq i8* %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert_se(i32 %21)
  %23 = load i32, i32* @SIG_BLOCK, align 4
  %24 = load i32, i32* @SIGCHLD, align 4
  %25 = call i64 @sigprocmask_many(i32 %23, i32* null, i32 %24, i32 -1)
  %26 = icmp sge i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert_se(i32 %27)
  %29 = call i64 (...) @fork()
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  %31 = icmp sge i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert_se(i32 %32)
  %34 = load i64, i64* %8, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %3
  %37 = load i32, i32* @EXIT_SUCCESS, align 4
  %38 = call i32 @_exit(i32 %37) #3
  unreachable

39:                                               ; preds = %3
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @sd_event_source_get_event(i32* %40)
  %42 = load i64, i64* %8, align 8
  %43 = load i32, i32* @WEXITED, align 4
  %44 = load i32, i32* @child_handler, align 4
  %45 = call i8* @INT_TO_PTR(float 1.020000e+02)
  %46 = call i64 @sd_event_add_child(i32 %41, i32** %7, i64 %42, i32 %43, i32 %44, i8* %45)
  %47 = icmp sge i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert_se(i32 %48)
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* @SD_EVENT_ONESHOT, align 4
  %52 = call i64 @sd_event_source_set_enabled(i32* %50, i32 %51)
  %53 = icmp sge i64 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert_se(i32 %54)
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @sd_event_source_unref(i32* %56)
  ret i32 1
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i32 @log_info(i8*, i32) #1

declare dso_local i32 @PTR_TO_INT(i8*) #1

declare dso_local i8* @INT_TO_PTR(float) #1

declare dso_local i64 @sigprocmask_many(i32, i32*, i32, i32) #1

declare dso_local i64 @fork(...) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i64 @sd_event_add_child(i32, i32**, i64, i32, i32, i8*) #1

declare dso_local i32 @sd_event_source_get_event(i32*) #1

declare dso_local i64 @sd_event_source_set_enabled(i32*, i32) #1

declare dso_local i32 @sd_event_source_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
