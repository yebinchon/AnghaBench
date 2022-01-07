; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_coreaudio.h_CoreAudio_Bitmap_to_vlc_bitmap.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_coreaudio.h_CoreAudio_Bitmap_to_vlc_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.CoreAudio_layout_s = type { i32 }

@pi_vlc_chan_order_CoreAudio = common dso_local global i32* null, align 8
@CoreAudio_Bitmap_mapping = common dso_local global %struct.TYPE_3__* null, align 8
@AOUT_CHAN_MAX = common dso_local global i64 0, align 8
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.CoreAudio_layout_s*, i32*, i64*, i32**)* @CoreAudio_Bitmap_to_vlc_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CoreAudio_Bitmap_to_vlc_bitmap(%struct.CoreAudio_layout_s* %0, i32* %1, i64* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.CoreAudio_layout_s*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i64, align 8
  store %struct.CoreAudio_layout_s* %0, %struct.CoreAudio_layout_s** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32** %3, i32*** %9, align 8
  %11 = load i32*, i32** @pi_vlc_chan_order_CoreAudio, align 8
  %12 = load i32**, i32*** %9, align 8
  store i32* %11, i32** %12, align 8
  %13 = load i32*, i32** %7, align 8
  store i32 0, i32* %13, align 4
  %14 = load i64*, i64** %8, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %10, align 8
  br label %15

15:                                               ; preds = %60, %4
  %16 = load i64, i64* %10, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CoreAudio_Bitmap_mapping, align 8
  %18 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %17)
  %19 = icmp ult i64 %16, %18
  br i1 %19, label %20, label %63

20:                                               ; preds = %15
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CoreAudio_Bitmap_mapping, align 8
  %22 = load i64, i64* %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.CoreAudio_layout_s*, %struct.CoreAudio_layout_s** %6, align 8
  %27 = getelementptr inbounds %struct.CoreAudio_layout_s, %struct.CoreAudio_layout_s* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %25, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %59

31:                                               ; preds = %20
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CoreAudio_Bitmap_mapping, align 8
  %33 = load i64, i64* %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %31
  %42 = load i64*, i64** %8, align 8
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @AOUT_CHAN_MAX, align 8
  %45 = icmp uge i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %41, %31
  %47 = load i32*, i32** %7, align 8
  store i32 0, i32* %47, align 4
  %48 = load i64*, i64** %8, align 8
  store i64 0, i64* %48, align 8
  %49 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %49, i32* %5, align 4
  br label %65

50:                                               ; preds = %41
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CoreAudio_Bitmap_mapping, align 8
  %52 = load i64, i64* %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %55
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %50, %20
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %10, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %10, align 8
  br label %15

63:                                               ; preds = %15
  %64 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %63, %46
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
