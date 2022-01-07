; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_mmdevice.c_MMSession.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_mmdevice.c_MMSession.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i8*, i8*, float, float, i64, i32*, i32, i32, i32, i32, i32 }

@default_device = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"using selected device %ls\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"cannot get selected device %ls (error 0x%lX)\00", align 1
@AUDCLNT_E_DEVICE_INVALIDATED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"using default device\00", align 1
@eRender = common dso_local global i32 0, align 4
@eConsole = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"cannot get default device (error 0x%lX)\00", align 1
@default_device_b = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [43 x i8] c"cannot get device identifier (error 0x%lX)\00", align 1
@IID_IAudioSessionManager = common dso_local global i32 0, align 4
@CLSCTX_ALL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"volume-save\00", align 1
@GUID_VLC_AUD_OUT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"user-agent\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"cannot get session control (error 0x%lX)\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [39 x i8] c"cannot get simple volume (error 0x%lX)\00", align 1
@IID_IAudioSessionControl2 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [38 x i8] c"version 2 session control unavailable\00", align 1
@IID_IAudioSessionManager2 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [41 x i8] c"version 2 session management unavailable\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"cannot activate session manager (error 0x%lX)\00", align 1
@IID_IAudioEndpointVolume = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [51 x i8] c"volume from %+f dB to %+f dB with %f dB increments\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"cannot get volume range (error 0x%lX)\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"cannot activate endpoint volume (error 0x%lX)\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"cannot set master volume (error 0x%lX)\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"cannot get master volume (error 0x%lX)\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"cannot get mute (error 0x%lX)\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [30 x i8] c"cannot set mute (error 0x%lX)\00", align 1
@INFINITE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32*)* @MMSession to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MMSession(%struct.TYPE_11__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca i64, align 8
  %26 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32* %1, i32** %5, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  store %struct.TYPE_12__* %29, %struct.TYPE_12__** %6, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 5
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %44, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %2
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = load i8*, i8** @default_device, align 8
  %54 = icmp ne i8* %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @free(i8* %58)
  br label %60

60:                                               ; preds = %55, %49, %2
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i8*, i8** @default_device, align 8
  %65 = icmp ne i8* %63, %64
  br i1 %65, label %66, label %95

66:                                               ; preds = %60
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 (%struct.TYPE_11__*, i8*, ...) @msg_Dbg(%struct.TYPE_11__* %67, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %70)
  %72 = load i32*, i32** %5, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 5
  %78 = call i32 @IMMDeviceEnumerator_GetDevice(i32* %72, i8* %75, i32** %77)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = call i64 @FAILED(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %66
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load i32, i32* %12, align 4
  %88 = call i32 (%struct.TYPE_11__*, i8*, i8*, ...) @msg_Err(%struct.TYPE_11__* %83, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %86, i32 %87)
  br label %89

89:                                               ; preds = %82, %66
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  br label %97

95:                                               ; preds = %60
  %96 = load i32, i32* @AUDCLNT_E_DEVICE_INVALIDATED, align 4
  store i32 %96, i32* %12, align 4
  br label %97

97:                                               ; preds = %95, %89
  br label %98

98:                                               ; preds = %126, %97
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* @AUDCLNT_E_DEVICE_INVALIDATED, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %127

102:                                              ; preds = %98
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %104 = call i32 (%struct.TYPE_11__*, i8*, ...) @msg_Dbg(%struct.TYPE_11__* %103, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %105 = load i32*, i32** %5, align 8
  %106 = load i32, i32* @eRender, align 4
  %107 = load i32, i32* @eConsole, align 4
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 5
  %110 = call i32 @IMMDeviceEnumerator_GetDefaultAudioEndpoint(i32* %105, i32 %106, i32 %107, i32** %109)
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %12, align 4
  %112 = call i64 @FAILED(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %102
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %116 = load i32, i32* %12, align 4
  %117 = sext i32 %116 to i64
  %118 = inttoptr i64 %117 to i8*
  %119 = call i32 (%struct.TYPE_11__*, i8*, i8*, ...) @msg_Err(%struct.TYPE_11__* %115, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* %118)
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 1
  store i8* null, i8** %121, align 8
  br label %126

122:                                              ; preds = %102
  %123 = load i8*, i8** @default_device, align 8
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 1
  store i8* %123, i8** %125, align 8
  br label %126

126:                                              ; preds = %122, %114
  br label %98

127:                                              ; preds = %98
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  store i8* null, i8** %129, align 8
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 10
  %132 = call i32 @WakeConditionVariable(i32* %131)
  %133 = load i32, i32* %12, align 4
  %134 = call i64 @SUCCEEDED(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %173

136:                                              ; preds = %127
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 1
  %139 = load i8*, i8** %138, align 8
  %140 = load i8*, i8** @default_device, align 8
  %141 = icmp eq i8* %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %136
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %144 = load i8*, i8** @default_device_b, align 8
  %145 = call i32 @aout_DeviceReport(%struct.TYPE_11__* %143, i8* %144)
  br label %172

146:                                              ; preds = %136
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 5
  %149 = load i32*, i32** %148, align 8
  %150 = call i32 @IMMDevice_GetId(i32* %149, i8** %13)
  store i32 %150, i32* %12, align 4
  %151 = load i32, i32* %12, align 4
  %152 = call i64 @SUCCEEDED(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %171

154:                                              ; preds = %146
  %155 = load i8*, i8** %13, align 8
  %156 = call i8* @FromWide(i8* %155)
  store i8* %156, i8** %14, align 8
  %157 = load i8*, i8** %13, align 8
  %158 = call i32 @CoTaskMemFree(i8* %157)
  %159 = load i8*, i8** %14, align 8
  %160 = icmp ne i8* %159, null
  %161 = zext i1 %160 to i32
  %162 = call i64 @likely(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %154
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %166 = load i8*, i8** %14, align 8
  %167 = call i32 @aout_DeviceReport(%struct.TYPE_11__* %165, i8* %166)
  %168 = load i8*, i8** %14, align 8
  %169 = call i32 @free(i8* %168)
  br label %170

170:                                              ; preds = %164, %154
  br label %171

171:                                              ; preds = %170, %146
  br label %172

172:                                              ; preds = %171, %142
  br label %180

173:                                              ; preds = %127
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %175 = load i32, i32* %12, align 4
  %176 = sext i32 %175 to i64
  %177 = inttoptr i64 %176 to i8*
  %178 = call i32 (%struct.TYPE_11__*, i8*, i8*, ...) @msg_Err(%struct.TYPE_11__* %174, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i8* %177)
  %179 = load i32, i32* %12, align 4
  store i32 %179, i32* %3, align 4
  br label %508

180:                                              ; preds = %172
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 5
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* @CLSCTX_ALL, align 4
  %185 = call i32 @IMMDevice_Activate(i32* %183, i32* @IID_IAudioSessionManager, i32 %184, i32* null, i8** %11)
  store i32 %185, i32* %12, align 4
  %186 = load i8*, i8** %11, align 8
  %187 = bitcast i8* %186 to i32*
  store i32* %187, i32** %7, align 8
  %188 = load i32, i32* %12, align 4
  %189 = call i64 @SUCCEEDED(i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %296

191:                                              ; preds = %180
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %193 = call i64 @var_GetBool(%struct.TYPE_11__* %192, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %194 = icmp ne i64 %193, 0
  %195 = zext i1 %194 to i64
  %196 = select i1 %194, i32* @GUID_VLC_AUD_OUT, i32* null
  store i32* %196, i32** %15, align 8
  %197 = load i32*, i32** %7, align 8
  %198 = load i32*, i32** %15, align 8
  %199 = call i32 @IAudioSessionManager_GetAudioSessionControl(i32* %197, i32* %198, i32 0, i32** %8)
  store i32 %199, i32* %12, align 4
  %200 = load i32, i32* %12, align 4
  %201 = call i64 @SUCCEEDED(i32 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %230

203:                                              ; preds = %191
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %205 = call i8* @var_InheritString(%struct.TYPE_11__* %204, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  store i8* %205, i8** %16, align 8
  %206 = load i8*, i8** %16, align 8
  %207 = icmp ne i8* %206, null
  br i1 %207, label %208, label %225

208:                                              ; preds = %203
  %209 = load i8*, i8** %16, align 8
  %210 = call i8* @ToWide(i8* %209)
  store i8* %210, i8** %17, align 8
  %211 = load i8*, i8** %17, align 8
  %212 = icmp ne i8* %211, null
  %213 = zext i1 %212 to i32
  %214 = call i64 @likely(i32 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %222

216:                                              ; preds = %208
  %217 = load i32*, i32** %8, align 8
  %218 = load i8*, i8** %17, align 8
  %219 = call i32 @IAudioSessionControl_SetDisplayName(i32* %217, i8* %218, i32* null)
  %220 = load i8*, i8** %17, align 8
  %221 = call i32 @free(i8* %220)
  br label %222

222:                                              ; preds = %216, %208
  %223 = load i8*, i8** %16, align 8
  %224 = call i32 @free(i8* %223)
  br label %225

225:                                              ; preds = %222, %203
  %226 = load i32*, i32** %8, align 8
  %227 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 7
  %229 = call i32 @IAudioSessionControl_RegisterAudioSessionNotification(i32* %226, i32* %228)
  br label %236

230:                                              ; preds = %191
  %231 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %232 = load i32, i32* %12, align 4
  %233 = sext i32 %232 to i64
  %234 = inttoptr i64 %233 to i8*
  %235 = call i32 (%struct.TYPE_11__*, i8*, i8*, ...) @msg_Err(%struct.TYPE_11__* %231, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i8* %234)
  br label %236

236:                                              ; preds = %230, %225
  %237 = load i32*, i32** %7, align 8
  %238 = load i32*, i32** %15, align 8
  %239 = load i64, i64* @FALSE, align 8
  %240 = call i32 @IAudioSessionManager_GetSimpleAudioVolume(i32* %237, i32* %238, i64 %239, i32** %9)
  store i32 %240, i32* %12, align 4
  %241 = load i32, i32* %12, align 4
  %242 = call i64 @FAILED(i32 %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %250

244:                                              ; preds = %236
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %246 = load i32, i32* %12, align 4
  %247 = sext i32 %246 to i64
  %248 = inttoptr i64 %247 to i8*
  %249 = call i32 (%struct.TYPE_11__*, i8*, i8*, ...) @msg_Err(%struct.TYPE_11__* %245, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i8* %248)
  br label %250

250:                                              ; preds = %244, %236
  store i8* null, i8** %18, align 8
  %251 = load i32*, i32** %7, align 8
  %252 = call i32 @IAudioSessionManager_QueryInterface(i32* %251, i32* @IID_IAudioSessionControl2, i8** %11)
  store i32 %252, i32* %12, align 4
  %253 = load i32, i32* %12, align 4
  %254 = call i64 @SUCCEEDED(i32 %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %271

256:                                              ; preds = %250
  %257 = load i8*, i8** %11, align 8
  %258 = bitcast i8* %257 to i32*
  store i32* %258, i32** %19, align 8
  %259 = load i32*, i32** %19, align 8
  %260 = load i64, i64* @FALSE, align 8
  %261 = call i32 @IAudioSessionControl2_SetDuckingPreference(i32* %259, i64 %260)
  %262 = load i32*, i32** %19, align 8
  %263 = call i32 @IAudioSessionControl2_GetSessionInstanceIdentifier(i32* %262, i8** %18)
  store i32 %263, i32* %12, align 4
  %264 = load i32, i32* %12, align 4
  %265 = call i64 @FAILED(i32 %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %256
  store i8* null, i8** %18, align 8
  br label %268

268:                                              ; preds = %267, %256
  %269 = load i32*, i32** %19, align 8
  %270 = call i32 @IAudioSessionControl2_Release(i32* %269)
  br label %274

271:                                              ; preds = %250
  %272 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %273 = call i32 (%struct.TYPE_11__*, i8*, ...) @msg_Dbg(%struct.TYPE_11__* %272, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0))
  br label %274

274:                                              ; preds = %271, %268
  %275 = load i32*, i32** %7, align 8
  %276 = call i32 @IAudioSessionManager_QueryInterface(i32* %275, i32* @IID_IAudioSessionManager2, i8** %11)
  store i32 %276, i32* %12, align 4
  %277 = load i32, i32* %12, align 4
  %278 = call i64 @SUCCEEDED(i32 %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %290

280:                                              ; preds = %274
  %281 = load i8*, i8** %11, align 8
  %282 = bitcast i8* %281 to i32*
  store i32* %282, i32** %20, align 8
  %283 = load i32*, i32** %20, align 8
  %284 = load i8*, i8** %18, align 8
  %285 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %285, i32 0, i32 8
  %287 = call i32 @IAudioSessionManager2_RegisterDuckNotification(i32* %283, i8* %284, i32* %286)
  %288 = load i32*, i32** %20, align 8
  %289 = call i32 @IAudioSessionManager2_Release(i32* %288)
  br label %293

290:                                              ; preds = %274
  %291 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %292 = call i32 (%struct.TYPE_11__*, i8*, ...) @msg_Dbg(%struct.TYPE_11__* %291, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0))
  br label %293

293:                                              ; preds = %290, %280
  %294 = load i8*, i8** %18, align 8
  %295 = call i32 @CoTaskMemFree(i8* %294)
  br label %302

296:                                              ; preds = %180
  %297 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %298 = load i32, i32* %12, align 4
  %299 = sext i32 %298 to i64
  %300 = inttoptr i64 %299 to i8*
  %301 = call i32 (%struct.TYPE_11__*, i8*, i8*, ...) @msg_Err(%struct.TYPE_11__* %297, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i64 0, i64 0), i8* %300)
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  br label %302

302:                                              ; preds = %296, %293
  %303 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %304 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %303, i32 0, i32 5
  %305 = load i32*, i32** %304, align 8
  %306 = load i32, i32* @CLSCTX_ALL, align 4
  %307 = call i32 @IMMDevice_Activate(i32* %305, i32* @IID_IAudioEndpointVolume, i32 %306, i32* null, i8** %11)
  store i32 %307, i32* %12, align 4
  %308 = load i8*, i8** %11, align 8
  %309 = bitcast i8* %308 to i32*
  store i32* %309, i32** %10, align 8
  %310 = load i32, i32* %12, align 4
  %311 = call i64 @SUCCEEDED(i32 %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %335

313:                                              ; preds = %302
  %314 = load i32*, i32** %10, align 8
  %315 = call i32 @IAudioEndpointVolume_GetVolumeRange(i32* %314, float* %21, float* %22, float* %23)
  store i32 %315, i32* %12, align 4
  %316 = load i32, i32* %12, align 4
  %317 = call i64 @SUCCEEDED(i32 %316)
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %328

319:                                              ; preds = %313
  %320 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %321 = load float, float* %21, align 4
  %322 = fpext float %321 to double
  %323 = load float, float* %22, align 4
  %324 = fpext float %323 to double
  %325 = load float, float* %23, align 4
  %326 = fpext float %325 to double
  %327 = call i32 (%struct.TYPE_11__*, i8*, ...) @msg_Dbg(%struct.TYPE_11__* %320, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.12, i64 0, i64 0), double %322, double %324, double %326)
  br label %334

328:                                              ; preds = %313
  %329 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %330 = load i32, i32* %12, align 4
  %331 = sext i32 %330 to i64
  %332 = inttoptr i64 %331 to i8*
  %333 = call i32 (%struct.TYPE_11__*, i8*, i8*, ...) @msg_Err(%struct.TYPE_11__* %329, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0), i8* %332)
  br label %334

334:                                              ; preds = %328, %319
  br label %341

335:                                              ; preds = %302
  %336 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %337 = load i32, i32* %12, align 4
  %338 = sext i32 %337 to i64
  %339 = inttoptr i64 %338 to i8*
  %340 = call i32 (%struct.TYPE_11__*, i8*, i8*, ...) @msg_Err(%struct.TYPE_11__* %336, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.14, i64 0, i64 0), i8* %339)
  br label %341

341:                                              ; preds = %335, %334
  br label %342

342:                                              ; preds = %444, %341
  %343 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %344 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %343, i32 0, i32 0
  %345 = load i8*, i8** %344, align 8
  %346 = icmp eq i8* %345, null
  br i1 %346, label %347, label %451

347:                                              ; preds = %342
  %348 = load i32*, i32** %9, align 8
  %349 = icmp ne i32* %348, null
  br i1 %349, label %350, label %444

350:                                              ; preds = %347
  %351 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %352 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %351, i32 0, i32 2
  %353 = load float, float* %352, align 8
  store float %353, float* %24, align 4
  %354 = load float, float* %24, align 4
  %355 = fcmp oge float %354, 0.000000e+00
  br i1 %355, label %356, label %370

356:                                              ; preds = %350
  %357 = load i32*, i32** %9, align 8
  %358 = load float, float* %24, align 4
  %359 = call i32 @ISimpleAudioVolume_SetMasterVolume(i32* %357, float %358, i32* null)
  store i32 %359, i32* %12, align 4
  %360 = load i32, i32* %12, align 4
  %361 = call i64 @FAILED(i32 %360)
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %363, label %369

363:                                              ; preds = %356
  %364 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %365 = load i32, i32* %12, align 4
  %366 = sext i32 %365 to i64
  %367 = inttoptr i64 %366 to i8*
  %368 = call i32 (%struct.TYPE_11__*, i8*, i8*, ...) @msg_Err(%struct.TYPE_11__* %364, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0), i8* %367)
  br label %369

369:                                              ; preds = %363, %356
  br label %370

370:                                              ; preds = %369, %350
  %371 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %372 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %371, i32 0, i32 2
  store float -1.000000e+00, float* %372, align 8
  %373 = load i32*, i32** %9, align 8
  %374 = call i32 @ISimpleAudioVolume_GetMasterVolume(i32* %373, float* %24)
  store i32 %374, i32* %12, align 4
  %375 = load i32, i32* %12, align 4
  %376 = call i64 @SUCCEEDED(i32 %375)
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %387

378:                                              ; preds = %370
  %379 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %380 = load float, float* %24, align 4
  %381 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %382 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %381, i32 0, i32 3
  %383 = load float, float* %382, align 4
  %384 = fmul float %380, %383
  %385 = call i32 @cbrtf(float %384)
  %386 = call i32 @aout_VolumeReport(%struct.TYPE_11__* %379, i32 %385)
  br label %393

387:                                              ; preds = %370
  %388 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %389 = load i32, i32* %12, align 4
  %390 = sext i32 %389 to i64
  %391 = inttoptr i64 %390 to i8*
  %392 = call i32 (%struct.TYPE_11__*, i8*, i8*, ...) @msg_Err(%struct.TYPE_11__* %388, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i64 0, i64 0), i8* %391)
  br label %393

393:                                              ; preds = %387, %378
  %394 = load i32*, i32** %9, align 8
  %395 = call i32 @ISimpleAudioVolume_GetMute(i32* %394, i64* %25)
  store i32 %395, i32* %12, align 4
  %396 = load i32, i32* %12, align 4
  %397 = call i64 @SUCCEEDED(i32 %396)
  %398 = icmp ne i64 %397, 0
  br i1 %398, label %399, label %406

399:                                              ; preds = %393
  %400 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %401 = load i64, i64* %25, align 8
  %402 = load i64, i64* @FALSE, align 8
  %403 = icmp ne i64 %401, %402
  %404 = zext i1 %403 to i32
  %405 = call i32 @aout_MuteReport(%struct.TYPE_11__* %400, i32 %404)
  br label %412

406:                                              ; preds = %393
  %407 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %408 = load i32, i32* %12, align 4
  %409 = sext i32 %408 to i64
  %410 = inttoptr i64 %409 to i8*
  %411 = call i32 (%struct.TYPE_11__*, i8*, i8*, ...) @msg_Err(%struct.TYPE_11__* %407, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0), i8* %410)
  br label %412

412:                                              ; preds = %406, %399
  %413 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %414 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %413, i32 0, i32 4
  %415 = load i64, i64* %414, align 8
  %416 = icmp sge i64 %415, 0
  br i1 %416, label %417, label %441

417:                                              ; preds = %412
  %418 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %419 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %418, i32 0, i32 4
  %420 = load i64, i64* %419, align 8
  %421 = icmp ne i64 %420, 0
  br i1 %421, label %422, label %424

422:                                              ; preds = %417
  %423 = load i64, i64* @TRUE, align 8
  br label %426

424:                                              ; preds = %417
  %425 = load i64, i64* @FALSE, align 8
  br label %426

426:                                              ; preds = %424, %422
  %427 = phi i64 [ %423, %422 ], [ %425, %424 ]
  store i64 %427, i64* %25, align 8
  %428 = load i32*, i32** %9, align 8
  %429 = load i64, i64* %25, align 8
  %430 = call i32 @ISimpleAudioVolume_SetMute(i32* %428, i64 %429, i32* null)
  store i32 %430, i32* %12, align 4
  %431 = load i32, i32* %12, align 4
  %432 = call i64 @FAILED(i32 %431)
  %433 = icmp ne i64 %432, 0
  br i1 %433, label %434, label %440

434:                                              ; preds = %426
  %435 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %436 = load i32, i32* %12, align 4
  %437 = sext i32 %436 to i64
  %438 = inttoptr i64 %437 to i8*
  %439 = call i32 (%struct.TYPE_11__*, i8*, i8*, ...) @msg_Err(%struct.TYPE_11__* %435, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0), i8* %438)
  br label %440

440:                                              ; preds = %434, %426
  br label %441

441:                                              ; preds = %440, %412
  %442 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %443 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %442, i32 0, i32 4
  store i64 -1, i64* %443, align 8
  br label %444

444:                                              ; preds = %441, %347
  %445 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %446 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %445, i32 0, i32 9
  %447 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %448 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %447, i32 0, i32 6
  %449 = load i32, i32* @INFINITE, align 4
  %450 = call i32 @SleepConditionVariableCS(i32* %446, i32* %448, i32 %449)
  br label %342

451:                                              ; preds = %342
  %452 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %453 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %452, i32 0, i32 6
  %454 = call i32 @LeaveCriticalSection(i32* %453)
  %455 = load i32*, i32** %10, align 8
  %456 = icmp ne i32* %455, null
  br i1 %456, label %457, label %460

457:                                              ; preds = %451
  %458 = load i32*, i32** %10, align 8
  %459 = call i32 @IAudioEndpointVolume_Release(i32* %458)
  br label %460

460:                                              ; preds = %457, %451
  %461 = load i32*, i32** %7, align 8
  %462 = icmp ne i32* %461, null
  br i1 %462, label %463, label %497

463:                                              ; preds = %460
  %464 = load i32*, i32** %7, align 8
  %465 = call i32 @IAudioSessionManager_QueryInterface(i32* %464, i32* @IID_IAudioSessionManager2, i8** %11)
  store i32 %465, i32* %12, align 4
  %466 = load i32, i32* %12, align 4
  %467 = call i64 @SUCCEEDED(i32 %466)
  %468 = icmp ne i64 %467, 0
  br i1 %468, label %469, label %478

469:                                              ; preds = %463
  %470 = load i8*, i8** %11, align 8
  %471 = bitcast i8* %470 to i32*
  store i32* %471, i32** %26, align 8
  %472 = load i32*, i32** %26, align 8
  %473 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %474 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %473, i32 0, i32 8
  %475 = call i32 @IAudioSessionManager2_UnregisterDuckNotification(i32* %472, i32* %474)
  %476 = load i32*, i32** %26, align 8
  %477 = call i32 @IAudioSessionManager2_Release(i32* %476)
  br label %478

478:                                              ; preds = %469, %463
  %479 = load i32*, i32** %9, align 8
  %480 = icmp ne i32* %479, null
  br i1 %480, label %481, label %484

481:                                              ; preds = %478
  %482 = load i32*, i32** %9, align 8
  %483 = call i32 @ISimpleAudioVolume_Release(i32* %482)
  br label %484

484:                                              ; preds = %481, %478
  %485 = load i32*, i32** %8, align 8
  %486 = icmp ne i32* %485, null
  br i1 %486, label %487, label %494

487:                                              ; preds = %484
  %488 = load i32*, i32** %8, align 8
  %489 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %490 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %489, i32 0, i32 7
  %491 = call i32 @IAudioSessionControl_UnregisterAudioSessionNotification(i32* %488, i32* %490)
  %492 = load i32*, i32** %8, align 8
  %493 = call i32 @IAudioSessionControl_Release(i32* %492)
  br label %494

494:                                              ; preds = %487, %484
  %495 = load i32*, i32** %7, align 8
  %496 = call i32 @IAudioSessionManager_Release(i32* %495)
  br label %497

497:                                              ; preds = %494, %460
  %498 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %499 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %498, i32 0, i32 6
  %500 = call i32 @EnterCriticalSection(i32* %499)
  %501 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %502 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %501, i32 0, i32 5
  %503 = load i32*, i32** %502, align 8
  %504 = call i32 @IMMDevice_Release(i32* %503)
  %505 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %506 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %505, i32 0, i32 5
  store i32* null, i32** %506, align 8
  %507 = load i32, i32* @S_OK, align 4
  store i32 %507, i32* %3, align 4
  br label %508

508:                                              ; preds = %497, %173
  %509 = load i32, i32* %3, align 4
  ret i32 %509
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_11__*, i8*, ...) #1

declare dso_local i32 @IMMDeviceEnumerator_GetDevice(i32*, i8*, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_11__*, i8*, i8*, ...) #1

declare dso_local i32 @IMMDeviceEnumerator_GetDefaultAudioEndpoint(i32*, i32, i32, i32**) #1

declare dso_local i32 @WakeConditionVariable(i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @aout_DeviceReport(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @IMMDevice_GetId(i32*, i8**) #1

declare dso_local i8* @FromWide(i8*) #1

declare dso_local i32 @CoTaskMemFree(i8*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @IMMDevice_Activate(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i64 @var_GetBool(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @IAudioSessionManager_GetAudioSessionControl(i32*, i32*, i32, i32**) #1

declare dso_local i8* @var_InheritString(%struct.TYPE_11__*, i8*) #1

declare dso_local i8* @ToWide(i8*) #1

declare dso_local i32 @IAudioSessionControl_SetDisplayName(i32*, i8*, i32*) #1

declare dso_local i32 @IAudioSessionControl_RegisterAudioSessionNotification(i32*, i32*) #1

declare dso_local i32 @IAudioSessionManager_GetSimpleAudioVolume(i32*, i32*, i64, i32**) #1

declare dso_local i32 @IAudioSessionManager_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IAudioSessionControl2_SetDuckingPreference(i32*, i64) #1

declare dso_local i32 @IAudioSessionControl2_GetSessionInstanceIdentifier(i32*, i8**) #1

declare dso_local i32 @IAudioSessionControl2_Release(i32*) #1

declare dso_local i32 @IAudioSessionManager2_RegisterDuckNotification(i32*, i8*, i32*) #1

declare dso_local i32 @IAudioSessionManager2_Release(i32*) #1

declare dso_local i32 @IAudioEndpointVolume_GetVolumeRange(i32*, float*, float*, float*) #1

declare dso_local i32 @ISimpleAudioVolume_SetMasterVolume(i32*, float, i32*) #1

declare dso_local i32 @ISimpleAudioVolume_GetMasterVolume(i32*, float*) #1

declare dso_local i32 @aout_VolumeReport(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @cbrtf(float) #1

declare dso_local i32 @ISimpleAudioVolume_GetMute(i32*, i64*) #1

declare dso_local i32 @aout_MuteReport(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @ISimpleAudioVolume_SetMute(i32*, i64, i32*) #1

declare dso_local i32 @SleepConditionVariableCS(i32*, i32*, i32) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i32 @IAudioEndpointVolume_Release(i32*) #1

declare dso_local i32 @IAudioSessionManager2_UnregisterDuckNotification(i32*, i32*) #1

declare dso_local i32 @ISimpleAudioVolume_Release(i32*) #1

declare dso_local i32 @IAudioSessionControl_UnregisterAudioSessionNotification(i32*, i32*) #1

declare dso_local i32 @IAudioSessionControl_Release(i32*) #1

declare dso_local i32 @IAudioSessionManager_Release(i32*) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @IMMDevice_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
