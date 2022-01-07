; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_timer.c_timer_update.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_timer.c_timer_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer*)* @timer_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timer_update(%struct.timer* %0) #0 {
  %2 = alloca %struct.timer*, align 8
  store %struct.timer* %0, %struct.timer** %2, align 8
  %3 = load %struct.timer*, %struct.timer** %2, align 8
  %4 = call i32 @SPIN_LOCK(%struct.timer* %3)
  %5 = load %struct.timer*, %struct.timer** %2, align 8
  %6 = call i32 @timer_execute(%struct.timer* %5)
  %7 = load %struct.timer*, %struct.timer** %2, align 8
  %8 = call i32 @timer_shift(%struct.timer* %7)
  %9 = load %struct.timer*, %struct.timer** %2, align 8
  %10 = call i32 @timer_execute(%struct.timer* %9)
  %11 = load %struct.timer*, %struct.timer** %2, align 8
  %12 = call i32 @SPIN_UNLOCK(%struct.timer* %11)
  ret void
}

declare dso_local i32 @SPIN_LOCK(%struct.timer*) #1

declare dso_local i32 @timer_execute(%struct.timer*) #1

declare dso_local i32 @timer_shift(%struct.timer*) #1

declare dso_local i32 @SPIN_UNLOCK(%struct.timer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
