; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_bluray.c_blurayOpen.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_bluray.c_blurayOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { i32*, i32, i32, i32*, i32, %struct.TYPE_35__*, i32 }
%struct.TYPE_35__ = type { i32, i32, i32, i32*, i32, i32, i32*, i8*, i32, i32, %struct.TYPE_33__, i32, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_36__ = type { i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i64, i32, i32, i32, i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"bluray:\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"file:\00", align 1
@VLC_SUCCESS = common dso_local global i64 0, align 8
@VLC_ENOMEM = common dso_local global i32 0, align 4
@STILL_IMAGE_NOT_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"ts-cc-check\00", align 1
@VLC_VAR_BOOL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"ts-standard\00", align 1
@VLC_VAR_STRING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"mpeg\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"ts-pmtfix-waitdata\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"ts-patfix\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"ts-pcr-offsetfix\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"dvd\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"Path doesn't appear to be a Blu-ray\00", align 1
@.str.10 = private unnamed_addr constant [73 x i8] c"First play: %i, Top menu: %i\0AHDMV Titles: %i, BD-J Titles: %i, Other: %i\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"Disc is using AACS\00", align 1
@.str.12 = private unnamed_addr constant [87 x i8] c"This Blu-ray Disc needs a library for AACS decoding, and your system does not have it.\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"Blu-ray Disc is corrupted.\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"Missing AACS configuration file!\00", align 1
@.str.15 = private unnamed_addr constant [51 x i8] c"No valid processing key found in AACS config file.\00", align 1
@.str.16 = private unnamed_addr constant [53 x i8] c"No valid host certificate found in AACS config file.\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"AACS Host certificate revoked.\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"AACS MMC failed.\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"Disc is using BD+\00", align 1
@.str.20 = private unnamed_addr constant [86 x i8] c"This Blu-ray Disc needs a library for BD+ decoding, and your system does not have it.\00", align 1
@.str.21 = private unnamed_addr constant [71 x i8] c"Your system BD+ decoding library does not work. Missing configuration?\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"bluray-region\00", align 1
@REGION_DEFAULT = common dso_local global i8 0, align 1
@BLURAY_PLAYER_SETTING_REGION_CODE = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [15 x i8] c"audio-language\00", align 1
@BLURAY_PLAYER_SETTING_AUDIO_LANG = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [13 x i8] c"sub-language\00", align 1
@BLURAY_PLAYER_SETTING_PG_LANG = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [14 x i8] c"menu-language\00", align 1
@BLURAY_PLAYER_SETTING_MENU_LANG = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [25 x i8] c"Failed to get meta info.\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"bluray-menu\00", align 1
@.str.28 = private unnamed_addr constant [97 x i8] c"BD-J menus not supported. Playing without menus. BD-J support: %d, JVM found: %d, JVM usable: %d\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"Java required\00", align 1
@.str.30 = private unnamed_addr constant [92 x i8] c"This Blu-ray disc requires Java for menus support.%s\0AThe disc will be played without menus.\00", align 1
@.str.31 = private unnamed_addr constant [35 x i8] c"Java was not found on your system.\00", align 1
@.str.32 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@VLC_DIALOG_QUESTION_NORMAL = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [19 x i8] c"Play without Menus\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"Try anyway\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"BDJO Menu check\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.37 = private unnamed_addr constant [32 x i8] c"Incompatible Java Menu detected\00", align 1
@blurayOverlayProc = common dso_local global i32 0, align 4
@blurayArgbOverlayProc = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [66 x i8] c"Failed to start bluray playback. Please try without menu support.\00", align 1
@.str.39 = private unnamed_addr constant [27 x i8] c"Could not set the title %d\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"ts\00", align 1
@.str.41 = private unnamed_addr constant [28 x i8] c"Failed to create TS demuxer\00", align 1
@blurayControl = common dso_local global i32 0, align 4
@blurayDemux = common dso_local global i32 0, align 4
@.str.42 = private unnamed_addr constant [14 x i8] c"Blu-ray error\00", align 1
@.str.43 = private unnamed_addr constant [36 x i8] c"Failed to seek back to stream start\00", align 1
@VLC_ETIMEOUT = common dso_local global i32 0, align 4
@BLURAY_DEBUG_MASK = common dso_local global i32 0, align 4
@blurayReadBlock = common dso_local global i32 0, align 4
@bluray_DebugHandler = common dso_local global i32 0, align 4
@p_bluray_DebugObject = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_34__*)* @blurayOpen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blurayOpen(%struct.TYPE_34__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_34__*, align 8
  %4 = alloca %struct.TYPE_34__*, align 8
  %5 = alloca %struct.TYPE_35__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_36__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.TYPE_34__* %0, %struct.TYPE_34__** %3, align 8
  %13 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  store %struct.TYPE_34__* %13, %struct.TYPE_34__** %4, align 8
  store i32 0, i32* %7, align 4
  store i8* null, i8** %8, align 8
  %14 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %19, i32* %2, align 4
  br label %584

20:                                               ; preds = %1
  %21 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @strncasecmp(i32 %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %6, align 4
  %28 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %48

32:                                               ; preds = %20
  %33 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @strncasecmp(i32 %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %39, i32* %2, align 4
  br label %584

40:                                               ; preds = %32
  %41 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %42 = call i64 @probeStream(%struct.TYPE_34__* %41)
  %43 = load i64, i64* @VLC_SUCCESS, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %46, i32* %2, align 4
  br label %584

47:                                               ; preds = %40
  br label %69

48:                                               ; preds = %20
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %68, label %51

51:                                               ; preds = %48
  %52 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %57, i32* %2, align 4
  br label %584

58:                                               ; preds = %51
  %59 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @probeFile(i32 %61)
  %63 = load i64, i64* @VLC_SUCCESS, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %66, i32* %2, align 4
  br label %584

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %67, %48
  br label %69

69:                                               ; preds = %68, %47
  %70 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %71 = call %struct.TYPE_35__* @vlc_obj_calloc(%struct.TYPE_34__* %70, i32 1, i32 104)
  store %struct.TYPE_35__* %71, %struct.TYPE_35__** %5, align 8
  %72 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %72, i32 0, i32 5
  store %struct.TYPE_35__* %71, %struct.TYPE_35__** %73, align 8
  %74 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %75 = icmp ne %struct.TYPE_35__* %74, null
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = call i64 @unlikely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %69
  %81 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %81, i32* %2, align 4
  br label %584

82:                                               ; preds = %69
  %83 = load i32, i32* @STILL_IMAGE_NOT_SET, align 4
  %84 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %84, i32 0, i32 19
  store i32 %83, i32* %85, align 8
  %86 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %86, i32 0, i32 18
  store i64 0, i64* %87, align 8
  %88 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %88, i32 0, i32 17
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %91, i32 0, i32 16
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @TAB_INIT(i32 %90, i32 %93)
  %95 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %95, i32 0, i32 15
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %98, i32 0, i32 14
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @TAB_INIT(i32 %97, i32 %100)
  %102 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %102, i32 0, i32 13
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @ARRAY_INIT(i32 %104)
  %106 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %106, i32 0, i32 12
  %108 = call i32 @vlc_mouse_Init(i32* %107)
  %109 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %109, i32 0, i32 11
  %111 = call i32 @vlc_mutex_init(i32* %110)
  %112 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %112, i32 0, i32 10
  %114 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %113, i32 0, i32 0
  %115 = call i32 @vlc_mutex_init(i32* %114)
  %116 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %116, i32 0, i32 9
  %118 = call i32 @vlc_mutex_init(i32* %117)
  %119 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %120 = load i32, i32* @VLC_VAR_BOOL, align 4
  %121 = call i32 @var_Create(%struct.TYPE_34__* %119, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %120)
  %122 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %123 = call i32 @var_SetBool(%struct.TYPE_34__* %122, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %124 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %125 = load i32, i32* @VLC_VAR_STRING, align 4
  %126 = call i32 @var_Create(%struct.TYPE_34__* %124, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %125)
  %127 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %128 = call i32 @var_SetString(%struct.TYPE_34__* %127, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %129 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %130 = load i32, i32* @VLC_VAR_BOOL, align 4
  %131 = call i32 @var_Create(%struct.TYPE_34__* %129, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %130)
  %132 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %133 = call i32 @var_SetBool(%struct.TYPE_34__* %132, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %134 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %135 = load i32, i32* @VLC_VAR_BOOL, align 4
  %136 = call i32 @var_Create(%struct.TYPE_34__* %134, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %135)
  %137 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %138 = call i32 @var_SetBool(%struct.TYPE_34__* %137, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 0)
  %139 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %140 = load i32, i32* @VLC_VAR_BOOL, align 4
  %141 = call i32 @var_Create(%struct.TYPE_34__* %139, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %140)
  %142 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %143 = call i32 @var_SetBool(%struct.TYPE_34__* %142, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 0)
  %144 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %153, label %148

148:                                              ; preds = %82
  %149 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %150 = call i8* @var_InheritString(%struct.TYPE_34__* %149, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %151 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %151, i32 0, i32 7
  store i8* %150, i8** %152, align 8
  br label %160

153:                                              ; preds = %82
  %154 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = call i8* @strdup(i32 %156)
  %158 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %158, i32 0, i32 7
  store i8* %157, i8** %159, align 8
  br label %160

160:                                              ; preds = %153, %148
  %161 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %161, i32 0, i32 7
  %163 = call i32 @FindMountPoint(i8** %162)
  %164 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %164, i32 0, i32 7
  %166 = load i8*, i8** %165, align 8
  %167 = call i32* @bd_open(i8* %166, i32* null)
  %168 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %168, i32 0, i32 6
  store i32* %167, i32** %169, align 8
  %170 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %170, i32 0, i32 6
  %172 = load i32*, i32** %171, align 8
  %173 = icmp ne i32* %172, null
  br i1 %173, label %175, label %174

174:                                              ; preds = %160
  br label %554

175:                                              ; preds = %160
  %176 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %176, i32 0, i32 6
  %178 = load i32*, i32** %177, align 8
  %179 = call %struct.TYPE_36__* @bd_get_disc_info(i32* %178)
  store %struct.TYPE_36__* %179, %struct.TYPE_36__** %9, align 8
  %180 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %180, i32 0, i32 16
  %182 = load i32, i32* %181, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %192, label %184

184:                                              ; preds = %175
  %185 = load i32, i32* %6, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %184
  br label %188

188:                                              ; preds = %187
  %189 = call i8* @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  store i8* %189, i8** %8, align 8
  br label %554

190:                                              ; No predecessors!
  br label %191

191:                                              ; preds = %190, %184
  br label %554

192:                                              ; preds = %175
  %193 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %194 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %194, i32 0, i32 15
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %198 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %197, i32 0, i32 14
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %201 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %204 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %207 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %206, i32 0, i32 13
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @msg_Info(%struct.TYPE_34__* %193, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.10, i64 0, i64 0), i32 %196, i32 %199, i64 %202, i64 %205, i32 %208)
  %210 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %210, i32 0, i32 12
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %266

214:                                              ; preds = %192
  %215 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %216 = call i32 @msg_Dbg(%struct.TYPE_34__* %215, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  %217 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %218 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %217, i32 0, i32 11
  %219 = load i32, i32* %218, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %225, label %221

221:                                              ; preds = %214
  br label %222

222:                                              ; preds = %221
  %223 = call i8* @_(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.12, i64 0, i64 0))
  store i8* %223, i8** %8, align 8
  br label %554

224:                                              ; No predecessors!
  br label %225

225:                                              ; preds = %224, %214
  %226 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %227 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %226, i32 0, i32 10
  %228 = load i32, i32* %227, align 8
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %265, label %230

230:                                              ; preds = %225
  %231 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %232 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %264

235:                                              ; preds = %230
  %236 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %237 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  switch i32 %238, label %263 [
    i32 132, label %239
    i32 129, label %243
    i32 128, label %247
    i32 130, label %251
    i32 133, label %255
    i32 131, label %259
  ]

239:                                              ; preds = %235
  br label %240

240:                                              ; preds = %239
  %241 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0))
  store i8* %241, i8** %8, align 8
  br label %554

242:                                              ; No predecessors!
  br label %243

243:                                              ; preds = %235, %242
  br label %244

244:                                              ; preds = %243
  %245 = call i8* @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0))
  store i8* %245, i8** %8, align 8
  br label %554

246:                                              ; No predecessors!
  br label %247

247:                                              ; preds = %235, %246
  br label %248

248:                                              ; preds = %247
  %249 = call i8* @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.15, i64 0, i64 0))
  store i8* %249, i8** %8, align 8
  br label %554

250:                                              ; No predecessors!
  br label %251

251:                                              ; preds = %235, %250
  br label %252

252:                                              ; preds = %251
  %253 = call i8* @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.16, i64 0, i64 0))
  store i8* %253, i8** %8, align 8
  br label %554

254:                                              ; No predecessors!
  br label %255

255:                                              ; preds = %235, %254
  br label %256

256:                                              ; preds = %255
  %257 = call i8* @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0))
  store i8* %257, i8** %8, align 8
  br label %554

258:                                              ; No predecessors!
  br label %259

259:                                              ; preds = %235, %258
  br label %260

260:                                              ; preds = %259
  %261 = call i8* @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0))
  store i8* %261, i8** %8, align 8
  br label %554

262:                                              ; No predecessors!
  br label %263

263:                                              ; preds = %262, %235
  br label %264

264:                                              ; preds = %263, %230
  br label %265

265:                                              ; preds = %264, %225
  br label %266

266:                                              ; preds = %265, %192
  %267 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %268 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %267, i32 0, i32 9
  %269 = load i64, i64* %268, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %292

271:                                              ; preds = %266
  %272 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %273 = call i32 @msg_Dbg(%struct.TYPE_34__* %272, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0))
  %274 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %275 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %274, i32 0, i32 8
  %276 = load i32, i32* %275, align 8
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %282, label %278

278:                                              ; preds = %271
  br label %279

279:                                              ; preds = %278
  %280 = call i8* @_(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.20, i64 0, i64 0))
  store i8* %280, i8** %8, align 8
  br label %554

281:                                              ; No predecessors!
  br label %282

282:                                              ; preds = %281, %271
  %283 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %284 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %283, i32 0, i32 7
  %285 = load i32, i32* %284, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %291, label %287

287:                                              ; preds = %282
  br label %288

288:                                              ; preds = %287
  %289 = call i8* @_(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.21, i64 0, i64 0))
  store i8* %289, i8** %8, align 8
  br label %554

290:                                              ; No predecessors!
  br label %291

291:                                              ; preds = %290, %282
  br label %292

292:                                              ; preds = %291, %266
  %293 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %294 = call i8* @var_InheritString(%struct.TYPE_34__* %293, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0))
  store i8* %294, i8** %10, align 8
  %295 = load i8*, i8** %10, align 8
  %296 = icmp ne i8* %295, null
  br i1 %296, label %297, label %303

297:                                              ; preds = %292
  %298 = load i8*, i8** %10, align 8
  %299 = getelementptr inbounds i8, i8* %298, i64 0
  %300 = load i8, i8* %299, align 1
  %301 = sext i8 %300 to i32
  %302 = sub nsw i32 %301, 65
  br label %306

303:                                              ; preds = %292
  %304 = load i8, i8* @REGION_DEFAULT, align 1
  %305 = sext i8 %304 to i32
  br label %306

306:                                              ; preds = %303, %297
  %307 = phi i32 [ %302, %297 ], [ %305, %303 ]
  store i32 %307, i32* %11, align 4
  %308 = load i8*, i8** %10, align 8
  %309 = call i32 @free(i8* %308)
  %310 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %311 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %310, i32 0, i32 6
  %312 = load i32*, i32** %311, align 8
  %313 = load i32, i32* @BLURAY_PLAYER_SETTING_REGION_CODE, align 4
  %314 = load i32, i32* %11, align 4
  %315 = shl i32 1, %314
  %316 = call i32 @bd_set_player_setting(i32* %312, i32 %313, i32 %315)
  %317 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %318 = call i8* @DemuxGetLanguageCode(%struct.TYPE_34__* %317, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0))
  store i8* %318, i8** %12, align 8
  %319 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %320 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %319, i32 0, i32 6
  %321 = load i32*, i32** %320, align 8
  %322 = load i32, i32* @BLURAY_PLAYER_SETTING_AUDIO_LANG, align 4
  %323 = load i8*, i8** %12, align 8
  %324 = call i32 @bd_set_player_setting_str(i32* %321, i32 %322, i8* %323)
  %325 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %326 = call i8* @DemuxGetLanguageCode(%struct.TYPE_34__* %325, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0))
  store i8* %326, i8** %12, align 8
  %327 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %328 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %327, i32 0, i32 6
  %329 = load i32*, i32** %328, align 8
  %330 = load i32, i32* @BLURAY_PLAYER_SETTING_PG_LANG, align 4
  %331 = load i8*, i8** %12, align 8
  %332 = call i32 @bd_set_player_setting_str(i32* %329, i32 %330, i8* %331)
  %333 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %334 = call i8* @DemuxGetLanguageCode(%struct.TYPE_34__* %333, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0))
  store i8* %334, i8** %12, align 8
  %335 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %336 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %335, i32 0, i32 6
  %337 = load i32*, i32** %336, align 8
  %338 = load i32, i32* @BLURAY_PLAYER_SETTING_MENU_LANG, align 4
  %339 = load i8*, i8** %12, align 8
  %340 = call i32 @bd_set_player_setting_str(i32* %337, i32 %338, i8* %339)
  %341 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %342 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %341, i32 0, i32 6
  %343 = load i32*, i32** %342, align 8
  %344 = call i32 @bd_get_meta(i32* %343)
  %345 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %346 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %345, i32 0, i32 8
  store i32 %344, i32* %346, align 8
  %347 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %348 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %347, i32 0, i32 8
  %349 = load i32, i32* %348, align 8
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %354, label %351

351:                                              ; preds = %306
  %352 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %353 = call i32 @msg_Warn(%struct.TYPE_34__* %352, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i64 0, i64 0))
  br label %354

354:                                              ; preds = %351, %306
  %355 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %356 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %355, i32 0, i32 0
  store i32 -1, i32* %356, align 8
  %357 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %358 = call i32 @attachThumbnail(%struct.TYPE_34__* %357)
  %359 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %360 = call i32 @var_InheritBool(%struct.TYPE_34__* %359, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0))
  %361 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %362 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %361, i32 0, i32 1
  store i32 %360, i32* %362, align 4
  %363 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %364 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %404

367:                                              ; preds = %354
  %368 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %369 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %368, i32 0, i32 3
  %370 = load i64, i64* %369, align 8
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %372, label %404

372:                                              ; preds = %367
  %373 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %374 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %373, i32 0, i32 5
  %375 = load i32, i32* %374, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %404, label %377

377:                                              ; preds = %372
  %378 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %379 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %380 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %379, i32 0, i32 6
  %381 = load i32, i32* %380, align 8
  %382 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %383 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %382, i32 0, i32 4
  %384 = load i32, i32* %383, align 8
  %385 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %386 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %385, i32 0, i32 5
  %387 = load i32, i32* %386, align 4
  %388 = call i32 (%struct.TYPE_34__*, i8*, ...) @msg_Err(%struct.TYPE_34__* %378, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.28, i64 0, i64 0), i32 %381, i32 %384, i32 %387)
  %389 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %390 = call i8* @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i64 0, i64 0))
  %391 = call i8* @_(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.30, i64 0, i64 0))
  %392 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %393 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %392, i32 0, i32 4
  %394 = load i32, i32* %393, align 8
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %398, label %396

396:                                              ; preds = %377
  %397 = call i8* @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.31, i64 0, i64 0))
  br label %399

398:                                              ; preds = %377
  br label %399

399:                                              ; preds = %398, %396
  %400 = phi i8* [ %397, %396 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i64 0, i64 0), %398 ]
  %401 = call i32 @vlc_dialog_display_error(%struct.TYPE_34__* %389, i8* %390, i8* %391, i8* %400)
  %402 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %403 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %402, i32 0, i32 1
  store i32 0, i32* %403, align 4
  br label %404

404:                                              ; preds = %399, %372, %367, %354
  %405 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %406 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %405, i32 0, i32 3
  %407 = load i64, i64* %406, align 8
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %409, label %431

409:                                              ; preds = %404
  %410 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %411 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %410, i32 0, i32 1
  %412 = load i32, i32* %411, align 4
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %431

414:                                              ; preds = %409
  %415 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %416 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %417 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %416, i32 0, i32 7
  %418 = load i8*, i8** %417, align 8
  %419 = call i64 @BDJO_IsBlacklisted(%struct.TYPE_34__* %415, i8* %418)
  %420 = icmp ne i64 %419, 0
  br i1 %420, label %421, label %431

421:                                              ; preds = %414
  %422 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %423 = load i32, i32* @VLC_DIALOG_QUESTION_NORMAL, align 4
  %424 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i64 0, i64 0))
  %425 = call i8* @_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0))
  %426 = call i8* @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i64 0, i64 0))
  %427 = call i8* @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.37, i64 0, i64 0))
  %428 = call i32 @vlc_dialog_wait_question(%struct.TYPE_34__* %422, i32 %423, i8* %424, i8* %425, i32* null, i8* %426, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0), i8* %427)
  %429 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %430 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %429, i32 0, i32 1
  store i32 %428, i32* %430, align 4
  br label %431

431:                                              ; preds = %421, %414, %409, %404
  %432 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %433 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %434 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %433, i32 0, i32 2
  %435 = load i64, i64* %434, align 8
  %436 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %437 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %436, i32 0, i32 1
  %438 = load i64, i64* %437, align 8
  %439 = add nsw i64 %435, %438
  %440 = add nsw i64 %439, 1
  %441 = add nsw i64 %440, 1
  %442 = call i32 @blurayInitTitles(%struct.TYPE_34__* %432, i64 %441)
  %443 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %444 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %443, i32 0, i32 6
  %445 = load i32*, i32** %444, align 8
  %446 = call i32 @bd_get_event(i32* %445, i32* null)
  %447 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %448 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %447, i32 0, i32 6
  %449 = load i32*, i32** %448, align 8
  %450 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %451 = load i32, i32* @blurayOverlayProc, align 4
  %452 = call i32 @bd_register_overlay_proc(i32* %449, %struct.TYPE_34__* %450, i32 %451)
  %453 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %454 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %453, i32 0, i32 1
  %455 = load i32, i32* %454, align 4
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %457, label %480

457:                                              ; preds = %431
  %458 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %459 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %458, i32 0, i32 1
  %460 = load i64, i64* %459, align 8
  %461 = icmp ne i64 %460, 0
  br i1 %461, label %462, label %469

462:                                              ; preds = %457
  %463 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %464 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %463, i32 0, i32 6
  %465 = load i32*, i32** %464, align 8
  %466 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %467 = load i32, i32* @blurayArgbOverlayProc, align 4
  %468 = call i32 @bd_register_argb_overlay_proc(i32* %465, %struct.TYPE_34__* %466, i32 %467, i32* null)
  br label %469

469:                                              ; preds = %462, %457
  %470 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %471 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %470, i32 0, i32 6
  %472 = load i32*, i32** %471, align 8
  %473 = call i64 @bd_play(i32* %472)
  %474 = icmp eq i64 %473, 0
  br i1 %474, label %475, label %479

475:                                              ; preds = %469
  br label %476

476:                                              ; preds = %475
  %477 = call i8* @_(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.38, i64 0, i64 0))
  store i8* %477, i8** %8, align 8
  br label %554

478:                                              ; No predecessors!
  br label %479

479:                                              ; preds = %478, %469
  br label %495

480:                                              ; preds = %431
  %481 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %482 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %483 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %482, i32 0, i32 5
  %484 = load i32, i32* %483, align 4
  %485 = call i64 @bluraySetTitle(%struct.TYPE_34__* %481, i32 %484)
  %486 = load i64, i64* @VLC_SUCCESS, align 8
  %487 = icmp ne i64 %485, %486
  br i1 %487, label %488, label %494

488:                                              ; preds = %480
  %489 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %490 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %491 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %490, i32 0, i32 5
  %492 = load i32, i32* %491, align 4
  %493 = call i32 (%struct.TYPE_34__*, i8*, ...) @msg_Err(%struct.TYPE_34__* %489, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.39, i64 0, i64 0), i32 %492)
  br label %554

494:                                              ; preds = %480
  br label %495

495:                                              ; preds = %494, %479
  %496 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %497 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %496, i32 0, i32 3
  %498 = load i32*, i32** %497, align 8
  %499 = call i32 @timestamps_filter_es_out_New(i32* %498)
  %500 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %501 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %500, i32 0, i32 4
  store i32 %499, i32* %501, align 8
  %502 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %503 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %502, i32 0, i32 4
  %504 = load i32, i32* %503, align 8
  %505 = icmp ne i32 %504, 0
  %506 = xor i1 %505, true
  %507 = zext i1 %506 to i32
  %508 = call i64 @unlikely(i32 %507)
  %509 = icmp ne i64 %508, 0
  br i1 %509, label %510, label %511

510:                                              ; preds = %495
  br label %554

511:                                              ; preds = %495
  %512 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %513 = call i32 @VLC_OBJECT(%struct.TYPE_34__* %512)
  %514 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %515 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %514, i32 0, i32 4
  %516 = load i32, i32* %515, align 8
  %517 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %518 = call i32* @esOutNew(i32 %513, i32 %516, %struct.TYPE_34__* %517)
  %519 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %520 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %519, i32 0, i32 3
  store i32* %518, i32** %520, align 8
  %521 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %522 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %521, i32 0, i32 3
  %523 = load i32*, i32** %522, align 8
  %524 = icmp eq i32* %523, null
  %525 = zext i1 %524 to i32
  %526 = call i64 @unlikely(i32 %525)
  %527 = icmp ne i64 %526, 0
  br i1 %527, label %528, label %529

528:                                              ; preds = %511
  br label %554

529:                                              ; preds = %511
  %530 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %531 = call i32 @VLC_OBJECT(%struct.TYPE_34__* %530)
  %532 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %533 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %532, i32 0, i32 3
  %534 = load i32*, i32** %533, align 8
  %535 = call i32 @vlc_demux_chained_New(i32 %531, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), i32* %534)
  %536 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %537 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %536, i32 0, i32 2
  store i32 %535, i32* %537, align 8
  %538 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %539 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %538, i32 0, i32 2
  %540 = load i32, i32* %539, align 8
  %541 = icmp ne i32 %540, 0
  br i1 %541, label %545, label %542

542:                                              ; preds = %529
  %543 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %544 = call i32 (%struct.TYPE_34__*, i8*, ...) @msg_Err(%struct.TYPE_34__* %543, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.41, i64 0, i64 0))
  br label %554

545:                                              ; preds = %529
  %546 = load i32, i32* @blurayControl, align 4
  %547 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %548 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %547, i32 0, i32 2
  store i32 %546, i32* %548, align 4
  %549 = load i32, i32* @blurayDemux, align 4
  %550 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %551 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %550, i32 0, i32 1
  store i32 %549, i32* %551, align 8
  %552 = load i64, i64* @VLC_SUCCESS, align 8
  %553 = trunc i64 %552 to i32
  store i32 %553, i32* %2, align 4
  br label %584

554:                                              ; preds = %542, %528, %510, %488, %476, %288, %279, %260, %256, %252, %248, %244, %240, %222, %191, %188, %174
  %555 = load i8*, i8** %8, align 8
  %556 = icmp ne i8* %555, null
  br i1 %556, label %557, label %562

557:                                              ; preds = %554
  %558 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %559 = call i8* @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i64 0, i64 0))
  %560 = load i8*, i8** %8, align 8
  %561 = call i32 @vlc_dialog_display_error(%struct.TYPE_34__* %558, i8* %559, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0), i8* %560)
  br label %562

562:                                              ; preds = %557, %554
  %563 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %564 = call i32 @blurayClose(%struct.TYPE_34__* %563)
  %565 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %566 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %565, i32 0, i32 0
  %567 = load i32*, i32** %566, align 8
  %568 = icmp ne i32* %567, null
  br i1 %568, label %569, label %582

569:                                              ; preds = %562
  %570 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %571 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %570, i32 0, i32 0
  %572 = load i32*, i32** %571, align 8
  %573 = load i32, i32* %7, align 4
  %574 = call i64 @vlc_stream_Seek(i32* %572, i32 %573)
  %575 = load i64, i64* @VLC_SUCCESS, align 8
  %576 = icmp ne i64 %574, %575
  br i1 %576, label %577, label %581

577:                                              ; preds = %569
  %578 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %579 = call i32 (%struct.TYPE_34__*, i8*, ...) @msg_Err(%struct.TYPE_34__* %578, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.43, i64 0, i64 0))
  %580 = load i32, i32* @VLC_ETIMEOUT, align 4
  store i32 %580, i32* %2, align 4
  br label %584

581:                                              ; preds = %569
  br label %582

582:                                              ; preds = %581, %562
  %583 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %583, i32* %2, align 4
  br label %584

584:                                              ; preds = %582, %577, %545, %80, %65, %56, %45, %38, %18
  %585 = load i32, i32* %2, align 4
  ret i32 %585
}

declare dso_local i32 @strncasecmp(i32, i8*, i32) #1

declare dso_local i64 @probeStream(%struct.TYPE_34__*) #1

declare dso_local i64 @probeFile(i32) #1

declare dso_local %struct.TYPE_35__* @vlc_obj_calloc(%struct.TYPE_34__*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @TAB_INIT(i32, i32) #1

declare dso_local i32 @ARRAY_INIT(i32) #1

declare dso_local i32 @vlc_mouse_Init(i32*) #1

declare dso_local i32 @vlc_mutex_init(i32*) #1

declare dso_local i32 @var_Create(%struct.TYPE_34__*, i8*, i32) #1

declare dso_local i32 @var_SetBool(%struct.TYPE_34__*, i8*, i32) #1

declare dso_local i32 @var_SetString(%struct.TYPE_34__*, i8*, i8*) #1

declare dso_local i8* @var_InheritString(%struct.TYPE_34__*, i8*) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @FindMountPoint(i8**) #1

declare dso_local i32* @bd_open(i8*, i32*) #1

declare dso_local %struct.TYPE_36__* @bd_get_disc_info(i32*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @msg_Info(%struct.TYPE_34__*, i8*, i32, i32, i64, i64, i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_34__*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @bd_set_player_setting(i32*, i32, i32) #1

declare dso_local i8* @DemuxGetLanguageCode(%struct.TYPE_34__*, i8*) #1

declare dso_local i32 @bd_set_player_setting_str(i32*, i32, i8*) #1

declare dso_local i32 @bd_get_meta(i32*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_34__*, i8*) #1

declare dso_local i32 @attachThumbnail(%struct.TYPE_34__*) #1

declare dso_local i32 @var_InheritBool(%struct.TYPE_34__*, i8*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_34__*, i8*, ...) #1

declare dso_local i32 @vlc_dialog_display_error(%struct.TYPE_34__*, i8*, i8*, i8*) #1

declare dso_local i64 @BDJO_IsBlacklisted(%struct.TYPE_34__*, i8*) #1

declare dso_local i32 @vlc_dialog_wait_question(%struct.TYPE_34__*, i32, i8*, i8*, i32*, i8*, i8*, i8*) #1

declare dso_local i32 @blurayInitTitles(%struct.TYPE_34__*, i64) #1

declare dso_local i32 @bd_get_event(i32*, i32*) #1

declare dso_local i32 @bd_register_overlay_proc(i32*, %struct.TYPE_34__*, i32) #1

declare dso_local i32 @bd_register_argb_overlay_proc(i32*, %struct.TYPE_34__*, i32, i32*) #1

declare dso_local i64 @bd_play(i32*) #1

declare dso_local i64 @bluraySetTitle(%struct.TYPE_34__*, i32) #1

declare dso_local i32 @timestamps_filter_es_out_New(i32*) #1

declare dso_local i32* @esOutNew(i32, i32, %struct.TYPE_34__*) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_34__*) #1

declare dso_local i32 @vlc_demux_chained_New(i32, i8*, i32*) #1

declare dso_local i32 @blurayClose(%struct.TYPE_34__*) #1

declare dso_local i64 @vlc_stream_Seek(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
