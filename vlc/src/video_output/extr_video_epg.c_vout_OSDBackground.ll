; ModuleID = '/home/carl/AnghaBench/vlc/src/video_output/extr_video_epg.c_vout_OSDBackground.c'
source_filename = "/home/carl/AnghaBench/vlc/src/video_output/extr_video_epg.c_vout_OSDBackground.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_11__* }

@GRADIENT_COLORS = common dso_local global i32 0, align 4
@VLC_CODEC_YUVP = common dso_local global i32 0, align 4
@SUBPICTURE_ALIGN_LEFT = common dso_local global i32 0, align 4
@SUBPICTURE_ALIGN_TOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (i32, i32, i32, i32, i32)* @vout_OSDBackground to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @vout_OSDBackground(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_11__, align 4
  %13 = alloca %struct.TYPE_12__, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* @GRADIENT_COLORS, align 4
  %16 = load i32, i32* %11, align 4
  %17 = call i32 @spuregion_CreateVGradientPalette(%struct.TYPE_11__* %12, i32 %15, i32 %16, i32 -16777216)
  %18 = load i32, i32* @VLC_CODEC_YUVP, align 4
  %19 = call i32 @video_format_Init(%struct.TYPE_12__* %13, i32 %18)
  %20 = load i32, i32* %9, align 4
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %10, align 4
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 3
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 4
  store i32 1, i32* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 5
  store i32 1, i32* %27, align 4
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 6
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %28, align 8
  %29 = call %struct.TYPE_13__* @subpicture_region_New(%struct.TYPE_12__* %13)
  store %struct.TYPE_13__* %29, %struct.TYPE_13__** %14, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %31 = icmp ne %struct.TYPE_13__* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %5
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %6, align 8
  br label %54

33:                                               ; preds = %5
  %34 = load i32, i32* @SUBPICTURE_ALIGN_LEFT, align 4
  %35 = load i32, i32* @SUBPICTURE_ALIGN_TOP, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 3
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @spuregion_CreateVGradientFill(i32 %49, i32 %51)
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  store %struct.TYPE_13__* %53, %struct.TYPE_13__** %6, align 8
  br label %54

54:                                               ; preds = %33, %32
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  ret %struct.TYPE_13__* %55
}

declare dso_local i32 @spuregion_CreateVGradientPalette(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @video_format_Init(%struct.TYPE_12__*, i32) #1

declare dso_local %struct.TYPE_13__* @subpicture_region_New(%struct.TYPE_12__*) #1

declare dso_local i32 @spuregion_CreateVGradientFill(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
