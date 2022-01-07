; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_image.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_image.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_22__*, i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i64, i32, i32, i32, i32* }
%struct.TYPE_20__ = type { %struct.TYPE_19__, i8*, i8*, i32 }
%struct.TYPE_19__ = type { i32, i32, i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Detected image: %s\00", align 1
@VIDEO_ES = common dso_local global i32 0, align 4
@VLC_CODEC_MXPEG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"image-decode\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"image-chroma\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"image-id\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"image-group\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"image-fps\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Invalid frame rate, using 10/1 instead\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Failed to load the image\00", align 1
@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"image-duration\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"image-realtime\00", align 1
@VLC_TICK_INVALID = common dso_local global i32 0, align 4
@VLC_TICK_0 = common dso_local global i32 0, align 4
@Demux = common dso_local global i32 0, align 4
@Control = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_20__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  store i32* %0, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = bitcast i32* %11 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %12, %struct.TYPE_21__** %4, align 8
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @Detect(i32 %15)
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %20, i32* %2, align 4
  br label %167

21:                                               ; preds = %1
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %23 = load i32, i32* @VIDEO_ES, align 4
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @vlc_fourcc_GetDescription(i32 %23, i64 %24)
  %26 = call i32 @msg_Dbg(%struct.TYPE_21__* %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @VLC_CODEC_MXPEG, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %31, i32* %2, align 4
  br label %167

32:                                               ; preds = %21
  %33 = load i32, i32* @VIDEO_ES, align 4
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @es_format_Init(%struct.TYPE_20__* %6, i32 %33, i64 %34)
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %41 = call i32* @Load(%struct.TYPE_21__* %40)
  store i32* %41, i32** %7, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %60

44:                                               ; preds = %32
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %46 = call i64 @var_InheritBool(%struct.TYPE_21__* %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %44
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %50 = call i8* @var_InheritString(%struct.TYPE_21__* %49, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i8* %50, i8** %8, align 8
  %51 = load i32, i32* @VIDEO_ES, align 4
  %52 = load i8*, i8** %8, align 8
  %53 = call i64 @vlc_fourcc_GetCodecFromString(i32 %51, i8* %52)
  store i64 %53, i64* %9, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @free(i8* %54)
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = call i32* @Decode(%struct.TYPE_21__* %56, %struct.TYPE_20__* %6, i64 %57, i32* %58)
  store i32* %59, i32** %7, align 8
  br label %60

60:                                               ; preds = %48, %44, %32
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %62 = call i8* @var_InheritInteger(%struct.TYPE_21__* %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 2
  store i8* %62, i8** %63, align 8
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %65 = call i8* @var_InheritInteger(%struct.TYPE_21__* %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 1
  store i8* %65, i8** %66, align 8
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 1
  %72 = call i64 @var_InheritURational(%struct.TYPE_21__* %67, i32* %69, i32* %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %84, label %74

74:                                               ; preds = %60
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp sle i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp sle i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %79, %74, %60
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %86 = call i32 @msg_Err(%struct.TYPE_21__* %85, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 0
  store i32 10, i32* %88, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 1
  store i32 1, i32* %90, align 4
  br label %91

91:                                               ; preds = %84, %79
  %92 = load i32*, i32** %7, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %96 = call i32 @msg_Err(%struct.TYPE_21__* %95, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  br label %97

97:                                               ; preds = %94, %91
  %98 = call %struct.TYPE_22__* @malloc(i32 40)
  store %struct.TYPE_22__* %98, %struct.TYPE_22__** %10, align 8
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %100 = icmp ne %struct.TYPE_22__* %99, null
  br i1 %100, label %110, label %101

101:                                              ; preds = %97
  %102 = load i32*, i32** %7, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i32*, i32** %7, align 8
  %106 = call i32 @block_Release(i32* %105)
  br label %107

107:                                              ; preds = %104, %101
  %108 = call i32 @es_format_Clean(%struct.TYPE_20__* %6)
  %109 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %109, i32* %2, align 4
  br label %167

110:                                              ; preds = %97
  %111 = load i32*, i32** %7, align 8
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 6
  store i32* %111, i32** %113, align 8
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @es_out_Add(i32 %116, %struct.TYPE_20__* %6)
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 5
  store i32 %117, i32* %119, align 8
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %121 = call i32 @var_InheritFloat(%struct.TYPE_21__* %120, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %122 = call i32 @vlc_tick_from_sec(i32 %121)
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i32 0, i32 4
  store i32 %122, i32* %124, align 4
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %126 = call i64 @var_InheritBool(%struct.TYPE_21__* %125, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 2
  store i64 %126, i64* %128, align 8
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %110
  %134 = call i32 (...) @vlc_tick_now()
  br label %136

135:                                              ; preds = %110
  br label %136

136:                                              ; preds = %135, %133
  %137 = phi i32 [ %134, %133 ], [ 0, %135 ]
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 3
  store i32 %137, i32* %139, align 8
  %140 = load i32, i32* @VLC_TICK_INVALID, align 4
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @date_Init(i32* %144, i32 %147, i32 %150)
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %152, i32 0, i32 0
  %154 = load i32, i32* @VLC_TICK_0, align 4
  %155 = call i32 @date_Set(i32* %153, i32 %154)
  %156 = call i32 @es_format_Clean(%struct.TYPE_20__* %6)
  %157 = load i32, i32* @Demux, align 4
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 2
  store i32 %157, i32* %159, align 4
  %160 = load i32, i32* @Control, align 4
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 8
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i32 0, i32 0
  store %struct.TYPE_22__* %163, %struct.TYPE_22__** %165, align 8
  %166 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %166, i32* %2, align 4
  br label %167

167:                                              ; preds = %136, %107, %30, %19
  %168 = load i32, i32* %2, align 4
  ret i32 %168
}

declare dso_local i64 @Detect(i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_21__*, i8*, i32) #1

declare dso_local i32 @vlc_fourcc_GetDescription(i32, i64) #1

declare dso_local i32 @es_format_Init(%struct.TYPE_20__*, i32, i64) #1

declare dso_local i32* @Load(%struct.TYPE_21__*) #1

declare dso_local i64 @var_InheritBool(%struct.TYPE_21__*, i8*) #1

declare dso_local i8* @var_InheritString(%struct.TYPE_21__*, i8*) #1

declare dso_local i64 @vlc_fourcc_GetCodecFromString(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32* @Decode(%struct.TYPE_21__*, %struct.TYPE_20__*, i64, i32*) #1

declare dso_local i8* @var_InheritInteger(%struct.TYPE_21__*, i8*) #1

declare dso_local i64 @var_InheritURational(%struct.TYPE_21__*, i32*, i32*, i8*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_21__*, i8*) #1

declare dso_local %struct.TYPE_22__* @malloc(i32) #1

declare dso_local i32 @block_Release(i32*) #1

declare dso_local i32 @es_format_Clean(%struct.TYPE_20__*) #1

declare dso_local i32 @es_out_Add(i32, %struct.TYPE_20__*) #1

declare dso_local i32 @vlc_tick_from_sec(i32) #1

declare dso_local i32 @var_InheritFloat(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @vlc_tick_now(...) #1

declare dso_local i32 @date_Init(i32*, i32, i32) #1

declare dso_local i32 @date_Set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
