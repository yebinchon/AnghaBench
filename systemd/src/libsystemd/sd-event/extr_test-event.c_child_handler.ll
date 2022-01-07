; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-event/extr_test-event.c_child_handler.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-event/extr_test-event.c_child_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"got child on %c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*)* @child_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @child_handler(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = ptrtoint i32* %7 to i32
  %9 = call i32 @assert_se(i32 %8)
  %10 = load i32*, i32** %5, align 8
  %11 = ptrtoint i32* %10 to i32
  %12 = call i32 @assert_se(i32 %11)
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @PTR_TO_INT(i8* %13)
  %15 = call i32 @log_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i8*, i8** %6, align 8
  %17 = call i8* @INT_TO_PTR(float 1.020000e+02)
  %18 = icmp eq i8* %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert_se(i32 %19)
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @sd_event_source_get_event(i32* %21)
  %23 = call i64 @sd_event_exit(i32 %22, i32 0)
  %24 = icmp sge i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert_se(i32 %25)
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @sd_event_source_unref(i32* %27)
  ret i32 1
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i32 @log_info(i8*, i32) #1

declare dso_local i32 @PTR_TO_INT(i8*) #1

declare dso_local i8* @INT_TO_PTR(float) #1

declare dso_local i64 @sd_event_exit(i32, i32) #1

declare dso_local i32 @sd_event_source_get_event(i32*) #1

declare dso_local i32 @sd_event_source_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
