; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_coreaudio_common.c_ca_SetAliveState.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_coreaudio_common.c_ca_SetAliveState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.aout_sys_common = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ca_SetAliveState(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.aout_sys_common*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.aout_sys_common*
  store %struct.aout_sys_common* %10, %struct.aout_sys_common** %5, align 8
  %11 = load %struct.aout_sys_common*, %struct.aout_sys_common** %5, align 8
  %12 = call i32 @lock_lock(%struct.aout_sys_common* %11)
  store i32 0, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = load %struct.aout_sys_common*, %struct.aout_sys_common** %5, align 8
  %18 = getelementptr inbounds %struct.aout_sys_common, %struct.aout_sys_common* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %2
  %22 = load %struct.aout_sys_common*, %struct.aout_sys_common** %5, align 8
  %23 = getelementptr inbounds %struct.aout_sys_common, %struct.aout_sys_common* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = call i32 @ca_ClearOutBuffers(%struct.TYPE_4__* %27)
  %29 = load %struct.aout_sys_common*, %struct.aout_sys_common** %5, align 8
  %30 = getelementptr inbounds %struct.aout_sys_common, %struct.aout_sys_common* %29, i32 0, i32 2
  store i32 0, i32* %30, align 4
  %31 = load %struct.aout_sys_common*, %struct.aout_sys_common** %5, align 8
  %32 = getelementptr inbounds %struct.aout_sys_common, %struct.aout_sys_common* %31, i32 0, i32 1
  store i32 0, i32* %32, align 4
  store i32 1, i32* %6, align 4
  br label %33

33:                                               ; preds = %26, %21, %2
  %34 = load %struct.aout_sys_common*, %struct.aout_sys_common** %5, align 8
  %35 = call i32 @lock_unlock(%struct.aout_sys_common* %34)
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.aout_sys_common*, %struct.aout_sys_common** %5, align 8
  %40 = getelementptr inbounds %struct.aout_sys_common, %struct.aout_sys_common* %39, i32 0, i32 3
  %41 = call i32 @vlc_sem_post(i32* %40)
  br label %42

42:                                               ; preds = %38, %33
  ret void
}

declare dso_local i32 @lock_lock(%struct.aout_sys_common*) #1

declare dso_local i32 @ca_ClearOutBuffers(%struct.TYPE_4__*) #1

declare dso_local i32 @lock_unlock(%struct.aout_sys_common*) #1

declare dso_local i32 @vlc_sem_post(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
