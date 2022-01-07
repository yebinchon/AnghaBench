; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_mq.c_skynet_mq_init.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_mq.c_skynet_mq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.global_queue = type { i32 }

@Q = common dso_local global %struct.global_queue* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @skynet_mq_init() #0 {
  %1 = alloca %struct.global_queue*, align 8
  %2 = call %struct.global_queue* @skynet_malloc(i32 4)
  store %struct.global_queue* %2, %struct.global_queue** %1, align 8
  %3 = load %struct.global_queue*, %struct.global_queue** %1, align 8
  %4 = call i32 @memset(%struct.global_queue* %3, i32 0, i32 4)
  %5 = load %struct.global_queue*, %struct.global_queue** %1, align 8
  %6 = call i32 @SPIN_INIT(%struct.global_queue* %5)
  %7 = load %struct.global_queue*, %struct.global_queue** %1, align 8
  store %struct.global_queue* %7, %struct.global_queue** @Q, align 8
  ret void
}

declare dso_local %struct.global_queue* @skynet_malloc(i32) #1

declare dso_local i32 @memset(%struct.global_queue*, i32, i32) #1

declare dso_local i32 @SPIN_INIT(%struct.global_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
