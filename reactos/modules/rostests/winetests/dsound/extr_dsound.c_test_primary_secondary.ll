; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/dsound/extr_dsound.c_test_primary_secondary.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/dsound/extr_dsound.c_test_primary_secondary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__*, i32, i32 }
%struct.TYPE_11__ = type { i32, i64, i64, i32, i32, i32 }

@DS_OK = common dso_local global i32 0, align 4
@DSERR_NODRIVER = common dso_local global i32 0, align 4
@DSERR_ALLOCATED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"DirectSoundCreate() failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"IDirectSound_GetCaps() failed: %08x\0A\00", align 1
@DSSCL_PRIORITY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"IDirectSound_SetCooperativeLevel() failed: %08x\0A\00", align 1
@DSBCAPS_PRIMARYBUFFER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [73 x i8] c"IDirectSound_CreateSoundBuffer() failed to create a primary buffer %08x\0A\00", align 1
@NB_FORMATS = common dso_local global i32 0, align 4
@NB_TAGS = common dso_local global i32 0, align 4
@format_tags = common dso_local global i64* null, align 8
@WAVE_FORMAT_IEEE_FLOAT = common dso_local global i64 0, align 8
@formats = common dso_local global i32** null, align 8
@.str.4 = private unnamed_addr constant [47 x i8] c"IDirectSoundBuffer_SetFormat(%s) failed: %08x\0A\00", align 1
@E_INVALIDARG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"SetFormat (%s) failed: %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"IDirectSoundBuffer_GetFormat() failed: %08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [66 x i8] c"Requested primary format tag=0x%04x %dx%dx%d avg.B/s=%d align=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"Got tag=0x%04x %dx%dx%d avg.B/s=%d align=%d\0A\00", align 1
@DSSCL_NORMAL = common dso_local global i32 0, align 4
@WAVE_FORMAT_PCM = common dso_local global i64 0, align 8
@DSBCAPS_GETCURRENTPOSITION2 = common dso_local global i32 0, align 4
@BUFFER_LEN = common dso_local global i32 0, align 4
@winetest_interactive = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [85 x i8] c"  Testing a primary buffer at %dx%dx%d (fmt=%d) with a secondary buffer at %dx%dx%d\0A\00", align 1
@DSERR_CONTROLUNAVAIL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [75 x i8] c"IDirectSound_CreateSoundBuffer() failed to create a secondary buffer %08x\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [63 x i8] c"IDirectSoundBuffer_Release() has %d references, should have 0\0A\00", align 1
@.str.12 = private unnamed_addr constant [71 x i8] c"IDirectSoundBuffer_Release() primary has %d references, should have 0\0A\00", align 1
@.str.13 = private unnamed_addr constant [57 x i8] c"IDirectSound_Release() has %d references, should have 0\0A\00", align 1
@DSERR_GENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_primary_secondary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_primary_secondary(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_12__, align 8
  %9 = alloca %struct.TYPE_12__, align 8
  %10 = alloca %struct.TYPE_11__, align 8
  %11 = alloca %struct.TYPE_11__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @pDirectSoundCreate(i32 %15, i32** %5, i32* null)
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
  %32 = call i32 (i32, i8*, i32, ...) @ok(i32 %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @DS_OK, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %391

38:                                               ; preds = %28
  %39 = call i32 @ZeroMemory(%struct.TYPE_12__* %9, i32 24)
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  store i32 24, i32* %40, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @IDirectSound_GetCaps(i32* %41, %struct.TYPE_12__* %9)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @DS_OK, align 4
  %45 = icmp eq i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* %4, align 4
  %48 = call i32 (i32, i8*, i32, ...) @ok(i32 %46, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @DS_OK, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %38
  br label %377

53:                                               ; preds = %38
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 (...) @get_hwnd()
  %56 = load i32, i32* @DSSCL_PRIORITY, align 4
  %57 = call i32 @IDirectSound_SetCooperativeLevel(i32* %54, i32 %55, i32 %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @DS_OK, align 4
  %60 = icmp eq i32 %58, %59
  %61 = zext i1 %60 to i32
  %62 = load i32, i32* %4, align 4
  %63 = call i32 (i32, i8*, i32, ...) @ok(i32 %61, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @DS_OK, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %53
  br label %377

68:                                               ; preds = %53
  %69 = call i32 @ZeroMemory(%struct.TYPE_12__* %8, i32 24)
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  store i32 24, i32* %70, align 8
  %71 = load i32, i32* @DSBCAPS_PRIMARYBUFFER, align 4
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 3
  store i32 %71, i32* %72, align 4
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @IDirectSound_CreateSoundBuffer(i32* %73, %struct.TYPE_12__* %8, i32** %6, i32* null)
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
  %85 = call i32 (i32, i8*, i32, ...) @ok(i32 %83, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @DS_OK, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %366

89:                                               ; preds = %81
  %90 = load i32*, i32** %6, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %366

92:                                               ; preds = %89
  store i32 0, i32* %12, align 4
  br label %93

93:                                               ; preds = %355, %92
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* @NB_FORMATS, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %358

97:                                               ; preds = %93
  store i32 0, i32* %14, align 4
  br label %98

98:                                               ; preds = %351, %97
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* @NB_TAGS, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %354

102:                                              ; preds = %98
  %103 = load i64*, i64** @format_tags, align 8
  %104 = load i32, i32* %14, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @WAVE_FORMAT_IEEE_FLOAT, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %120

110:                                              ; preds = %102
  %111 = load i32**, i32*** @formats, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32*, i32** %111, i64 %113
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 32
  br i1 %118, label %119, label %120

119:                                              ; preds = %110
  br label %351

120:                                              ; preds = %110, %102
  %121 = load i32*, i32** %5, align 8
  %122 = call i32 (...) @get_hwnd()
  %123 = load i32, i32* @DSSCL_PRIORITY, align 4
  %124 = call i32 @IDirectSound_SetCooperativeLevel(i32* %121, i32 %122, i32 %123)
  store i32 %124, i32* %4, align 4
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* @DS_OK, align 4
  %127 = icmp eq i32 %125, %126
  %128 = zext i1 %127 to i32
  %129 = load i32, i32* %4, align 4
  %130 = call i32 (i32, i8*, i32, ...) @ok(i32 %128, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* %4, align 4
  %132 = load i32, i32* @DS_OK, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %120
  br label %377

135:                                              ; preds = %120
  %136 = load i64*, i64** @format_tags, align 8
  %137 = load i32, i32* %14, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i64, i64* %136, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = load i32**, i32*** @formats, align 8
  %142 = load i32, i32* %12, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32*, i32** %141, i64 %143
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32**, i32*** @formats, align 8
  %149 = load i32, i32* %12, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32*, i32** %148, i64 %150
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32**, i32*** @formats, align 8
  %156 = load i32, i32* %12, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32*, i32** %155, i64 %157
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 2
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @init_format(%struct.TYPE_11__* %10, i64 %140, i32 %147, i32 %154, i32 %161)
  %163 = bitcast %struct.TYPE_11__* %11 to i8*
  %164 = bitcast %struct.TYPE_11__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %163, i8* align 8 %164, i64 40, i1 false)
  %165 = load i32*, i32** %6, align 8
  %166 = call i32 @IDirectSoundBuffer_SetFormat(i32* %165, %struct.TYPE_11__* %10)
  store i32 %166, i32* %4, align 4
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp sle i32 %168, 16
  br i1 %169, label %170, label %178

170:                                              ; preds = %135
  %171 = load i32, i32* %4, align 4
  %172 = load i32, i32* @DS_OK, align 4
  %173 = icmp eq i32 %171, %172
  %174 = zext i1 %173 to i32
  %175 = call i32 @format_string(%struct.TYPE_11__* %10)
  %176 = load i32, i32* %4, align 4
  %177 = call i32 (i32, i8*, i32, ...) @ok(i32 %174, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %175, i32 %176)
  br label %192

178:                                              ; preds = %135
  %179 = load i32, i32* %4, align 4
  %180 = load i32, i32* @DS_OK, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %186, label %182

182:                                              ; preds = %178
  %183 = load i32, i32* %4, align 4
  %184 = load i32, i32* @E_INVALIDARG, align 4
  %185 = icmp eq i32 %183, %184
  br label %186

186:                                              ; preds = %182, %178
  %187 = phi i1 [ true, %178 ], [ %185, %182 ]
  %188 = zext i1 %187 to i32
  %189 = call i32 @format_string(%struct.TYPE_11__* %10)
  %190 = load i32, i32* %4, align 4
  %191 = call i32 (i32, i8*, i32, ...) @ok(i32 %188, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %189, i32 %190)
  br label %192

192:                                              ; preds = %186, %170
  %193 = load i32*, i32** %6, align 8
  %194 = call i32 @IDirectSoundBuffer_GetFormat(i32* %193, %struct.TYPE_11__* %10, i32 40, i32* null)
  store i32 %194, i32* %4, align 4
  %195 = load i32, i32* %4, align 4
  %196 = load i32, i32* @DS_OK, align 4
  %197 = icmp eq i32 %195, %196
  %198 = zext i1 %197 to i32
  %199 = load i32, i32* %4, align 4
  %200 = call i32 (i32, i8*, i32, ...) @ok(i32 %198, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %199)
  %201 = load i32, i32* %4, align 4
  %202 = load i32, i32* @DS_OK, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %204, label %261

204:                                              ; preds = %192
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %206, %208
  br i1 %209, label %228, label %210

210:                                              ; preds = %204
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 2
  %212 = load i64, i64* %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %212, %214
  br i1 %215, label %228, label %216

216:                                              ; preds = %210
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = icmp ne i32 %218, %220
  br i1 %221, label %228, label %222

222:                                              ; preds = %216
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 4
  %224 = load i32, i32* %223, align 4
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 4
  %226 = load i32, i32* %225, align 4
  %227 = icmp ne i32 %224, %226
  br i1 %227, label %228, label %261

228:                                              ; preds = %222, %216, %210, %204
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 2
  %232 = load i64, i64* %231, align 8
  %233 = trunc i64 %232 to i32
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 4
  %237 = load i32, i32* %236, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 3
  %240 = load i32, i32* %239, align 8
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 5
  %243 = load i32, i32* %242, align 8
  %244 = call i32 (i8*, i64, i32, i32, i64, i64, i32, ...) @trace(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.7, i64 0, i64 0), i64 %230, i32 %233, i32 %235, i64 %238, i64 %241, i32 %243)
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 2
  %248 = load i64, i64* %247, align 8
  %249 = trunc i64 %248 to i32
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 4
  %253 = load i32, i32* %252, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 3
  %256 = load i32, i32* %255, align 8
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 5
  %259 = load i32, i32* %258, align 8
  %260 = call i32 (i8*, i64, i32, i32, i64, i64, i32, ...) @trace(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i64 %246, i32 %249, i32 %251, i64 %254, i64 %257, i32 %259)
  br label %261

261:                                              ; preds = %228, %222, %192
  %262 = load i32*, i32** %5, align 8
  %263 = call i32 (...) @get_hwnd()
  %264 = load i32, i32* @DSSCL_NORMAL, align 4
  %265 = call i32 @IDirectSound_SetCooperativeLevel(i32* %262, i32 %263, i32 %264)
  store i32 %265, i32* %4, align 4
  %266 = load i32, i32* %4, align 4
  %267 = load i32, i32* @DS_OK, align 4
  %268 = icmp eq i32 %266, %267
  %269 = zext i1 %268 to i32
  %270 = load i32, i32* %4, align 4
  %271 = call i32 (i32, i8*, i32, ...) @ok(i32 %269, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %270)
  %272 = load i64, i64* @WAVE_FORMAT_PCM, align 8
  %273 = call i32 @init_format(%struct.TYPE_11__* %11, i64 %272, i32 11025, i32 16, i32 2)
  store i32* null, i32** %7, align 8
  %274 = call i32 @ZeroMemory(%struct.TYPE_12__* %8, i32 24)
  %275 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  store i32 24, i32* %275, align 8
  %276 = load i32, i32* @DSBCAPS_GETCURRENTPOSITION2, align 4
  %277 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 3
  store i32 %276, i32* %277, align 4
  %278 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 3
  %279 = load i32, i32* %278, align 8
  %280 = load i32, i32* @BUFFER_LEN, align 4
  %281 = mul nsw i32 %279, %280
  %282 = sdiv i32 %281, 1000
  %283 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 5
  %284 = load i32, i32* %283, align 8
  %285 = call i32 @align(i32 %282, i32 %284)
  %286 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 2
  store i32 %285, i32* %286, align 8
  %287 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  store %struct.TYPE_11__* %11, %struct.TYPE_11__** %287, align 8
  %288 = load i64, i64* @winetest_interactive, align 8
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %309

290:                                              ; preds = %261
  %291 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 2
  %292 = load i64, i64* %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 4
  %296 = load i32, i32* %295, align 4
  %297 = load i64*, i64** @format_tags, align 8
  %298 = load i32, i32* %14, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i64, i64* %297, i64 %299
  %301 = load i64, i64* %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 2
  %303 = load i64, i64* %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 4
  %307 = load i32, i32* %306, align 4
  %308 = call i32 (i8*, i64, i32, i32, i64, i64, i32, ...) @trace(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.9, i64 0, i64 0), i64 %292, i32 %294, i32 %296, i64 %301, i64 %303, i32 %305, i32 %307)
  br label %309

309:                                              ; preds = %290, %261
  %310 = load i32*, i32** %5, align 8
  %311 = call i32 @IDirectSound_CreateSoundBuffer(i32* %310, %struct.TYPE_12__* %8, i32** %7, i32* null)
  store i32 %311, i32* %4, align 4
  %312 = load i32, i32* %4, align 4
  %313 = load i32, i32* @DS_OK, align 4
  %314 = icmp eq i32 %312, %313
  br i1 %314, label %315, label %318

315:                                              ; preds = %309
  %316 = load i32*, i32** %7, align 8
  %317 = icmp ne i32* %316, null
  br i1 %317, label %325, label %318

318:                                              ; preds = %315, %309
  %319 = load i32, i32* %4, align 4
  %320 = load i32, i32* @DSERR_CONTROLUNAVAIL, align 4
  %321 = icmp eq i32 %319, %320
  %322 = zext i1 %321 to i32
  %323 = call i64 @broken(i32 %322)
  %324 = icmp ne i64 %323, 0
  br label %325

325:                                              ; preds = %318, %315
  %326 = phi i1 [ true, %315 ], [ %324, %318 ]
  %327 = zext i1 %326 to i32
  %328 = load i32, i32* %4, align 4
  %329 = call i32 (i32, i8*, i32, ...) @ok(i32 %327, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.10, i64 0, i64 0), i32 %328)
  %330 = load i32, i32* %4, align 4
  %331 = load i32, i32* @DS_OK, align 4
  %332 = icmp eq i32 %330, %331
  br i1 %332, label %333, label %350

333:                                              ; preds = %325
  %334 = load i32*, i32** %7, align 8
  %335 = icmp ne i32* %334, null
  br i1 %335, label %336, label %350

336:                                              ; preds = %333
  %337 = load i32*, i32** %5, align 8
  %338 = load i32, i32* @FALSE, align 4
  %339 = load i32, i32* @FALSE, align 4
  %340 = load i64, i64* @winetest_interactive, align 8
  %341 = load i32, i32* @FALSE, align 4
  %342 = call i32 @test_buffer(i32* %337, i32** %7, i32 0, i32 %338, i32 0, i32 %339, i32 0, i64 %340, double 1.000000e+00, i32 0, i32* null, i32 0, i32 0, i32 %341, i32 0)
  %343 = load i32*, i32** %7, align 8
  %344 = call i32 @IDirectSoundBuffer_Release(i32* %343)
  store i32 %344, i32* %13, align 4
  %345 = load i32, i32* %13, align 4
  %346 = icmp eq i32 %345, 0
  %347 = zext i1 %346 to i32
  %348 = load i32, i32* %13, align 4
  %349 = call i32 (i32, i8*, i32, ...) @ok(i32 %347, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.11, i64 0, i64 0), i32 %348)
  br label %350

350:                                              ; preds = %336, %333, %325
  br label %351

351:                                              ; preds = %350, %119
  %352 = load i32, i32* %14, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %14, align 4
  br label %98

354:                                              ; preds = %98
  br label %355

355:                                              ; preds = %354
  %356 = load i32, i32* %12, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %12, align 4
  br label %93

358:                                              ; preds = %93
  %359 = load i32*, i32** %6, align 8
  %360 = call i32 @IDirectSoundBuffer_Release(i32* %359)
  store i32 %360, i32* %13, align 4
  %361 = load i32, i32* %13, align 4
  %362 = icmp eq i32 %361, 0
  %363 = zext i1 %362 to i32
  %364 = load i32, i32* %13, align 4
  %365 = call i32 (i32, i8*, i32, ...) @ok(i32 %363, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.12, i64 0, i64 0), i32 %364)
  br label %366

366:                                              ; preds = %358, %89, %81
  %367 = load i32*, i32** %5, align 8
  %368 = call i32 (...) @get_hwnd()
  %369 = load i32, i32* @DSSCL_NORMAL, align 4
  %370 = call i32 @IDirectSound_SetCooperativeLevel(i32* %367, i32 %368, i32 %369)
  store i32 %370, i32* %4, align 4
  %371 = load i32, i32* %4, align 4
  %372 = load i32, i32* @DS_OK, align 4
  %373 = icmp eq i32 %371, %372
  %374 = zext i1 %373 to i32
  %375 = load i32, i32* %4, align 4
  %376 = call i32 (i32, i8*, i32, ...) @ok(i32 %374, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %375)
  br label %377

377:                                              ; preds = %366, %134, %67, %52
  %378 = load i32*, i32** %5, align 8
  %379 = call i32 @IDirectSound_Release(i32* %378)
  store i32 %379, i32* %13, align 4
  %380 = load i32, i32* %13, align 4
  %381 = icmp eq i32 %380, 0
  %382 = zext i1 %381 to i32
  %383 = load i32, i32* %13, align 4
  %384 = call i32 (i32, i8*, i32, ...) @ok(i32 %382, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.13, i64 0, i64 0), i32 %383)
  %385 = load i32, i32* %13, align 4
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %389

387:                                              ; preds = %377
  %388 = load i32, i32* @DSERR_GENERIC, align 4
  store i32 %388, i32* %2, align 4
  br label %391

389:                                              ; preds = %377
  %390 = load i32, i32* %4, align 4
  store i32 %390, i32* %2, align 4
  br label %391

391:                                              ; preds = %389, %387, %36
  %392 = load i32, i32* %2, align 4
  ret i32 %392
}

declare dso_local i32 @pDirectSoundCreate(i32, i32**, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @IDirectSound_GetCaps(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @IDirectSound_SetCooperativeLevel(i32*, i32, i32) #1

declare dso_local i32 @get_hwnd(...) #1

declare dso_local i32 @IDirectSound_CreateSoundBuffer(i32*, %struct.TYPE_12__*, i32**, i32*) #1

declare dso_local i32 @init_format(%struct.TYPE_11__*, i64, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @IDirectSoundBuffer_SetFormat(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @format_string(%struct.TYPE_11__*) #1

declare dso_local i32 @IDirectSoundBuffer_GetFormat(i32*, %struct.TYPE_11__*, i32, i32*) #1

declare dso_local i32 @trace(i8*, i64, i32, i32, i64, i64, i32, ...) #1

declare dso_local i32 @align(i32, i32) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @test_buffer(i32*, i32**, i32, i32, i32, i32, i32, i64, double, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @IDirectSoundBuffer_Release(i32*) #1

declare dso_local i32 @IDirectSound_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
