; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_coreaudio_common.c_ca_TimeGet.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_coreaudio_common.c_ca_TimeGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.aout_sys_common = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ca_TimeGet(%struct.TYPE_4__* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.aout_sys_common*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.aout_sys_common*
  store %struct.aout_sys_common* %12, %struct.aout_sys_common** %6, align 8
  %13 = load %struct.aout_sys_common*, %struct.aout_sys_common** %6, align 8
  %14 = call i32 @lock_lock(%struct.aout_sys_common* %13)
  %15 = load %struct.aout_sys_common*, %struct.aout_sys_common** %6, align 8
  %16 = getelementptr inbounds %struct.aout_sys_common, %struct.aout_sys_common* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %2
  %20 = load %struct.aout_sys_common*, %struct.aout_sys_common** %6, align 8
  %21 = getelementptr inbounds %struct.aout_sys_common, %struct.aout_sys_common* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19, %2
  %25 = load %struct.aout_sys_common*, %struct.aout_sys_common** %6, align 8
  %26 = call i32 @lock_unlock(%struct.aout_sys_common* %25)
  store i32 -1, i32* %3, align 4
  br label %42

27:                                               ; preds = %19
  %28 = load %struct.aout_sys_common*, %struct.aout_sys_common** %6, align 8
  %29 = getelementptr inbounds %struct.aout_sys_common, %struct.aout_sys_common* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @HostTimeToTick(i64 %30)
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i64 (...) @vlc_tick_now()
  %34 = sub nsw i64 %32, %33
  store i64 %34, i64* %8, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %36 = call i64 @ca_GetLatencyLocked(%struct.TYPE_4__* %35)
  %37 = load i64, i64* %8, align 8
  %38 = add nsw i64 %36, %37
  %39 = load i64*, i64** %5, align 8
  store i64 %38, i64* %39, align 8
  %40 = load %struct.aout_sys_common*, %struct.aout_sys_common** %6, align 8
  %41 = call i32 @lock_unlock(%struct.aout_sys_common* %40)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %27, %24
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @lock_lock(%struct.aout_sys_common*) #1

declare dso_local i32 @lock_unlock(%struct.aout_sys_common*) #1

declare dso_local i64 @HostTimeToTick(i64) #1

declare dso_local i64 @vlc_tick_now(...) #1

declare dso_local i64 @ca_GetLatencyLocked(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
