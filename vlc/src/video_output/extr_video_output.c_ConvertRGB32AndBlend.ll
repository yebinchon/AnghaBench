; ModuleID = '/home/carl/AnghaBench/vlc/src/video_output/extr_video_output.c_ConvertRGB32AndBlend.c'
source_filename = "/home/carl/AnghaBench/vlc/src/video_output/extr_video_output.c_ConvertRGB32AndBlend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }

@VLC_CODEC_RGB32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_15__*, i32*, i32*)* @ConvertRGB32AndBlend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ConvertRGB32AndBlend(%struct.TYPE_15__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_16__, align 4
  %10 = alloca %struct.TYPE_16__, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %18 = call i32 @assert(%struct.TYPE_13__* %17)
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %20 = call i32* @filter_chain_NewVideo(%struct.TYPE_15__* %19, i32 0, i32* null)
  store i32* %20, i32** %8, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %83

24:                                               ; preds = %3
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = bitcast %struct.TYPE_16__* %9 to i8*
  %32 = bitcast %struct.TYPE_16__* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 4, i1 false)
  %33 = bitcast %struct.TYPE_16__* %10 to i8*
  %34 = bitcast %struct.TYPE_16__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 4, i1 false)
  %35 = load i32, i32* @VLC_CODEC_RGB32, align 4
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %39 = call i32 @video_format_FixRgb(%struct.TYPE_17__* %38)
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @filter_chain_Reset(i32* %40, %struct.TYPE_16__* %9, %struct.TYPE_16__* %10)
  %42 = load i32*, i32** %8, align 8
  %43 = call i64 @filter_chain_AppendConverter(i32* %42, %struct.TYPE_16__* %10)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %24
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @filter_chain_Delete(i32* %46)
  store i32* null, i32** %4, align 8
  br label %83

48:                                               ; preds = %24
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @picture_Hold(i32* %49)
  %51 = load i32*, i32** %8, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = call i32* @filter_chain_VideoFilter(i32* %51, i32* %52)
  store i32* %53, i32** %6, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @filter_chain_Delete(i32* %54)
  %56 = load i32*, i32** %6, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %82

58:                                               ; preds = %48
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %60 = call i32 @VLC_OBJECT(%struct.TYPE_15__* %59)
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %62 = call i32* @filter_NewBlend(i32 %60, %struct.TYPE_17__* %61)
  store i32* %62, i32** %11, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %79

65:                                               ; preds = %58
  %66 = load i32*, i32** %6, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = call i64 @picture_BlendSubpicture(i32* %66, i32* %67, i32* %68)
  %70 = icmp sgt i64 %69, 0
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %12, align 4
  %72 = load i32*, i32** %11, align 8
  %73 = call i32 @filter_DeleteBlend(i32* %72)
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %65
  %77 = load i32*, i32** %6, align 8
  store i32* %77, i32** %4, align 8
  br label %83

78:                                               ; preds = %65
  br label %79

79:                                               ; preds = %78, %58
  %80 = load i32*, i32** %6, align 8
  %81 = call i32 @picture_Release(i32* %80)
  br label %82

82:                                               ; preds = %79, %48
  store i32* null, i32** %4, align 8
  br label %83

83:                                               ; preds = %82, %76, %45, %23
  %84 = load i32*, i32** %4, align 8
  ret i32* %84
}

declare dso_local i32 @assert(%struct.TYPE_13__*) #1

declare dso_local i32* @filter_chain_NewVideo(%struct.TYPE_15__*, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @video_format_FixRgb(%struct.TYPE_17__*) #1

declare dso_local i32 @filter_chain_Reset(i32*, %struct.TYPE_16__*, %struct.TYPE_16__*) #1

declare dso_local i64 @filter_chain_AppendConverter(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @filter_chain_Delete(i32*) #1

declare dso_local i32 @picture_Hold(i32*) #1

declare dso_local i32* @filter_chain_VideoFilter(i32*, i32*) #1

declare dso_local i32* @filter_NewBlend(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_15__*) #1

declare dso_local i64 @picture_BlendSubpicture(i32*, i32*, i32*) #1

declare dso_local i32 @filter_DeleteBlend(i32*) #1

declare dso_local i32 @picture_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
