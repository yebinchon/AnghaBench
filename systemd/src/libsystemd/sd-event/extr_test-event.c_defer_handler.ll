; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-event/extr_test-event.c_defer_handler.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-event/extr_test-event.c_defer_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"got defer on %c\00", align 1
@SIG_BLOCK = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@signal_handler = common dso_local global i32 0, align 4
@SD_EVENT_ONESHOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @defer_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @defer_handler(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32* null, i32** %5, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = ptrtoint i32* %6 to i32
  %8 = call i32 @assert_se(i32 %7)
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @PTR_TO_INT(i8* %9)
  %11 = call i32 @log_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i8*, i8** %4, align 8
  %13 = call i8* @INT_TO_PTR(i8 signext 100)
  %14 = icmp eq i8* %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert_se(i32 %15)
  %17 = load i32, i32* @SIG_BLOCK, align 4
  %18 = load i32, i32* @SIGUSR1, align 4
  %19 = call i64 @sigprocmask_many(i32 %17, i32* null, i32 %18, i32 -1)
  %20 = icmp sge i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert_se(i32 %21)
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @sd_event_source_get_event(i32* %23)
  %25 = load i32, i32* @SIGUSR1, align 4
  %26 = load i32, i32* @signal_handler, align 4
  %27 = call i8* @INT_TO_PTR(i8 signext 101)
  %28 = call i64 @sd_event_add_signal(i32 %24, i32** %5, i32 %25, i32 %26, i8* %27)
  %29 = icmp sge i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert_se(i32 %30)
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* @SD_EVENT_ONESHOT, align 4
  %34 = call i64 @sd_event_source_set_enabled(i32* %32, i32 %33)
  %35 = icmp sge i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert_se(i32 %36)
  %38 = load i32, i32* @SIGUSR1, align 4
  %39 = call i32 @raise(i32 %38)
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @sd_event_source_unref(i32* %40)
  ret i32 1
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i32 @log_info(i8*, i32) #1

declare dso_local i32 @PTR_TO_INT(i8*) #1

declare dso_local i8* @INT_TO_PTR(i8 signext) #1

declare dso_local i64 @sigprocmask_many(i32, i32*, i32, i32) #1

declare dso_local i64 @sd_event_add_signal(i32, i32**, i32, i32, i8*) #1

declare dso_local i32 @sd_event_source_get_event(i32*) #1

declare dso_local i64 @sd_event_source_set_enabled(i32*, i32) #1

declare dso_local i32 @raise(i32) #1

declare dso_local i32 @sd_event_source_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
