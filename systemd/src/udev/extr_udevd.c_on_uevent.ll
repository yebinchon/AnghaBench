; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/extr_udevd.c_on_uevent.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/extr_udevd.c_on_uevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [45 x i8] c"Failed to insert device into event queue: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*)* @on_uevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_uevent(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %8, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = call i32 @assert(i32* %12)
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @device_ensure_usec_initialized(i32* %14, i32* null)
  %16 = load i32*, i32** %8, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @event_queue_insert(i32* %16, i32* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @log_device_error_errno(i32* %22, i32 %23, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %28

25:                                               ; preds = %3
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @event_queue_start(i32* %26)
  store i32 1, i32* %4, align 4
  br label %28

28:                                               ; preds = %25, %21
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @device_ensure_usec_initialized(i32*, i32*) #1

declare dso_local i32 @event_queue_insert(i32*, i32*) #1

declare dso_local i32 @log_device_error_errno(i32*, i32, i8*) #1

declare dso_local i32 @event_queue_start(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
