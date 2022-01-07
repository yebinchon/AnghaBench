; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_coreaudio_common.c_ca_GetLatencyLocked.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_coreaudio_common.c_ca_GetLatencyLocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.aout_sys_common = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*)* @ca_GetLatencyLocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ca_GetLatencyLocked(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.aout_sys_common*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.aout_sys_common*
  store %struct.aout_sys_common* %8, %struct.aout_sys_common** %3, align 8
  %9 = load %struct.aout_sys_common*, %struct.aout_sys_common** %3, align 8
  %10 = load %struct.aout_sys_common*, %struct.aout_sys_common** %3, align 8
  %11 = getelementptr inbounds %struct.aout_sys_common, %struct.aout_sys_common* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @BytesToFrames(%struct.aout_sys_common* %9, i32 %12)
  store i64 %13, i64* %4, align 8
  %14 = load %struct.aout_sys_common*, %struct.aout_sys_common** %3, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load %struct.aout_sys_common*, %struct.aout_sys_common** %3, align 8
  %17 = getelementptr inbounds %struct.aout_sys_common, %struct.aout_sys_common* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %15, %18
  %20 = call i64 @FramesToUs(%struct.aout_sys_common* %14, i64 %19)
  %21 = load %struct.aout_sys_common*, %struct.aout_sys_common** %3, align 8
  %22 = getelementptr inbounds %struct.aout_sys_common, %struct.aout_sys_common* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  ret i64 %24
}

declare dso_local i64 @BytesToFrames(%struct.aout_sys_common*, i32) #1

declare dso_local i64 @FramesToUs(%struct.aout_sys_common*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
