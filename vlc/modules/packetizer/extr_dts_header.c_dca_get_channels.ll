; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_dts_header.c_dca_get_channels.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_dts_header.c_dca_get_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AOUT_CHAN_CENTER = common dso_local global i32 0, align 4
@AOUT_CHANS_FRONT = common dso_local global i32 0, align 4
@AOUT_CHANMODE_DUALMONO = common dso_local global i32 0, align 4
@AOUT_CHANS_3_0 = common dso_local global i32 0, align 4
@AOUT_CHAN_REARCENTER = common dso_local global i32 0, align 4
@AOUT_CHANS_4_CENTER_REAR = common dso_local global i32 0, align 4
@AOUT_CHANS_4_0 = common dso_local global i32 0, align 4
@AOUT_CHANS_5_0 = common dso_local global i32 0, align 4
@AOUT_CHANS_6_0 = common dso_local global i32 0, align 4
@AOUT_CHANS_CENTER = common dso_local global i32 0, align 4
@AOUT_CHANS_REAR = common dso_local global i32 0, align 4
@AOUT_CHANS_7_0 = common dso_local global i32 0, align 4
@AOUT_CHAN_LFE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @dca_get_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dca_get_channels(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %42 [
    i32 0, label %10
    i32 1, label %12
    i32 2, label %16
    i32 3, label %16
    i32 4, label %16
    i32 5, label %18
    i32 6, label %20
    i32 7, label %24
    i32 8, label %26
    i32 9, label %28
    i32 10, label %30
    i32 11, label %30
    i32 12, label %32
    i32 13, label %38
    i32 14, label %40
    i32 15, label %40
  ]

10:                                               ; preds = %3
  %11 = load i32, i32* @AOUT_CHAN_CENTER, align 4
  store i32 %11, i32* %8, align 4
  br label %43

12:                                               ; preds = %3
  %13 = load i32, i32* @AOUT_CHANS_FRONT, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* @AOUT_CHANMODE_DUALMONO, align 4
  %15 = load i32*, i32** %7, align 8
  store i32 %14, i32* %15, align 4
  br label %43

16:                                               ; preds = %3, %3, %3
  %17 = load i32, i32* @AOUT_CHANS_FRONT, align 4
  store i32 %17, i32* %8, align 4
  br label %43

18:                                               ; preds = %3
  %19 = load i32, i32* @AOUT_CHANS_3_0, align 4
  store i32 %19, i32* %8, align 4
  br label %43

20:                                               ; preds = %3
  %21 = load i32, i32* @AOUT_CHANS_FRONT, align 4
  %22 = load i32, i32* @AOUT_CHAN_REARCENTER, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %8, align 4
  br label %43

24:                                               ; preds = %3
  %25 = load i32, i32* @AOUT_CHANS_4_CENTER_REAR, align 4
  store i32 %25, i32* %8, align 4
  br label %43

26:                                               ; preds = %3
  %27 = load i32, i32* @AOUT_CHANS_4_0, align 4
  store i32 %27, i32* %8, align 4
  br label %43

28:                                               ; preds = %3
  %29 = load i32, i32* @AOUT_CHANS_5_0, align 4
  store i32 %29, i32* %8, align 4
  br label %43

30:                                               ; preds = %3, %3
  %31 = load i32, i32* @AOUT_CHANS_6_0, align 4
  store i32 %31, i32* %8, align 4
  br label %43

32:                                               ; preds = %3
  %33 = load i32, i32* @AOUT_CHANS_CENTER, align 4
  %34 = load i32, i32* @AOUT_CHANS_FRONT, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @AOUT_CHANS_REAR, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %8, align 4
  br label %43

38:                                               ; preds = %3
  %39 = load i32, i32* @AOUT_CHANS_7_0, align 4
  store i32 %39, i32* %8, align 4
  br label %43

40:                                               ; preds = %3, %3
  %41 = load i32, i32* @AOUT_CHANS_7_0, align 4
  store i32 %41, i32* %8, align 4
  br label %43

42:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %52

43:                                               ; preds = %40, %38, %32, %30, %28, %26, %24, %20, %18, %16, %12, %10
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32, i32* @AOUT_CHAN_LFE, align 4
  %48 = load i32, i32* %8, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %46, %43
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %50, %42
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
