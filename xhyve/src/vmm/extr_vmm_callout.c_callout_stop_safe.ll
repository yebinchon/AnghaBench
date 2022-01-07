; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_callout.c_callout_stop_safe.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_callout.c_callout_stop_safe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callout = type { i32 }

@callout_mtx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @callout_stop_safe(%struct.callout* %0, i32 %1) #0 {
  %3 = alloca %struct.callout*, align 8
  %4 = alloca i32, align 4
  store %struct.callout* %0, %struct.callout** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 @pthread_mutex_lock(i32* @callout_mtx)
  %6 = load %struct.callout*, %struct.callout** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @callout_stop_safe_locked(%struct.callout* %6, i32 %7)
  %9 = call i32 @pthread_mutex_unlock(i32* @callout_mtx)
  ret i32 0
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @callout_stop_safe_locked(%struct.callout*, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
