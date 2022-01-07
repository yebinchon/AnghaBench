; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_cdda.c_DemuxOpen.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_cdda.c_DemuxOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32*, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i8*, i32, i64, i32, i32, i32* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"cdda-first-sector\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"cdda-last-sector\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"invalid track number: %u/%i\00", align 1
@CD_ROM_XA_INTERVAL = common dso_local global i64 0, align 8
@AUDIO_ES = common dso_local global i32 0, align 4
@VLC_CODEC_S16L = common dso_local global i32 0, align 4
@VLC_TICK_0 = common dso_local global i32 0, align 4
@Demux = common dso_local global i32 0, align 4
@DemuxControl = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @DemuxOpen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DemuxOpen(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_16__, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = bitcast i32* %17 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %18, %struct.TYPE_17__** %8, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %167

24:                                               ; preds = %3
  %25 = load i32*, i32** %5, align 8
  %26 = call %struct.TYPE_18__* @vlc_obj_malloc(i32* %25, i32 40)
  store %struct.TYPE_18__* %26, %struct.TYPE_18__** %9, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %28 = icmp eq %struct.TYPE_18__* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %167

33:                                               ; preds = %24
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 3
  store %struct.TYPE_18__* %34, %struct.TYPE_18__** %36, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 5
  store i32* %37, i32** %39, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = call i8* @var_InheritInteger(i32* %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = call i8* @var_InheritInteger(i32* %44, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = ptrtoint i8* %45 to i64
  %50 = ptrtoint i8* %48 to i64
  %51 = sub i64 %49, %50
  %52 = trunc i64 %51 to i32
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = icmp eq i8* %57, inttoptr (i64 4294967295 to i8*)
  br i1 %58, label %64, label %59

59:                                               ; preds = %33
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %137

64:                                               ; preds = %59, %33
  %65 = load i32*, i32** %5, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = call %struct.TYPE_15__* @ioctl_GetTOC(i32* %65, i32* %66, i32 1)
  store %struct.TYPE_15__* %67, %struct.TYPE_15__** %10, align 8
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %69 = icmp eq %struct.TYPE_15__* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %167

71:                                               ; preds = %64
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %73 = call i32 @TOC_GetAudioRange(%struct.TYPE_15__* %72, i32* %12, i32* %13)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %71
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp ugt i32 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %76, %71
  %81 = load i32*, i32** %5, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @msg_Err(i32* %81, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %82, i32 %83)
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %86 = call i32 @vcddev_toc_Free(%struct.TYPE_15__* %85)
  br label %167

87:                                               ; preds = %76
  %88 = load i32, i32* %7, align 4
  %89 = add i32 %88, -1
  store i32 %89, i32* %7, align 4
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %14, align 4
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %99, align 8
  %101 = load i32, i32* %7, align 4
  %102 = add i32 %101, 1
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %15, align 4
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* %7, align 4
  %109 = add i32 %107, %108
  %110 = load i32, i32* %13, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %124

112:                                              ; preds = %87
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %13, align 4
  %117 = icmp sgt i32 %115, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %112
  %119 = load i64, i64* @CD_ROM_XA_INTERVAL, align 8
  %120 = load i32, i32* %15, align 4
  %121 = sext i32 %120 to i64
  %122 = sub nsw i64 %121, %119
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %15, align 4
  br label %124

124:                                              ; preds = %118, %112, %87
  %125 = load i32, i32* %14, align 4
  %126 = sext i32 %125 to i64
  %127 = inttoptr i64 %126 to i8*
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 0
  store i8* %127, i8** %129, align 8
  %130 = load i32, i32* %15, align 4
  %131 = load i32, i32* %14, align 4
  %132 = sub nsw i32 %130, %131
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 8
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %136 = call i32 @vcddev_toc_Free(%struct.TYPE_15__* %135)
  br label %137

137:                                              ; preds = %124, %59
  %138 = load i32, i32* @AUDIO_ES, align 4
  %139 = load i32, i32* @VLC_CODEC_S16L, align 4
  %140 = call i32 @es_format_Init(%struct.TYPE_16__* %16, i32 %138, i32 %139)
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 0
  store i32 44100, i32* %142, align 4
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 1
  store i32 2, i32* %144, align 4
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = call i32 @es_out_Add(i32* %147, %struct.TYPE_16__* %16)
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 4
  store i32 %148, i32* %150, align 4
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 3
  %153 = call i32 @date_Init(i32* %152, i32 44100, i32 1)
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 3
  %156 = load i32, i32* @VLC_TICK_0, align 4
  %157 = call i32 @date_Set(i32* %155, i32 %156)
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 2
  store i64 0, i64* %159, align 8
  %160 = load i32, i32* @Demux, align 4
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 4
  %163 = load i32, i32* @DemuxControl, align 4
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 8
  %166 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %166, i32* %4, align 4
  br label %172

167:                                              ; preds = %80, %70, %32, %23
  %168 = load i32*, i32** %5, align 8
  %169 = load i32*, i32** %6, align 8
  %170 = call i32 @ioctl_Close(i32* %168, i32* %169)
  %171 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %171, i32* %4, align 4
  br label %172

172:                                              ; preds = %167, %137
  %173 = load i32, i32* %4, align 4
  ret i32 %173
}

declare dso_local %struct.TYPE_18__* @vlc_obj_malloc(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @var_InheritInteger(i32*, i8*) #1

declare dso_local %struct.TYPE_15__* @ioctl_GetTOC(i32*, i32*, i32) #1

declare dso_local i32 @TOC_GetAudioRange(%struct.TYPE_15__*, i32*, i32*) #1

declare dso_local i32 @msg_Err(i32*, i8*, i32, i32) #1

declare dso_local i32 @vcddev_toc_Free(%struct.TYPE_15__*) #1

declare dso_local i32 @es_format_Init(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @es_out_Add(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @date_Init(i32*, i32, i32) #1

declare dso_local i32 @date_Set(i32*, i32) #1

declare dso_local i32 @ioctl_Close(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
