; ModuleID = '/home/carl/AnghaBench/vlc/lib/extr_media_player.c_libvlc_media_player_new.c'
source_filename = "/home/carl/AnghaBench/vlc/lib/extr_media_player.c_libvlc_media_player_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, %struct.TYPE_23__*, i32* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_21__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"Not enough memory\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"rate\00", align 1
@VLC_VAR_FLOAT = common dso_local global i32 0, align 4
@VLC_VAR_DOINHERIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"sout\00", align 1
@VLC_VAR_STRING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"demux-filter\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"vout\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"window\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"gl\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"gles2\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"vmem-lock\00", align 1
@VLC_VAR_ADDRESS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"vmem-unlock\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"vmem-display\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"vmem-data\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"vmem-setup\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"vmem-cleanup\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"vmem-chroma\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"vmem-width\00", align 1
@VLC_VAR_INTEGER = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [12 x i8] c"vmem-height\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"vmem-pitch\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"vout-cb-opaque\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"vout-cb-setup\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"vout-cb-cleanup\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"vout-cb-resize-cb\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"vout-cb-update-output\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"vout-cb-swap\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"vout-cb-get-proc-address\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"vout-cb-make-current\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"vout-cb-select-plane\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"dec-dev\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"drawable-xid\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"keyboard-events\00", align 1
@VLC_VAR_BOOL = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [13 x i8] c"mouse-events\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"fullscreen\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"autoscale\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"zoom\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"aspect-ratio\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"crop\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"deinterlace\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"deinterlace-mode\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"vbi-page\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"video-filter\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"sub-source\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"sub-filter\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"marq-marquee\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"marq-color\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"marq-opacity\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"marq-position\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"marq-refresh\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"marq-size\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"marq-timeout\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"marq-x\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"marq-y\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"logo-file\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"logo-x\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"logo-y\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"logo-delay\00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"logo-repeat\00", align 1
@.str.56 = private unnamed_addr constant [13 x i8] c"logo-opacity\00", align 1
@.str.57 = private unnamed_addr constant [14 x i8] c"logo-position\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"contrast\00", align 1
@.str.59 = private unnamed_addr constant [11 x i8] c"brightness\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"hue\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"saturation\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"gamma\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"aout\00", align 1
@.str.64 = private unnamed_addr constant [13 x i8] c"audio-device\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"mute\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"volume\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"corks\00", align 1
@.str.68 = private unnamed_addr constant [13 x i8] c"audio-filter\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"role\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"amem-data\00", align 1
@.str.71 = private unnamed_addr constant [11 x i8] c"amem-setup\00", align 1
@.str.72 = private unnamed_addr constant [13 x i8] c"amem-cleanup\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"amem-play\00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c"amem-pause\00", align 1
@.str.75 = private unnamed_addr constant [12 x i8] c"amem-resume\00", align 1
@.str.76 = private unnamed_addr constant [11 x i8] c"amem-flush\00", align 1
@.str.77 = private unnamed_addr constant [11 x i8] c"amem-drain\00", align 1
@.str.78 = private unnamed_addr constant [16 x i8] c"amem-set-volume\00", align 1
@.str.79 = private unnamed_addr constant [12 x i8] c"amem-format\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"amem-rate\00", align 1
@.str.81 = private unnamed_addr constant [14 x i8] c"amem-channels\00", align 1
@.str.82 = private unnamed_addr constant [17 x i8] c"video-title-show\00", align 1
@.str.83 = private unnamed_addr constant [21 x i8] c"video-title-position\00", align 1
@.str.84 = private unnamed_addr constant [20 x i8] c"video-title-timeout\00", align 1
@.str.85 = private unnamed_addr constant [17 x i8] c"equalizer-preamp\00", align 1
@.str.86 = private unnamed_addr constant [19 x i8] c"equalizer-vlcfreqs\00", align 1
@.str.87 = private unnamed_addr constant [16 x i8] c"equalizer-bands\00", align 1
@.str.88 = private unnamed_addr constant [13 x i8] c"http-cookies\00", align 1
@VLC_PLAYER_LOCK_REENTRANT = common dso_local global i32 0, align 4
@vlc_player_cbs = common dso_local global i32 0, align 4
@vlc_player_aout_cbs = common dso_local global i32 0, align 4
@.str.89 = private unnamed_addr constant [14 x i8] c"snapshot-file\00", align 1
@snapshot_was_taken = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_22__* @libvlc_media_player_new(%struct.TYPE_23__* %0) #0 {
  %2 = alloca %struct.TYPE_22__*, align 8
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_21__, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  %6 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %7 = call i32 @assert(%struct.TYPE_23__* %6)
  %8 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.TYPE_22__* @vlc_object_create(i32 %10, i32 40)
  store %struct.TYPE_22__* %11, %struct.TYPE_22__** %4, align 8
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %13 = icmp eq %struct.TYPE_22__* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = call i32 @libvlc_printerr(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %2, align 8
  br label %474

19:                                               ; preds = %1
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %21 = load i32, i32* @VLC_VAR_FLOAT, align 4
  %22 = load i32, i32* @VLC_VAR_DOINHERIT, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @var_Create(%struct.TYPE_22__* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %26 = load i32, i32* @VLC_VAR_STRING, align 4
  %27 = call i32 @var_Create(%struct.TYPE_22__* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %29 = load i32, i32* @VLC_VAR_STRING, align 4
  %30 = call i32 @var_Create(%struct.TYPE_22__* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %29)
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %32 = load i32, i32* @VLC_VAR_STRING, align 4
  %33 = load i32, i32* @VLC_VAR_DOINHERIT, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @var_Create(%struct.TYPE_22__* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %34)
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %37 = load i32, i32* @VLC_VAR_STRING, align 4
  %38 = call i32 @var_Create(%struct.TYPE_22__* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %37)
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %40 = load i32, i32* @VLC_VAR_STRING, align 4
  %41 = call i32 @var_Create(%struct.TYPE_22__* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %40)
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %43 = load i32, i32* @VLC_VAR_STRING, align 4
  %44 = call i32 @var_Create(%struct.TYPE_22__* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %43)
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %46 = load i32, i32* @VLC_VAR_ADDRESS, align 4
  %47 = call i32 @var_Create(%struct.TYPE_22__* %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %46)
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %49 = load i32, i32* @VLC_VAR_ADDRESS, align 4
  %50 = call i32 @var_Create(%struct.TYPE_22__* %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %49)
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %52 = load i32, i32* @VLC_VAR_ADDRESS, align 4
  %53 = call i32 @var_Create(%struct.TYPE_22__* %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %52)
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %55 = load i32, i32* @VLC_VAR_ADDRESS, align 4
  %56 = call i32 @var_Create(%struct.TYPE_22__* %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 %55)
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %58 = load i32, i32* @VLC_VAR_ADDRESS, align 4
  %59 = call i32 @var_Create(%struct.TYPE_22__* %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32 %58)
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %61 = load i32, i32* @VLC_VAR_ADDRESS, align 4
  %62 = call i32 @var_Create(%struct.TYPE_22__* %60, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i32 %61)
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %64 = load i32, i32* @VLC_VAR_STRING, align 4
  %65 = load i32, i32* @VLC_VAR_DOINHERIT, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @var_Create(%struct.TYPE_22__* %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32 %66)
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %69 = load i32, i32* @VLC_VAR_INTEGER, align 4
  %70 = load i32, i32* @VLC_VAR_DOINHERIT, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @var_Create(%struct.TYPE_22__* %68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i32 %71)
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %74 = load i32, i32* @VLC_VAR_INTEGER, align 4
  %75 = load i32, i32* @VLC_VAR_DOINHERIT, align 4
  %76 = or i32 %74, %75
  %77 = call i32 @var_Create(%struct.TYPE_22__* %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i32 %76)
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %79 = load i32, i32* @VLC_VAR_INTEGER, align 4
  %80 = load i32, i32* @VLC_VAR_DOINHERIT, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @var_Create(%struct.TYPE_22__* %78, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i32 %81)
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %84 = load i32, i32* @VLC_VAR_ADDRESS, align 4
  %85 = call i32 @var_Create(%struct.TYPE_22__* %83, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i32 %84)
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %87 = load i32, i32* @VLC_VAR_ADDRESS, align 4
  %88 = call i32 @var_Create(%struct.TYPE_22__* %86, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i32 %87)
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %90 = load i32, i32* @VLC_VAR_ADDRESS, align 4
  %91 = call i32 @var_Create(%struct.TYPE_22__* %89, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i32 %90)
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %93 = load i32, i32* @VLC_VAR_ADDRESS, align 4
  %94 = call i32 @var_Create(%struct.TYPE_22__* %92, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0), i32 %93)
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %96 = load i32, i32* @VLC_VAR_ADDRESS, align 4
  %97 = call i32 @var_Create(%struct.TYPE_22__* %95, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i64 0, i64 0), i32 %96)
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %99 = load i32, i32* @VLC_VAR_ADDRESS, align 4
  %100 = call i32 @var_Create(%struct.TYPE_22__* %98, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0), i32 %99)
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %102 = load i32, i32* @VLC_VAR_ADDRESS, align 4
  %103 = call i32 @var_Create(%struct.TYPE_22__* %101, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0), i32 %102)
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %105 = load i32, i32* @VLC_VAR_ADDRESS, align 4
  %106 = call i32 @var_Create(%struct.TYPE_22__* %104, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i64 0, i64 0), i32 %105)
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %108 = load i32, i32* @VLC_VAR_ADDRESS, align 4
  %109 = call i32 @var_Create(%struct.TYPE_22__* %107, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i64 0, i64 0), i32 %108)
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %111 = load i32, i32* @VLC_VAR_STRING, align 4
  %112 = call i32 @var_Create(%struct.TYPE_22__* %110, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0), i32 %111)
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %114 = load i32, i32* @VLC_VAR_INTEGER, align 4
  %115 = call i32 @var_Create(%struct.TYPE_22__* %113, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0), i32 %114)
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %117 = load i32, i32* @VLC_VAR_BOOL, align 4
  %118 = call i32 @var_Create(%struct.TYPE_22__* %116, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0), i32 %117)
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %120 = call i32 @var_SetBool(%struct.TYPE_22__* %119, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0), i32 1)
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %122 = load i32, i32* @VLC_VAR_BOOL, align 4
  %123 = call i32 @var_Create(%struct.TYPE_22__* %121, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0), i32 %122)
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %125 = call i32 @var_SetBool(%struct.TYPE_22__* %124, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0), i32 1)
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %127 = load i32, i32* @VLC_VAR_BOOL, align 4
  %128 = call i32 @var_Create(%struct.TYPE_22__* %126, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0), i32 %127)
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %130 = load i32, i32* @VLC_VAR_BOOL, align 4
  %131 = load i32, i32* @VLC_VAR_DOINHERIT, align 4
  %132 = or i32 %130, %131
  %133 = call i32 @var_Create(%struct.TYPE_22__* %129, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0), i32 %132)
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %135 = load i32, i32* @VLC_VAR_FLOAT, align 4
  %136 = load i32, i32* @VLC_VAR_DOINHERIT, align 4
  %137 = or i32 %135, %136
  %138 = call i32 @var_Create(%struct.TYPE_22__* %134, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), i32 %137)
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %140 = load i32, i32* @VLC_VAR_STRING, align 4
  %141 = call i32 @var_Create(%struct.TYPE_22__* %139, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i64 0, i64 0), i32 %140)
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %143 = load i32, i32* @VLC_VAR_STRING, align 4
  %144 = call i32 @var_Create(%struct.TYPE_22__* %142, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0), i32 %143)
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %146 = load i32, i32* @VLC_VAR_INTEGER, align 4
  %147 = load i32, i32* @VLC_VAR_DOINHERIT, align 4
  %148 = or i32 %146, %147
  %149 = call i32 @var_Create(%struct.TYPE_22__* %145, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i32 %148)
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %151 = load i32, i32* @VLC_VAR_STRING, align 4
  %152 = load i32, i32* @VLC_VAR_DOINHERIT, align 4
  %153 = or i32 %151, %152
  %154 = call i32 @var_Create(%struct.TYPE_22__* %150, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i64 0, i64 0), i32 %153)
  %155 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %156 = load i32, i32* @VLC_VAR_INTEGER, align 4
  %157 = call i32 @var_Create(%struct.TYPE_22__* %155, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i64 0, i64 0), i32 %156)
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %159 = call i32 @var_SetInteger(%struct.TYPE_22__* %158, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i64 0, i64 0), i32 100)
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %161 = load i32, i32* @VLC_VAR_STRING, align 4
  %162 = load i32, i32* @VLC_VAR_DOINHERIT, align 4
  %163 = or i32 %161, %162
  %164 = call i32 @var_Create(%struct.TYPE_22__* %160, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i64 0, i64 0), i32 %163)
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %166 = load i32, i32* @VLC_VAR_STRING, align 4
  %167 = load i32, i32* @VLC_VAR_DOINHERIT, align 4
  %168 = or i32 %166, %167
  %169 = call i32 @var_Create(%struct.TYPE_22__* %165, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i64 0, i64 0), i32 %168)
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %171 = load i32, i32* @VLC_VAR_STRING, align 4
  %172 = load i32, i32* @VLC_VAR_DOINHERIT, align 4
  %173 = or i32 %171, %172
  %174 = call i32 @var_Create(%struct.TYPE_22__* %170, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0), i32 %173)
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %176 = load i32, i32* @VLC_VAR_STRING, align 4
  %177 = call i32 @var_Create(%struct.TYPE_22__* %175, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i64 0, i64 0), i32 %176)
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %179 = load i32, i32* @VLC_VAR_INTEGER, align 4
  %180 = load i32, i32* @VLC_VAR_DOINHERIT, align 4
  %181 = or i32 %179, %180
  %182 = call i32 @var_Create(%struct.TYPE_22__* %178, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i64 0, i64 0), i32 %181)
  %183 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %184 = load i32, i32* @VLC_VAR_INTEGER, align 4
  %185 = load i32, i32* @VLC_VAR_DOINHERIT, align 4
  %186 = or i32 %184, %185
  %187 = call i32 @var_Create(%struct.TYPE_22__* %183, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.44, i64 0, i64 0), i32 %186)
  %188 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %189 = load i32, i32* @VLC_VAR_INTEGER, align 4
  %190 = load i32, i32* @VLC_VAR_DOINHERIT, align 4
  %191 = or i32 %189, %190
  %192 = call i32 @var_Create(%struct.TYPE_22__* %188, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.45, i64 0, i64 0), i32 %191)
  %193 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %194 = load i32, i32* @VLC_VAR_INTEGER, align 4
  %195 = load i32, i32* @VLC_VAR_DOINHERIT, align 4
  %196 = or i32 %194, %195
  %197 = call i32 @var_Create(%struct.TYPE_22__* %193, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46, i64 0, i64 0), i32 %196)
  %198 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %199 = load i32, i32* @VLC_VAR_INTEGER, align 4
  %200 = load i32, i32* @VLC_VAR_DOINHERIT, align 4
  %201 = or i32 %199, %200
  %202 = call i32 @var_Create(%struct.TYPE_22__* %198, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i64 0, i64 0), i32 %201)
  %203 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %204 = load i32, i32* @VLC_VAR_INTEGER, align 4
  %205 = load i32, i32* @VLC_VAR_DOINHERIT, align 4
  %206 = or i32 %204, %205
  %207 = call i32 @var_Create(%struct.TYPE_22__* %203, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.48, i64 0, i64 0), i32 %206)
  %208 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %209 = load i32, i32* @VLC_VAR_INTEGER, align 4
  %210 = load i32, i32* @VLC_VAR_DOINHERIT, align 4
  %211 = or i32 %209, %210
  %212 = call i32 @var_Create(%struct.TYPE_22__* %208, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i64 0, i64 0), i32 %211)
  %213 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %214 = load i32, i32* @VLC_VAR_INTEGER, align 4
  %215 = load i32, i32* @VLC_VAR_DOINHERIT, align 4
  %216 = or i32 %214, %215
  %217 = call i32 @var_Create(%struct.TYPE_22__* %213, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i64 0, i64 0), i32 %216)
  %218 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %219 = load i32, i32* @VLC_VAR_STRING, align 4
  %220 = call i32 @var_Create(%struct.TYPE_22__* %218, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i64 0, i64 0), i32 %219)
  %221 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %222 = load i32, i32* @VLC_VAR_INTEGER, align 4
  %223 = load i32, i32* @VLC_VAR_DOINHERIT, align 4
  %224 = or i32 %222, %223
  %225 = call i32 @var_Create(%struct.TYPE_22__* %221, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0), i32 %224)
  %226 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %227 = load i32, i32* @VLC_VAR_INTEGER, align 4
  %228 = load i32, i32* @VLC_VAR_DOINHERIT, align 4
  %229 = or i32 %227, %228
  %230 = call i32 @var_Create(%struct.TYPE_22__* %226, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i64 0, i64 0), i32 %229)
  %231 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %232 = load i32, i32* @VLC_VAR_INTEGER, align 4
  %233 = load i32, i32* @VLC_VAR_DOINHERIT, align 4
  %234 = or i32 %232, %233
  %235 = call i32 @var_Create(%struct.TYPE_22__* %231, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i64 0, i64 0), i32 %234)
  %236 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %237 = load i32, i32* @VLC_VAR_INTEGER, align 4
  %238 = load i32, i32* @VLC_VAR_DOINHERIT, align 4
  %239 = or i32 %237, %238
  %240 = call i32 @var_Create(%struct.TYPE_22__* %236, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.55, i64 0, i64 0), i32 %239)
  %241 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %242 = load i32, i32* @VLC_VAR_INTEGER, align 4
  %243 = load i32, i32* @VLC_VAR_DOINHERIT, align 4
  %244 = or i32 %242, %243
  %245 = call i32 @var_Create(%struct.TYPE_22__* %241, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i64 0, i64 0), i32 %244)
  %246 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %247 = load i32, i32* @VLC_VAR_INTEGER, align 4
  %248 = load i32, i32* @VLC_VAR_DOINHERIT, align 4
  %249 = or i32 %247, %248
  %250 = call i32 @var_Create(%struct.TYPE_22__* %246, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.57, i64 0, i64 0), i32 %249)
  %251 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %252 = load i32, i32* @VLC_VAR_FLOAT, align 4
  %253 = load i32, i32* @VLC_VAR_DOINHERIT, align 4
  %254 = or i32 %252, %253
  %255 = call i32 @var_Create(%struct.TYPE_22__* %251, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i64 0, i64 0), i32 %254)
  %256 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %257 = load i32, i32* @VLC_VAR_FLOAT, align 4
  %258 = load i32, i32* @VLC_VAR_DOINHERIT, align 4
  %259 = or i32 %257, %258
  %260 = call i32 @var_Create(%struct.TYPE_22__* %256, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.59, i64 0, i64 0), i32 %259)
  %261 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %262 = load i32, i32* @VLC_VAR_FLOAT, align 4
  %263 = load i32, i32* @VLC_VAR_DOINHERIT, align 4
  %264 = or i32 %262, %263
  %265 = call i32 @var_Create(%struct.TYPE_22__* %261, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i64 0, i64 0), i32 %264)
  %266 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %267 = load i32, i32* @VLC_VAR_FLOAT, align 4
  %268 = load i32, i32* @VLC_VAR_DOINHERIT, align 4
  %269 = or i32 %267, %268
  %270 = call i32 @var_Create(%struct.TYPE_22__* %266, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.61, i64 0, i64 0), i32 %269)
  %271 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %272 = load i32, i32* @VLC_VAR_FLOAT, align 4
  %273 = load i32, i32* @VLC_VAR_DOINHERIT, align 4
  %274 = or i32 %272, %273
  %275 = call i32 @var_Create(%struct.TYPE_22__* %271, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i64 0, i64 0), i32 %274)
  %276 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %277 = load i32, i32* @VLC_VAR_STRING, align 4
  %278 = load i32, i32* @VLC_VAR_DOINHERIT, align 4
  %279 = or i32 %277, %278
  %280 = call i32 @var_Create(%struct.TYPE_22__* %276, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i64 0, i64 0), i32 %279)
  %281 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %282 = load i32, i32* @VLC_VAR_STRING, align 4
  %283 = call i32 @var_Create(%struct.TYPE_22__* %281, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.64, i64 0, i64 0), i32 %282)
  %284 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %285 = load i32, i32* @VLC_VAR_BOOL, align 4
  %286 = call i32 @var_Create(%struct.TYPE_22__* %284, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i64 0, i64 0), i32 %285)
  %287 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %288 = load i32, i32* @VLC_VAR_FLOAT, align 4
  %289 = call i32 @var_Create(%struct.TYPE_22__* %287, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i64 0, i64 0), i32 %288)
  %290 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %291 = load i32, i32* @VLC_VAR_INTEGER, align 4
  %292 = call i32 @var_Create(%struct.TYPE_22__* %290, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i64 0, i64 0), i32 %291)
  %293 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %294 = load i32, i32* @VLC_VAR_STRING, align 4
  %295 = call i32 @var_Create(%struct.TYPE_22__* %293, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.68, i64 0, i64 0), i32 %294)
  %296 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %297 = load i32, i32* @VLC_VAR_STRING, align 4
  %298 = load i32, i32* @VLC_VAR_DOINHERIT, align 4
  %299 = or i32 %297, %298
  %300 = call i32 @var_Create(%struct.TYPE_22__* %296, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i64 0, i64 0), i32 %299)
  %301 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %302 = load i32, i32* @VLC_VAR_ADDRESS, align 4
  %303 = call i32 @var_Create(%struct.TYPE_22__* %301, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i64 0, i64 0), i32 %302)
  %304 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %305 = load i32, i32* @VLC_VAR_ADDRESS, align 4
  %306 = call i32 @var_Create(%struct.TYPE_22__* %304, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.71, i64 0, i64 0), i32 %305)
  %307 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %308 = load i32, i32* @VLC_VAR_ADDRESS, align 4
  %309 = call i32 @var_Create(%struct.TYPE_22__* %307, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.72, i64 0, i64 0), i32 %308)
  %310 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %311 = load i32, i32* @VLC_VAR_ADDRESS, align 4
  %312 = call i32 @var_Create(%struct.TYPE_22__* %310, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.73, i64 0, i64 0), i32 %311)
  %313 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %314 = load i32, i32* @VLC_VAR_ADDRESS, align 4
  %315 = call i32 @var_Create(%struct.TYPE_22__* %313, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.74, i64 0, i64 0), i32 %314)
  %316 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %317 = load i32, i32* @VLC_VAR_ADDRESS, align 4
  %318 = call i32 @var_Create(%struct.TYPE_22__* %316, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.75, i64 0, i64 0), i32 %317)
  %319 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %320 = load i32, i32* @VLC_VAR_ADDRESS, align 4
  %321 = call i32 @var_Create(%struct.TYPE_22__* %319, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.76, i64 0, i64 0), i32 %320)
  %322 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %323 = load i32, i32* @VLC_VAR_ADDRESS, align 4
  %324 = call i32 @var_Create(%struct.TYPE_22__* %322, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.77, i64 0, i64 0), i32 %323)
  %325 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %326 = load i32, i32* @VLC_VAR_ADDRESS, align 4
  %327 = call i32 @var_Create(%struct.TYPE_22__* %325, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.78, i64 0, i64 0), i32 %326)
  %328 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %329 = load i32, i32* @VLC_VAR_STRING, align 4
  %330 = load i32, i32* @VLC_VAR_DOINHERIT, align 4
  %331 = or i32 %329, %330
  %332 = call i32 @var_Create(%struct.TYPE_22__* %328, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.79, i64 0, i64 0), i32 %331)
  %333 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %334 = load i32, i32* @VLC_VAR_INTEGER, align 4
  %335 = load i32, i32* @VLC_VAR_DOINHERIT, align 4
  %336 = or i32 %334, %335
  %337 = call i32 @var_Create(%struct.TYPE_22__* %333, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.80, i64 0, i64 0), i32 %336)
  %338 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %339 = load i32, i32* @VLC_VAR_INTEGER, align 4
  %340 = load i32, i32* @VLC_VAR_DOINHERIT, align 4
  %341 = or i32 %339, %340
  %342 = call i32 @var_Create(%struct.TYPE_22__* %338, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.81, i64 0, i64 0), i32 %341)
  %343 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %344 = load i32, i32* @VLC_VAR_BOOL, align 4
  %345 = call i32 @var_Create(%struct.TYPE_22__* %343, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.82, i64 0, i64 0), i32 %344)
  %346 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %347 = load i32, i32* @VLC_VAR_INTEGER, align 4
  %348 = call i32 @var_Create(%struct.TYPE_22__* %346, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.83, i64 0, i64 0), i32 %347)
  %349 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %350 = load i32, i32* @VLC_VAR_INTEGER, align 4
  %351 = call i32 @var_Create(%struct.TYPE_22__* %349, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.84, i64 0, i64 0), i32 %350)
  %352 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %353 = load i32, i32* @VLC_VAR_FLOAT, align 4
  %354 = call i32 @var_Create(%struct.TYPE_22__* %352, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.85, i64 0, i64 0), i32 %353)
  %355 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %356 = load i32, i32* @VLC_VAR_BOOL, align 4
  %357 = call i32 @var_Create(%struct.TYPE_22__* %355, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.86, i64 0, i64 0), i32 %356)
  %358 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %359 = load i32, i32* @VLC_VAR_STRING, align 4
  %360 = call i32 @var_Create(%struct.TYPE_22__* %358, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.87, i64 0, i64 0), i32 %359)
  %361 = call i32 (...) @vlc_http_cookies_new()
  %362 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 0
  store i32 %361, i32* %362, align 4
  %363 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 0
  %364 = load i32, i32* %363, align 4
  %365 = call i64 @likely(i32 %364)
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %376

367:                                              ; preds = %19
  %368 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %369 = load i32, i32* @VLC_VAR_ADDRESS, align 4
  %370 = call i32 @var_Create(%struct.TYPE_22__* %368, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.88, i64 0, i64 0), i32 %369)
  %371 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %372 = load i32, i32* @VLC_VAR_ADDRESS, align 4
  %373 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 0
  %374 = load i32, i32* %373, align 4
  %375 = call i32 @var_SetChecked(%struct.TYPE_22__* %371, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.88, i64 0, i64 0), i32 %372, i32 %374)
  br label %376

376:                                              ; preds = %367, %19
  %377 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %378 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %377, i32 0, i32 6
  store i32* null, i32** %378, align 8
  %379 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %380 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %381 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %380, i32 0, i32 5
  store %struct.TYPE_23__* %379, %struct.TYPE_23__** %381, align 8
  %382 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %383 = call i32 @VLC_OBJECT(%struct.TYPE_22__* %382)
  %384 = load i32, i32* @VLC_PLAYER_LOCK_REENTRANT, align 4
  %385 = call i32 @vlc_player_New(i32 %383, i32 %384, i32* null, i32* null)
  %386 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %387 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %386, i32 0, i32 1
  store i32 %385, i32* %387, align 4
  %388 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %389 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %388, i32 0, i32 1
  %390 = load i32, i32* %389, align 4
  %391 = icmp ne i32 %390, 0
  %392 = xor i1 %391, true
  %393 = zext i1 %392 to i32
  %394 = call i64 @unlikely(i32 %393)
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %396, label %397

396:                                              ; preds = %376
  br label %471

397:                                              ; preds = %376
  %398 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %399 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %398, i32 0, i32 1
  %400 = load i32, i32* %399, align 4
  %401 = call i32 @vlc_player_Lock(i32 %400)
  %402 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %403 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %402, i32 0, i32 1
  %404 = load i32, i32* %403, align 4
  %405 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %406 = call i32 @vlc_player_AddListener(i32 %404, i32* @vlc_player_cbs, %struct.TYPE_22__* %405)
  %407 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %408 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %407, i32 0, i32 2
  store i32 %406, i32* %408, align 8
  %409 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %410 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %409, i32 0, i32 2
  %411 = load i32, i32* %410, align 8
  %412 = icmp ne i32 %411, 0
  %413 = xor i1 %412, true
  %414 = zext i1 %413 to i32
  %415 = call i64 @unlikely(i32 %414)
  %416 = icmp ne i64 %415, 0
  br i1 %416, label %417, label %418

417:                                              ; preds = %397
  br label %462

418:                                              ; preds = %397
  %419 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %420 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %419, i32 0, i32 1
  %421 = load i32, i32* %420, align 4
  %422 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %423 = call i32 @vlc_player_aout_AddListener(i32 %421, i32* @vlc_player_aout_cbs, %struct.TYPE_22__* %422)
  %424 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %425 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %424, i32 0, i32 4
  store i32 %423, i32* %425, align 8
  %426 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %427 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %426, i32 0, i32 4
  %428 = load i32, i32* %427, align 8
  %429 = icmp ne i32 %428, 0
  %430 = xor i1 %429, true
  %431 = zext i1 %430 to i32
  %432 = call i64 @unlikely(i32 %431)
  %433 = icmp ne i64 %432, 0
  br i1 %433, label %434, label %435

434:                                              ; preds = %418
  br label %454

435:                                              ; preds = %418
  %436 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %437 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %436, i32 0, i32 1
  %438 = load i32, i32* %437, align 4
  %439 = call i32 @vlc_player_Unlock(i32 %438)
  %440 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %441 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %440, i32 0, i32 0
  store i32 1, i32* %441, align 8
  %442 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %443 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %442, i32 0, i32 3
  %444 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %445 = call i32 @libvlc_event_manager_init(i32* %443, %struct.TYPE_22__* %444)
  %446 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %447 = call i32 @vlc_object_instance(%struct.TYPE_22__* %446)
  %448 = load i32, i32* @snapshot_was_taken, align 4
  %449 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %450 = call i32 @var_AddCallback(i32 %447, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.89, i64 0, i64 0), i32 %448, %struct.TYPE_22__* %449)
  %451 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %452 = call i32 @libvlc_retain(%struct.TYPE_23__* %451)
  %453 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_22__* %453, %struct.TYPE_22__** %2, align 8
  br label %474

454:                                              ; preds = %434
  %455 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %456 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %455, i32 0, i32 1
  %457 = load i32, i32* %456, align 4
  %458 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %459 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %458, i32 0, i32 2
  %460 = load i32, i32* %459, align 8
  %461 = call i32 @vlc_player_RemoveListener(i32 %457, i32 %460)
  br label %462

462:                                              ; preds = %454, %417
  %463 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %464 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %463, i32 0, i32 1
  %465 = load i32, i32* %464, align 4
  %466 = call i32 @vlc_player_Unlock(i32 %465)
  %467 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %468 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %467, i32 0, i32 1
  %469 = load i32, i32* %468, align 4
  %470 = call i32 @vlc_player_Delete(i32 %469)
  br label %471

471:                                              ; preds = %462, %396
  %472 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %473 = call i32 @vlc_object_delete(%struct.TYPE_22__* %472)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %2, align 8
  br label %474

474:                                              ; preds = %471, %435, %17
  %475 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  ret %struct.TYPE_22__* %475
}

declare dso_local i32 @assert(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_22__* @vlc_object_create(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @libvlc_printerr(i8*) #1

declare dso_local i32 @var_Create(%struct.TYPE_22__*, i8*, i32) #1

declare dso_local i32 @var_SetBool(%struct.TYPE_22__*, i8*, i32) #1

declare dso_local i32 @var_SetInteger(%struct.TYPE_22__*, i8*, i32) #1

declare dso_local i32 @vlc_http_cookies_new(...) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @var_SetChecked(%struct.TYPE_22__*, i8*, i32, i32) #1

declare dso_local i32 @vlc_player_New(i32, i32, i32*, i32*) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_22__*) #1

declare dso_local i32 @vlc_player_Lock(i32) #1

declare dso_local i32 @vlc_player_AddListener(i32, i32*, %struct.TYPE_22__*) #1

declare dso_local i32 @vlc_player_aout_AddListener(i32, i32*, %struct.TYPE_22__*) #1

declare dso_local i32 @vlc_player_Unlock(i32) #1

declare dso_local i32 @libvlc_event_manager_init(i32*, %struct.TYPE_22__*) #1

declare dso_local i32 @var_AddCallback(i32, i8*, i32, %struct.TYPE_22__*) #1

declare dso_local i32 @vlc_object_instance(%struct.TYPE_22__*) #1

declare dso_local i32 @libvlc_retain(%struct.TYPE_23__*) #1

declare dso_local i32 @vlc_player_RemoveListener(i32, i32) #1

declare dso_local i32 @vlc_player_Delete(i32) #1

declare dso_local i32 @vlc_object_delete(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
