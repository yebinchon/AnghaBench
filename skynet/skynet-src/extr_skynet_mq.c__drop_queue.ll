; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_mq.c__drop_queue.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_mq.c__drop_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.message_queue = type { i32 }
%struct.skynet_message = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.message_queue*, i32 (%struct.skynet_message*, i8*)*, i8*)* @_drop_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_drop_queue(%struct.message_queue* %0, i32 (%struct.skynet_message*, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.message_queue*, align 8
  %5 = alloca i32 (%struct.skynet_message*, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.skynet_message, align 4
  store %struct.message_queue* %0, %struct.message_queue** %4, align 8
  store i32 (%struct.skynet_message*, i8*)* %1, i32 (%struct.skynet_message*, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  br label %8

8:                                                ; preds = %13, %3
  %9 = load %struct.message_queue*, %struct.message_queue** %4, align 8
  %10 = call i32 @skynet_mq_pop(%struct.message_queue* %9, %struct.skynet_message* %7)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = load i32 (%struct.skynet_message*, i8*)*, i32 (%struct.skynet_message*, i8*)** %5, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 %14(%struct.skynet_message* %7, i8* %15)
  br label %8

17:                                               ; preds = %8
  %18 = load %struct.message_queue*, %struct.message_queue** %4, align 8
  %19 = call i32 @_release(%struct.message_queue* %18)
  ret void
}

declare dso_local i32 @skynet_mq_pop(%struct.message_queue*, %struct.skynet_message*) #1

declare dso_local i32 @_release(%struct.message_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
