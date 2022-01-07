; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_coreaudio.h_CoreAudio_Layout_to_vlc.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_coreaudio.h_CoreAudio_Layout_to_vlc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32 }
%struct.CoreAudio_layout_s = type { i32 }

@CoreAudio_Layout_BITMAP = common dso_local global i32 0, align 4
@CoreAudio_Layout_mapping = common dso_local global %struct.TYPE_3__* null, align 8
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.CoreAudio_layout_s*, i32*, i32*, i32**)* @CoreAudio_Layout_to_vlc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CoreAudio_Layout_to_vlc(%struct.CoreAudio_layout_s* %0, i32* %1, i32* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.CoreAudio_layout_s*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i64, align 8
  store %struct.CoreAudio_layout_s* %0, %struct.CoreAudio_layout_s** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32** %3, i32*** %9, align 8
  %11 = load %struct.CoreAudio_layout_s*, %struct.CoreAudio_layout_s** %6, align 8
  %12 = getelementptr inbounds %struct.CoreAudio_layout_s, %struct.CoreAudio_layout_s* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @CoreAudio_Layout_BITMAP, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load %struct.CoreAudio_layout_s*, %struct.CoreAudio_layout_s** %6, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load i32**, i32*** %9, align 8
  %21 = call i32 @CoreAudio_Bitmap_to_vlc_bitmap(%struct.CoreAudio_layout_s* %17, i32* %18, i32* %19, i32** %20)
  store i32 %21, i32* %5, align 4
  br label %62

22:                                               ; preds = %4
  store i64 0, i64* %10, align 8
  br label %23

23:                                               ; preds = %57, %22
  %24 = load i64, i64* %10, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CoreAudio_Layout_mapping, align 8
  %26 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %25)
  %27 = icmp ult i64 %24, %26
  br i1 %27, label %28, label %60

28:                                               ; preds = %23
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CoreAudio_Layout_mapping, align 8
  %30 = load i64, i64* %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.CoreAudio_layout_s*, %struct.CoreAudio_layout_s** %6, align 8
  %35 = getelementptr inbounds %struct.CoreAudio_layout_s, %struct.CoreAudio_layout_s* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %38, label %56

38:                                               ; preds = %28
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CoreAudio_Layout_mapping, align 8
  %40 = load i64, i64* %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32*, i32** %7, align 8
  store i32 %43, i32* %44, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CoreAudio_Layout_mapping, align 8
  %46 = load i64, i64* %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32**, i32*** %9, align 8
  store i32* %49, i32** %50, align 8
  %51 = load %struct.CoreAudio_layout_s*, %struct.CoreAudio_layout_s** %6, align 8
  %52 = getelementptr inbounds %struct.CoreAudio_layout_s, %struct.CoreAudio_layout_s* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 255
  %55 = load i32*, i32** %8, align 8
  store i32 %54, i32* %55, align 4
  br label %60

56:                                               ; preds = %28
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %10, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %10, align 8
  br label %23

60:                                               ; preds = %38, %23
  %61 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %60, %16
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @CoreAudio_Bitmap_to_vlc_bitmap(%struct.CoreAudio_layout_s*, i32*, i32*, i32**) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
