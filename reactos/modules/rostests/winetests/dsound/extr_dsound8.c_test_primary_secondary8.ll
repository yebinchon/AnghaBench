; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/dsound/extr_dsound8.c_test_primary_secondary8.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/dsound/extr_dsound8.c_test_primary_secondary8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_12__*, i32, i32 }
%struct.TYPE_12__ = type { i64, i64, i64, i64, i32, i32 }

@DS_OK = common dso_local global i32 0, align 4
@DSERR_NODRIVER = common dso_local global i32 0, align 4
@DSERR_ALLOCATED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"DirectSoundCreate8() failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"IDirectSound8_GetCaps() failed: %08x\0A\00", align 1
@DSSCL_PRIORITY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"IDirectSound8_SetCooperativeLevel() failed: %08x\0A\00", align 1
@DSBCAPS_PRIMARYBUFFER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [74 x i8] c"IDirectSound8_CreateSoundBuffer() failed to create a primary buffer %08x\0A\00", align 1
@NB_FORMATS = common dso_local global i32 0, align 4
@NB_TAGS = common dso_local global i32 0, align 4
@format_tags = common dso_local global i64* null, align 8
@WAVE_FORMAT_IEEE_FLOAT = common dso_local global i64 0, align 8
@formats = common dso_local global i32** null, align 8
@DSERR_INVALIDPARAM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"IDirectSoundBuffer_SetFormat(%s) failed: %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"IDirectSoundBuffer_GetFormat() failed: %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [66 x i8] c"Requested primary format tag=0x%04x %dx%dx%d avg.B/s=%d align=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"Got tag=0x%04x %dx%dx%d avg.B/s=%d align=%d\0A\00", align 1
@DSSCL_NORMAL = common dso_local global i32 0, align 4
@WAVE_FORMAT_PCM = common dso_local global i64 0, align 8
@DSBCAPS_GETCURRENTPOSITION2 = common dso_local global i32 0, align 4
@BUFFER_LEN = common dso_local global i32 0, align 4
@winetest_interactive = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [85 x i8] c"  Testing a primary buffer at %dx%dx%d (fmt=%d) with a secondary buffer at %dx%dx%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [75 x i8] c"IDirectSound_CreateSoundBuffer() failed to create a secondary buffer %08x\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [63 x i8] c"IDirectSoundBuffer_Release() has %d references, should have 0\0A\00", align 1
@.str.11 = private unnamed_addr constant [71 x i8] c"IDirectSoundBuffer_Release() primary has %d references, should have 0\0A\00", align 1
@.str.12 = private unnamed_addr constant [58 x i8] c"IDirectSound8_Release() has %d references, should have 0\0A\00", align 1
@DSERR_GENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_primary_secondary8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_primary_secondary8(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__, align 8
  %9 = alloca %struct.TYPE_13__, align 8
  %10 = alloca %struct.TYPE_12__, align 8
  %11 = alloca %struct.TYPE_12__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @pDirectSoundCreate8(i32 %15, i32** %5, i32* null)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @DS_OK, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %28, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @DSERR_NODRIVER, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @DSERR_ALLOCATED, align 4
  %27 = icmp eq i32 %25, %26
  br label %28

28:                                               ; preds = %24, %20, %1
  %29 = phi i1 [ true, %20 ], [ true, %1 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* %4, align 4
  %32 = call i32 (i32, i8*, i32, ...) @ok(i32 %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @DS_OK, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %368

38:                                               ; preds = %28
  %39 = call i32 @ZeroMemory(%struct.TYPE_13__* %9, i32 24)
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  store i32 24, i32* %40, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @IDirectSound8_GetCaps(i32* %41, %struct.TYPE_13__* %9)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @DS_OK, align 4
  %45 = icmp eq i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* %4, align 4
  %48 = call i32 (i32, i8*, i32, ...) @ok(i32 %46, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @DS_OK, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %38
  br label %354

53:                                               ; preds = %38
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 (...) @get_hwnd()
  %56 = load i32, i32* @DSSCL_PRIORITY, align 4
  %57 = call i32 @IDirectSound8_SetCooperativeLevel(i32* %54, i32 %55, i32 %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @DS_OK, align 4
  %60 = icmp eq i32 %58, %59
  %61 = zext i1 %60 to i32
  %62 = load i32, i32* %4, align 4
  %63 = call i32 (i32, i8*, i32, ...) @ok(i32 %61, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @DS_OK, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %53
  br label %354

68:                                               ; preds = %53
  %69 = call i32 @ZeroMemory(%struct.TYPE_13__* %8, i32 24)
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  store i32 24, i32* %70, align 8
  %71 = load i32, i32* @DSBCAPS_PRIMARYBUFFER, align 4
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 3
  store i32 %71, i32* %72, align 4
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @IDirectSound8_CreateSoundBuffer(i32* %73, %struct.TYPE_13__* %8, i32** %6, i32* null)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @DS_OK, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %68
  %79 = load i32*, i32** %6, align 8
  %80 = icmp ne i32* %79, null
  br label %81

81:                                               ; preds = %78, %68
  %82 = phi i1 [ false, %68 ], [ %80, %78 ]
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* %4, align 4
  %85 = call i32 (i32, i8*, i32, ...) @ok(i32 %83, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @DS_OK, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %343

89:                                               ; preds = %81
  %90 = load i32*, i32** %6, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %343

92:                                               ; preds = %89
  store i32 0, i32* %13, align 4
  br label %93

93:                                               ; preds = %332, %92
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* @NB_FORMATS, align 4
  %96 = icmp ult i32 %94, %95
  br i1 %96, label %97, label %335

97:                                               ; preds = %93
  store i32 0, i32* %14, align 4
  br label %98

98:                                               ; preds = %328, %97
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* @NB_TAGS, align 4
  %101 = icmp ult i32 %99, %100
  br i1 %101, label %102, label %331

102:                                              ; preds = %98
  %103 = load i64*, i64** @format_tags, align 8
  %104 = load i32, i32* %14, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @WAVE_FORMAT_IEEE_FLOAT, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %120

110:                                              ; preds = %102
  %111 = load i32**, i32*** @formats, align 8
  %112 = load i32, i32* %13, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i32*, i32** %111, i64 %113
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 32
  br i1 %118, label %119, label %120

119:                                              ; preds = %110
  br label %328

120:                                              ; preds = %110, %102
  %121 = load i32*, i32** %5, align 8
  %122 = call i32 (...) @get_hwnd()
  %123 = load i32, i32* @DSSCL_PRIORITY, align 4
  %124 = call i32 @IDirectSound8_SetCooperativeLevel(i32* %121, i32 %122, i32 %123)
  store i32 %124, i32* %4, align 4
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* @DS_OK, align 4
  %127 = icmp eq i32 %125, %126
  %128 = zext i1 %127 to i32
  %129 = load i32, i32* %4, align 4
  %130 = call i32 (i32, i8*, i32, ...) @ok(i32 %128, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* %4, align 4
  %132 = load i32, i32* @DS_OK, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %120
  br label %354

135:                                              ; preds = %120
  %136 = load i64*, i64** @format_tags, align 8
  %137 = load i32, i32* %14, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i64, i64* %136, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = load i32**, i32*** @formats, align 8
  %142 = load i32, i32* %13, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i32*, i32** %141, i64 %143
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32**, i32*** @formats, align 8
  %149 = load i32, i32* %13, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds i32*, i32** %148, i64 %150
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32**, i32*** @formats, align 8
  %156 = load i32, i32* %13, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds i32*, i32** %155, i64 %157
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 2
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @init_format(%struct.TYPE_12__* %10, i64 %140, i32 %147, i32 %154, i32 %161)
  %163 = bitcast %struct.TYPE_12__* %11 to i8*
  %164 = bitcast %struct.TYPE_12__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %163, i8* align 8 %164, i64 40, i1 false)
  %165 = load i32*, i32** %6, align 8
  %166 = call i32 @IDirectSoundBuffer_SetFormat(i32* %165, %struct.TYPE_12__* %10)
  store i32 %166, i32* %4, align 4
  %167 = load i32, i32* %4, align 4
  %168 = load i32, i32* @DS_OK, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %174, label %170

170:                                              ; preds = %135
  %171 = load i32, i32* %4, align 4
  %172 = load i32, i32* @DSERR_INVALIDPARAM, align 4
  %173 = icmp eq i32 %171, %172
  br label %174

174:                                              ; preds = %170, %135
  %175 = phi i1 [ true, %135 ], [ %173, %170 ]
  %176 = zext i1 %175 to i32
  %177 = call i32 @format_string(%struct.TYPE_12__* %10)
  %178 = load i32, i32* %4, align 4
  %179 = call i32 (i32, i8*, i32, ...) @ok(i32 %176, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %177, i32 %178)
  %180 = load i32*, i32** %6, align 8
  %181 = call i32 @IDirectSoundBuffer_GetFormat(i32* %180, %struct.TYPE_12__* %10, i32 40, i32* null)
  store i32 %181, i32* %4, align 4
  %182 = load i32, i32* %4, align 4
  %183 = load i32, i32* @DS_OK, align 4
  %184 = icmp eq i32 %182, %183
  %185 = zext i1 %184 to i32
  %186 = load i32, i32* %4, align 4
  %187 = call i32 (i32, i8*, i32, ...) @ok(i32 %185, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %186)
  %188 = load i32, i32* %4, align 4
  %189 = load i32, i32* @DS_OK, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %246

191:                                              ; preds = %174
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %193, %195
  br i1 %196, label %215, label %197

197:                                              ; preds = %191
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %199, %201
  br i1 %202, label %215, label %203

203:                                              ; preds = %197
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %205, %207
  br i1 %208, label %215, label %209

209:                                              ; preds = %203
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 3
  %211 = load i64, i64* %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 3
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %211, %213
  br i1 %214, label %215, label %246

215:                                              ; preds = %209, %203, %197, %191
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 3
  %223 = load i64, i64* %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 4
  %225 = load i32, i32* %224, align 8
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 5
  %228 = load i32, i32* %227, align 4
  %229 = sext i32 %228 to i64
  %230 = call i32 (i8*, i64, i64, i64, i64, i64, i64, ...) @trace(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.6, i64 0, i64 0), i64 %217, i64 %219, i64 %221, i64 %223, i64 %226, i64 %229)
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 2
  %236 = load i64, i64* %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 3
  %238 = load i64, i64* %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 4
  %240 = load i32, i32* %239, align 8
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 5
  %243 = load i32, i32* %242, align 4
  %244 = sext i32 %243 to i64
  %245 = call i32 (i8*, i64, i64, i64, i64, i64, i64, ...) @trace(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i64 %232, i64 %234, i64 %236, i64 %238, i64 %241, i64 %244)
  br label %246

246:                                              ; preds = %215, %209, %174
  %247 = load i32*, i32** %5, align 8
  %248 = call i32 (...) @get_hwnd()
  %249 = load i32, i32* @DSSCL_NORMAL, align 4
  %250 = call i32 @IDirectSound8_SetCooperativeLevel(i32* %247, i32 %248, i32 %249)
  store i32 %250, i32* %4, align 4
  %251 = load i32, i32* %4, align 4
  %252 = load i32, i32* @DS_OK, align 4
  %253 = icmp eq i32 %251, %252
  %254 = zext i1 %253 to i32
  %255 = load i32, i32* %4, align 4
  %256 = call i32 (i32, i8*, i32, ...) @ok(i32 %254, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %255)
  %257 = load i64, i64* @WAVE_FORMAT_PCM, align 8
  %258 = call i32 @init_format(%struct.TYPE_12__* %11, i64 %257, i32 11025, i32 16, i32 2)
  store i32* null, i32** %7, align 8
  %259 = call i32 @ZeroMemory(%struct.TYPE_13__* %8, i32 24)
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  store i32 24, i32* %260, align 8
  %261 = load i32, i32* @DSBCAPS_GETCURRENTPOSITION2, align 4
  %262 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 3
  store i32 %261, i32* %262, align 4
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 4
  %264 = load i32, i32* %263, align 8
  %265 = load i32, i32* @BUFFER_LEN, align 4
  %266 = mul nsw i32 %264, %265
  %267 = sdiv i32 %266, 1000
  %268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 5
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @align(i32 %267, i32 %269)
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 2
  store i32 %270, i32* %271, align 8
  %272 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %272, align 8
  %273 = load i64, i64* @winetest_interactive, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %294

275:                                              ; preds = %246
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %277 = load i64, i64* %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 2
  %279 = load i64, i64* %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 3
  %281 = load i64, i64* %280, align 8
  %282 = load i64*, i64** @format_tags, align 8
  %283 = load i32, i32* %14, align 4
  %284 = zext i32 %283 to i64
  %285 = getelementptr inbounds i64, i64* %282, i64 %284
  %286 = load i64, i64* %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %288 = load i64, i64* %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 2
  %290 = load i64, i64* %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 3
  %292 = load i64, i64* %291, align 8
  %293 = call i32 (i8*, i64, i64, i64, i64, i64, i64, ...) @trace(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.8, i64 0, i64 0), i64 %277, i64 %279, i64 %281, i64 %286, i64 %288, i64 %290, i64 %292)
  br label %294

294:                                              ; preds = %275, %246
  %295 = load i32*, i32** %5, align 8
  %296 = call i32 @IDirectSound_CreateSoundBuffer(i32* %295, %struct.TYPE_13__* %8, i32** %7, i32* null)
  store i32 %296, i32* %4, align 4
  %297 = load i32, i32* %4, align 4
  %298 = load i32, i32* @DS_OK, align 4
  %299 = icmp eq i32 %297, %298
  br i1 %299, label %300, label %303

300:                                              ; preds = %294
  %301 = load i32*, i32** %7, align 8
  %302 = icmp ne i32* %301, null
  br label %303

303:                                              ; preds = %300, %294
  %304 = phi i1 [ false, %294 ], [ %302, %300 ]
  %305 = zext i1 %304 to i32
  %306 = load i32, i32* %4, align 4
  %307 = call i32 (i32, i8*, i32, ...) @ok(i32 %305, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.9, i64 0, i64 0), i32 %306)
  %308 = load i32, i32* %4, align 4
  %309 = load i32, i32* @DS_OK, align 4
  %310 = icmp eq i32 %308, %309
  br i1 %310, label %311, label %327

311:                                              ; preds = %303
  %312 = load i32*, i32** %7, align 8
  %313 = icmp ne i32* %312, null
  br i1 %313, label %314, label %327

314:                                              ; preds = %311
  %315 = load i32*, i32** %5, align 8
  %316 = load i32, i32* @FALSE, align 4
  %317 = load i32, i32* @FALSE, align 4
  %318 = load i64, i64* @winetest_interactive, align 8
  %319 = call i32 @test_buffer8(i32* %315, i32** %7, i32 0, i32 %316, i32 0, i32 %317, i32 0, i64 %318, double 1.000000e+00, i32 0, i32* null, i32 0, i32 0)
  %320 = load i32*, i32** %7, align 8
  %321 = call i32 @IDirectSoundBuffer_Release(i32* %320)
  store i32 %321, i32* %12, align 4
  %322 = load i32, i32* %12, align 4
  %323 = icmp eq i32 %322, 0
  %324 = zext i1 %323 to i32
  %325 = load i32, i32* %12, align 4
  %326 = call i32 (i32, i8*, i32, ...) @ok(i32 %324, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.10, i64 0, i64 0), i32 %325)
  br label %327

327:                                              ; preds = %314, %311, %303
  br label %328

328:                                              ; preds = %327, %119
  %329 = load i32, i32* %14, align 4
  %330 = add i32 %329, 1
  store i32 %330, i32* %14, align 4
  br label %98

331:                                              ; preds = %98
  br label %332

332:                                              ; preds = %331
  %333 = load i32, i32* %13, align 4
  %334 = add i32 %333, 1
  store i32 %334, i32* %13, align 4
  br label %93

335:                                              ; preds = %93
  %336 = load i32*, i32** %6, align 8
  %337 = call i32 @IDirectSoundBuffer_Release(i32* %336)
  store i32 %337, i32* %12, align 4
  %338 = load i32, i32* %12, align 4
  %339 = icmp eq i32 %338, 0
  %340 = zext i1 %339 to i32
  %341 = load i32, i32* %12, align 4
  %342 = call i32 (i32, i8*, i32, ...) @ok(i32 %340, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.11, i64 0, i64 0), i32 %341)
  br label %343

343:                                              ; preds = %335, %89, %81
  %344 = load i32*, i32** %5, align 8
  %345 = call i32 (...) @get_hwnd()
  %346 = load i32, i32* @DSSCL_NORMAL, align 4
  %347 = call i32 @IDirectSound8_SetCooperativeLevel(i32* %344, i32 %345, i32 %346)
  store i32 %347, i32* %4, align 4
  %348 = load i32, i32* %4, align 4
  %349 = load i32, i32* @DS_OK, align 4
  %350 = icmp eq i32 %348, %349
  %351 = zext i1 %350 to i32
  %352 = load i32, i32* %4, align 4
  %353 = call i32 (i32, i8*, i32, ...) @ok(i32 %351, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %352)
  br label %354

354:                                              ; preds = %343, %134, %67, %52
  %355 = load i32*, i32** %5, align 8
  %356 = call i32 @IDirectSound8_Release(i32* %355)
  store i32 %356, i32* %12, align 4
  %357 = load i32, i32* %12, align 4
  %358 = icmp eq i32 %357, 0
  %359 = zext i1 %358 to i32
  %360 = load i32, i32* %12, align 4
  %361 = call i32 (i32, i8*, i32, ...) @ok(i32 %359, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.12, i64 0, i64 0), i32 %360)
  %362 = load i32, i32* %12, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %366

364:                                              ; preds = %354
  %365 = load i32, i32* @DSERR_GENERIC, align 4
  store i32 %365, i32* %2, align 4
  br label %368

366:                                              ; preds = %354
  %367 = load i32, i32* %4, align 4
  store i32 %367, i32* %2, align 4
  br label %368

368:                                              ; preds = %366, %364, %36
  %369 = load i32, i32* %2, align 4
  ret i32 %369
}

declare dso_local i32 @pDirectSoundCreate8(i32, i32**, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @IDirectSound8_GetCaps(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @IDirectSound8_SetCooperativeLevel(i32*, i32, i32) #1

declare dso_local i32 @get_hwnd(...) #1

declare dso_local i32 @IDirectSound8_CreateSoundBuffer(i32*, %struct.TYPE_13__*, i32**, i32*) #1

declare dso_local i32 @init_format(%struct.TYPE_12__*, i64, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @IDirectSoundBuffer_SetFormat(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @format_string(%struct.TYPE_12__*) #1

declare dso_local i32 @IDirectSoundBuffer_GetFormat(i32*, %struct.TYPE_12__*, i32, i32*) #1

declare dso_local i32 @trace(i8*, i64, i64, i64, i64, i64, i64, ...) #1

declare dso_local i32 @align(i32, i32) #1

declare dso_local i32 @IDirectSound_CreateSoundBuffer(i32*, %struct.TYPE_13__*, i32**, i32*) #1

declare dso_local i32 @test_buffer8(i32*, i32**, i32, i32, i32, i32, i32, i64, double, i32, i32*, i32, i32) #1

declare dso_local i32 @IDirectSoundBuffer_Release(i32*) #1

declare dso_local i32 @IDirectSound8_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
