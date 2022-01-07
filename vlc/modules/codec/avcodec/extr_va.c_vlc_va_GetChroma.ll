; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/avcodec/extr_va.c_vlc_va_GetChroma.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/avcodec/extr_va.c_vlc_va_GetChroma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VLC_CODEC_VAAPI_420 = common dso_local global i32 0, align 4
@VLC_CODEC_VAAPI_420_10BPP = common dso_local global i32 0, align 4
@VLC_CODEC_D3D9_OPAQUE_10B = common dso_local global i32 0, align 4
@VLC_CODEC_D3D9_OPAQUE = common dso_local global i32 0, align 4
@VLC_CODEC_D3D11_OPAQUE_10B = common dso_local global i32 0, align 4
@VLC_CODEC_D3D11_OPAQUE = common dso_local global i32 0, align 4
@VLC_CODEC_VDPAU_VIDEO_444 = common dso_local global i32 0, align 4
@VLC_CODEC_VDPAU_VIDEO_422 = common dso_local global i32 0, align 4
@VLC_CODEC_VDPAU_VIDEO_420 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_va_GetChroma(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %37 [
    i32 136, label %7
    i32 137, label %14
    i32 138, label %21
    i32 135, label %28
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %13 [
    i32 130, label %9
    i32 134, label %9
    i32 133, label %11
  ]

9:                                                ; preds = %7, %7
  %10 = load i32, i32* @VLC_CODEC_VAAPI_420, align 4
  store i32 %10, i32* %3, align 4
  br label %38

11:                                               ; preds = %7
  %12 = load i32, i32* @VLC_CODEC_VAAPI_420_10BPP, align 4
  store i32 %12, i32* %3, align 4
  br label %38

13:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %38

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %20 [
    i32 133, label %16
    i32 130, label %18
    i32 134, label %18
  ]

16:                                               ; preds = %14
  %17 = load i32, i32* @VLC_CODEC_D3D9_OPAQUE_10B, align 4
  store i32 %17, i32* %3, align 4
  br label %38

18:                                               ; preds = %14, %14
  %19 = load i32, i32* @VLC_CODEC_D3D9_OPAQUE, align 4
  store i32 %19, i32* %3, align 4
  br label %38

20:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %38

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  switch i32 %22, label %27 [
    i32 133, label %23
    i32 130, label %25
    i32 134, label %25
  ]

23:                                               ; preds = %21
  %24 = load i32, i32* @VLC_CODEC_D3D11_OPAQUE_10B, align 4
  store i32 %24, i32* %3, align 4
  br label %38

25:                                               ; preds = %21, %21
  %26 = load i32, i32* @VLC_CODEC_D3D11_OPAQUE, align 4
  store i32 %26, i32* %3, align 4
  br label %38

27:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %38

28:                                               ; preds = %2
  %29 = load i32, i32* %5, align 4
  switch i32 %29, label %36 [
    i32 128, label %30
    i32 131, label %30
    i32 129, label %32
    i32 132, label %32
    i32 130, label %34
    i32 134, label %34
  ]

30:                                               ; preds = %28, %28
  %31 = load i32, i32* @VLC_CODEC_VDPAU_VIDEO_444, align 4
  store i32 %31, i32* %3, align 4
  br label %38

32:                                               ; preds = %28, %28
  %33 = load i32, i32* @VLC_CODEC_VDPAU_VIDEO_422, align 4
  store i32 %33, i32* %3, align 4
  br label %38

34:                                               ; preds = %28, %28
  %35 = load i32, i32* @VLC_CODEC_VDPAU_VIDEO_420, align 4
  store i32 %35, i32* %3, align 4
  br label %38

36:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %38

37:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %36, %34, %32, %30, %27, %25, %23, %20, %18, %16, %13, %11, %9
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
