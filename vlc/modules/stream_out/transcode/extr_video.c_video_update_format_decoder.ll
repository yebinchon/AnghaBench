; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/transcode/extr_video.c_video_update_format_decoder.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/transcode/extr_video.c_video_update_format_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_22__, i32 }
%struct.TYPE_22__ = type { i64, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }
%struct.decoder_owner = type { i32*, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_16__, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_19__ = type { i64 }

@.str = private unnamed_addr constant [52 x i8] c"Checking if filter chain %4.4s -> %4.4s is possible\00", align 1
@.str.1 = private unnamed_addr constant [75 x i8] c"Filter chain testing done, input chroma %4.4s seems to be %s for transcode\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"possible\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"not possible\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, i32*)* @video_update_format_decoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @video_update_format_decoder(%struct.TYPE_20__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.decoder_owner*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %13 = call %struct.decoder_owner* @dec_get_owner(%struct.TYPE_20__* %12)
  store %struct.decoder_owner* %13, %struct.decoder_owner** %6, align 8
  %14 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %15 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %14, i32 0, i32 1
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  store %struct.TYPE_18__* %16, %struct.TYPE_18__** %7, align 8
  %17 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %18 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %8, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = call i32 @vlc_mutex_lock(i32* %22)
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.TYPE_19__* @transcode_encoder_format_in(i32 %26)
  store %struct.TYPE_19__* %27, %struct.TYPE_19__** %10, align 8
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %30, %34
  br i1 %35, label %45, label %36

36:                                               ; preds = %2
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 1
  %43 = call i64 @video_format_IsSimilar(i32* %39, %struct.TYPE_21__* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %36, %2
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = call i32 @vlc_mutex_unlock(i32* %48)
  store i32 0, i32* %3, align 4
  br label %102

50:                                               ; preds = %36
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 1
  %53 = call i32 @es_format_Clean(%struct.TYPE_16__* %52)
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 0
  %58 = call i32 @es_format_Copy(%struct.TYPE_16__* %55, %struct.TYPE_22__* %57)
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 1
  %63 = call i32 @es_format_SetMeta(%struct.TYPE_16__* %60, i32* %62)
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = call i32 @vlc_mutex_unlock(i32* %66)
  %68 = load i32*, i32** %8, align 8
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 0
  %72 = bitcast i64* %71 to i8*
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 0
  %75 = bitcast i64* %74 to i8*
  %76 = call i32 @msg_Dbg(i32* %68, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %72, i8* %75)
  %77 = load i32*, i32** %8, align 8
  %78 = call i32* @filter_chain_NewVideo(i32* %77, i32 0, i32* null)
  store i32* %78, i32** %9, align 8
  %79 = load i32*, i32** %9, align 8
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 0
  %84 = call i32 @filter_chain_Reset(i32* %79, %struct.TYPE_22__* %81, %struct.TYPE_22__* %83)
  %85 = load i32*, i32** %9, align 8
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %87 = call i32 @filter_chain_AppendConverter(i32* %85, %struct.TYPE_19__* %86)
  store i32 %87, i32* %11, align 4
  %88 = load i32*, i32** %9, align 8
  %89 = call i32 @filter_chain_Delete(i32* %88)
  %90 = load i32*, i32** %8, align 8
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 0
  %95 = bitcast i32* %94 to i8*
  %96 = load i32, i32* %11, align 4
  %97 = icmp eq i32 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0)
  %100 = call i32 @msg_Dbg(i32* %90, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i8* %95, i8* %99)
  %101 = load i32, i32* %11, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %50, %45
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local %struct.decoder_owner* @dec_get_owner(%struct.TYPE_20__*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local %struct.TYPE_19__* @transcode_encoder_format_in(i32) #1

declare dso_local i64 @video_format_IsSimilar(i32*, %struct.TYPE_21__*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @es_format_Clean(%struct.TYPE_16__*) #1

declare dso_local i32 @es_format_Copy(%struct.TYPE_16__*, %struct.TYPE_22__*) #1

declare dso_local i32 @es_format_SetMeta(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, i8*, i8*) #1

declare dso_local i32* @filter_chain_NewVideo(i32*, i32, i32*) #1

declare dso_local i32 @filter_chain_Reset(i32*, %struct.TYPE_22__*, %struct.TYPE_22__*) #1

declare dso_local i32 @filter_chain_AppendConverter(i32*, %struct.TYPE_19__*) #1

declare dso_local i32 @filter_chain_Delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
