; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vrtc.c_vrtc_cleanup.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vrtc.c_vrtc_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vrtc = type { i32 }

@mach_clock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vrtc_cleanup(%struct.vrtc* %0) #0 {
  %2 = alloca %struct.vrtc*, align 8
  store %struct.vrtc* %0, %struct.vrtc** %2, align 8
  %3 = load %struct.vrtc*, %struct.vrtc** %2, align 8
  %4 = getelementptr inbounds %struct.vrtc, %struct.vrtc* %3, i32 0, i32 0
  %5 = call i32 @callout_drain(i32* %4)
  %6 = call i32 (...) @mach_task_self()
  %7 = load i32, i32* @mach_clock, align 4
  %8 = call i32 @mach_port_deallocate(i32 %6, i32 %7)
  %9 = load %struct.vrtc*, %struct.vrtc** %2, align 8
  %10 = call i32 @free(%struct.vrtc* %9)
  ret void
}

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @mach_port_deallocate(i32, i32) #1

declare dso_local i32 @mach_task_self(...) #1

declare dso_local i32 @free(%struct.vrtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
