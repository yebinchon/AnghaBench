; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mmdevapi/extr_render.c_test_session.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mmdevapi/extr_render.c_test_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"CoCreateGuid failed: %08x\0A\00", align 1
@dev = common dso_local global i32* null, align 8
@IID_IAudioClient = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Activation failed with %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"GetMixFormat failed: %08x\0A\00", align 1
@AUDCLNT_SHAREMODE_SHARED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Initialize failed: %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"Unable to open the same device twice. Skipping session tests\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"AudioClient wasn't released: %u\0A\00", align 1
@mme = common dso_local global i32 0, align 4
@eCapture = common dso_local global i32 0, align 4
@eMultimedia = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"Activate %08x &out pointer\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Activate failed: %08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [58 x i8] c"Initialize failed for capture in rendering session: %08x\0A\00", align 1
@IID_IAudioSessionControl = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [25 x i8] c"GetService failed: %08x\0A\00", align 1
@.str.10 = private unnamed_addr constant [75 x i8] c"No capture session: %08x; skipping capture device in render session tests\0A\00", align 1
@IID_IAudioSessionControl2 = common dso_local global i32 0, align 4
@E_NOINTERFACE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [35 x i8] c"GetService gave wrong error: %08x\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"Got different controls: %p %p\0A\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"AudioSessionControl was destroyed\0A\00", align 1
@NULL_PTR_ERR = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [33 x i8] c"GetState gave wrong error: %08x\0A\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"GetState failed: %08x\0A\00", align 1
@AudioSessionStateInactive = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [21 x i8] c"Got wrong state: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"Start failed: %08x\0A\00", align 1
@AudioSessionStateActive = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [19 x i8] c"Stop failed: %08x\0A\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"AudioSessionControl wasn't released: %u\0A\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"AudioClient had wrong refcount: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_session() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i32* null, i32** %6, align 8
  %14 = call i32 @CoCreateGuid(i32* %8)
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %12, align 4
  %16 = load i32, i32* @S_OK, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* %12, align 4
  %20 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32*, i32** @dev, align 8
  %22 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %23 = bitcast i32** %1 to i8**
  %24 = call i32 @IMMDevice_Activate(i32* %21, i32* @IID_IAudioClient, i32 %22, i32* null, i8** %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* @S_OK, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* %12, align 4
  %30 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %12, align 4
  %32 = call i64 @FAILED(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %0
  br label %541

35:                                               ; preds = %0
  %36 = load i32*, i32** %1, align 8
  %37 = call i32 @IAudioClient_GetMixFormat(i32* %36, i32** %10)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @S_OK, align 4
  %40 = icmp eq i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* %12, align 4
  %43 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = load i32*, i32** %1, align 8
  %45 = load i32, i32* @AUDCLNT_SHAREMODE_SHARED, align 4
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @IAudioClient_Initialize(i32* %44, i32 %45, i32 0, i32 5000000, i32 0, i32* %46, i32* %8)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @S_OK, align 4
  %50 = icmp eq i32 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %12, align 4
  %53 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @S_OK, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %35
  %58 = load i32*, i32** @dev, align 8
  %59 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %60 = bitcast i32** %2 to i8**
  %61 = call i32 @IMMDevice_Activate(i32* %58, i32* @IID_IAudioClient, i32 %59, i32* null, i8** %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @S_OK, align 4
  %64 = icmp eq i32 %62, %63
  %65 = zext i1 %64 to i32
  %66 = load i32, i32* %12, align 4
  %67 = call i32 (i32, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %57, %35
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @S_OK, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %68
  %73 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0))
  %74 = load i32*, i32** %1, align 8
  %75 = call i32 @IAudioClient_Release(i32* %74)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp eq i32 %76, 0
  %78 = zext i1 %77 to i32
  %79 = load i32, i32* %11, align 4
  %80 = call i32 (i32, i8*, ...) @ok(i32 %78, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %79)
  %81 = load i32*, i32** %10, align 8
  %82 = call i32 @CoTaskMemFree(i32* %81)
  br label %541

83:                                               ; preds = %68
  %84 = load i32*, i32** %2, align 8
  %85 = load i32, i32* @AUDCLNT_SHAREMODE_SHARED, align 4
  %86 = load i32*, i32** %10, align 8
  %87 = call i32 @IAudioClient_Initialize(i32* %84, i32 %85, i32 0, i32 5000000, i32 0, i32* %86, i32* %8)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* @S_OK, align 4
  %90 = icmp eq i32 %88, %89
  %91 = zext i1 %90 to i32
  %92 = load i32, i32* %12, align 4
  %93 = call i32 (i32, i8*, ...) @ok(i32 %91, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* @mme, align 4
  %95 = load i32, i32* @eCapture, align 4
  %96 = load i32, i32* @eMultimedia, align 4
  %97 = call i32 @IMMDeviceEnumerator_GetDefaultAudioEndpoint(i32 %94, i32 %95, i32 %96, i32** %7)
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* @S_OK, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %124

101:                                              ; preds = %83
  %102 = load i32*, i32** %7, align 8
  %103 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %104 = bitcast i32** %3 to i8**
  %105 = call i32 @IMMDevice_Activate(i32* %102, i32* @IID_IAudioClient, i32 %103, i32* null, i8** %104)
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* @S_OK, align 4
  %108 = icmp eq i32 %106, %107
  %109 = zext i1 %108 to i32
  %110 = load i32*, i32** %3, align 8
  %111 = icmp eq i32* %110, null
  %112 = zext i1 %111 to i32
  %113 = xor i32 %109, %112
  %114 = load i32, i32* %12, align 4
  %115 = call i32 (i32, i8*, ...) @ok(i32 %113, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* @S_OK, align 4
  %118 = icmp eq i32 %116, %117
  %119 = zext i1 %118 to i32
  %120 = load i32, i32* %12, align 4
  %121 = call i32 (i32, i8*, ...) @ok(i32 %119, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %120)
  %122 = load i32*, i32** %7, align 8
  %123 = call i32 @IMMDevice_Release(i32* %122)
  br label %124

124:                                              ; preds = %101, %83
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* @S_OK, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %149

128:                                              ; preds = %124
  %129 = load i32*, i32** %3, align 8
  %130 = call i32 @IAudioClient_GetMixFormat(i32* %129, i32** %13)
  store i32 %130, i32* %12, align 4
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* @S_OK, align 4
  %133 = icmp eq i32 %131, %132
  %134 = zext i1 %133 to i32
  %135 = load i32, i32* %12, align 4
  %136 = call i32 (i32, i8*, ...) @ok(i32 %134, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %135)
  %137 = load i32*, i32** %3, align 8
  %138 = load i32, i32* @AUDCLNT_SHAREMODE_SHARED, align 4
  %139 = load i32*, i32** %13, align 8
  %140 = call i32 @IAudioClient_Initialize(i32* %137, i32 %138, i32 0, i32 5000000, i32 0, i32* %139, i32* %8)
  store i32 %140, i32* %12, align 4
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* @S_OK, align 4
  %143 = icmp eq i32 %141, %142
  %144 = zext i1 %143 to i32
  %145 = load i32, i32* %12, align 4
  %146 = call i32 (i32, i8*, ...) @ok(i32 %144, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i64 0, i64 0), i32 %145)
  %147 = load i32*, i32** %13, align 8
  %148 = call i32 @CoTaskMemFree(i32* %147)
  br label %149

149:                                              ; preds = %128, %124
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* @S_OK, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %168

153:                                              ; preds = %149
  %154 = load i32*, i32** %3, align 8
  %155 = bitcast i32** %6 to i8**
  %156 = call i32 @IAudioClient_GetService(i32* %154, i32* @IID_IAudioSessionControl, i8** %155)
  store i32 %156, i32* %12, align 4
  %157 = load i32, i32* %12, align 4
  %158 = load i32, i32* @S_OK, align 4
  %159 = icmp eq i32 %157, %158
  %160 = zext i1 %159 to i32
  %161 = load i32, i32* %12, align 4
  %162 = call i32 (i32, i8*, ...) @ok(i32 %160, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %161)
  %163 = load i32, i32* %12, align 4
  %164 = call i64 @FAILED(i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %153
  store i32* null, i32** %6, align 8
  br label %167

167:                                              ; preds = %166, %153
  br label %171

168:                                              ; preds = %149
  %169 = load i32, i32* %12, align 4
  %170 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.10, i64 0, i64 0), i32 %169)
  br label %171

171:                                              ; preds = %168, %167
  %172 = load i32*, i32** %1, align 8
  %173 = bitcast i32** %4 to i8**
  %174 = call i32 @IAudioClient_GetService(i32* %172, i32* @IID_IAudioSessionControl2, i8** %173)
  store i32 %174, i32* %12, align 4
  %175 = load i32, i32* %12, align 4
  %176 = load i32, i32* @E_NOINTERFACE, align 4
  %177 = icmp eq i32 %175, %176
  %178 = zext i1 %177 to i32
  %179 = load i32, i32* %12, align 4
  %180 = call i32 (i32, i8*, ...) @ok(i32 %178, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), i32 %179)
  %181 = load i32*, i32** %1, align 8
  %182 = bitcast i32** %4 to i8**
  %183 = call i32 @IAudioClient_GetService(i32* %181, i32* @IID_IAudioSessionControl, i8** %182)
  store i32 %183, i32* %12, align 4
  %184 = load i32, i32* %12, align 4
  %185 = load i32, i32* @S_OK, align 4
  %186 = icmp eq i32 %184, %185
  %187 = zext i1 %186 to i32
  %188 = load i32, i32* %12, align 4
  %189 = call i32 (i32, i8*, ...) @ok(i32 %187, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %188)
  %190 = load i32*, i32** %1, align 8
  %191 = bitcast i32** %5 to i8**
  %192 = call i32 @IAudioClient_GetService(i32* %190, i32* @IID_IAudioSessionControl, i8** %191)
  store i32 %192, i32* %12, align 4
  %193 = load i32, i32* %12, align 4
  %194 = load i32, i32* @S_OK, align 4
  %195 = icmp eq i32 %193, %194
  %196 = zext i1 %195 to i32
  %197 = load i32, i32* %12, align 4
  %198 = call i32 (i32, i8*, ...) @ok(i32 %196, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %197)
  %199 = load i32*, i32** %4, align 8
  %200 = load i32*, i32** %5, align 8
  %201 = icmp eq i32* %199, %200
  %202 = zext i1 %201 to i32
  %203 = load i32*, i32** %4, align 8
  %204 = load i32*, i32** %5, align 8
  %205 = call i32 (i32, i8*, ...) @ok(i32 %202, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i32* %203, i32* %204)
  %206 = load i32*, i32** %5, align 8
  %207 = call i32 @IAudioSessionControl2_Release(i32* %206)
  store i32 %207, i32* %11, align 4
  %208 = load i32, i32* %11, align 4
  %209 = icmp ne i32 %208, 0
  %210 = zext i1 %209 to i32
  %211 = call i32 (i32, i8*, ...) @ok(i32 %210, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0))
  %212 = load i32*, i32** %2, align 8
  %213 = bitcast i32** %5 to i8**
  %214 = call i32 @IAudioClient_GetService(i32* %212, i32* @IID_IAudioSessionControl, i8** %213)
  store i32 %214, i32* %12, align 4
  %215 = load i32, i32* %12, align 4
  %216 = load i32, i32* @S_OK, align 4
  %217 = icmp eq i32 %215, %216
  %218 = zext i1 %217 to i32
  %219 = load i32, i32* %12, align 4
  %220 = call i32 (i32, i8*, ...) @ok(i32 %218, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %219)
  %221 = load i32*, i32** %4, align 8
  %222 = call i32 @IAudioSessionControl2_GetState(i32* %221, i32* null)
  store i32 %222, i32* %12, align 4
  %223 = load i32, i32* %12, align 4
  %224 = load i32, i32* @NULL_PTR_ERR, align 4
  %225 = icmp eq i32 %223, %224
  %226 = zext i1 %225 to i32
  %227 = load i32, i32* %12, align 4
  %228 = call i32 (i32, i8*, ...) @ok(i32 %226, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0), i32 %227)
  %229 = load i32*, i32** %4, align 8
  %230 = call i32 @IAudioSessionControl2_GetState(i32* %229, i32* %9)
  store i32 %230, i32* %12, align 4
  %231 = load i32, i32* %12, align 4
  %232 = load i32, i32* @S_OK, align 4
  %233 = icmp eq i32 %231, %232
  %234 = zext i1 %233 to i32
  %235 = load i32, i32* %12, align 4
  %236 = call i32 (i32, i8*, ...) @ok(i32 %234, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i32 %235)
  %237 = load i32, i32* %9, align 4
  %238 = load i32, i32* @AudioSessionStateInactive, align 4
  %239 = icmp eq i32 %237, %238
  %240 = zext i1 %239 to i32
  %241 = load i32, i32* %9, align 4
  %242 = call i32 (i32, i8*, ...) @ok(i32 %240, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i32 %241)
  %243 = load i32*, i32** %5, align 8
  %244 = call i32 @IAudioSessionControl2_GetState(i32* %243, i32* %9)
  store i32 %244, i32* %12, align 4
  %245 = load i32, i32* %12, align 4
  %246 = load i32, i32* @S_OK, align 4
  %247 = icmp eq i32 %245, %246
  %248 = zext i1 %247 to i32
  %249 = load i32, i32* %12, align 4
  %250 = call i32 (i32, i8*, ...) @ok(i32 %248, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i32 %249)
  %251 = load i32, i32* %9, align 4
  %252 = load i32, i32* @AudioSessionStateInactive, align 4
  %253 = icmp eq i32 %251, %252
  %254 = zext i1 %253 to i32
  %255 = load i32, i32* %9, align 4
  %256 = call i32 (i32, i8*, ...) @ok(i32 %254, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i32 %255)
  %257 = load i32*, i32** %6, align 8
  %258 = icmp ne i32* %257, null
  br i1 %258, label %259, label %274

259:                                              ; preds = %171
  %260 = load i32*, i32** %6, align 8
  %261 = call i32 @IAudioSessionControl2_GetState(i32* %260, i32* %9)
  store i32 %261, i32* %12, align 4
  %262 = load i32, i32* %12, align 4
  %263 = load i32, i32* @S_OK, align 4
  %264 = icmp eq i32 %262, %263
  %265 = zext i1 %264 to i32
  %266 = load i32, i32* %12, align 4
  %267 = call i32 (i32, i8*, ...) @ok(i32 %265, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i32 %266)
  %268 = load i32, i32* %9, align 4
  %269 = load i32, i32* @AudioSessionStateInactive, align 4
  %270 = icmp eq i32 %268, %269
  %271 = zext i1 %270 to i32
  %272 = load i32, i32* %9, align 4
  %273 = call i32 (i32, i8*, ...) @ok(i32 %271, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i32 %272)
  br label %274

274:                                              ; preds = %259, %171
  %275 = load i32*, i32** %1, align 8
  %276 = call i32 @IAudioClient_Start(i32* %275)
  store i32 %276, i32* %12, align 4
  %277 = load i32, i32* %12, align 4
  %278 = load i32, i32* @S_OK, align 4
  %279 = icmp eq i32 %277, %278
  %280 = zext i1 %279 to i32
  %281 = load i32, i32* %12, align 4
  %282 = call i32 (i32, i8*, ...) @ok(i32 %280, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i32 %281)
  %283 = load i32*, i32** %4, align 8
  %284 = call i32 @IAudioSessionControl2_GetState(i32* %283, i32* %9)
  store i32 %284, i32* %12, align 4
  %285 = load i32, i32* %12, align 4
  %286 = load i32, i32* @S_OK, align 4
  %287 = icmp eq i32 %285, %286
  %288 = zext i1 %287 to i32
  %289 = load i32, i32* %12, align 4
  %290 = call i32 (i32, i8*, ...) @ok(i32 %288, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i32 %289)
  %291 = load i32, i32* %9, align 4
  %292 = load i32, i32* @AudioSessionStateActive, align 4
  %293 = icmp eq i32 %291, %292
  %294 = zext i1 %293 to i32
  %295 = load i32, i32* %9, align 4
  %296 = call i32 (i32, i8*, ...) @ok(i32 %294, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i32 %295)
  %297 = load i32*, i32** %5, align 8
  %298 = call i32 @IAudioSessionControl2_GetState(i32* %297, i32* %9)
  store i32 %298, i32* %12, align 4
  %299 = load i32, i32* %12, align 4
  %300 = load i32, i32* @S_OK, align 4
  %301 = icmp eq i32 %299, %300
  %302 = zext i1 %301 to i32
  %303 = load i32, i32* %12, align 4
  %304 = call i32 (i32, i8*, ...) @ok(i32 %302, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i32 %303)
  %305 = load i32, i32* %9, align 4
  %306 = load i32, i32* @AudioSessionStateActive, align 4
  %307 = icmp eq i32 %305, %306
  %308 = zext i1 %307 to i32
  %309 = load i32, i32* %9, align 4
  %310 = call i32 (i32, i8*, ...) @ok(i32 %308, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i32 %309)
  %311 = load i32*, i32** %6, align 8
  %312 = icmp ne i32* %311, null
  br i1 %312, label %313, label %328

313:                                              ; preds = %274
  %314 = load i32*, i32** %6, align 8
  %315 = call i32 @IAudioSessionControl2_GetState(i32* %314, i32* %9)
  store i32 %315, i32* %12, align 4
  %316 = load i32, i32* %12, align 4
  %317 = load i32, i32* @S_OK, align 4
  %318 = icmp eq i32 %316, %317
  %319 = zext i1 %318 to i32
  %320 = load i32, i32* %12, align 4
  %321 = call i32 (i32, i8*, ...) @ok(i32 %319, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i32 %320)
  %322 = load i32, i32* %9, align 4
  %323 = load i32, i32* @AudioSessionStateInactive, align 4
  %324 = icmp eq i32 %322, %323
  %325 = zext i1 %324 to i32
  %326 = load i32, i32* %9, align 4
  %327 = call i32 (i32, i8*, ...) @ok(i32 %325, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i32 %326)
  br label %328

328:                                              ; preds = %313, %274
  %329 = load i32*, i32** %1, align 8
  %330 = call i32 @IAudioClient_Stop(i32* %329)
  store i32 %330, i32* %12, align 4
  %331 = load i32, i32* %12, align 4
  %332 = load i32, i32* @S_OK, align 4
  %333 = icmp eq i32 %331, %332
  %334 = zext i1 %333 to i32
  %335 = load i32, i32* %12, align 4
  %336 = call i32 (i32, i8*, ...) @ok(i32 %334, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i32 %335)
  %337 = load i32*, i32** %4, align 8
  %338 = call i32 @IAudioSessionControl2_GetState(i32* %337, i32* %9)
  store i32 %338, i32* %12, align 4
  %339 = load i32, i32* %12, align 4
  %340 = load i32, i32* @S_OK, align 4
  %341 = icmp eq i32 %339, %340
  %342 = zext i1 %341 to i32
  %343 = load i32, i32* %12, align 4
  %344 = call i32 (i32, i8*, ...) @ok(i32 %342, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i32 %343)
  %345 = load i32, i32* %9, align 4
  %346 = load i32, i32* @AudioSessionStateInactive, align 4
  %347 = icmp eq i32 %345, %346
  %348 = zext i1 %347 to i32
  %349 = load i32, i32* %9, align 4
  %350 = call i32 (i32, i8*, ...) @ok(i32 %348, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i32 %349)
  %351 = load i32*, i32** %5, align 8
  %352 = call i32 @IAudioSessionControl2_GetState(i32* %351, i32* %9)
  store i32 %352, i32* %12, align 4
  %353 = load i32, i32* %12, align 4
  %354 = load i32, i32* @S_OK, align 4
  %355 = icmp eq i32 %353, %354
  %356 = zext i1 %355 to i32
  %357 = load i32, i32* %12, align 4
  %358 = call i32 (i32, i8*, ...) @ok(i32 %356, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i32 %357)
  %359 = load i32, i32* %9, align 4
  %360 = load i32, i32* @AudioSessionStateInactive, align 4
  %361 = icmp eq i32 %359, %360
  %362 = zext i1 %361 to i32
  %363 = load i32, i32* %9, align 4
  %364 = call i32 (i32, i8*, ...) @ok(i32 %362, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i32 %363)
  %365 = load i32*, i32** %6, align 8
  %366 = icmp ne i32* %365, null
  br i1 %366, label %367, label %496

367:                                              ; preds = %328
  %368 = load i32*, i32** %6, align 8
  %369 = call i32 @IAudioSessionControl2_GetState(i32* %368, i32* %9)
  store i32 %369, i32* %12, align 4
  %370 = load i32, i32* %12, align 4
  %371 = load i32, i32* @S_OK, align 4
  %372 = icmp eq i32 %370, %371
  %373 = zext i1 %372 to i32
  %374 = load i32, i32* %12, align 4
  %375 = call i32 (i32, i8*, ...) @ok(i32 %373, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i32 %374)
  %376 = load i32, i32* %9, align 4
  %377 = load i32, i32* @AudioSessionStateInactive, align 4
  %378 = icmp eq i32 %376, %377
  %379 = zext i1 %378 to i32
  %380 = load i32, i32* %9, align 4
  %381 = call i32 (i32, i8*, ...) @ok(i32 %379, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i32 %380)
  %382 = load i32*, i32** %3, align 8
  %383 = call i32 @IAudioClient_Start(i32* %382)
  store i32 %383, i32* %12, align 4
  %384 = load i32, i32* %12, align 4
  %385 = load i32, i32* @S_OK, align 4
  %386 = icmp eq i32 %384, %385
  %387 = zext i1 %386 to i32
  %388 = load i32, i32* %12, align 4
  %389 = call i32 (i32, i8*, ...) @ok(i32 %387, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i32 %388)
  %390 = load i32*, i32** %4, align 8
  %391 = call i32 @IAudioSessionControl2_GetState(i32* %390, i32* %9)
  store i32 %391, i32* %12, align 4
  %392 = load i32, i32* %12, align 4
  %393 = load i32, i32* @S_OK, align 4
  %394 = icmp eq i32 %392, %393
  %395 = zext i1 %394 to i32
  %396 = load i32, i32* %12, align 4
  %397 = call i32 (i32, i8*, ...) @ok(i32 %395, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i32 %396)
  %398 = load i32, i32* %9, align 4
  %399 = load i32, i32* @AudioSessionStateInactive, align 4
  %400 = icmp eq i32 %398, %399
  %401 = zext i1 %400 to i32
  %402 = load i32, i32* %9, align 4
  %403 = call i32 (i32, i8*, ...) @ok(i32 %401, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i32 %402)
  %404 = load i32*, i32** %5, align 8
  %405 = call i32 @IAudioSessionControl2_GetState(i32* %404, i32* %9)
  store i32 %405, i32* %12, align 4
  %406 = load i32, i32* %12, align 4
  %407 = load i32, i32* @S_OK, align 4
  %408 = icmp eq i32 %406, %407
  %409 = zext i1 %408 to i32
  %410 = load i32, i32* %12, align 4
  %411 = call i32 (i32, i8*, ...) @ok(i32 %409, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i32 %410)
  %412 = load i32, i32* %9, align 4
  %413 = load i32, i32* @AudioSessionStateInactive, align 4
  %414 = icmp eq i32 %412, %413
  %415 = zext i1 %414 to i32
  %416 = load i32, i32* %9, align 4
  %417 = call i32 (i32, i8*, ...) @ok(i32 %415, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i32 %416)
  %418 = load i32*, i32** %6, align 8
  %419 = call i32 @IAudioSessionControl2_GetState(i32* %418, i32* %9)
  store i32 %419, i32* %12, align 4
  %420 = load i32, i32* %12, align 4
  %421 = load i32, i32* @S_OK, align 4
  %422 = icmp eq i32 %420, %421
  %423 = zext i1 %422 to i32
  %424 = load i32, i32* %12, align 4
  %425 = call i32 (i32, i8*, ...) @ok(i32 %423, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i32 %424)
  %426 = load i32, i32* %9, align 4
  %427 = load i32, i32* @AudioSessionStateActive, align 4
  %428 = icmp eq i32 %426, %427
  %429 = zext i1 %428 to i32
  %430 = load i32, i32* %9, align 4
  %431 = call i32 (i32, i8*, ...) @ok(i32 %429, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i32 %430)
  %432 = load i32*, i32** %3, align 8
  %433 = call i32 @IAudioClient_Stop(i32* %432)
  store i32 %433, i32* %12, align 4
  %434 = load i32, i32* %12, align 4
  %435 = load i32, i32* @S_OK, align 4
  %436 = icmp eq i32 %434, %435
  %437 = zext i1 %436 to i32
  %438 = load i32, i32* %12, align 4
  %439 = call i32 (i32, i8*, ...) @ok(i32 %437, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 %438)
  %440 = load i32*, i32** %4, align 8
  %441 = call i32 @IAudioSessionControl2_GetState(i32* %440, i32* %9)
  store i32 %441, i32* %12, align 4
  %442 = load i32, i32* %12, align 4
  %443 = load i32, i32* @S_OK, align 4
  %444 = icmp eq i32 %442, %443
  %445 = zext i1 %444 to i32
  %446 = load i32, i32* %12, align 4
  %447 = call i32 (i32, i8*, ...) @ok(i32 %445, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i32 %446)
  %448 = load i32, i32* %9, align 4
  %449 = load i32, i32* @AudioSessionStateInactive, align 4
  %450 = icmp eq i32 %448, %449
  %451 = zext i1 %450 to i32
  %452 = load i32, i32* %9, align 4
  %453 = call i32 (i32, i8*, ...) @ok(i32 %451, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i32 %452)
  %454 = load i32*, i32** %5, align 8
  %455 = call i32 @IAudioSessionControl2_GetState(i32* %454, i32* %9)
  store i32 %455, i32* %12, align 4
  %456 = load i32, i32* %12, align 4
  %457 = load i32, i32* @S_OK, align 4
  %458 = icmp eq i32 %456, %457
  %459 = zext i1 %458 to i32
  %460 = load i32, i32* %12, align 4
  %461 = call i32 (i32, i8*, ...) @ok(i32 %459, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i32 %460)
  %462 = load i32, i32* %9, align 4
  %463 = load i32, i32* @AudioSessionStateInactive, align 4
  %464 = icmp eq i32 %462, %463
  %465 = zext i1 %464 to i32
  %466 = load i32, i32* %9, align 4
  %467 = call i32 (i32, i8*, ...) @ok(i32 %465, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i32 %466)
  %468 = load i32*, i32** %6, align 8
  %469 = call i32 @IAudioSessionControl2_GetState(i32* %468, i32* %9)
  store i32 %469, i32* %12, align 4
  %470 = load i32, i32* %12, align 4
  %471 = load i32, i32* @S_OK, align 4
  %472 = icmp eq i32 %470, %471
  %473 = zext i1 %472 to i32
  %474 = load i32, i32* %12, align 4
  %475 = call i32 (i32, i8*, ...) @ok(i32 %473, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i32 %474)
  %476 = load i32, i32* %9, align 4
  %477 = load i32, i32* @AudioSessionStateInactive, align 4
  %478 = icmp eq i32 %476, %477
  %479 = zext i1 %478 to i32
  %480 = load i32, i32* %9, align 4
  %481 = call i32 (i32, i8*, ...) @ok(i32 %479, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i32 %480)
  %482 = load i32*, i32** %6, align 8
  %483 = call i32 @IAudioSessionControl2_Release(i32* %482)
  store i32 %483, i32* %11, align 4
  %484 = load i32, i32* %11, align 4
  %485 = icmp eq i32 %484, 0
  %486 = zext i1 %485 to i32
  %487 = load i32, i32* %11, align 4
  %488 = call i32 (i32, i8*, ...) @ok(i32 %486, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.19, i64 0, i64 0), i32 %487)
  %489 = load i32*, i32** %3, align 8
  %490 = call i32 @IAudioClient_Release(i32* %489)
  store i32 %490, i32* %11, align 4
  %491 = load i32, i32* %11, align 4
  %492 = icmp eq i32 %491, 0
  %493 = zext i1 %492 to i32
  %494 = load i32, i32* %11, align 4
  %495 = call i32 (i32, i8*, ...) @ok(i32 %493, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %494)
  br label %496

496:                                              ; preds = %367, %328
  %497 = load i32*, i32** %4, align 8
  %498 = call i32 @IAudioSessionControl2_Release(i32* %497)
  store i32 %498, i32* %11, align 4
  %499 = load i32, i32* %11, align 4
  %500 = icmp eq i32 %499, 0
  %501 = zext i1 %500 to i32
  %502 = load i32, i32* %11, align 4
  %503 = call i32 (i32, i8*, ...) @ok(i32 %501, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.19, i64 0, i64 0), i32 %502)
  %504 = load i32*, i32** %1, align 8
  %505 = call i32 @IAudioClient_Release(i32* %504)
  store i32 %505, i32* %11, align 4
  %506 = load i32, i32* %11, align 4
  %507 = icmp eq i32 %506, 0
  %508 = zext i1 %507 to i32
  %509 = load i32, i32* %11, align 4
  %510 = call i32 (i32, i8*, ...) @ok(i32 %508, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %509)
  %511 = load i32*, i32** %2, align 8
  %512 = call i32 @IAudioClient_Release(i32* %511)
  store i32 %512, i32* %11, align 4
  %513 = load i32, i32* %11, align 4
  %514 = icmp eq i32 %513, 1
  %515 = zext i1 %514 to i32
  %516 = load i32, i32* %11, align 4
  %517 = call i32 (i32, i8*, ...) @ok(i32 %515, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0), i32 %516)
  %518 = load i32*, i32** %5, align 8
  %519 = call i32 @IAudioSessionControl2_GetState(i32* %518, i32* %9)
  store i32 %519, i32* %12, align 4
  %520 = load i32, i32* %12, align 4
  %521 = load i32, i32* @S_OK, align 4
  %522 = icmp eq i32 %520, %521
  %523 = zext i1 %522 to i32
  %524 = load i32, i32* %12, align 4
  %525 = call i32 (i32, i8*, ...) @ok(i32 %523, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i32 %524)
  %526 = load i32, i32* %9, align 4
  %527 = load i32, i32* @AudioSessionStateInactive, align 4
  %528 = icmp eq i32 %526, %527
  %529 = zext i1 %528 to i32
  %530 = load i32, i32* %9, align 4
  %531 = call i32 (i32, i8*, ...) @ok(i32 %529, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i32 %530)
  %532 = load i32*, i32** %5, align 8
  %533 = call i32 @IAudioSessionControl2_Release(i32* %532)
  store i32 %533, i32* %11, align 4
  %534 = load i32, i32* %11, align 4
  %535 = icmp eq i32 %534, 0
  %536 = zext i1 %535 to i32
  %537 = load i32, i32* %11, align 4
  %538 = call i32 (i32, i8*, ...) @ok(i32 %536, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.19, i64 0, i64 0), i32 %537)
  %539 = load i32*, i32** %10, align 8
  %540 = call i32 @CoTaskMemFree(i32* %539)
  br label %541

541:                                              ; preds = %496, %72, %34
  ret void
}

declare dso_local i32 @CoCreateGuid(i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @IMMDevice_Activate(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IAudioClient_GetMixFormat(i32*, i32**) #1

declare dso_local i32 @IAudioClient_Initialize(i32*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @skip(i8*, ...) #1

declare dso_local i32 @IAudioClient_Release(i32*) #1

declare dso_local i32 @CoTaskMemFree(i32*) #1

declare dso_local i32 @IMMDeviceEnumerator_GetDefaultAudioEndpoint(i32, i32, i32, i32**) #1

declare dso_local i32 @IMMDevice_Release(i32*) #1

declare dso_local i32 @IAudioClient_GetService(i32*, i32*, i8**) #1

declare dso_local i32 @IAudioSessionControl2_Release(i32*) #1

declare dso_local i32 @IAudioSessionControl2_GetState(i32*, i32*) #1

declare dso_local i32 @IAudioClient_Start(i32*) #1

declare dso_local i32 @IAudioClient_Stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
