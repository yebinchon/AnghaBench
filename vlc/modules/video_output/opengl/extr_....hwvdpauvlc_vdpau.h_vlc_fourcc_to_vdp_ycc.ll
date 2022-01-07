; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/opengl/extr_....hwvdpauvlc_vdpau.h_vlc_fourcc_to_vdp_ycc.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/opengl/extr_....hwvdpauvlc_vdpau.h_vlc_fourcc_to_vdp_ycc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VDP_CHROMA_TYPE_420 = common dso_local global i32 0, align 4
@VDP_YCBCR_FORMAT_YV12 = common dso_local global i32 0, align 4
@VDP_YCBCR_FORMAT_NV12 = common dso_local global i32 0, align 4
@VDP_CHROMA_TYPE_422 = common dso_local global i32 0, align 4
@VDP_YCBCR_FORMAT_YUYV = common dso_local global i32 0, align 4
@VDP_YCBCR_FORMAT_UYVY = common dso_local global i32 0, align 4
@VDP_CHROMA_TYPE_444 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*)* @vlc_fourcc_to_vdp_ycc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlc_fourcc_to_vdp_ycc(i32 %0, i32* noalias %1, i32* noalias %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %49 [
    i32 136, label %9
    i32 128, label %9
    i32 133, label %14
    i32 135, label %19
    i32 132, label %24
    i32 129, label %29
    i32 130, label %34
    i32 134, label %39
    i32 131, label %44
  ]

9:                                                ; preds = %3, %3
  %10 = load i32, i32* @VDP_CHROMA_TYPE_420, align 4
  %11 = load i32*, i32** %6, align 8
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @VDP_YCBCR_FORMAT_YV12, align 4
  %13 = load i32*, i32** %7, align 8
  store i32 %12, i32* %13, align 4
  br label %50

14:                                               ; preds = %3
  %15 = load i32, i32* @VDP_CHROMA_TYPE_420, align 4
  %16 = load i32*, i32** %6, align 8
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @VDP_YCBCR_FORMAT_NV12, align 4
  %18 = load i32*, i32** %7, align 8
  store i32 %17, i32* %18, align 4
  br label %50

19:                                               ; preds = %3
  %20 = load i32, i32* @VDP_CHROMA_TYPE_422, align 4
  %21 = load i32*, i32** %6, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @VDP_YCBCR_FORMAT_YV12, align 4
  %23 = load i32*, i32** %7, align 8
  store i32 %22, i32* %23, align 4
  br label %50

24:                                               ; preds = %3
  %25 = load i32, i32* @VDP_CHROMA_TYPE_422, align 4
  %26 = load i32*, i32** %6, align 8
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @VDP_YCBCR_FORMAT_NV12, align 4
  %28 = load i32*, i32** %7, align 8
  store i32 %27, i32* %28, align 4
  br label %50

29:                                               ; preds = %3
  %30 = load i32, i32* @VDP_CHROMA_TYPE_422, align 4
  %31 = load i32*, i32** %6, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @VDP_YCBCR_FORMAT_YUYV, align 4
  %33 = load i32*, i32** %7, align 8
  store i32 %32, i32* %33, align 4
  br label %50

34:                                               ; preds = %3
  %35 = load i32, i32* @VDP_CHROMA_TYPE_422, align 4
  %36 = load i32*, i32** %6, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @VDP_YCBCR_FORMAT_UYVY, align 4
  %38 = load i32*, i32** %7, align 8
  store i32 %37, i32* %38, align 4
  br label %50

39:                                               ; preds = %3
  %40 = load i32, i32* @VDP_CHROMA_TYPE_444, align 4
  %41 = load i32*, i32** %6, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @VDP_YCBCR_FORMAT_YV12, align 4
  %43 = load i32*, i32** %7, align 8
  store i32 %42, i32* %43, align 4
  br label %50

44:                                               ; preds = %3
  %45 = load i32, i32* @VDP_CHROMA_TYPE_444, align 4
  %46 = load i32*, i32** %6, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* @VDP_YCBCR_FORMAT_NV12, align 4
  %48 = load i32*, i32** %7, align 8
  store i32 %47, i32* %48, align 4
  br label %50

49:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %51

50:                                               ; preds = %44, %39, %34, %29, %24, %19, %14, %9
  store i32 1, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %49
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
