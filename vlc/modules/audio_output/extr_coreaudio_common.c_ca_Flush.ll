; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_coreaudio_common.c_ca_Flush.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_coreaudio_common.c_ca_Flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.aout_sys_common = type { i32, i32, i64, i64, i64, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ca_Flush(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.aout_sys_common*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.aout_sys_common*
  store %struct.aout_sys_common* %7, %struct.aout_sys_common** %3, align 8
  %8 = load %struct.aout_sys_common*, %struct.aout_sys_common** %3, align 8
  %9 = call i32 @lock_lock(%struct.aout_sys_common* %8)
  %10 = load %struct.aout_sys_common*, %struct.aout_sys_common** %3, align 8
  %11 = getelementptr inbounds %struct.aout_sys_common, %struct.aout_sys_common* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.aout_sys_common*, %struct.aout_sys_common** %3, align 8
  %18 = getelementptr inbounds %struct.aout_sys_common, %struct.aout_sys_common* %17, i32 0, i32 6
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %23 = call i32 @ca_ClearOutBuffers(%struct.TYPE_4__* %22)
  br label %34

24:                                               ; preds = %1
  %25 = load %struct.aout_sys_common*, %struct.aout_sys_common** %3, align 8
  %26 = getelementptr inbounds %struct.aout_sys_common, %struct.aout_sys_common* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.aout_sys_common*, %struct.aout_sys_common** %3, align 8
  %28 = call i32 @lock_unlock(%struct.aout_sys_common* %27)
  %29 = load %struct.aout_sys_common*, %struct.aout_sys_common** %3, align 8
  %30 = getelementptr inbounds %struct.aout_sys_common, %struct.aout_sys_common* %29, i32 0, i32 5
  %31 = call i32 @vlc_sem_wait(i32* %30)
  %32 = load %struct.aout_sys_common*, %struct.aout_sys_common** %3, align 8
  %33 = call i32 @lock_lock(%struct.aout_sys_common* %32)
  br label %34

34:                                               ; preds = %24, %21
  %35 = load %struct.aout_sys_common*, %struct.aout_sys_common** %3, align 8
  %36 = getelementptr inbounds %struct.aout_sys_common, %struct.aout_sys_common* %35, i32 0, i32 3
  store i64 0, i64* %36, align 8
  %37 = load %struct.aout_sys_common*, %struct.aout_sys_common** %3, align 8
  %38 = getelementptr inbounds %struct.aout_sys_common, %struct.aout_sys_common* %37, i32 0, i32 4
  store i64 0, i64* %38, align 8
  %39 = load %struct.aout_sys_common*, %struct.aout_sys_common** %3, align 8
  %40 = getelementptr inbounds %struct.aout_sys_common, %struct.aout_sys_common* %39, i32 0, i32 2
  store i64 0, i64* %40, align 8
  %41 = load %struct.aout_sys_common*, %struct.aout_sys_common** %3, align 8
  %42 = call i32 @lock_unlock(%struct.aout_sys_common* %41)
  %43 = load %struct.aout_sys_common*, %struct.aout_sys_common** %3, align 8
  %44 = getelementptr inbounds %struct.aout_sys_common, %struct.aout_sys_common* %43, i32 0, i32 1
  store i32 0, i32* %44, align 4
  ret void
}

declare dso_local i32 @lock_lock(%struct.aout_sys_common*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ca_ClearOutBuffers(%struct.TYPE_4__*) #1

declare dso_local i32 @lock_unlock(%struct.aout_sys_common*) #1

declare dso_local i32 @vlc_sem_wait(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
