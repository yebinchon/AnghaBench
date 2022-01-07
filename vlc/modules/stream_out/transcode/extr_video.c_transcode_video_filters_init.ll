; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/transcode/extr_video.c_transcode_video_filters_init.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/transcode/extr_video.c_transcode_video_filters_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { i8*, i64, i32, i32* }
%struct.TYPE_10__ = type { i64, i32, i8*, i8* }
%struct.TYPE_12__ = type { %struct.TYPE_10__*, i32* }

@transcode_filter_video_cbs = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"fps\00", align 1
@VLC_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"adding user filters\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_11__*, i32, i32*, i32*, %struct.TYPE_10__*)* @transcode_video_filters_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @transcode_video_filters_init(i32* %0, %struct.TYPE_11__* %1, i32 %2, i32* %3, i32* %4, %struct.TYPE_10__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca %struct.TYPE_12__, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store %struct.TYPE_10__* %5, %struct.TYPE_10__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  store i32* @transcode_filter_video_cbs, i32** %17, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = call i8* @filter_chain_NewVideo(i32* %18, i32 0, %struct.TYPE_12__* %14)
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 3
  store i8* %19, i8** %21, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 3
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %6
  %27 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %27, i32* %7, align 4
  br label %158

28:                                               ; preds = %6
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 3
  %31 = load i8*, i8** %30, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = call i32 @filter_chain_Reset(i8* %31, i32* %32, i32* %33)
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %58

40:                                               ; preds = %28
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 3
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = call i32 @filter_chain_AppendFilter(i8* %43, i8* %47, i32* %51, i32* %52)
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 3
  %56 = load i8*, i8** %55, align 8
  %57 = call i32* @filter_chain_GetFmtOut(i8* %56)
  store i32* %57, i32** %11, align 8
  br label %58

58:                                               ; preds = %40, %28
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %58
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 3
  %64 = load i8*, i8** %63, align 8
  %65 = load i32*, i32** %12, align 8
  %66 = call i32 @filter_chain_AppendFilter(i8* %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* null, i32* %65)
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 3
  %69 = load i8*, i8** %68, align 8
  %70 = call i32* @filter_chain_GetFmtOut(i8* %69)
  store i32* %70, i32** %11, align 8
  br label %71

71:                                               ; preds = %61, %58
  %72 = load i32*, i32** %8, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %74 = load i32*, i32** %12, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @transcode_video_set_conversions(i32* %72, %struct.TYPE_10__* %73, i32** %11, i32* %74, i32 %78)
  %80 = load i64, i64* @VLC_SUCCESS, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %71
  %83 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %83, i32* %7, align 4
  br label %158

84:                                               ; preds = %71
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %123

89:                                               ; preds = %84
  %90 = load i32*, i32** %8, align 8
  %91 = call i32 @msg_Dbg(i32* %90, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %92 = load i32*, i32** %8, align 8
  %93 = call i8* @filter_chain_NewVideo(i32* %92, i32 1, %struct.TYPE_12__* %14)
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 2
  store i8* %93, i8** %95, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 2
  %98 = load i8*, i8** %97, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %102, label %100

100:                                              ; preds = %89
  %101 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %101, i32* %7, align 4
  br label %158

102:                                              ; preds = %89
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 2
  %105 = load i8*, i8** %104, align 8
  %106 = load i32*, i32** %11, align 8
  %107 = load i32*, i32** %12, align 8
  %108 = call i32 @filter_chain_Reset(i8* %105, i32* %106, i32* %107)
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 2
  %111 = load i8*, i8** %110, align 8
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @filter_chain_AppendFromString(i8* %111, i64 %114)
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 2
  %118 = load i8*, i8** %117, align 8
  %119 = call i32* @filter_chain_GetFmtOut(i8* %118)
  store i32* %119, i32** %11, align 8
  %120 = load i32*, i32** %8, align 8
  %121 = load i32*, i32** %11, align 8
  %122 = call i32 @debug_format(i32* %120, i32* %121)
  br label %123

123:                                              ; preds = %102, %84
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load i32*, i32** %11, align 8
  %128 = call i32 @transcode_encoder_update_format_in(i32 %126, i32* %127)
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %155

134:                                              ; preds = %123
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %145, label %139

139:                                              ; preds = %134
  %140 = load i32*, i32** %8, align 8
  %141 = call i64 @spu_Create(i32* %140, i32* null)
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  store i64 %141, i64* %143, align 8
  %144 = icmp ne i64 %141, 0
  br i1 %144, label %145, label %154

145:                                              ; preds = %139, %134
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @spu_ChangeSources(i64 %148, i64 %152)
  br label %154

154:                                              ; preds = %145, %139
  br label %155

155:                                              ; preds = %154, %123
  %156 = load i64, i64* @VLC_SUCCESS, align 8
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %7, align 4
  br label %158

158:                                              ; preds = %155, %100, %82, %26
  %159 = load i32, i32* %7, align 4
  ret i32 %159
}

declare dso_local i8* @filter_chain_NewVideo(i32*, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @filter_chain_Reset(i8*, i32*, i32*) #1

declare dso_local i32 @filter_chain_AppendFilter(i8*, i8*, i32*, i32*) #1

declare dso_local i32* @filter_chain_GetFmtOut(i8*) #1

declare dso_local i64 @transcode_video_set_conversions(i32*, %struct.TYPE_10__*, i32**, i32*, i32) #1

declare dso_local i32 @msg_Dbg(i32*, i8*) #1

declare dso_local i32 @filter_chain_AppendFromString(i8*, i64) #1

declare dso_local i32 @debug_format(i32*, i32*) #1

declare dso_local i32 @transcode_encoder_update_format_in(i32, i32*) #1

declare dso_local i64 @spu_Create(i32*, i32*) #1

declare dso_local i32 @spu_ChangeSources(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
