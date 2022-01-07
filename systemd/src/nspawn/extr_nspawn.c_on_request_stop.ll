; ModuleID = '/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn.c_on_request_stop.c'
source_filename = "/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn.c_on_request_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arg_kill_signal = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [63 x i8] c"Container termination requested. Attempting to halt container.\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Container termination requested. Exiting.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*)* @on_request_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_request_stop(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @assert(i32* %8)
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @PTR_TO_PID(i8* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i64, i64* @arg_kill_signal, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = call i32 @log_info(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %7, align 4
  %17 = load i64, i64* @arg_kill_signal, align 8
  %18 = call i32 @kill(i32 %16, i64 %17)
  br label %25

19:                                               ; preds = %3
  %20 = call i32 @log_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @sd_bus_message_get_bus(i32* %21)
  %23 = call i32 @sd_bus_get_event(i32 %22)
  %24 = call i32 @sd_event_exit(i32 %23, i32 0)
  br label %25

25:                                               ; preds = %19, %14
  ret i32 0
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @PTR_TO_PID(i8*) #1

declare dso_local i32 @log_info(i8*) #1

declare dso_local i32 @kill(i32, i64) #1

declare dso_local i32 @sd_event_exit(i32, i32) #1

declare dso_local i32 @sd_bus_get_event(i32) #1

declare dso_local i32 @sd_bus_message_get_bus(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
