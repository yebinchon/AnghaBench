; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_server.c_skynet_context_dispatchall.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_server.c_skynet_context_dispatchall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skynet_context = type { %struct.message_queue* }
%struct.message_queue = type { i32 }
%struct.skynet_message = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @skynet_context_dispatchall(%struct.skynet_context* %0) #0 {
  %2 = alloca %struct.skynet_context*, align 8
  %3 = alloca %struct.skynet_message, align 4
  %4 = alloca %struct.message_queue*, align 8
  store %struct.skynet_context* %0, %struct.skynet_context** %2, align 8
  %5 = load %struct.skynet_context*, %struct.skynet_context** %2, align 8
  %6 = getelementptr inbounds %struct.skynet_context, %struct.skynet_context* %5, i32 0, i32 0
  %7 = load %struct.message_queue*, %struct.message_queue** %6, align 8
  store %struct.message_queue* %7, %struct.message_queue** %4, align 8
  br label %8

8:                                                ; preds = %13, %1
  %9 = load %struct.message_queue*, %struct.message_queue** %4, align 8
  %10 = call i32 @skynet_mq_pop(%struct.message_queue* %9, %struct.skynet_message* %3)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load %struct.skynet_context*, %struct.skynet_context** %2, align 8
  %15 = call i32 @dispatch_message(%struct.skynet_context* %14, %struct.skynet_message* %3)
  br label %8

16:                                               ; preds = %8
  ret void
}

declare dso_local i32 @skynet_mq_pop(%struct.message_queue*, %struct.skynet_message*) #1

declare dso_local i32 @dispatch_message(%struct.skynet_context*, %struct.skynet_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
