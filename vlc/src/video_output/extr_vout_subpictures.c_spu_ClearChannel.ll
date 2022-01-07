; ModuleID = '/home/carl/AnghaBench/vlc/src/video_output/extr_vout_subpictures.c_spu_ClearChannel.c'
source_filename = "/home/carl/AnghaBench/vlc/src/video_output/extr_vout_subpictures.c_spu_ClearChannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.spu_channel = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spu_ClearChannel(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.spu_channel*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %5, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = call i32 @vlc_mutex_lock(i32* %11)
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = load i64, i64* %4, align 8
  %15 = call %struct.spu_channel* @spu_GetChannel(%struct.TYPE_6__* %13, i64 %14)
  store %struct.spu_channel* %15, %struct.spu_channel** %6, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = load %struct.spu_channel*, %struct.spu_channel** %6, align 8
  %18 = call i32 @spu_channel_Clear(%struct.TYPE_7__* %16, %struct.spu_channel* %17)
  %19 = load %struct.spu_channel*, %struct.spu_channel** %6, align 8
  %20 = getelementptr inbounds %struct.spu_channel, %struct.spu_channel* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %2
  %24 = load %struct.spu_channel*, %struct.spu_channel** %6, align 8
  %25 = getelementptr inbounds %struct.spu_channel, %struct.spu_channel* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @vlc_clock_Reset(i64 %26)
  %28 = load %struct.spu_channel*, %struct.spu_channel** %6, align 8
  %29 = getelementptr inbounds %struct.spu_channel, %struct.spu_channel* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.spu_channel*, %struct.spu_channel** %6, align 8
  %32 = getelementptr inbounds %struct.spu_channel, %struct.spu_channel* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @vlc_clock_SetDelay(i64 %30, i32 %33)
  br label %35

35:                                               ; preds = %23, %2
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = call i32 @vlc_mutex_unlock(i32* %37)
  ret void
}

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local %struct.spu_channel* @spu_GetChannel(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @spu_channel_Clear(%struct.TYPE_7__*, %struct.spu_channel*) #1

declare dso_local i32 @vlc_clock_Reset(i64) #1

declare dso_local i32 @vlc_clock_SetDelay(i64, i32) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
