; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_ogg_granule.c_Ogg_GranuleToTime.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_ogg_granule.c_Ogg_GranuleToTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VLC_TICK_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Ogg_GranuleToTime(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @Ogg_GranuleIsValid(i32* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @VLC_TICK_INVALID, align 4
  store i32 %17, i32* %5, align 4
  br label %40

18:                                               ; preds = %4
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @Ogg_GranuleToSample(i32* %19, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %18
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @Ogg_GranuleToSampleDelta(i32* %25, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, -1
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %30, %24
  br label %35

35:                                               ; preds = %34, %18
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @Ogg_SampleToTime(i32* %36, i32 %37, i32 %38)
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %35, %16
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @Ogg_GranuleIsValid(i32*, i32) #1

declare dso_local i32 @Ogg_GranuleToSample(i32*, i32) #1

declare dso_local i32 @Ogg_GranuleToSampleDelta(i32*, i32) #1

declare dso_local i32 @Ogg_SampleToTime(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
