; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/transcode/extr_video.c_RenderSubpictures.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/transcode/extr_video.c_RenderSubpictures.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_26__*, i32, i32, i32, %struct.TYPE_23__, %struct.TYPE_22__ }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_24__ = type { i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_26__* (i32*, %struct.TYPE_25__*, %struct.TYPE_26__*)* @RenderSubpictures to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_26__* @RenderSubpictures(i32* %0, %struct.TYPE_25__* %1, %struct.TYPE_26__* %2) #0 {
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_24__, align 8
  %9 = alloca %struct.TYPE_24__, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %6, align 8
  store %struct.TYPE_26__* %2, %struct.TYPE_26__** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @VLC_UNUSED(i32* %12)
  %14 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %3
  %19 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  store %struct.TYPE_26__* %19, %struct.TYPE_26__** %4, align 8
  br label %122

20:                                               ; preds = %3
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 0
  %24 = call i32 @vlc_mutex_lock(i32* %23)
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 0
  %28 = call i32 @video_format_Copy(%struct.TYPE_24__* %9, i32* %27)
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 0
  %32 = call i32 @vlc_mutex_unlock(i32* %31)
  %33 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %33, i32 0, i32 1
  %35 = call i32 @video_format_Copy(%struct.TYPE_24__* %8, i32* %34)
  %36 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sle i64 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %20
  %40 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp sle i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %39, %20
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 0
  store i64 %45, i64* %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 1
  store i64 %48, i64* %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 5
  store i64 0, i64* %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 4
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %43, %39
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (...) @vlc_tick_now()
  %57 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32* @spu_Render(i32 %55, i32* null, %struct.TYPE_24__* %8, %struct.TYPE_24__* %9, i32 %56, i32 %59, i32 0, i32 0)
  store i32* %60, i32** %10, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %118

63:                                               ; preds = %52
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @filter_chain_IsEmpty(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %63
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call %struct.TYPE_26__* @video_new_buffer_encoder(i32 %72)
  store %struct.TYPE_26__* %73, %struct.TYPE_26__** %11, align 8
  %74 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %75 = call i64 @likely(%struct.TYPE_26__* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %69
  %78 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %79 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %80 = call i32 @picture_Copy(%struct.TYPE_26__* %78, %struct.TYPE_26__* %79)
  %81 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %82 = call i32 @picture_Release(%struct.TYPE_26__* %81)
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  store %struct.TYPE_26__* %83, %struct.TYPE_26__** %7, align 8
  br label %84

84:                                               ; preds = %77, %69
  br label %85

85:                                               ; preds = %84, %63
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_26__*, %struct.TYPE_26__** %87, align 8
  %89 = icmp ne %struct.TYPE_26__* %88, null
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  %92 = call i64 @unlikely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %85
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @VLC_OBJECT(i32 %97)
  %99 = call %struct.TYPE_26__* @filter_NewBlend(i32 %98, %struct.TYPE_24__* %8)
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %100, i32 0, i32 0
  store %struct.TYPE_26__* %99, %struct.TYPE_26__** %101, align 8
  br label %102

102:                                              ; preds = %94, %85
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_26__*, %struct.TYPE_26__** %104, align 8
  %106 = call i64 @likely(%struct.TYPE_26__* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %102
  %109 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %110 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_26__*, %struct.TYPE_26__** %111, align 8
  %113 = load i32*, i32** %10, align 8
  %114 = call i32 @picture_BlendSubpicture(%struct.TYPE_26__* %109, %struct.TYPE_26__* %112, i32* %113)
  br label %115

115:                                              ; preds = %108, %102
  %116 = load i32*, i32** %10, align 8
  %117 = call i32 @subpicture_Delete(i32* %116)
  br label %118

118:                                              ; preds = %115, %52
  %119 = call i32 @video_format_Clean(%struct.TYPE_24__* %8)
  %120 = call i32 @video_format_Clean(%struct.TYPE_24__* %9)
  %121 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  store %struct.TYPE_26__* %121, %struct.TYPE_26__** %4, align 8
  br label %122

122:                                              ; preds = %118, %18
  %123 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  ret %struct.TYPE_26__* %123
}

declare dso_local i32 @VLC_UNUSED(i32*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @video_format_Copy(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32* @spu_Render(i32, i32*, %struct.TYPE_24__*, %struct.TYPE_24__*, i32, i32, i32, i32) #1

declare dso_local i32 @vlc_tick_now(...) #1

declare dso_local i64 @filter_chain_IsEmpty(i32) #1

declare dso_local %struct.TYPE_26__* @video_new_buffer_encoder(i32) #1

declare dso_local i64 @likely(%struct.TYPE_26__*) #1

declare dso_local i32 @picture_Copy(%struct.TYPE_26__*, %struct.TYPE_26__*) #1

declare dso_local i32 @picture_Release(%struct.TYPE_26__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_26__* @filter_NewBlend(i32, %struct.TYPE_24__*) #1

declare dso_local i32 @VLC_OBJECT(i32) #1

declare dso_local i32 @picture_BlendSubpicture(%struct.TYPE_26__*, %struct.TYPE_26__*, i32*) #1

declare dso_local i32 @subpicture_Delete(i32*) #1

declare dso_local i32 @video_format_Clean(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
