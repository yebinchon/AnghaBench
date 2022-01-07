; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/sound/mmebuddy/extr_devicelist.c_UnlistAllSoundDevices.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/sound/mmebuddy/extr_devicelist.c_UnlistAllSoundDevices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i32] [i32 85, i32 110, i32 108, i32 105, i32 115, i32 116, i32 105, i32 110, i32 103, i32 32, i32 97, i32 108, i32 108, i32 32, i32 115, i32 111, i32 117, i32 110, i32 100, i32 32, i32 100, i32 101, i32 118, i32 105, i32 99, i32 101, i32 115, i32 10, i32 0], align 4
@MIN_SOUND_DEVICE_TYPE = common dso_local global i64 0, align 8
@MAX_SOUND_DEVICE_TYPE = common dso_local global i64 0, align 8
@MMSYSERR_NOERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @UnlistAllSoundDevices() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = call i32 @SND_TRACE(i8* bitcast ([29 x i32]* @.str to i8*))
  %5 = load i64, i64* @MIN_SOUND_DEVICE_TYPE, align 8
  store i64 %5, i64* %2, align 8
  br label %6

6:                                                ; preds = %18, %0
  %7 = load i64, i64* %2, align 8
  %8 = load i64, i64* @MAX_SOUND_DEVICE_TYPE, align 8
  %9 = icmp sle i64 %7, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %6
  %11 = load i64, i64* %2, align 8
  %12 = call i64 @UnlistSoundDevices(i64 %11)
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @SND_ASSERT(i32 %16)
  br label %18

18:                                               ; preds = %10
  %19 = load i64, i64* %2, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* %2, align 8
  br label %6

21:                                               ; preds = %6
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

declare dso_local i32 @SND_TRACE(i8*) #1

declare dso_local i64 @UnlistSoundDevices(i64) #1

declare dso_local i32 @SND_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
