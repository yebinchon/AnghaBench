; ModuleID = '/home/carl/AnghaBench/vlc/src/video_output/extr_vout_subpictures.c_spu_Create.c'
source_filename = "/home/carl/AnghaBench/vlc/src/video_output/extr_vout_subpictures.c_spu_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_13__, i32*, i8*, i8*, i32, i8*, i8*, i32, i32, i32*, i32*, i8*, i8*, i8*, i32, i32 }
%struct.TYPE_13__ = type { i32, i64*, i32*, i32, i32, i32, i32, i32, i32 }
%struct.spu_channel = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"subpicture\00", align 1
@VOUT_SPU_CHANNEL_OSD_COUNT = common dso_local global i64 0, align 8
@VLC_VOUT_ORDER_PRIMARY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"sub-margin\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"secondary-sub-margin\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"secondary-sub-alignment\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"sub source\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"sub filter\00", align 1
@VLC_CODEC_YUVA = common dso_local global i32 0, align 4
@VLC_CODEC_RGBA = common dso_local global i32 0, align 4
@VLC_CODEC_YUVP = common dso_local global i32 0, align 4
@SPU_CHROMALIST_COUNT = common dso_local global i64 0, align 8
@spu_PrerenderThread = common dso_local global i32 0, align 4
@VLC_THREAD_PRIORITY_VIDEO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @spu_Create(i32* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.spu_channel, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call %struct.TYPE_14__* @vlc_custom_create(i32* %10, i32 168, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_14__* %11, %struct.TYPE_14__** %6, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %13 = icmp ne %struct.TYPE_14__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  br label %191

15:                                               ; preds = %2
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i64 1
  %18 = bitcast %struct.TYPE_14__* %17 to %struct.TYPE_15__*
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  store %struct.TYPE_15__* %18, %struct.TYPE_15__** %20, align 8
  store %struct.TYPE_15__* %18, %struct.TYPE_15__** %7, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 16
  %23 = call i32 @vlc_vector_init(i32* %22)
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 16
  %26 = load i64, i64* @VOUT_SPU_CHANNEL_OSD_COUNT, align 8
  %27 = call i32 @vlc_vector_reserve(i32* %25, i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %15
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %31 = call i32 @vlc_object_delete(%struct.TYPE_14__* %30)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  br label %191

32:                                               ; preds = %15
  store i64 0, i64* %8, align 8
  br label %33

33:                                               ; preds = %46, %32
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @VOUT_SPU_CHANNEL_OSD_COUNT, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = load i64, i64* %8, align 8
  %39 = load i32, i32* @VLC_VOUT_ORDER_PRIMARY, align 4
  %40 = call i32 @spu_channel_Init(%struct.spu_channel* %9, i64 %38, i32 %39, i32* null)
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 16
  %43 = getelementptr inbounds %struct.spu_channel, %struct.spu_channel* %9, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @vlc_vector_push(i32* %42, i32 %44)
  br label %46

46:                                               ; preds = %37
  %47 = load i64, i64* %8, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %8, align 8
  br label %33

49:                                               ; preds = %33
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 15
  %52 = call i32 @vlc_mutex_init(i32* %51)
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %54 = call i8* @var_InheritInteger(%struct.TYPE_14__* %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 14
  store i8* %54, i8** %56, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %58 = call i8* @var_InheritInteger(%struct.TYPE_14__* %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 13
  store i8* %58, i8** %60, align 8
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %62 = call i8* @var_InheritInteger(%struct.TYPE_14__* %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 12
  store i8* %62, i8** %64, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 11
  store i32* null, i32** %66, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 10
  store i32* null, i32** %68, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 9
  %71 = call i32 @vlc_mutex_init(i32* %70)
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %73 = call i8* @filter_chain_NewSPU(%struct.TYPE_14__* %72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 7
  store i8* %73, i8** %75, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %77 = call i8* @filter_chain_NewSPU(%struct.TYPE_14__* %76, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 6
  store i8* %77, i8** %79, align 8
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %81 = call i32 @SpuRenderCreateAndLoadText(%struct.TYPE_14__* %80)
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 5
  store i32 %81, i32* %83, align 8
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 8
  %86 = call i32 @vlc_mutex_init(i32* %85)
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %88 = call i32 @VLC_OBJECT(%struct.TYPE_14__* %87)
  %89 = load i32, i32* @VLC_CODEC_YUVA, align 4
  %90 = load i32, i32* @VLC_CODEC_RGBA, align 4
  %91 = call i8* @SpuRenderCreateAndLoadScale(i32 %88, i32 %89, i32 %90, i32 1)
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 4
  store i8* %91, i8** %93, align 8
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %95 = call i32 @VLC_OBJECT(%struct.TYPE_14__* %94)
  %96 = load i32, i32* @VLC_CODEC_YUVP, align 4
  %97 = load i32, i32* @VLC_CODEC_YUVA, align 4
  %98 = call i8* @SpuRenderCreateAndLoadScale(i32 %95, i32 %96, i32 %97, i32 0)
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 3
  store i8* %98, i8** %100, align 8
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 7
  %103 = load i8*, i8** %102, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %125

105:                                              ; preds = %49
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 6
  %108 = load i8*, i8** %107, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %125

110:                                              ; preds = %105
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %110
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 4
  %118 = load i8*, i8** %117, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %125

120:                                              ; preds = %115
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 3
  %123 = load i8*, i8** %122, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %132, label %125

125:                                              ; preds = %120, %115, %110, %105, %49
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 2
  store i32* null, i32** %127, align 8
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %129 = call i32 @spu_Cleanup(%struct.TYPE_14__* %128)
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %131 = call i32 @vlc_object_delete(%struct.TYPE_14__* %130)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  br label %191

132:                                              ; preds = %120
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 0
  store i32 -1, i32* %134, align 8
  %135 = load i32*, i32** %5, align 8
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 2
  store i32* %135, i32** %137, align 8
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 8
  %141 = call i32 @vlc_mutex_init(i32* %140)
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 7
  %145 = call i32 @vlc_cond_init(i32* %144)
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 6
  %149 = call i32 @vlc_cond_init(i32* %148)
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 5
  %153 = call i32 @vlc_vector_init(i32* %152)
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 4
  %157 = call i32 @video_format_Init(i32* %156, i32 0)
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 3
  %161 = call i32 @video_format_Init(i32* %160, i32 0)
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 2
  store i32* null, i32** %164, align 8
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 1
  %168 = load i64*, i64** %167, align 8
  %169 = getelementptr inbounds i64, i64* %168, i64 0
  store i64 0, i64* %169, align 8
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 1
  %173 = load i64*, i64** %172, align 8
  %174 = load i64, i64* @SPU_CHROMALIST_COUNT, align 8
  %175 = getelementptr inbounds i64, i64* %173, i64 %174
  store i64 0, i64* %175, align 8
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 0
  %179 = load i32, i32* @spu_PrerenderThread, align 4
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %181 = load i32, i32* @VLC_THREAD_PRIORITY_VIDEO, align 4
  %182 = call i64 @vlc_clone(i32* %178, i32 %179, %struct.TYPE_14__* %180, i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %132
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %186 = call i32 @spu_Cleanup(%struct.TYPE_14__* %185)
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %188 = call i32 @vlc_object_delete(%struct.TYPE_14__* %187)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %6, align 8
  br label %189

189:                                              ; preds = %184, %132
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_14__* %190, %struct.TYPE_14__** %3, align 8
  br label %191

191:                                              ; preds = %189, %125, %29, %14
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  ret %struct.TYPE_14__* %192
}

declare dso_local %struct.TYPE_14__* @vlc_custom_create(i32*, i32, i8*) #1

declare dso_local i32 @vlc_vector_init(i32*) #1

declare dso_local i32 @vlc_vector_reserve(i32*, i64) #1

declare dso_local i32 @vlc_object_delete(%struct.TYPE_14__*) #1

declare dso_local i32 @spu_channel_Init(%struct.spu_channel*, i64, i32, i32*) #1

declare dso_local i32 @vlc_vector_push(i32*, i32) #1

declare dso_local i32 @vlc_mutex_init(i32*) #1

declare dso_local i8* @var_InheritInteger(%struct.TYPE_14__*, i8*) #1

declare dso_local i8* @filter_chain_NewSPU(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @SpuRenderCreateAndLoadText(%struct.TYPE_14__*) #1

declare dso_local i8* @SpuRenderCreateAndLoadScale(i32, i32, i32, i32) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_14__*) #1

declare dso_local i32 @spu_Cleanup(%struct.TYPE_14__*) #1

declare dso_local i32 @vlc_cond_init(i32*) #1

declare dso_local i32 @video_format_Init(i32*, i32) #1

declare dso_local i64 @vlc_clone(i32*, i32, %struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
