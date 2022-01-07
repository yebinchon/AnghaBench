; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_osd.c_vouts_osd_Slider.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_osd.c_vouts_osd_Slider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OSD_HOR_SLIDER = common dso_local global i16 0, align 2
@VOUT_SPU_CHANNEL_OSD_HSLIDER = common dso_local global i32 0, align 4
@VOUT_SPU_CHANNEL_OSD_VSLIDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i64, i32, i16)* @vouts_osd_Slider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vouts_osd_Slider(i32** %0, i64 %1, i32 %2, i16 signext %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32** %0, i32*** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i16 %3, i16* %8, align 2
  %11 = load i16, i16* %8, align 2
  %12 = sext i16 %11 to i32
  %13 = load i16, i16* @OSD_HOR_SLIDER, align 2
  %14 = sext i16 %13 to i32
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @VOUT_SPU_CHANNEL_OSD_HSLIDER, align 4
  br label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @VOUT_SPU_CHANNEL_OSD_VSLIDER, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  store i32 %21, i32* %9, align 4
  store i64 0, i64* %10, align 8
  br label %22

22:                                               ; preds = %35, %20
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %22
  %27 = load i32**, i32*** %5, align 8
  %28 = load i64, i64* %10, align 8
  %29 = getelementptr inbounds i32*, i32** %27, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i16, i16* %8, align 2
  %34 = call i32 @vout_OSDSlider(i32* %30, i32 %31, i32 %32, i16 signext %33)
  br label %35

35:                                               ; preds = %26
  %36 = load i64, i64* %10, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %10, align 8
  br label %22

38:                                               ; preds = %22
  ret void
}

declare dso_local i32 @vout_OSDSlider(i32*, i32, i32, i16 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
