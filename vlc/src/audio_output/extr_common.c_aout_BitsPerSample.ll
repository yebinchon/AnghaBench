; ModuleID = '/home/carl/AnghaBench/vlc/src/audio_output/extr_common.c_aout_BitsPerSample.c'
source_filename = "/home/carl/AnghaBench/vlc/src/audio_output/extr_common.c_aout_BitsPerSample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AUDIO_ES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aout_BitsPerSample(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @AUDIO_ES, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @vlc_fourcc_GetCodec(i32 %4, i32 %5)
  switch i32 %6, label %12 [
    i32 128, label %7
    i32 135, label %7
    i32 149, label %7
    i32 144, label %7
    i32 133, label %8
    i32 142, label %8
    i32 134, label %8
    i32 143, label %8
    i32 131, label %9
    i32 139, label %9
    i32 132, label %9
    i32 141, label %9
    i32 138, label %10
    i32 140, label %10
    i32 129, label %10
    i32 130, label %10
    i32 136, label %10
    i32 137, label %10
    i32 147, label %10
    i32 148, label %10
    i32 145, label %11
    i32 146, label %11
  ]

7:                                                ; preds = %1, %1, %1, %1
  store i32 8, i32* %2, align 4
  br label %13

8:                                                ; preds = %1, %1, %1, %1
  store i32 16, i32* %2, align 4
  br label %13

9:                                                ; preds = %1, %1, %1, %1
  store i32 24, i32* %2, align 4
  br label %13

10:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1
  store i32 32, i32* %2, align 4
  br label %13

11:                                               ; preds = %1, %1
  store i32 64, i32* %2, align 4
  br label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %13

13:                                               ; preds = %12, %11, %10, %9, %8, %7
  %14 = load i32, i32* %2, align 4
  ret i32 %14
}

declare dso_local i32 @vlc_fourcc_GetCodec(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
