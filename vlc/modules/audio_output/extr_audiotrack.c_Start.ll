; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_audiotrack.c_Start.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_audiotrack.c_Start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_50__ = type { %struct.TYPE_54__, %struct.TYPE_53__, %struct.TYPE_51__ }
%struct.TYPE_54__ = type { i64, i64 }
%struct.TYPE_53__ = type { i32 }
%struct.TYPE_51__ = type { i32, i64 }
%struct.TYPE_45__ = type { i32 (%struct.TYPE_45__*, i32)*, i32 (%struct.TYPE_45__*, i32)*, %struct.TYPE_46__* }
%struct.TYPE_46__ = type { i64, i32, i32, i32, %struct.TYPE_57__, i64, i32, i32, %struct.TYPE_56__, %struct.TYPE_52__, %struct.TYPE_49__, i32 }
%struct.TYPE_57__ = type { i64, i64, i32, i32, i64, i32 }
%struct.TYPE_56__ = type { i32, %struct.TYPE_55__, i64, i64 }
%struct.TYPE_55__ = type { %struct.TYPE_48__, i32, i32, i32 }
%struct.TYPE_48__ = type { i32 }
%struct.TYPE_52__ = type { i32 }
%struct.TYPE_49__ = type { i32 }
%struct.TYPE_47__ = type { i32 (%struct.TYPE_47__**, i64)*, i32 (%struct.TYPE_47__**, i64)*, i64 (%struct.TYPE_47__**, i32)*, i64 (%struct.TYPE_47__**, i32)*, i64 (%struct.TYPE_47__**, i32)* }

@AT_DEV_ENCODED = common dso_local global i64 0, align 8
@AT_DEV_MAX_CHANNELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"spdif\00", align 1
@AT_DEV_STEREO = common dso_local global i64 0, align 8
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"VLC is looking for:\00", align 1
@AUDIO_CHANNEL_TYPE_AMBISONICS = common dso_local global i64 0, align 8
@AUDIO_CHANNEL_TYPE_BITMAP = common dso_local global i64 0, align 8
@AOUT_CHANS_STEREO = common dso_local global i32 0, align 4
@VLC_CODEC_FL32 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"using WRITE_FLOATARRAY\00", align 1
@VLC_CODEC_SPDIFL = common dso_local global i64 0, align 8
@jfields = common dso_local global %struct.TYPE_50__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"using WRITE_SHORTARRAYV23\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"using WRITE_BYTEARRAYV23\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"using WRITE_BYTEBUFFER\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"using WRITE_BYTEARRAY\00", align 1
@AOUT_MAX_PREPARE_TIME = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"byte array allocation failed\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"short array allocation failed\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"float array allocation failed\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"bytebuffer allocation failed\00", align 1
@AudioTrack_Thread = common dso_local global i32 0, align 4
@VLC_THREAD_PRIORITY_LOW = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"vlc clone failed\00", align 1
@play = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"play\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"VLC will output:\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@NewObject = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_45__*, %struct.TYPE_57__*)* @Start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Start(%struct.TYPE_45__* %0, %struct.TYPE_57__* noalias %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_45__*, align 8
  %5 = alloca %struct.TYPE_57__*, align 8
  %6 = alloca %struct.TYPE_46__*, align 8
  %7 = alloca %struct.TYPE_47__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_45__* %0, %struct.TYPE_45__** %4, align 8
  store %struct.TYPE_57__* %1, %struct.TYPE_57__** %5, align 8
  %15 = load %struct.TYPE_45__*, %struct.TYPE_45__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_46__*, %struct.TYPE_46__** %16, align 8
  store %struct.TYPE_46__* %17, %struct.TYPE_46__** %6, align 8
  %18 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @AT_DEV_ENCODED, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  store i32 1, i32* %9, align 4
  %24 = load i32, i32* @AT_DEV_MAX_CHANNELS, align 4
  store i32 %24, i32* %10, align 4
  br label %38

25:                                               ; preds = %2
  %26 = load %struct.TYPE_45__*, %struct.TYPE_45__** %4, align 8
  %27 = call i32 @var_InheritBool(%struct.TYPE_45__* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %27, i32* %9, align 4
  %28 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AT_DEV_STEREO, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %36

34:                                               ; preds = %25
  %35 = load i32, i32* @AT_DEV_MAX_CHANNELS, align 4
  br label %36

36:                                               ; preds = %34, %33
  %37 = phi i32 [ 2, %33 ], [ %35, %34 ]
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %36, %23
  %39 = call %struct.TYPE_47__** (...) @GET_ENV()
  store %struct.TYPE_47__** %39, %struct.TYPE_47__*** %7, align 8
  %40 = icmp ne %struct.TYPE_47__** %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %42, i32* %3, align 4
  br label %411

43:                                               ; preds = %38
  %44 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %44, i32 0, i32 4
  %46 = load %struct.TYPE_57__*, %struct.TYPE_57__** %5, align 8
  %47 = bitcast %struct.TYPE_57__* %45 to i8*
  %48 = bitcast %struct.TYPE_57__* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 %48, i64 40, i1 false)
  %49 = load %struct.TYPE_45__*, %struct.TYPE_45__** %4, align 8
  %50 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %50, i32 0, i32 4
  %52 = call i32 @aout_FormatPrint(%struct.TYPE_45__* %49, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_57__* %51)
  store i32 0, i32* %11, align 4
  %53 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @AUDIO_CHANNEL_TYPE_AMBISONICS, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %43
  %60 = load i64, i64* @AUDIO_CHANNEL_TYPE_BITMAP, align 8
  %61 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %62, i32 0, i32 0
  store i64 %60, i64* %63, align 8
  %64 = load i32, i32* @AOUT_CHANS_STEREO, align 4
  %65 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %66, i32 0, i32 5
  store i32 %64, i32* %67, align 8
  %68 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %68, i32 0, i32 4
  %70 = call i32 @aout_FormatPrepare(%struct.TYPE_57__* %69)
  store i32 1, i32* %11, align 4
  br label %71

71:                                               ; preds = %59, %43
  %72 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %72, i32 0, i32 4
  %74 = call i64 @AOUT_FMT_LINEAR(%struct.TYPE_57__* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.TYPE_47__**, %struct.TYPE_47__*** %7, align 8
  %78 = load %struct.TYPE_45__*, %struct.TYPE_45__** %4, align 8
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @StartPCM(%struct.TYPE_47__** %77, %struct.TYPE_45__* %78, i32 %79)
  store i32 %80, i32* %8, align 4
  br label %91

81:                                               ; preds = %71
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load %struct.TYPE_47__**, %struct.TYPE_47__*** %7, align 8
  %86 = load %struct.TYPE_45__*, %struct.TYPE_45__** %4, align 8
  %87 = call i32 @StartPassthrough(%struct.TYPE_47__** %85, %struct.TYPE_45__* %86)
  store i32 %87, i32* %8, align 4
  br label %90

88:                                               ; preds = %81
  %89 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %89, i32* %3, align 4
  br label %411

90:                                               ; preds = %84
  br label %91

91:                                               ; preds = %90, %76
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %95, i32* %3, align 4
  br label %411

96:                                               ; preds = %91
  %97 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %97, i32 0, i32 10
  %99 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @BYTES_TO_FRAMES(i32 %100)
  %102 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %102, i32 0, i32 11
  store i32 %101, i32* %103, align 8
  %104 = load %struct.TYPE_47__**, %struct.TYPE_47__*** %7, align 8
  %105 = load %struct.TYPE_45__*, %struct.TYPE_45__** %4, align 8
  %106 = call i32 @AudioTrack_Reset(%struct.TYPE_47__** %104, %struct.TYPE_45__* %105)
  %107 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @VLC_CODEC_FL32, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %96
  %114 = load %struct.TYPE_45__*, %struct.TYPE_45__** %4, align 8
  %115 = call i32 @msg_Dbg(%struct.TYPE_45__* %114, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %116 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %116, i32 0, i32 1
  store i32 129, i32* %117, align 8
  br label %156

118:                                              ; preds = %96
  %119 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @VLC_CODEC_SPDIFL, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %132

125:                                              ; preds = %118
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_50__, %struct.TYPE_50__* @jfields, i32 0, i32 1, i32 0), align 8
  %127 = call i32 @assert(i32 %126)
  %128 = load %struct.TYPE_45__*, %struct.TYPE_45__** %4, align 8
  %129 = call i32 @msg_Dbg(%struct.TYPE_45__* %128, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %130 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %130, i32 0, i32 1
  store i32 128, i32* %131, align 8
  br label %155

132:                                              ; preds = %118
  %133 = load i64, i64* getelementptr inbounds (%struct.TYPE_50__, %struct.TYPE_50__* @jfields, i32 0, i32 0, i32 1), align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %132
  %136 = load %struct.TYPE_45__*, %struct.TYPE_45__** %4, align 8
  %137 = call i32 @msg_Dbg(%struct.TYPE_45__* %136, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %138 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %138, i32 0, i32 1
  store i32 131, i32* %139, align 8
  br label %154

140:                                              ; preds = %132
  %141 = load i64, i64* getelementptr inbounds (%struct.TYPE_50__, %struct.TYPE_50__* @jfields, i32 0, i32 0, i32 0), align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %140
  %144 = load %struct.TYPE_45__*, %struct.TYPE_45__** %4, align 8
  %145 = call i32 @msg_Dbg(%struct.TYPE_45__* %144, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %146 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %146, i32 0, i32 1
  store i32 130, i32* %147, align 8
  br label %153

148:                                              ; preds = %140
  %149 = load %struct.TYPE_45__*, %struct.TYPE_45__** %4, align 8
  %150 = call i32 @msg_Dbg(%struct.TYPE_45__* %149, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %151 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %151, i32 0, i32 1
  store i32 132, i32* %152, align 8
  br label %153

153:                                              ; preds = %148, %143
  br label %154

154:                                              ; preds = %153, %135
  br label %155

155:                                              ; preds = %154, %125
  br label %156

156:                                              ; preds = %155, %113
  %157 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %157, i32 0, i32 8
  %159 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %158, i32 0, i32 2
  store i64 0, i64* %159, align 8
  %160 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %160, i32 0, i32 8
  %162 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %161, i32 0, i32 3
  store i64 0, i64* %162, align 8
  %163 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %163, i32 0, i32 4
  %165 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %164, i32 0, i32 4
  %166 = load i64, i64* %165, align 8
  %167 = trunc i64 %166 to i32
  %168 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %168, i32 0, i32 4
  %170 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = mul nsw i32 %167, %171
  %173 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %173, i32 0, i32 4
  %175 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = sdiv i32 %172, %176
  %178 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %178, i32 0, i32 8
  %180 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %179, i32 0, i32 0
  store i32 %177, i32* %180, align 8
  %181 = load i32, i32* %11, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %192

183:                                              ; preds = %156
  %184 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %184, i32 0, i32 8
  %186 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = sdiv i32 %187, 25
  %189 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %189, i32 0, i32 8
  %191 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %190, i32 0, i32 0
  store i32 %188, i32* %191, align 8
  br label %202

192:                                              ; preds = %156
  %193 = load i32, i32* @AOUT_MAX_PREPARE_TIME, align 4
  %194 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %194, i32 0, i32 8
  %196 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @samples_from_vlc_tick(i32 %193, i32 %197)
  %199 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %199, i32 0, i32 8
  %201 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %200, i32 0, i32 0
  store i32 %198, i32* %201, align 8
  br label %202

202:                                              ; preds = %192, %183
  %203 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  switch i32 %205, label %359 [
    i32 132, label %206
    i32 131, label %206
    i32 128, label %249
    i32 129, label %293
    i32 130, label %337
  ]

206:                                              ; preds = %202, %202
  %207 = load %struct.TYPE_47__**, %struct.TYPE_47__*** %7, align 8
  %208 = load %struct.TYPE_47__*, %struct.TYPE_47__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %208, i32 0, i32 4
  %210 = load i64 (%struct.TYPE_47__**, i32)*, i64 (%struct.TYPE_47__**, i32)** %209, align 8
  %211 = load %struct.TYPE_47__**, %struct.TYPE_47__*** %7, align 8
  %212 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %212, i32 0, i32 8
  %214 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = call i64 %210(%struct.TYPE_47__** %211, i32 %215)
  store i64 %216, i64* %12, align 8
  %217 = load i64, i64* %12, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %238

219:                                              ; preds = %206
  %220 = load %struct.TYPE_47__**, %struct.TYPE_47__*** %7, align 8
  %221 = load %struct.TYPE_47__*, %struct.TYPE_47__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %221, i32 0, i32 1
  %223 = load i32 (%struct.TYPE_47__**, i64)*, i32 (%struct.TYPE_47__**, i64)** %222, align 8
  %224 = load %struct.TYPE_47__**, %struct.TYPE_47__*** %7, align 8
  %225 = load i64, i64* %12, align 8
  %226 = call i32 %223(%struct.TYPE_47__** %224, i64 %225)
  %227 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %227, i32 0, i32 8
  %229 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %229, i32 0, i32 3
  store i32 %226, i32* %230, align 4
  %231 = load %struct.TYPE_47__**, %struct.TYPE_47__*** %7, align 8
  %232 = load %struct.TYPE_47__*, %struct.TYPE_47__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %232, i32 0, i32 0
  %234 = load i32 (%struct.TYPE_47__**, i64)*, i32 (%struct.TYPE_47__**, i64)** %233, align 8
  %235 = load %struct.TYPE_47__**, %struct.TYPE_47__*** %7, align 8
  %236 = load i64, i64* %12, align 8
  %237 = call i32 %234(%struct.TYPE_47__** %235, i64 %236)
  br label %238

238:                                              ; preds = %219, %206
  %239 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %239, i32 0, i32 8
  %241 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %248, label %245

245:                                              ; preds = %238
  %246 = load %struct.TYPE_45__*, %struct.TYPE_45__** %4, align 8
  %247 = call i32 @msg_Err(%struct.TYPE_45__* %246, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  br label %407

248:                                              ; preds = %238
  br label %359

249:                                              ; preds = %202
  %250 = load %struct.TYPE_47__**, %struct.TYPE_47__*** %7, align 8
  %251 = load %struct.TYPE_47__*, %struct.TYPE_47__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %251, i32 0, i32 3
  %253 = load i64 (%struct.TYPE_47__**, i32)*, i64 (%struct.TYPE_47__**, i32)** %252, align 8
  %254 = load %struct.TYPE_47__**, %struct.TYPE_47__*** %7, align 8
  %255 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %256 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %255, i32 0, i32 8
  %257 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = sdiv i32 %258, 2
  %260 = call i64 %253(%struct.TYPE_47__** %254, i32 %259)
  store i64 %260, i64* %13, align 8
  %261 = load i64, i64* %13, align 8
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %282

263:                                              ; preds = %249
  %264 = load %struct.TYPE_47__**, %struct.TYPE_47__*** %7, align 8
  %265 = load %struct.TYPE_47__*, %struct.TYPE_47__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %265, i32 0, i32 1
  %267 = load i32 (%struct.TYPE_47__**, i64)*, i32 (%struct.TYPE_47__**, i64)** %266, align 8
  %268 = load %struct.TYPE_47__**, %struct.TYPE_47__*** %7, align 8
  %269 = load i64, i64* %13, align 8
  %270 = call i32 %267(%struct.TYPE_47__** %268, i64 %269)
  %271 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %272 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %271, i32 0, i32 8
  %273 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %273, i32 0, i32 2
  store i32 %270, i32* %274, align 4
  %275 = load %struct.TYPE_47__**, %struct.TYPE_47__*** %7, align 8
  %276 = load %struct.TYPE_47__*, %struct.TYPE_47__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %276, i32 0, i32 0
  %278 = load i32 (%struct.TYPE_47__**, i64)*, i32 (%struct.TYPE_47__**, i64)** %277, align 8
  %279 = load %struct.TYPE_47__**, %struct.TYPE_47__*** %7, align 8
  %280 = load i64, i64* %13, align 8
  %281 = call i32 %278(%struct.TYPE_47__** %279, i64 %280)
  br label %282

282:                                              ; preds = %263, %249
  %283 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %283, i32 0, i32 8
  %285 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %285, i32 0, i32 2
  %287 = load i32, i32* %286, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %292, label %289

289:                                              ; preds = %282
  %290 = load %struct.TYPE_45__*, %struct.TYPE_45__** %4, align 8
  %291 = call i32 @msg_Err(%struct.TYPE_45__* %290, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  br label %407

292:                                              ; preds = %282
  br label %359

293:                                              ; preds = %202
  %294 = load %struct.TYPE_47__**, %struct.TYPE_47__*** %7, align 8
  %295 = load %struct.TYPE_47__*, %struct.TYPE_47__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %295, i32 0, i32 2
  %297 = load i64 (%struct.TYPE_47__**, i32)*, i64 (%struct.TYPE_47__**, i32)** %296, align 8
  %298 = load %struct.TYPE_47__**, %struct.TYPE_47__*** %7, align 8
  %299 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %300 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %299, i32 0, i32 8
  %301 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = sdiv i32 %302, 4
  %304 = call i64 %297(%struct.TYPE_47__** %298, i32 %303)
  store i64 %304, i64* %14, align 8
  %305 = load i64, i64* %14, align 8
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %326

307:                                              ; preds = %293
  %308 = load %struct.TYPE_47__**, %struct.TYPE_47__*** %7, align 8
  %309 = load %struct.TYPE_47__*, %struct.TYPE_47__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %309, i32 0, i32 1
  %311 = load i32 (%struct.TYPE_47__**, i64)*, i32 (%struct.TYPE_47__**, i64)** %310, align 8
  %312 = load %struct.TYPE_47__**, %struct.TYPE_47__*** %7, align 8
  %313 = load i64, i64* %14, align 8
  %314 = call i32 %311(%struct.TYPE_47__** %312, i64 %313)
  %315 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %316 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %315, i32 0, i32 8
  %317 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %316, i32 0, i32 1
  %318 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %317, i32 0, i32 1
  store i32 %314, i32* %318, align 4
  %319 = load %struct.TYPE_47__**, %struct.TYPE_47__*** %7, align 8
  %320 = load %struct.TYPE_47__*, %struct.TYPE_47__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %320, i32 0, i32 0
  %322 = load i32 (%struct.TYPE_47__**, i64)*, i32 (%struct.TYPE_47__**, i64)** %321, align 8
  %323 = load %struct.TYPE_47__**, %struct.TYPE_47__*** %7, align 8
  %324 = load i64, i64* %14, align 8
  %325 = call i32 %322(%struct.TYPE_47__** %323, i64 %324)
  br label %326

326:                                              ; preds = %307, %293
  %327 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %328 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %327, i32 0, i32 8
  %329 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %328, i32 0, i32 1
  %330 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %336, label %333

333:                                              ; preds = %326
  %334 = load %struct.TYPE_45__*, %struct.TYPE_45__** %4, align 8
  %335 = call i32 @msg_Err(%struct.TYPE_45__* %334, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  br label %407

336:                                              ; preds = %326
  br label %359

337:                                              ; preds = %202
  %338 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %339 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %338, i32 0, i32 8
  %340 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = call i32 @malloc(i32 %341)
  %343 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %344 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %343, i32 0, i32 8
  %345 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %344, i32 0, i32 1
  %346 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %345, i32 0, i32 0
  %347 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %346, i32 0, i32 0
  store i32 %342, i32* %347, align 4
  %348 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %349 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %348, i32 0, i32 8
  %350 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %349, i32 0, i32 1
  %351 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %358, label %355

355:                                              ; preds = %337
  %356 = load %struct.TYPE_45__*, %struct.TYPE_45__** %4, align 8
  %357 = call i32 @msg_Err(%struct.TYPE_45__* %356, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  br label %407

358:                                              ; preds = %337
  br label %359

359:                                              ; preds = %202, %358, %336, %292, %248
  %360 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %361 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %360, i32 0, i32 2
  store i32 1, i32* %361, align 4
  %362 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %363 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %362, i32 0, i32 3
  store i32 0, i32* %363, align 8
  %364 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %365 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %364, i32 0, i32 7
  %366 = load i32, i32* @AudioTrack_Thread, align 4
  %367 = load %struct.TYPE_45__*, %struct.TYPE_45__** %4, align 8
  %368 = load i32, i32* @VLC_THREAD_PRIORITY_LOW, align 4
  %369 = call i64 @vlc_clone(i32* %365, i32 %366, %struct.TYPE_45__* %367, i32 %368)
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %371, label %374

371:                                              ; preds = %359
  %372 = load %struct.TYPE_45__*, %struct.TYPE_45__** %4, align 8
  %373 = call i32 @msg_Err(%struct.TYPE_45__* %372, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  br label %407

374:                                              ; preds = %359
  %375 = load i32, i32* @play, align 4
  %376 = call i32 @JNI_AT_CALL_VOID(i32 %375)
  %377 = call i32 @CHECK_AT_EXCEPTION(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %378 = load %struct.TYPE_57__*, %struct.TYPE_57__** %5, align 8
  %379 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %380 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %379, i32 0, i32 4
  %381 = bitcast %struct.TYPE_57__* %378 to i8*
  %382 = bitcast %struct.TYPE_57__* %380 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %381, i8* align 8 %382, i64 40, i1 false)
  %383 = load %struct.TYPE_45__*, %struct.TYPE_45__** %4, align 8
  %384 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %383, i32 0, i32 1
  %385 = load i32 (%struct.TYPE_45__*, i32)*, i32 (%struct.TYPE_45__*, i32)** %384, align 8
  %386 = load %struct.TYPE_45__*, %struct.TYPE_45__** %4, align 8
  %387 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %388 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %387, i32 0, i32 6
  %389 = load i32, i32* %388, align 8
  %390 = call i32 %385(%struct.TYPE_45__* %386, i32 %389)
  %391 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %392 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %391, i32 0, i32 5
  %393 = load i64, i64* %392, align 8
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %395, label %401

395:                                              ; preds = %374
  %396 = load %struct.TYPE_45__*, %struct.TYPE_45__** %4, align 8
  %397 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %396, i32 0, i32 0
  %398 = load i32 (%struct.TYPE_45__*, i32)*, i32 (%struct.TYPE_45__*, i32)** %397, align 8
  %399 = load %struct.TYPE_45__*, %struct.TYPE_45__** %4, align 8
  %400 = call i32 %398(%struct.TYPE_45__* %399, i32 1)
  br label %401

401:                                              ; preds = %395, %374
  %402 = load %struct.TYPE_45__*, %struct.TYPE_45__** %4, align 8
  %403 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %404 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %403, i32 0, i32 4
  %405 = call i32 @aout_FormatPrint(%struct.TYPE_45__* %402, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), %struct.TYPE_57__* %404)
  %406 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %406, i32* %3, align 4
  br label %411

407:                                              ; preds = %371, %355, %333, %289, %245
  %408 = load %struct.TYPE_45__*, %struct.TYPE_45__** %4, align 8
  %409 = call i32 @Stop(%struct.TYPE_45__* %408)
  %410 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %410, i32* %3, align 4
  br label %411

411:                                              ; preds = %407, %401, %94, %88, %41
  %412 = load i32, i32* %3, align 4
  ret i32 %412
}

declare dso_local i32 @var_InheritBool(%struct.TYPE_45__*, i8*) #1

declare dso_local %struct.TYPE_47__** @GET_ENV(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @aout_FormatPrint(%struct.TYPE_45__*, i8*, %struct.TYPE_57__*) #1

declare dso_local i32 @aout_FormatPrepare(%struct.TYPE_57__*) #1

declare dso_local i64 @AOUT_FMT_LINEAR(%struct.TYPE_57__*) #1

declare dso_local i32 @StartPCM(%struct.TYPE_47__**, %struct.TYPE_45__*, i32) #1

declare dso_local i32 @StartPassthrough(%struct.TYPE_47__**, %struct.TYPE_45__*) #1

declare dso_local i32 @BYTES_TO_FRAMES(i32) #1

declare dso_local i32 @AudioTrack_Reset(%struct.TYPE_47__**, %struct.TYPE_45__*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_45__*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @samples_from_vlc_tick(i32, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_45__*, i8*) #1

declare dso_local i32 @malloc(i32) #1

declare dso_local i64 @vlc_clone(i32*, i32, %struct.TYPE_45__*, i32) #1

declare dso_local i32 @JNI_AT_CALL_VOID(i32) #1

declare dso_local i32 @CHECK_AT_EXCEPTION(i8*) #1

declare dso_local i32 @Stop(%struct.TYPE_45__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
