; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/dsound/extr_dsound.c_IDirectSound_test.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/dsound/extr_dsound.c_IDirectSound_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@IID_IUnknown = common dso_local global i32 0, align 4
@DS_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"IDirectSound_QueryInterface(IID_IUnknown) failed: %08x\0A\00", align 1
@IID_IDirectSound = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"IDirectSound_QueryInterface(IID_IDirectSound) failed: %08x\0A\00", align 1
@IID_IDirectSound8 = common dso_local global i32 0, align 4
@E_NOINTERFACE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [73 x i8] c"IDirectSound_QueryInterface(IID_IDirectSound8) should have failed: %08x\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@DSERR_UNINITIALIZED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [85 x i8] c"IDirectSound_GetCaps(NULL) should have returned DSERR_UNINITIALIZED, returned: %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [81 x i8] c"IDirectSound_GetCaps() should have returned DSERR_UNINITIALIZED, returned: %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [81 x i8] c"IDirectSound_Compact() should have returned DSERR_UNINITIALIZED, returned: %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [90 x i8] c"IDirectSound_GetSpeakerConfig() should have returned DSERR_UNINITIALIZED, returned: %08x\0A\00", align 1
@DSERR_NODRIVER = common dso_local global i64 0, align 8
@DSERR_ALLOCATED = common dso_local global i64 0, align 8
@E_FAIL = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [40 x i8] c"IDirectSound_Initialize() failed: %08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"  No Driver\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"  No Device\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"  Already In Use\0A\00", align 1
@DSERR_ALREADYINITIALIZED = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [79 x i8] c"IDirectSound_Initialize() should have returned DSERR_ALREADYINITIALIZED: %08x\0A\00", align 1
@DSERR_INVALIDPARAM = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [84 x i8] c"IDirectSound_GetCaps(NULL) should have returned DSERR_INVALIDPARAM, returned: %08x\0A\00", align 1
@.str.13 = private unnamed_addr constant [80 x i8] c"IDirectSound_GetCaps() should have returned DSERR_INVALIDPARAM, returned: %08x\0A\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"IDirectSound_GetCaps() failed: %08x\0A\00", align 1
@DSERR_PRIOLEVELNEEDED = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [37 x i8] c"IDirectSound_Compact() failed: %08x\0A\00", align 1
@DSSCL_PRIORITY = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [49 x i8] c"IDirectSound_SetCooperativeLevel() failed: %08x\0A\00", align 1
@.str.17 = private unnamed_addr constant [93 x i8] c"IDirectSound_GetSpeakerConfig(NULL) should have returned DSERR_INVALIDPARAM, returned: %08x\0A\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"IDirectSound_GetSpeakerConfig() failed: %08x\0A\00", align 1
@DSSPEAKER_STEREO = common dso_local global i32 0, align 4
@DSSPEAKER_GEOMETRY_WIDE = common dso_local global i32 0, align 4
@DSSPEAKER_GEOMETRY_NARROW = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [46 x i8] c"IDirectSound_SetSpeakerConfig() failed: %08x\0A\00", align 1
@.str.20 = private unnamed_addr constant [91 x i8] c"IDirectSound_GetSpeakerConfig() failed to set speaker config: expected 0x%08x, got 0x%08x\0A\00", align 1
@.str.21 = private unnamed_addr constant [57 x i8] c"IDirectSound_Release() has %d references, should have 0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i32)* @IDirectSound_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @IDirectSound_test(i32* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = bitcast i32** %10 to i32*
  %18 = call i64 @IDirectSound_QueryInterface(i32* %16, i32* @IID_IUnknown, i32* %17)
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @DS_OK, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load i64, i64* %7, align 8
  %24 = trunc i64 %23 to i32
  %25 = call i32 @ok(i32 %22, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @DS_OK, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32*, i32** %10, align 8
  %31 = call i32 @IDirectSound_Release(i32* %30)
  br label %32

32:                                               ; preds = %29, %3
  %33 = load i32*, i32** %4, align 8
  %34 = bitcast i32** %11 to i32*
  %35 = call i64 @IDirectSound_QueryInterface(i32* %33, i32* @IID_IDirectSound, i32* %34)
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* @DS_OK, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = load i64, i64* %7, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 @ok(i32 %39, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @DS_OK, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %32
  %47 = load i32*, i32** %11, align 8
  %48 = call i32 @IDirectSound_Release(i32* %47)
  br label %49

49:                                               ; preds = %46, %32
  %50 = load i32*, i32** %4, align 8
  %51 = bitcast i32** %12 to i32*
  %52 = call i64 @IDirectSound_QueryInterface(i32* %50, i32* @IID_IDirectSound8, i32* %51)
  store i64 %52, i64* %7, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* @E_NOINTERFACE, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i64, i64* %7, align 8
  %58 = trunc i64 %57 to i32
  %59 = call i32 @ok(i32 %56, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* @DS_OK, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %49
  %64 = load i32*, i32** %12, align 8
  %65 = call i32 @IDirectSound8_Release(i32* %64)
  br label %66

66:                                               ; preds = %63, %49
  %67 = load i64, i64* %5, align 8
  %68 = load i64, i64* @FALSE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %151

70:                                               ; preds = %66
  %71 = load i32*, i32** %4, align 8
  %72 = call i64 @IDirectSound_GetCaps(i32* %71, %struct.TYPE_4__* null)
  store i64 %72, i64* %7, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* @DSERR_UNINITIALIZED, align 8
  %75 = icmp eq i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = load i64, i64* %7, align 8
  %78 = trunc i64 %77 to i32
  %79 = call i32 @ok(i32 %76, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  %80 = load i32*, i32** %4, align 8
  %81 = call i64 @IDirectSound_GetCaps(i32* %80, %struct.TYPE_4__* %8)
  store i64 %81, i64* %7, align 8
  %82 = load i64, i64* %7, align 8
  %83 = load i64, i64* @DSERR_UNINITIALIZED, align 8
  %84 = icmp eq i64 %82, %83
  %85 = zext i1 %84 to i32
  %86 = load i64, i64* %7, align 8
  %87 = trunc i64 %86 to i32
  %88 = call i32 @ok(i32 %85, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.4, i64 0, i64 0), i32 %87)
  %89 = load i32*, i32** %4, align 8
  %90 = call i64 @IDirectSound_Compact(i32* %89)
  store i64 %90, i64* %7, align 8
  %91 = load i64, i64* %7, align 8
  %92 = load i64, i64* @DSERR_UNINITIALIZED, align 8
  %93 = icmp eq i64 %91, %92
  %94 = zext i1 %93 to i32
  %95 = load i64, i64* %7, align 8
  %96 = trunc i64 %95 to i32
  %97 = call i32 @ok(i32 %94, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.5, i64 0, i64 0), i32 %96)
  %98 = load i32*, i32** %4, align 8
  %99 = call i64 @IDirectSound_GetSpeakerConfig(i32* %98, i64* %13)
  store i64 %99, i64* %7, align 8
  %100 = load i64, i64* %7, align 8
  %101 = load i64, i64* @DSERR_UNINITIALIZED, align 8
  %102 = icmp eq i64 %100, %101
  %103 = zext i1 %102 to i32
  %104 = load i64, i64* %7, align 8
  %105 = trunc i64 %104 to i32
  %106 = call i32 @ok(i32 %103, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.6, i64 0, i64 0), i32 %105)
  %107 = load i32*, i32** %4, align 8
  %108 = load i32, i32* %6, align 4
  %109 = call i64 @IDirectSound_Initialize(i32* %107, i32 %108)
  store i64 %109, i64* %7, align 8
  %110 = load i64, i64* %7, align 8
  %111 = load i64, i64* @DS_OK, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %125, label %113

113:                                              ; preds = %70
  %114 = load i64, i64* %7, align 8
  %115 = load i64, i64* @DSERR_NODRIVER, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %125, label %117

117:                                              ; preds = %113
  %118 = load i64, i64* %7, align 8
  %119 = load i64, i64* @DSERR_ALLOCATED, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %125, label %121

121:                                              ; preds = %117
  %122 = load i64, i64* %7, align 8
  %123 = load i64, i64* @E_FAIL, align 8
  %124 = icmp eq i64 %122, %123
  br label %125

125:                                              ; preds = %121, %117, %113, %70
  %126 = phi i1 [ true, %117 ], [ true, %113 ], [ true, %70 ], [ %124, %121 ]
  %127 = zext i1 %126 to i32
  %128 = load i64, i64* %7, align 8
  %129 = trunc i64 %128 to i32
  %130 = call i32 @ok(i32 %127, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 %129)
  %131 = load i64, i64* %7, align 8
  %132 = load i64, i64* @DSERR_NODRIVER, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %125
  %135 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  br label %294

136:                                              ; preds = %125
  %137 = load i64, i64* %7, align 8
  %138 = load i64, i64* @E_FAIL, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %136
  %141 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  br label %294

142:                                              ; preds = %136
  %143 = load i64, i64* %7, align 8
  %144 = load i64, i64* @DSERR_ALLOCATED, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %142
  %147 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  br label %294

148:                                              ; preds = %142
  br label %149

149:                                              ; preds = %148
  br label %150

150:                                              ; preds = %149
  br label %151

151:                                              ; preds = %150, %66
  %152 = load i32*, i32** %4, align 8
  %153 = load i32, i32* %6, align 4
  %154 = call i64 @IDirectSound_Initialize(i32* %152, i32 %153)
  store i64 %154, i64* %7, align 8
  %155 = load i64, i64* %7, align 8
  %156 = load i64, i64* @DSERR_ALREADYINITIALIZED, align 8
  %157 = icmp eq i64 %155, %156
  %158 = zext i1 %157 to i32
  %159 = load i64, i64* %7, align 8
  %160 = trunc i64 %159 to i32
  %161 = call i32 @ok(i32 %158, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.11, i64 0, i64 0), i32 %160)
  %162 = load i32*, i32** %4, align 8
  %163 = call i64 @IDirectSound_GetCaps(i32* %162, %struct.TYPE_4__* null)
  store i64 %163, i64* %7, align 8
  %164 = load i64, i64* %7, align 8
  %165 = load i64, i64* @DSERR_INVALIDPARAM, align 8
  %166 = icmp eq i64 %164, %165
  %167 = zext i1 %166 to i32
  %168 = load i64, i64* %7, align 8
  %169 = trunc i64 %168 to i32
  %170 = call i32 @ok(i32 %167, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.12, i64 0, i64 0), i32 %169)
  %171 = call i32 @ZeroMemory(%struct.TYPE_4__* %8, i32 4)
  %172 = load i32*, i32** %4, align 8
  %173 = call i64 @IDirectSound_GetCaps(i32* %172, %struct.TYPE_4__* %8)
  store i64 %173, i64* %7, align 8
  %174 = load i64, i64* %7, align 8
  %175 = load i64, i64* @DSERR_INVALIDPARAM, align 8
  %176 = icmp eq i64 %174, %175
  %177 = zext i1 %176 to i32
  %178 = load i64, i64* %7, align 8
  %179 = trunc i64 %178 to i32
  %180 = call i32 @ok(i32 %177, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.13, i64 0, i64 0), i32 %179)
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32 4, i32* %181, align 4
  %182 = load i32*, i32** %4, align 8
  %183 = call i64 @IDirectSound_GetCaps(i32* %182, %struct.TYPE_4__* %8)
  store i64 %183, i64* %7, align 8
  %184 = load i64, i64* %7, align 8
  %185 = load i64, i64* @DS_OK, align 8
  %186 = icmp eq i64 %184, %185
  %187 = zext i1 %186 to i32
  %188 = load i64, i64* %7, align 8
  %189 = trunc i64 %188 to i32
  %190 = call i32 @ok(i32 %187, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i64 0, i64 0), i32 %189)
  %191 = load i32*, i32** %4, align 8
  %192 = call i64 @IDirectSound_Compact(i32* %191)
  store i64 %192, i64* %7, align 8
  %193 = load i64, i64* %7, align 8
  %194 = load i64, i64* @DSERR_PRIOLEVELNEEDED, align 8
  %195 = icmp eq i64 %193, %194
  %196 = zext i1 %195 to i32
  %197 = load i64, i64* %7, align 8
  %198 = trunc i64 %197 to i32
  %199 = call i32 @ok(i32 %196, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0), i32 %198)
  %200 = load i32*, i32** %4, align 8
  %201 = call i32 (...) @get_hwnd()
  %202 = load i32, i32* @DSSCL_PRIORITY, align 4
  %203 = call i64 @IDirectSound_SetCooperativeLevel(i32* %200, i32 %201, i32 %202)
  store i64 %203, i64* %7, align 8
  %204 = load i64, i64* %7, align 8
  %205 = load i64, i64* @DS_OK, align 8
  %206 = icmp eq i64 %204, %205
  %207 = zext i1 %206 to i32
  %208 = load i64, i64* %7, align 8
  %209 = trunc i64 %208 to i32
  %210 = call i32 @ok(i32 %207, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.16, i64 0, i64 0), i32 %209)
  %211 = load i32*, i32** %4, align 8
  %212 = call i64 @IDirectSound_Compact(i32* %211)
  store i64 %212, i64* %7, align 8
  %213 = load i64, i64* %7, align 8
  %214 = load i64, i64* @DS_OK, align 8
  %215 = icmp eq i64 %213, %214
  %216 = zext i1 %215 to i32
  %217 = load i64, i64* %7, align 8
  %218 = trunc i64 %217 to i32
  %219 = call i32 @ok(i32 %216, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0), i32 %218)
  %220 = load i32*, i32** %4, align 8
  %221 = call i64 @IDirectSound_GetSpeakerConfig(i32* %220, i64* null)
  store i64 %221, i64* %7, align 8
  %222 = load i64, i64* %7, align 8
  %223 = load i64, i64* @DSERR_INVALIDPARAM, align 8
  %224 = icmp eq i64 %222, %223
  %225 = zext i1 %224 to i32
  %226 = load i64, i64* %7, align 8
  %227 = trunc i64 %226 to i32
  %228 = call i32 @ok(i32 %225, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.17, i64 0, i64 0), i32 %227)
  %229 = load i32*, i32** %4, align 8
  %230 = call i64 @IDirectSound_GetSpeakerConfig(i32* %229, i64* %13)
  store i64 %230, i64* %7, align 8
  %231 = load i64, i64* %7, align 8
  %232 = load i64, i64* @DS_OK, align 8
  %233 = icmp eq i64 %231, %232
  %234 = zext i1 %233 to i32
  %235 = load i64, i64* %7, align 8
  %236 = trunc i64 %235 to i32
  %237 = call i32 @ok(i32 %234, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i64 0, i64 0), i32 %236)
  %238 = load i64, i64* %13, align 8
  store i64 %238, i64* %15, align 8
  %239 = load i32, i32* @DSSPEAKER_STEREO, align 4
  %240 = load i32, i32* @DSSPEAKER_GEOMETRY_WIDE, align 4
  %241 = call i64 @DSSPEAKER_COMBINED(i32 %239, i32 %240)
  store i64 %241, i64* %13, align 8
  %242 = load i64, i64* %13, align 8
  %243 = load i64, i64* %15, align 8
  %244 = icmp eq i64 %242, %243
  br i1 %244, label %245, label %249

245:                                              ; preds = %151
  %246 = load i32, i32* @DSSPEAKER_STEREO, align 4
  %247 = load i32, i32* @DSSPEAKER_GEOMETRY_NARROW, align 4
  %248 = call i64 @DSSPEAKER_COMBINED(i32 %246, i32 %247)
  store i64 %248, i64* %13, align 8
  br label %249

249:                                              ; preds = %245, %151
  %250 = load i64, i64* %7, align 8
  %251 = load i64, i64* @DS_OK, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %253, label %264

253:                                              ; preds = %249
  %254 = load i32*, i32** %4, align 8
  %255 = load i64, i64* %13, align 8
  %256 = call i64 @IDirectSound_SetSpeakerConfig(i32* %254, i64 %255)
  store i64 %256, i64* %7, align 8
  %257 = load i64, i64* %7, align 8
  %258 = load i64, i64* @DS_OK, align 8
  %259 = icmp eq i64 %257, %258
  %260 = zext i1 %259 to i32
  %261 = load i64, i64* %7, align 8
  %262 = trunc i64 %261 to i32
  %263 = call i32 @ok(i32 %260, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.19, i64 0, i64 0), i32 %262)
  br label %264

264:                                              ; preds = %253, %249
  %265 = load i64, i64* %7, align 8
  %266 = load i64, i64* @DS_OK, align 8
  %267 = icmp eq i64 %265, %266
  br i1 %267, label %268, label %293

268:                                              ; preds = %264
  %269 = load i32*, i32** %4, align 8
  %270 = call i64 @IDirectSound_GetSpeakerConfig(i32* %269, i64* %14)
  store i64 %270, i64* %7, align 8
  %271 = load i64, i64* %7, align 8
  %272 = load i64, i64* @DS_OK, align 8
  %273 = icmp eq i64 %271, %272
  %274 = zext i1 %273 to i32
  %275 = load i64, i64* %7, align 8
  %276 = trunc i64 %275 to i32
  %277 = call i32 @ok(i32 %274, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i64 0, i64 0), i32 %276)
  %278 = load i64, i64* %7, align 8
  %279 = load i64, i64* @DS_OK, align 8
  %280 = icmp eq i64 %278, %279
  br i1 %280, label %281, label %289

281:                                              ; preds = %268
  %282 = load i64, i64* %13, align 8
  %283 = load i64, i64* %14, align 8
  %284 = icmp ne i64 %282, %283
  br i1 %284, label %285, label %289

285:                                              ; preds = %281
  %286 = load i64, i64* %13, align 8
  %287 = load i64, i64* %14, align 8
  %288 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.20, i64 0, i64 0), i64 %286, i64 %287)
  br label %289

289:                                              ; preds = %285, %281, %268
  %290 = load i32*, i32** %4, align 8
  %291 = load i64, i64* %15, align 8
  %292 = call i64 @IDirectSound_SetSpeakerConfig(i32* %290, i64 %291)
  br label %293

293:                                              ; preds = %289, %264
  br label %294

294:                                              ; preds = %293, %146, %140, %134
  %295 = load i32*, i32** %4, align 8
  %296 = call i32 @IDirectSound_Release(i32* %295)
  store i32 %296, i32* %9, align 4
  %297 = load i32, i32* %9, align 4
  %298 = icmp eq i32 %297, 0
  %299 = zext i1 %298 to i32
  %300 = load i32, i32* %9, align 4
  %301 = call i32 @ok(i32 %299, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.21, i64 0, i64 0), i32 %300)
  ret void
}

declare dso_local i64 @IDirectSound_QueryInterface(i32*, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @IDirectSound_Release(i32*) #1

declare dso_local i32 @IDirectSound8_Release(i32*) #1

declare dso_local i64 @IDirectSound_GetCaps(i32*, %struct.TYPE_4__*) #1

declare dso_local i64 @IDirectSound_Compact(i32*) #1

declare dso_local i64 @IDirectSound_GetSpeakerConfig(i32*, i64*) #1

declare dso_local i64 @IDirectSound_Initialize(i32*, i32) #1

declare dso_local i32 @trace(i8*, ...) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @IDirectSound_SetCooperativeLevel(i32*, i32, i32) #1

declare dso_local i32 @get_hwnd(...) #1

declare dso_local i64 @DSSPEAKER_COMBINED(i32, i32) #1

declare dso_local i64 @IDirectSound_SetSpeakerConfig(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
