; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_timer.c_skynet_timeout.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_timer.c_skynet_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skynet_message = type { i32, i64, i32*, i64 }
%struct.timer_event = type { i32, i32 }

@PTYPE_RESPONSE = common dso_local global i64 0, align 8
@MESSAGE_TYPE_SHIFT = common dso_local global i64 0, align 8
@TI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skynet_timeout(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.skynet_message, align 8
  %9 = alloca %struct.timer_event, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp sle i32 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.skynet_message, %struct.skynet_message* %8, i32 0, i32 3
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* %7, align 4
  %15 = getelementptr inbounds %struct.skynet_message, %struct.skynet_message* %8, i32 0, i32 0
  store i32 %14, i32* %15, align 8
  %16 = getelementptr inbounds %struct.skynet_message, %struct.skynet_message* %8, i32 0, i32 2
  store i32* null, i32** %16, align 8
  %17 = load i64, i64* @PTYPE_RESPONSE, align 8
  %18 = load i64, i64* @MESSAGE_TYPE_SHIFT, align 8
  %19 = shl i64 %17, %18
  %20 = getelementptr inbounds %struct.skynet_message, %struct.skynet_message* %8, i32 0, i32 1
  store i64 %19, i64* %20, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @skynet_context_push(i32 %21, %struct.skynet_message* %8)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %12
  store i32 -1, i32* %4, align 4
  br label %36

25:                                               ; preds = %12
  br label %34

26:                                               ; preds = %3
  %27 = load i32, i32* %5, align 4
  %28 = getelementptr inbounds %struct.timer_event, %struct.timer_event* %9, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %7, align 4
  %30 = getelementptr inbounds %struct.timer_event, %struct.timer_event* %9, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @TI, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @timer_add(i32 %31, %struct.timer_event* %9, i32 8, i32 %32)
  br label %34

34:                                               ; preds = %26, %25
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %34, %24
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i64 @skynet_context_push(i32, %struct.skynet_message*) #1

declare dso_local i32 @timer_add(i32, %struct.timer_event*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
