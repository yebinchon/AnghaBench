; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-event/extr_test-event.c_time_handler.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-event/extr_test-event.c_time_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"got timer on %c\00", align 1
@do_quit = common dso_local global i64 0, align 8
@defer_handler = common dso_local global i32 0, align 4
@SD_EVENT_ONESHOT = common dso_local global i32 0, align 4
@got_c = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"Huh?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*)* @time_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @time_handler(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = call i32 @PTR_TO_INT(i8* %8)
  %10 = call i32 @log_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i8*, i8** %6, align 8
  %12 = call i8* @INT_TO_PTR(i8 signext 99)
  %13 = icmp eq i8* %11, %12
  br i1 %13, label %14, label %39

14:                                               ; preds = %3
  %15 = load i64, i64* @do_quit, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %14
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @sd_event_source_get_event(i32* %18)
  %20 = load i32, i32* @defer_handler, align 4
  %21 = call i8* @INT_TO_PTR(i8 signext 100)
  %22 = call i64 @sd_event_add_defer(i32 %19, i32** %7, i32 %20, i8* %21)
  %23 = icmp sge i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert_se(i32 %24)
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* @SD_EVENT_ONESHOT, align 4
  %28 = call i64 @sd_event_source_set_enabled(i32* %26, i32 %27)
  %29 = icmp sge i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert_se(i32 %30)
  br label %38

32:                                               ; preds = %14
  %33 = load i32, i32* @got_c, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert_se(i32 %36)
  store i32 1, i32* @got_c, align 4
  br label %38

38:                                               ; preds = %32, %17
  br label %41

39:                                               ; preds = %3
  %40 = call i32 @assert_not_reached(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %38
  ret i32 2
}

declare dso_local i32 @log_info(i8*, i32) #1

declare dso_local i32 @PTR_TO_INT(i8*) #1

declare dso_local i8* @INT_TO_PTR(i8 signext) #1

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @sd_event_add_defer(i32, i32**, i32, i8*) #1

declare dso_local i32 @sd_event_source_get_event(i32*) #1

declare dso_local i64 @sd_event_source_set_enabled(i32*, i32) #1

declare dso_local i32 @assert_not_reached(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
