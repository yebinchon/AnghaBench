; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/dsound/extr_dsound.c_test_duplicate.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/dsound/extr_dsound.c_test_duplicate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i8*, i8* }

@DS_OK = common dso_local global i64 0, align 8
@DSERR_NODRIVER = common dso_local global i64 0, align 8
@DSERR_ALLOCATED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"DirectSoundCreate() failed: %08x\0A\00", align 1
@DSSCL_PRIORITY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"IDirectSound_SetCooperativeLevel() failed: %08x\0A\00", align 1
@DSBCAPS_PRIMARYBUFFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [73 x i8] c"IDirectSound_CreateSoundBuffer() failed to create a primary buffer %08x\0A\00", align 1
@WAVE_FORMAT_PCM = common dso_local global i32 0, align 4
@DSBCAPS_GETCURRENTPOSITION2 = common dso_local global i32 0, align 4
@DSBCAPS_CTRLPOSITIONNOTIFY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [74 x i8] c"IDirectSound_CreateSoundBuffer() failed to create a original buffer %08x\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@DSBLOCK_ENTIREBUFFER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [56 x i8] c"IDirectSoundBuffer_Lock failed to lock the buffer %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"IDirectSoundBuffer_Unlock failed to unlock %08x\0A\00", align 1
@IID_IDirectSoundNotify = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [74 x i8] c"IDirectSoundBuffer_QueryInterface() failed to create a notification %08x\0A\00", align 1
@DSBPN_OFFSETSTOP = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [57 x i8] c"IDirectSoundNotify_SetNotificationPositions failed %08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"IDirectSound_DuplicateSoundBuffer failed %08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"testing duplicated buffer without notifications.\0A\00", align 1
@WAIT_TIMEOUT = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [48 x i8] c"testing duplicated buffer with a notification.\0A\00", align 1
@WAIT_OBJECT_0 = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [63 x i8] c"IDirectSoundNotify_Release() has %d references, should have 0\0A\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"testing original buffer with a notification.\0A\00", align 1
@.str.13 = private unnamed_addr constant [63 x i8] c"IDirectSoundBuffer_Release() has %d references, should have 0\0A\00", align 1
@DSSCL_NORMAL = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [57 x i8] c"IDirectSound_Release() has %d references, should have 0\0A\00", align 1
@DSERR_GENERIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @test_duplicate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @test_duplicate(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_12__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_11__, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca [2 x i8*], align 16
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_13__, align 8
  %18 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i64 @pDirectSoundCreate(i32 %19, i32** %5, i32* null)
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @DS_OK, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %32, label %24

24:                                               ; preds = %1
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @DSERR_NODRIVER, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* @DSERR_ALLOCATED, align 8
  %31 = icmp eq i64 %29, %30
  br label %32

32:                                               ; preds = %28, %24, %1
  %33 = phi i1 [ true, %24 ], [ true, %1 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  %35 = load i64, i64* %4, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* @DS_OK, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i64, i64* %4, align 8
  store i64 %42, i64* %2, align 8
  br label %338

43:                                               ; preds = %32
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 (...) @get_hwnd()
  %46 = load i32, i32* @DSSCL_PRIORITY, align 4
  %47 = call i64 @IDirectSound_SetCooperativeLevel(i32* %44, i32 %45, i32 %46)
  store i64 %47, i64* %4, align 8
  %48 = load i64, i64* %4, align 8
  %49 = load i64, i64* @DS_OK, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i64, i64* %4, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i32 @ok(i32 %51, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i64, i64* %4, align 8
  %56 = load i64, i64* @DS_OK, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %43
  br label %324

59:                                               ; preds = %43
  %60 = call i32 @ZeroMemory(%struct.TYPE_12__* %7, i32 24)
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  store i32 24, i32* %61, align 8
  %62 = load i32, i32* @DSBCAPS_PRIMARYBUFFER, align 4
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  store i32 %62, i32* %63, align 4
  %64 = load i32*, i32** %5, align 8
  %65 = call i64 @IDirectSound_CreateSoundBuffer(i32* %64, %struct.TYPE_12__* %7, i32** %6, i32* null)
  store i64 %65, i64* %4, align 8
  %66 = load i64, i64* %4, align 8
  %67 = load i64, i64* @DS_OK, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %59
  %70 = load i32*, i32** %6, align 8
  %71 = icmp ne i32* %70, null
  br label %72

72:                                               ; preds = %69, %59
  %73 = phi i1 [ false, %59 ], [ %71, %69 ]
  %74 = zext i1 %73 to i32
  %75 = load i64, i64* %4, align 8
  %76 = trunc i64 %75 to i32
  %77 = call i32 @ok(i32 %74, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load i64, i64* %4, align 8
  %79 = load i64, i64* @DS_OK, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %312

81:                                               ; preds = %72
  %82 = load i32*, i32** %6, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %312

84:                                               ; preds = %81
  store i32* null, i32** %9, align 8
  %85 = load i32, i32* @WAVE_FORMAT_PCM, align 4
  %86 = call i32 @init_format(%struct.TYPE_11__* %10, i32 %85, i32 22050, i32 16, i32 1)
  %87 = call i32 @ZeroMemory(%struct.TYPE_12__* %7, i32 24)
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  store i32 24, i32* %88, align 8
  %89 = load i32, i32* @DSBCAPS_GETCURRENTPOSITION2, align 4
  %90 = load i32, i32* @DSBCAPS_CTRLPOSITIONNOTIFY, align 4
  %91 = or i32 %89, %90
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  store i32 %91, i32* %92, align 4
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = sdiv i32 %94, 100
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 2
  store i32 %95, i32* %96, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 3
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %97, align 8
  %98 = load i32*, i32** %5, align 8
  %99 = call i64 @IDirectSound_CreateSoundBuffer(i32* %98, %struct.TYPE_12__* %7, i32** %9, i32* null)
  store i64 %99, i64* %4, align 8
  %100 = load i64, i64* %4, align 8
  %101 = load i64, i64* @DS_OK, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %84
  %104 = load i32*, i32** %9, align 8
  %105 = icmp ne i32* %104, null
  br label %106

106:                                              ; preds = %103, %84
  %107 = phi i1 [ false, %84 ], [ %105, %103 ]
  %108 = zext i1 %107 to i32
  %109 = load i64, i64* %4, align 8
  %110 = trunc i64 %109 to i32
  %111 = call i32 @ok(i32 %108, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0), i32 %110)
  %112 = load i64, i64* %4, align 8
  %113 = load i64, i64* @DS_OK, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %304

115:                                              ; preds = %106
  %116 = load i32*, i32** %9, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %304

118:                                              ; preds = %115
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %14, align 8
  store i32 0, i32* %16, align 4
  br label %119

119:                                              ; preds = %130, %118
  %120 = load i32, i32* %16, align 4
  %121 = sext i32 %120 to i64
  %122 = icmp ult i64 %121, 2
  br i1 %122, label %123, label %133

123:                                              ; preds = %119
  %124 = load i32, i32* @FALSE, align 4
  %125 = load i32, i32* @FALSE, align 4
  %126 = call i8* @CreateEvent(i32* null, i32 %124, i32 %125, i32* null)
  %127 = load i32, i32* %16, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 %128
  store i8* %126, i8** %129, align 8
  br label %130

130:                                              ; preds = %123
  %131 = load i32, i32* %16, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %16, align 4
  br label %119

133:                                              ; preds = %119
  %134 = load i32*, i32** %9, align 8
  %135 = load i32, i32* @DSBLOCK_ENTIREBUFFER, align 4
  %136 = call i64 @IDirectSoundBuffer_Lock(i32* %134, i32 0, i32 0, %struct.TYPE_12__** %14, i32* %15, i32* null, i32* null, i32 %135)
  store i64 %136, i64* %4, align 8
  %137 = load i64, i64* %4, align 8
  %138 = load i64, i64* @DS_OK, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %133
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %142 = icmp ne %struct.TYPE_12__* %141, null
  br label %143

143:                                              ; preds = %140, %133
  %144 = phi i1 [ false, %133 ], [ %142, %140 ]
  %145 = zext i1 %144 to i32
  %146 = load i64, i64* %4, align 8
  %147 = trunc i64 %146 to i32
  %148 = call i32 @ok(i32 %145, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i32 %147)
  %149 = load i64, i64* %4, align 8
  %150 = load i64, i64* @DS_OK, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %170

152:                                              ; preds = %143
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %154 = icmp ne %struct.TYPE_12__* %153, null
  br i1 %154, label %155, label %170

155:                                              ; preds = %152
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %157 = load i32, i32* %15, align 4
  %158 = call i32 @ZeroMemory(%struct.TYPE_12__* %156, i32 %157)
  %159 = load i32*, i32** %9, align 8
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %161 = load i32, i32* %15, align 4
  %162 = call i64 @IDirectSoundBuffer_Unlock(i32* %159, %struct.TYPE_12__* %160, i32 %161, i32* null, i32 0)
  store i64 %162, i64* %4, align 8
  %163 = load i64, i64* %4, align 8
  %164 = load i64, i64* @DS_OK, align 8
  %165 = icmp eq i64 %163, %164
  %166 = zext i1 %165 to i32
  %167 = load i64, i64* %4, align 8
  %168 = trunc i64 %167 to i32
  %169 = call i32 @ok(i32 %166, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 %168)
  br label %170

170:                                              ; preds = %155, %152, %143
  %171 = load i32*, i32** %9, align 8
  %172 = bitcast i32** %12 to i8**
  %173 = call i64 @IDirectSoundBuffer_QueryInterface(i32* %171, i32* @IID_IDirectSoundNotify, i8** %172)
  store i64 %173, i64* %4, align 8
  %174 = load i64, i64* %4, align 8
  %175 = load i64, i64* @DS_OK, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %170
  %178 = load i32*, i32** %12, align 8
  %179 = icmp ne i32* %178, null
  br label %180

180:                                              ; preds = %177, %170
  %181 = phi i1 [ false, %170 ], [ %179, %177 ]
  %182 = zext i1 %181 to i32
  %183 = load i64, i64* %4, align 8
  %184 = trunc i64 %183 to i32
  %185 = call i32 @ok(i32 %182, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.6, i64 0, i64 0), i32 %184)
  %186 = load i64, i64* %4, align 8
  %187 = load i64, i64* @DS_OK, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %296

189:                                              ; preds = %180
  %190 = load i32*, i32** %12, align 8
  %191 = icmp ne i32* %190, null
  br i1 %191, label %192, label %296

192:                                              ; preds = %189
  store i32* null, i32** %18, align 8
  %193 = load i8*, i8** @DSBPN_OFFSETSTOP, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  store i8* %193, i8** %194, align 8
  %195 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 0
  %196 = load i8*, i8** %195, align 16
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  store i8* %196, i8** %197, align 8
  %198 = load i32*, i32** %12, align 8
  %199 = call i64 @IDirectSoundNotify_SetNotificationPositions(i32* %198, i32 1, %struct.TYPE_13__* %17)
  store i64 %199, i64* %4, align 8
  %200 = load i64, i64* %4, align 8
  %201 = load i64, i64* @DS_OK, align 8
  %202 = icmp eq i64 %200, %201
  %203 = zext i1 %202 to i32
  %204 = load i64, i64* %4, align 8
  %205 = trunc i64 %204 to i32
  %206 = call i32 @ok(i32 %203, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i64 0, i64 0), i32 %205)
  %207 = load i32*, i32** %5, align 8
  %208 = load i32*, i32** %9, align 8
  %209 = call i64 @IDirectSound_DuplicateSoundBuffer(i32* %207, i32* %208, i32** %11)
  store i64 %209, i64* %4, align 8
  %210 = load i64, i64* %4, align 8
  %211 = load i64, i64* @DS_OK, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %216

213:                                              ; preds = %192
  %214 = load i32*, i32** %11, align 8
  %215 = icmp ne i32* %214, null
  br label %216

216:                                              ; preds = %213, %192
  %217 = phi i1 [ false, %192 ], [ %215, %213 ]
  %218 = zext i1 %217 to i32
  %219 = load i64, i64* %4, align 8
  %220 = trunc i64 %219 to i32
  %221 = call i32 @ok(i32 %218, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0), i32 %220)
  %222 = call i32 @trace(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0))
  %223 = load i32*, i32** %11, align 8
  %224 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 0
  %225 = load i64, i64* @WAIT_TIMEOUT, align 8
  %226 = call i32 @test_notify(i32* %223, i32 2, i8** %224, i64 %225)
  %227 = load i32*, i32** %11, align 8
  %228 = bitcast i32** %18 to i8**
  %229 = call i64 @IDirectSoundBuffer_QueryInterface(i32* %227, i32* @IID_IDirectSoundNotify, i8** %228)
  store i64 %229, i64* %4, align 8
  %230 = load i64, i64* %4, align 8
  %231 = load i64, i64* @DS_OK, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %236

233:                                              ; preds = %216
  %234 = load i32*, i32** %18, align 8
  %235 = icmp ne i32* %234, null
  br label %236

236:                                              ; preds = %233, %216
  %237 = phi i1 [ false, %216 ], [ %235, %233 ]
  %238 = zext i1 %237 to i32
  %239 = load i64, i64* %4, align 8
  %240 = trunc i64 %239 to i32
  %241 = call i32 @ok(i32 %238, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.6, i64 0, i64 0), i32 %240)
  %242 = load i64, i64* %4, align 8
  %243 = load i64, i64* @DS_OK, align 8
  %244 = icmp eq i64 %242, %243
  br i1 %244, label %245, label %276

245:                                              ; preds = %236
  %246 = load i32*, i32** %18, align 8
  %247 = icmp ne i32* %246, null
  br i1 %247, label %248, label %276

248:                                              ; preds = %245
  %249 = load i8*, i8** @DSBPN_OFFSETSTOP, align 8
  %250 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  store i8* %249, i8** %250, align 8
  %251 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 1
  %252 = load i8*, i8** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  store i8* %252, i8** %253, align 8
  %254 = load i32*, i32** %18, align 8
  %255 = call i64 @IDirectSoundNotify_SetNotificationPositions(i32* %254, i32 1, %struct.TYPE_13__* %17)
  store i64 %255, i64* %4, align 8
  %256 = load i64, i64* %4, align 8
  %257 = load i64, i64* @DS_OK, align 8
  %258 = icmp eq i64 %256, %257
  %259 = zext i1 %258 to i32
  %260 = load i64, i64* %4, align 8
  %261 = trunc i64 %260 to i32
  %262 = call i32 @ok(i32 %259, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i64 0, i64 0), i32 %261)
  %263 = call i32 @trace(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0))
  %264 = load i32*, i32** %11, align 8
  %265 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 0
  %266 = load i64, i64* @WAIT_OBJECT_0, align 8
  %267 = add nsw i64 %266, 1
  %268 = call i32 @test_notify(i32* %264, i32 2, i8** %265, i64 %267)
  %269 = load i32*, i32** %18, align 8
  %270 = call i32 @IDirectSoundNotify_Release(i32* %269)
  store i32 %270, i32* %8, align 4
  %271 = load i32, i32* %8, align 4
  %272 = icmp eq i32 %271, 0
  %273 = zext i1 %272 to i32
  %274 = load i32, i32* %8, align 4
  %275 = call i32 @ok(i32 %273, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.11, i64 0, i64 0), i32 %274)
  br label %276

276:                                              ; preds = %248, %245, %236
  %277 = load i32*, i32** %12, align 8
  %278 = call i32 @IDirectSoundNotify_Release(i32* %277)
  store i32 %278, i32* %8, align 4
  %279 = load i32, i32* %8, align 4
  %280 = icmp eq i32 %279, 0
  %281 = zext i1 %280 to i32
  %282 = load i32, i32* %8, align 4
  %283 = call i32 @ok(i32 %281, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.11, i64 0, i64 0), i32 %282)
  %284 = call i32 @trace(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i64 0, i64 0))
  %285 = load i32*, i32** %9, align 8
  %286 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 0
  %287 = load i64, i64* @WAIT_OBJECT_0, align 8
  %288 = call i32 @test_notify(i32* %285, i32 2, i8** %286, i64 %287)
  %289 = load i32*, i32** %11, align 8
  %290 = call i32 @IDirectSoundBuffer_Release(i32* %289)
  store i32 %290, i32* %8, align 4
  %291 = load i32, i32* %8, align 4
  %292 = icmp eq i32 %291, 0
  %293 = zext i1 %292 to i32
  %294 = load i32, i32* %8, align 4
  %295 = call i32 @ok(i32 %293, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.13, i64 0, i64 0), i32 %294)
  br label %296

296:                                              ; preds = %276, %189, %180
  %297 = load i32*, i32** %9, align 8
  %298 = call i32 @IDirectSoundBuffer_Release(i32* %297)
  store i32 %298, i32* %8, align 4
  %299 = load i32, i32* %8, align 4
  %300 = icmp eq i32 %299, 0
  %301 = zext i1 %300 to i32
  %302 = load i32, i32* %8, align 4
  %303 = call i32 @ok(i32 %301, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.13, i64 0, i64 0), i32 %302)
  br label %304

304:                                              ; preds = %296, %115, %106
  %305 = load i32*, i32** %6, align 8
  %306 = call i32 @IDirectSoundBuffer_Release(i32* %305)
  store i32 %306, i32* %8, align 4
  %307 = load i32, i32* %8, align 4
  %308 = icmp eq i32 %307, 0
  %309 = zext i1 %308 to i32
  %310 = load i32, i32* %8, align 4
  %311 = call i32 @ok(i32 %309, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.13, i64 0, i64 0), i32 %310)
  br label %312

312:                                              ; preds = %304, %81, %72
  %313 = load i32*, i32** %5, align 8
  %314 = call i32 (...) @get_hwnd()
  %315 = load i32, i32* @DSSCL_NORMAL, align 4
  %316 = call i64 @IDirectSound_SetCooperativeLevel(i32* %313, i32 %314, i32 %315)
  store i64 %316, i64* %4, align 8
  %317 = load i64, i64* %4, align 8
  %318 = load i64, i64* @DS_OK, align 8
  %319 = icmp eq i64 %317, %318
  %320 = zext i1 %319 to i32
  %321 = load i64, i64* %4, align 8
  %322 = trunc i64 %321 to i32
  %323 = call i32 @ok(i32 %320, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %322)
  br label %324

324:                                              ; preds = %312, %58
  %325 = load i32*, i32** %5, align 8
  %326 = call i32 @IDirectSound_Release(i32* %325)
  store i32 %326, i32* %8, align 4
  %327 = load i32, i32* %8, align 4
  %328 = icmp eq i32 %327, 0
  %329 = zext i1 %328 to i32
  %330 = load i32, i32* %8, align 4
  %331 = call i32 @ok(i32 %329, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.14, i64 0, i64 0), i32 %330)
  %332 = load i32, i32* %8, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %336

334:                                              ; preds = %324
  %335 = load i64, i64* @DSERR_GENERIC, align 8
  store i64 %335, i64* %2, align 8
  br label %338

336:                                              ; preds = %324
  %337 = load i64, i64* %4, align 8
  store i64 %337, i64* %2, align 8
  br label %338

338:                                              ; preds = %336, %334, %41
  %339 = load i64, i64* %2, align 8
  ret i64 %339
}

declare dso_local i64 @pDirectSoundCreate(i32, i32**, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i64 @IDirectSound_SetCooperativeLevel(i32*, i32, i32) #1

declare dso_local i32 @get_hwnd(...) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @IDirectSound_CreateSoundBuffer(i32*, %struct.TYPE_12__*, i32**, i32*) #1

declare dso_local i32 @init_format(%struct.TYPE_11__*, i32, i32, i32, i32) #1

declare dso_local i8* @CreateEvent(i32*, i32, i32, i32*) #1

declare dso_local i64 @IDirectSoundBuffer_Lock(i32*, i32, i32, %struct.TYPE_12__**, i32*, i32*, i32*, i32) #1

declare dso_local i64 @IDirectSoundBuffer_Unlock(i32*, %struct.TYPE_12__*, i32, i32*, i32) #1

declare dso_local i64 @IDirectSoundBuffer_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @IDirectSoundNotify_SetNotificationPositions(i32*, i32, %struct.TYPE_13__*) #1

declare dso_local i64 @IDirectSound_DuplicateSoundBuffer(i32*, i32*, i32**) #1

declare dso_local i32 @trace(i8*) #1

declare dso_local i32 @test_notify(i32*, i32, i8**, i64) #1

declare dso_local i32 @IDirectSoundNotify_Release(i32*) #1

declare dso_local i32 @IDirectSoundBuffer_Release(i32*) #1

declare dso_local i32 @IDirectSound_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
