; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_job.c_job_print_begin_status_message.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_job.c_job_print_begin_status_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JOB_START = common dso_local global i32 0, align 4
@JOB_STOP = common dso_local global i32 0, align 4
@DISABLE_WARNING_FORMAT_NONLITERAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@REENABLE_WARNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @job_print_begin_status_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @job_print_begin_status_message(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @assert(i32* %6)
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @JOB_START, align 4
  %10 = load i32, i32* @JOB_STOP, align 4
  %11 = call i32 @IN_SET(i32 %8, i32 %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %23

14:                                               ; preds = %2
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i8* @job_get_begin_status_message_format(i32* %15, i32 %16)
  store i8* %17, i8** %5, align 8
  %18 = load i32, i32* @DISABLE_WARNING_FORMAT_NONLITERAL, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @unit_status_printf(i32* %19, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = load i32, i32* @REENABLE_WARNING, align 4
  br label %23

23:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @IN_SET(i32, i32, i32) #1

declare dso_local i8* @job_get_begin_status_message_format(i32*, i32) #1

declare dso_local i32 @unit_status_printf(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
