; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_dc1394.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_dc1394.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32*, i32, %struct.TYPE_17__*, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i64, i32, i64, i32* }
%struct.TYPE_15__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32, i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@Demux = common dso_local global i32 0, align 4
@Control = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@DC1394_VIDEO_MODE_640x480_YUV422 = common dso_local global i32 0, align 4
@DC1394_FRAMERATE_15 = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"Bad MRL, please check the option line (MRL was: %s)\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to initialise libdc1394\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"No camera found !!\00", align 1
@DC1394_SUCCESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"Unable to reset IEEE 1394 bus\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Successfully reset IEEE 1394 bus\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Unable to reset camera\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"Unable to print camera info\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Unable to get feature set\00", align 1
@DC1394_FEATURE_FOCUS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"Unable to set initial focus to %u\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"Initial focus set to %u\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"Unable to set initial brightness to %u\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"Initial brightness set to %u\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"Unable to set framerate\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"Unable to set video mode\00", align 1
@DC1394_ISO_SPEED_400 = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [24 x i8] c"Unable to set iso speed\00", align 1
@DC1394_CAPTURE_FLAGS_DEFAULT = common dso_local global i32 0, align 4
@DC1394_NO_BANDWIDTH = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [47 x i8] c"No bandwidth: try adding the \22resetbus\22 option\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"Unable to setup capture\00", align 1
@VIDEO_ES = common dso_local global i32 0, align 4
@VLC_CODEC_UYVY = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [31 x i8] c"Added new video es %4.4s %dx%d\00", align 1
@DC1394_ON = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [40 x i8] c"Unable to start camera iso transmission\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"Set iso transmission\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_15__, align 4
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = bitcast i32* %8 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %9, %struct.TYPE_16__** %4, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %15, i32* %2, align 4
  br label %349

16:                                               ; preds = %1
  %17 = load i32, i32* @Demux, align 4
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @Control, align 4
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = call %struct.TYPE_17__* @vlc_obj_calloc(i32* %23, i32 1, i32 80)
  store %struct.TYPE_17__* %24, %struct.TYPE_17__** %5, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 2
  store %struct.TYPE_17__* %24, %struct.TYPE_17__** %26, align 8
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %28 = icmp ne %struct.TYPE_17__* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %16
  %30 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %30, i32* %2, align 4
  br label %349

31:                                               ; preds = %16
  %32 = call i32 @memset(%struct.TYPE_15__* %6, i32 0, i32 12)
  %33 = load i32, i32* @DC1394_VIDEO_MODE_640x480_YUV422, align 4
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 8
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  store i32 640, i32* %37, align 8
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 1
  store i32 480, i32* %39, align 4
  %40 = load i32, i32* @DC1394_FRAMERATE_15, align 4
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 9
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 2
  store i32 200, i32* %44, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 3
  store i32 0, i32* %46, align 4
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 13
  store i32* null, i32** %48, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 6
  store i32* null, i32** %50, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 4
  store i32 -1, i32* %52, align 8
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 5
  store i32 1, i32* %54, align 4
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 12
  store i64 0, i64* %56, align 8
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %58 = call i64 @process_options(%struct.TYPE_16__* %57)
  %59 = load i64, i64* @VLC_SUCCESS, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %31
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 (%struct.TYPE_16__*, i8*, ...) @msg_Err(%struct.TYPE_16__* %62, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %67, i32* %2, align 4
  br label %349

68:                                               ; preds = %31
  %69 = call i32* (...) @dc1394_new()
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 13
  store i32* %69, i32** %71, align 8
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 13
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %68
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %78 = call i32 (%struct.TYPE_16__*, i8*, ...) @msg_Err(%struct.TYPE_16__* %77, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %79, i32* %2, align 4
  br label %349

80:                                               ; preds = %68
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %83 = call i64 @FindCamera(%struct.TYPE_17__* %81, %struct.TYPE_16__* %82)
  %84 = load i64, i64* @VLC_SUCCESS, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %80
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 13
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @dc1394_free(i32* %89)
  %91 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %91, i32* %2, align 4
  br label %349

92:                                               ; preds = %80
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 6
  %95 = load i32*, i32** %94, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %105, label %97

97:                                               ; preds = %92
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %99 = call i32 (%struct.TYPE_16__*, i8*, ...) @msg_Err(%struct.TYPE_16__* %98, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 13
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @dc1394_free(i32* %102)
  %104 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %104, i32* %2, align 4
  br label %349

105:                                              ; preds = %92
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 12
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %127

110:                                              ; preds = %105
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 6
  %113 = load i32*, i32** %112, align 8
  %114 = call i64 @dc1394_reset_bus(i32* %113)
  %115 = load i64, i64* @DC1394_SUCCESS, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %110
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %119 = call i32 (%struct.TYPE_16__*, i8*, ...) @msg_Err(%struct.TYPE_16__* %118, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %120 = load i32*, i32** %3, align 8
  %121 = call i32 @Close(i32* %120)
  %122 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %122, i32* %2, align 4
  br label %349

123:                                              ; preds = %110
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %125 = call i32 (%struct.TYPE_16__*, i8*, ...) @msg_Dbg(%struct.TYPE_16__* %124, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %126

126:                                              ; preds = %123
  br label %127

127:                                              ; preds = %126, %105
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 6
  %130 = load i32*, i32** %129, align 8
  %131 = call i64 @dc1394_camera_reset(i32* %130)
  %132 = load i64, i64* @DC1394_SUCCESS, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %140

134:                                              ; preds = %127
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %136 = call i32 (%struct.TYPE_16__*, i8*, ...) @msg_Err(%struct.TYPE_16__* %135, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %137 = load i32*, i32** %3, align 8
  %138 = call i32 @Close(i32* %137)
  %139 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %139, i32* %2, align 4
  br label %349

140:                                              ; preds = %127
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 6
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* @stderr, align 4
  %145 = call i64 @dc1394_camera_print_info(i32* %143, i32 %144)
  %146 = load i64, i64* @DC1394_SUCCESS, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %154

148:                                              ; preds = %140
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %150 = call i32 (%struct.TYPE_16__*, i8*, ...) @msg_Err(%struct.TYPE_16__* %149, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %151 = load i32*, i32** %3, align 8
  %152 = call i32 @Close(i32* %151)
  %153 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %153, i32* %2, align 4
  br label %349

154:                                              ; preds = %140
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 6
  %157 = load i32*, i32** %156, align 8
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 11
  %160 = call i64 @dc1394_feature_get_all(i32* %157, i32* %159)
  %161 = load i64, i64* @DC1394_SUCCESS, align 8
  %162 = icmp ne i64 %160, %161
  br i1 %162, label %163, label %169

163:                                              ; preds = %154
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %165 = call i32 (%struct.TYPE_16__*, i8*, ...) @msg_Err(%struct.TYPE_16__* %164, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %166 = load i32*, i32** %3, align 8
  %167 = call i32 @Close(i32* %166)
  %168 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %168, i32* %2, align 4
  br label %349

169:                                              ; preds = %154
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 11
  %172 = load i32, i32* @stderr, align 4
  %173 = call i32 @dc1394_feature_print_all(i32* %171, i32 %172)
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %202

178:                                              ; preds = %169
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 6
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* @DC1394_FEATURE_FOCUS, align 4
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = call i64 @dc1394_feature_set_value(i32* %181, i32 %182, i32 %185)
  %187 = load i64, i64* @DC1394_SUCCESS, align 8
  %188 = icmp ne i64 %186, %187
  br i1 %188, label %189, label %195

189:                                              ; preds = %178
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = call i32 (%struct.TYPE_16__*, i8*, ...) @msg_Err(%struct.TYPE_16__* %190, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %193)
  br label %201

195:                                              ; preds = %178
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = call i32 (%struct.TYPE_16__*, i8*, ...) @msg_Dbg(%struct.TYPE_16__* %196, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 %199)
  br label %201

201:                                              ; preds = %195, %189
  br label %202

202:                                              ; preds = %201, %169
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %203, i32 0, i32 6
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* @DC1394_FEATURE_FOCUS, align 4
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = call i64 @dc1394_feature_set_value(i32* %205, i32 %206, i32 %209)
  %211 = load i64, i64* @DC1394_SUCCESS, align 8
  %212 = icmp ne i64 %210, %211
  br i1 %212, label %213, label %219

213:                                              ; preds = %202
  %214 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %215 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = call i32 (%struct.TYPE_16__*, i8*, ...) @msg_Err(%struct.TYPE_16__* %214, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), i32 %217)
  br label %225

219:                                              ; preds = %202
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %221 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = call i32 (%struct.TYPE_16__*, i8*, ...) @msg_Dbg(%struct.TYPE_16__* %220, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i32 %223)
  br label %225

225:                                              ; preds = %219, %213
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 6
  %228 = load i32*, i32** %227, align 8
  %229 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 9
  %231 = load i32, i32* %230, align 8
  %232 = call i64 @dc1394_video_set_framerate(i32* %228, i32 %231)
  %233 = load i64, i64* @DC1394_SUCCESS, align 8
  %234 = icmp ne i64 %232, %233
  br i1 %234, label %235, label %241

235:                                              ; preds = %225
  %236 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %237 = call i32 (%struct.TYPE_16__*, i8*, ...) @msg_Err(%struct.TYPE_16__* %236, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
  %238 = load i32*, i32** %3, align 8
  %239 = call i32 @Close(i32* %238)
  %240 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %240, i32* %2, align 4
  br label %349

241:                                              ; preds = %225
  %242 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %242, i32 0, i32 6
  %244 = load i32*, i32** %243, align 8
  %245 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %245, i32 0, i32 8
  %247 = load i32, i32* %246, align 4
  %248 = call i64 @dc1394_video_set_mode(i32* %244, i32 %247)
  %249 = load i64, i64* @DC1394_SUCCESS, align 8
  %250 = icmp ne i64 %248, %249
  br i1 %250, label %251, label %257

251:                                              ; preds = %241
  %252 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %253 = call i32 (%struct.TYPE_16__*, i8*, ...) @msg_Err(%struct.TYPE_16__* %252, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0))
  %254 = load i32*, i32** %3, align 8
  %255 = call i32 @Close(i32* %254)
  %256 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %256, i32* %2, align 4
  br label %349

257:                                              ; preds = %241
  %258 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %258, i32 0, i32 6
  %260 = load i32*, i32** %259, align 8
  %261 = load i32, i32* @DC1394_ISO_SPEED_400, align 4
  %262 = call i64 @dc1394_video_set_iso_speed(i32* %260, i32 %261)
  %263 = load i64, i64* @DC1394_SUCCESS, align 8
  %264 = icmp ne i64 %262, %263
  br i1 %264, label %265, label %271

265:                                              ; preds = %257
  %266 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %267 = call i32 (%struct.TYPE_16__*, i8*, ...) @msg_Err(%struct.TYPE_16__* %266, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0))
  %268 = load i32*, i32** %3, align 8
  %269 = call i32 @Close(i32* %268)
  %270 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %270, i32* %2, align 4
  br label %349

271:                                              ; preds = %257
  %272 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %272, i32 0, i32 6
  %274 = load i32*, i32** %273, align 8
  %275 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %275, i32 0, i32 5
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* @DC1394_CAPTURE_FLAGS_DEFAULT, align 4
  %279 = call i64 @dc1394_capture_setup(i32* %274, i32 %277, i32 %278)
  store i64 %279, i64* %7, align 8
  %280 = load i64, i64* %7, align 8
  %281 = load i64, i64* @DC1394_SUCCESS, align 8
  %282 = icmp ne i64 %280, %281
  br i1 %282, label %283, label %297

283:                                              ; preds = %271
  %284 = load i64, i64* %7, align 8
  %285 = load i64, i64* @DC1394_NO_BANDWIDTH, align 8
  %286 = icmp eq i64 %284, %285
  br i1 %286, label %287, label %290

287:                                              ; preds = %283
  %288 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %289 = call i32 (%struct.TYPE_16__*, i8*, ...) @msg_Err(%struct.TYPE_16__* %288, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.15, i64 0, i64 0))
  br label %293

290:                                              ; preds = %283
  %291 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %292 = call i32 (%struct.TYPE_16__*, i8*, ...) @msg_Err(%struct.TYPE_16__* %291, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0))
  br label %293

293:                                              ; preds = %290, %287
  %294 = load i32*, i32** %3, align 8
  %295 = call i32 @Close(i32* %294)
  %296 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %296, i32* %2, align 4
  br label %349

297:                                              ; preds = %271
  %298 = load i32, i32* @VIDEO_ES, align 4
  %299 = load i32, i32* @VLC_CODEC_UYVY, align 4
  %300 = call i32 @es_format_Init(%struct.TYPE_15__* %6, i32 %298, i32 %299)
  %301 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %302 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %304, i32 0, i32 0
  store i32 %303, i32* %305, align 4
  %306 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %307 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %309, i32 0, i32 1
  store i32 %308, i32* %310, align 4
  %311 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %312 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 1
  %313 = bitcast i32* %312 to i8*
  %314 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = call i32 (%struct.TYPE_16__*, i8*, ...) @msg_Dbg(%struct.TYPE_16__* %311, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i8* %313, i32 %316, i32 %319)
  %321 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %322 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %321, i32 0, i32 0
  %323 = load i32*, i32** %322, align 8
  %324 = call i32 @es_out_Add(i32* %323, %struct.TYPE_15__* %6)
  %325 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %326 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %325, i32 0, i32 7
  store i32 %324, i32* %326, align 8
  %327 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %328 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %327, i32 0, i32 6
  %329 = load i32*, i32** %328, align 8
  %330 = load i32, i32* @DC1394_ON, align 4
  %331 = call i64 @dc1394_video_set_transmission(i32* %329, i32 %330)
  %332 = load i64, i64* @DC1394_SUCCESS, align 8
  %333 = icmp ne i64 %331, %332
  br i1 %333, label %334, label %344

334:                                              ; preds = %297
  %335 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %336 = call i32 (%struct.TYPE_16__*, i8*, ...) @msg_Err(%struct.TYPE_16__* %335, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i64 0, i64 0))
  %337 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %338 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %337, i32 0, i32 6
  %339 = load i32*, i32** %338, align 8
  %340 = call i32 @dc1394_capture_stop(i32* %339)
  %341 = load i32*, i32** %3, align 8
  %342 = call i32 @Close(i32* %341)
  %343 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %343, i32* %2, align 4
  br label %349

344:                                              ; preds = %297
  %345 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %346 = call i32 (%struct.TYPE_16__*, i8*, ...) @msg_Dbg(%struct.TYPE_16__* %345, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0))
  %347 = load i64, i64* @VLC_SUCCESS, align 8
  %348 = trunc i64 %347 to i32
  store i32 %348, i32* %2, align 4
  br label %349

349:                                              ; preds = %344, %334, %293, %265, %251, %235, %163, %148, %134, %117, %97, %86, %76, %61, %29, %14
  %350 = load i32, i32* %2, align 4
  ret i32 %350
}

declare dso_local %struct.TYPE_17__* @vlc_obj_calloc(i32*, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i64 @process_options(%struct.TYPE_16__*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_16__*, i8*, ...) #1

declare dso_local i32* @dc1394_new(...) #1

declare dso_local i64 @FindCamera(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i32 @dc1394_free(i32*) #1

declare dso_local i64 @dc1394_reset_bus(i32*) #1

declare dso_local i32 @Close(i32*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_16__*, i8*, ...) #1

declare dso_local i64 @dc1394_camera_reset(i32*) #1

declare dso_local i64 @dc1394_camera_print_info(i32*, i32) #1

declare dso_local i64 @dc1394_feature_get_all(i32*, i32*) #1

declare dso_local i32 @dc1394_feature_print_all(i32*, i32) #1

declare dso_local i64 @dc1394_feature_set_value(i32*, i32, i32) #1

declare dso_local i64 @dc1394_video_set_framerate(i32*, i32) #1

declare dso_local i64 @dc1394_video_set_mode(i32*, i32) #1

declare dso_local i64 @dc1394_video_set_iso_speed(i32*, i32) #1

declare dso_local i64 @dc1394_capture_setup(i32*, i32, i32) #1

declare dso_local i32 @es_format_Init(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @es_out_Add(i32*, %struct.TYPE_15__*) #1

declare dso_local i64 @dc1394_video_set_transmission(i32*, i32) #1

declare dso_local i32 @dc1394_capture_stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
