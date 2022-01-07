; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/dsound/extr_dsound8.c_test_dsound8.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/dsound/extr_dsound8.c_test_dsound8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@DSERR_INVALIDPARAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"DirectSoundCreate8() should have returned DSERR_INVALIDPARAM, returned: %08x\0A\00", align 1
@DS_OK = common dso_local global i32 0, align 4
@DSERR_NODRIVER = common dso_local global i32 0, align 4
@DSERR_ALLOCATED = common dso_local global i32 0, align 4
@E_FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"DirectSoundCreate8() failed: %08x\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@CLSID_DirectSound8 = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IDirectSound8 = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"CoCreateInstance(CLSID_DirectSound) failed: %08x\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [58 x i8] c"IDirectSound8_Release() has %d references, should have 0\0A\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"DirectSound8 objects should be unique: dso=%p,dso1=%p\0A\00", align 1
@DSERR_GENERIC = common dso_local global i32 0, align 4
@WAVE_FORMAT_PCM = common dso_local global i32 0, align 4
@DSBCAPS_GETCURRENTPOSITION2 = common dso_local global i32 0, align 4
@DSBCAPS_CTRL3D = common dso_local global i32 0, align 4
@BUFFER_LEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [77 x i8] c"IDirectSound8_CreateSoundBuffer() failed to create a secondary buffer: %08x\0A\00", align 1
@IID_IDirectSound3DBuffer = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"IDirectSound8_QueryInterface() failed: %08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [64 x i8] c"IDirectSound3DBuffer_AddRef() has %d references, should have 2\0A\00", align 1
@IID_IDirectSoundBuffer8 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [62 x i8] c"IDirectSoundBuffer8 iface different from IDirectSoundBuffer.\0A\00", align 1
@.str.9 = private unnamed_addr constant [63 x i8] c"IDirectSoundBuffer8_AddRef() has %d references, should have 3\0A\00", align 1
@.str.10 = private unnamed_addr constant [62 x i8] c"IDirectSoundBuffer_AddRef() has %d references, should have 4\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_dsound8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_dsound8(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__, align 8
  %10 = alloca %struct.TYPE_6__, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* null, i32** %5, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @pDirectSoundCreate8(i32 %13, i32** null, i32* null)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @DSERR_INVALIDPARAM, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* %4, align 4
  %20 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @pDirectSoundCreate8(i32 %21, i32** %5, i32* null)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @DS_OK, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %38, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @DSERR_NODRIVER, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @DSERR_ALLOCATED, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @E_FAIL, align 4
  %37 = icmp eq i32 %35, %36
  br label %38

38:                                               ; preds = %34, %30, %26, %1
  %39 = phi i1 [ true, %30 ], [ true, %26 ], [ true, %1 ], [ %37, %34 ]
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* %4, align 4
  %42 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @DS_OK, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %250

48:                                               ; preds = %38
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* @TRUE, align 4
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @IDirectSound8_test(i32* %49, i32 %50, i32 %51)
  %53 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %54 = bitcast i32** %5 to i8**
  %55 = call i32 @CoCreateInstance(i32* @CLSID_DirectSound8, i32* null, i32 %53, i32* @IID_IDirectSound8, i8** %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @S_OK, align 4
  %58 = icmp eq i32 %56, %57
  %59 = zext i1 %58 to i32
  %60 = load i32, i32* %4, align 4
  %61 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load i32*, i32** %5, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %48
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* @FALSE, align 4
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @IDirectSound8_test(i32* %65, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %64, %48
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @pDirectSoundCreate8(i32 %70, i32** %5, i32* null)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @DS_OK, align 4
  %74 = icmp eq i32 %72, %73
  %75 = zext i1 %74 to i32
  %76 = load i32, i32* %4, align 4
  %77 = call i32 (i32, i8*, ...) @ok(i32 %75, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @DS_OK, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %121

81:                                               ; preds = %69
  store i32* null, i32** %7, align 8
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @pDirectSoundCreate8(i32 %82, i32** %7, i32* null)
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @DS_OK, align 4
  %86 = icmp eq i32 %84, %85
  %87 = zext i1 %86 to i32
  %88 = load i32, i32* %4, align 4
  %89 = call i32 (i32, i8*, ...) @ok(i32 %87, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @DS_OK, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %108

93:                                               ; preds = %81
  %94 = load i32*, i32** %7, align 8
  %95 = call i32 @IDirectSound8_Release(i32* %94)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp eq i32 %96, 0
  %98 = zext i1 %97 to i32
  %99 = load i32, i32* %6, align 4
  %100 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %99)
  %101 = load i32*, i32** %5, align 8
  %102 = load i32*, i32** %7, align 8
  %103 = icmp ne i32* %101, %102
  %104 = zext i1 %103 to i32
  %105 = load i32*, i32** %5, align 8
  %106 = load i32*, i32** %7, align 8
  %107 = call i32 (i32, i8*, ...) @ok(i32 %104, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i32* %105, i32* %106)
  br label %108

108:                                              ; preds = %93, %81
  %109 = load i32*, i32** %5, align 8
  %110 = call i32 @IDirectSound8_Release(i32* %109)
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %6, align 4
  %112 = icmp eq i32 %111, 0
  %113 = zext i1 %112 to i32
  %114 = load i32, i32* %6, align 4
  %115 = call i32 (i32, i8*, ...) @ok(i32 %113, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* %6, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %108
  %119 = load i32, i32* @DSERR_GENERIC, align 4
  store i32 %119, i32* %2, align 4
  br label %250

120:                                              ; preds = %108
  br label %123

121:                                              ; preds = %69
  %122 = load i32, i32* %4, align 4
  store i32 %122, i32* %2, align 4
  br label %250

123:                                              ; preds = %120
  %124 = load i32, i32* %3, align 4
  %125 = call i32 @pDirectSoundCreate8(i32 %124, i32** %5, i32* null)
  store i32 %125, i32* %4, align 4
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* @DS_OK, align 4
  %128 = icmp eq i32 %126, %127
  %129 = zext i1 %128 to i32
  %130 = load i32, i32* %4, align 4
  %131 = call i32 (i32, i8*, ...) @ok(i32 %129, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* %4, align 4
  %133 = load i32, i32* @DS_OK, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %246

135:                                              ; preds = %123
  %136 = load i32, i32* @WAVE_FORMAT_PCM, align 4
  %137 = call i32 @init_format(%struct.TYPE_6__* %10, i32 %136, i32 11025, i32 8, i32 1)
  %138 = call i32 @ZeroMemory(%struct.TYPE_7__* %9, i32 24)
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  store i32 24, i32* %139, align 8
  %140 = load i32, i32* @DSBCAPS_GETCURRENTPOSITION2, align 4
  %141 = load i32, i32* @DSBCAPS_CTRL3D, align 4
  %142 = or i32 %140, %141
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  store i32 %142, i32* %143, align 4
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @BUFFER_LEN, align 4
  %147 = mul nsw i32 %145, %146
  %148 = sdiv i32 %147, 1000
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @align(i32 %148, i32 %150)
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 3
  store i32 %151, i32* %152, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %153, align 8
  %154 = load i32*, i32** %5, align 8
  %155 = call i32 @IDirectSound8_CreateSoundBuffer(i32* %154, %struct.TYPE_7__* %9, i32** %8, i32* null)
  store i32 %155, i32* %4, align 4
  %156 = load i32, i32* %4, align 4
  %157 = load i32, i32* @DS_OK, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %135
  %160 = load i32*, i32** %8, align 8
  %161 = icmp ne i32* %160, null
  br label %162

162:                                              ; preds = %159, %135
  %163 = phi i1 [ false, %135 ], [ %161, %159 ]
  %164 = zext i1 %163 to i32
  %165 = load i32, i32* %4, align 4
  %166 = call i32 (i32, i8*, ...) @ok(i32 %164, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.5, i64 0, i64 0), i32 %165)
  %167 = load i32, i32* %4, align 4
  %168 = load i32, i32* @DS_OK, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %233

170:                                              ; preds = %162
  %171 = load i32*, i32** %8, align 8
  %172 = icmp ne i32* %171, null
  br i1 %172, label %173, label %233

173:                                              ; preds = %170
  %174 = load i32*, i32** %8, align 8
  %175 = bitcast i32** %11 to i8**
  %176 = call i32 @IDirectSound8_QueryInterface(i32* %174, i32* @IID_IDirectSound3DBuffer, i8** %175)
  store i32 %176, i32* %4, align 4
  %177 = load i32, i32* %4, align 4
  %178 = load i32, i32* @DS_OK, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %173
  %181 = load i32*, i32** %11, align 8
  %182 = icmp ne i32* %181, null
  br label %183

183:                                              ; preds = %180, %173
  %184 = phi i1 [ false, %173 ], [ %182, %180 ]
  %185 = zext i1 %184 to i32
  %186 = load i32, i32* %4, align 4
  %187 = call i32 (i32, i8*, ...) @ok(i32 %185, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %186)
  %188 = load i32, i32* %4, align 4
  %189 = load i32, i32* @DS_OK, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %202

191:                                              ; preds = %183
  %192 = load i32*, i32** %11, align 8
  %193 = icmp ne i32* %192, null
  br i1 %193, label %194, label %202

194:                                              ; preds = %191
  %195 = load i32*, i32** %11, align 8
  %196 = call i32 @IDirectSound3DBuffer_AddRef(i32* %195)
  store i32 %196, i32* %6, align 4
  %197 = load i32, i32* %6, align 4
  %198 = icmp eq i32 %197, 2
  %199 = zext i1 %198 to i32
  %200 = load i32, i32* %6, align 4
  %201 = call i32 (i32, i8*, ...) @ok(i32 %199, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.7, i64 0, i64 0), i32 %200)
  br label %202

202:                                              ; preds = %194, %191, %183
  %203 = load i32*, i32** %8, align 8
  %204 = bitcast i32** %12 to i8**
  %205 = call i32 @IDirectSound8_QueryInterface(i32* %203, i32* @IID_IDirectSoundBuffer8, i8** %204)
  store i32 %205, i32* %4, align 4
  %206 = load i32, i32* %4, align 4
  %207 = load i32, i32* @DS_OK, align 4
  %208 = icmp eq i32 %206, %207
  br i1 %208, label %209, label %225

209:                                              ; preds = %202
  %210 = load i32*, i32** %12, align 8
  %211 = icmp ne i32* %210, null
  br i1 %211, label %212, label %225

212:                                              ; preds = %209
  %213 = load i32*, i32** %12, align 8
  %214 = load i32*, i32** %8, align 8
  %215 = icmp eq i32* %213, %214
  %216 = zext i1 %215 to i32
  %217 = call i32 (i32, i8*, ...) @ok(i32 %216, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0))
  %218 = load i32*, i32** %12, align 8
  %219 = call i32 @IDirectSoundBuffer8_AddRef(i32* %218)
  store i32 %219, i32* %6, align 4
  %220 = load i32, i32* %6, align 4
  %221 = icmp eq i32 %220, 3
  %222 = zext i1 %221 to i32
  %223 = load i32, i32* %6, align 4
  %224 = call i32 (i32, i8*, ...) @ok(i32 %222, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.9, i64 0, i64 0), i32 %223)
  br label %225

225:                                              ; preds = %212, %209, %202
  %226 = load i32*, i32** %8, align 8
  %227 = call i32 @IDirectSoundBuffer_AddRef(i32* %226)
  store i32 %227, i32* %6, align 4
  %228 = load i32, i32* %6, align 4
  %229 = icmp eq i32 %228, 4
  %230 = zext i1 %229 to i32
  %231 = load i32, i32* %6, align 4
  %232 = call i32 (i32, i8*, ...) @ok(i32 %230, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.10, i64 0, i64 0), i32 %231)
  br label %233

233:                                              ; preds = %225, %170, %162
  %234 = load i32*, i32** %5, align 8
  %235 = call i32 @IDirectSound8_Release(i32* %234)
  store i32 %235, i32* %6, align 4
  %236 = load i32, i32* %6, align 4
  %237 = icmp eq i32 %236, 0
  %238 = zext i1 %237 to i32
  %239 = load i32, i32* %6, align 4
  %240 = call i32 (i32, i8*, ...) @ok(i32 %238, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %239)
  %241 = load i32, i32* %6, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %233
  %244 = load i32, i32* @DSERR_GENERIC, align 4
  store i32 %244, i32* %2, align 4
  br label %250

245:                                              ; preds = %233
  br label %248

246:                                              ; preds = %123
  %247 = load i32, i32* %4, align 4
  store i32 %247, i32* %2, align 4
  br label %250

248:                                              ; preds = %245
  %249 = load i32, i32* @DS_OK, align 4
  store i32 %249, i32* %2, align 4
  br label %250

250:                                              ; preds = %248, %246, %243, %121, %118, %46
  %251 = load i32, i32* %2, align 4
  ret i32 %251
}

declare dso_local i32 @pDirectSoundCreate8(i32, i32**, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @IDirectSound8_test(i32*, i32, i32) #1

declare dso_local i32 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @IDirectSound8_Release(i32*) #1

declare dso_local i32 @init_format(%struct.TYPE_6__*, i32, i32, i32, i32) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @align(i32, i32) #1

declare dso_local i32 @IDirectSound8_CreateSoundBuffer(i32*, %struct.TYPE_7__*, i32**, i32*) #1

declare dso_local i32 @IDirectSound8_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IDirectSound3DBuffer_AddRef(i32*) #1

declare dso_local i32 @IDirectSoundBuffer8_AddRef(i32*) #1

declare dso_local i32 @IDirectSoundBuffer_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
