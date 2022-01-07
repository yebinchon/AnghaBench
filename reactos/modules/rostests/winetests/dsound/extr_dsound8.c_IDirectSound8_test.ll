; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/dsound/extr_dsound8.c_IDirectSound8_test.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/dsound/extr_dsound8.c_IDirectSound8_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@IID_IUnknown = common dso_local global i32 0, align 4
@DS_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"IDirectSound8_QueryInterface(IID_IUnknown) failed: %08x\0A\00", align 1
@IID_IDirectSound = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"IDirectSound8_QueryInterface(IID_IDirectSound) failed: %08x\0A\00", align 1
@IID_IDirectSound8 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [105 x i8] c"IDirectSound8_QueryInterface(IID_IDirectSound8) should have returned DSERR_INVALIDPARAM, returned: %08x\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@DSERR_UNINITIALIZED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [86 x i8] c"IDirectSound8_GetCaps(NULL) should have returned DSERR_UNINITIALIZED, returned: %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [82 x i8] c"IDirectSound8_GetCaps() should have returned DSERR_UNINITIALIZED, returned: %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [82 x i8] c"IDirectSound8_Compact() should have returned DSERR_UNINITIALIZED, returned: %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [91 x i8] c"IDirectSound8_GetSpeakerConfig() should have returned DSERR_UNINITIALIZED, returned: %08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [94 x i8] c"IDirectSound8_VerifyCertification() should have returned DSERR_UNINITIALIZED, returned: %08x\0A\00", align 1
@DSERR_NODRIVER = common dso_local global i64 0, align 8
@DSERR_ALLOCATED = common dso_local global i64 0, align 8
@E_FAIL = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [41 x i8] c"IDirectSound8_Initialize() failed: %08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"  No Driver\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"  No Device\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"  Already In Use\0A\00", align 1
@DSERR_ALREADYINITIALIZED = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [80 x i8] c"IDirectSound8_Initialize() should have returned DSERR_ALREADYINITIALIZED: %08x\0A\00", align 1
@DSERR_INVALIDPARAM = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [81 x i8] c"IDirectSound8_GetCaps() should have returned DSERR_INVALIDPARAM, returned: %08x\0A\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"IDirectSound8_GetCaps() failed: %08x\0A\00", align 1
@DSERR_PRIOLEVELNEEDED = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [38 x i8] c"IDirectSound8_Compact() failed: %08x\0A\00", align 1
@DSSCL_PRIORITY = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [50 x i8] c"IDirectSound8_SetCooperativeLevel() failed: %08x\0A\00", align 1
@.str.17 = private unnamed_addr constant [94 x i8] c"IDirectSound8_GetSpeakerConfig(NULL) should have returned DSERR_INVALIDPARAM, returned: %08x\0A\00", align 1
@.str.18 = private unnamed_addr constant [47 x i8] c"IDirectSound8_GetSpeakerConfig() failed: %08x\0A\00", align 1
@DSSPEAKER_STEREO = common dso_local global i32 0, align 4
@DSSPEAKER_GEOMETRY_WIDE = common dso_local global i32 0, align 4
@DSSPEAKER_GEOMETRY_NARROW = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [47 x i8] c"IDirectSound8_SetSpeakerConfig() failed: %08x\0A\00", align 1
@.str.20 = private unnamed_addr constant [92 x i8] c"IDirectSound8_GetSpeakerConfig() failed to set speaker config: expected 0x%08x, got 0x%08x\0A\00", align 1
@E_NOTIMPL = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [50 x i8] c"IDirectSound8_VerifyCertification() failed: %08x\0A\00", align 1
@.str.22 = private unnamed_addr constant [58 x i8] c"IDirectSound8_Release() has %d references, should have 0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i32)* @IDirectSound8_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @IDirectSound8_test(i32* %0, i64 %1, i32 %2) #0 {
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
  %16 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = bitcast i32** %10 to i32*
  %19 = call i64 @IDirectSound8_QueryInterface(i32* %17, i32* @IID_IUnknown, i32* %18)
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @DS_OK, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = load i64, i64* %7, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @ok(i32 %23, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @DS_OK, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load i32*, i32** %10, align 8
  %32 = call i32 @IDirectSound8_Release(i32* %31)
  br label %33

33:                                               ; preds = %30, %3
  %34 = load i32*, i32** %4, align 8
  %35 = bitcast i32** %11 to i32*
  %36 = call i64 @IDirectSound8_QueryInterface(i32* %34, i32* @IID_IDirectSound, i32* %35)
  store i64 %36, i64* %7, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* @DS_OK, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i64, i64* %7, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i32 @ok(i32 %40, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* @DS_OK, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %33
  %48 = load i32*, i32** %11, align 8
  %49 = call i32 @IDirectSound_Release(i32* %48)
  br label %50

50:                                               ; preds = %47, %33
  %51 = load i32*, i32** %4, align 8
  %52 = bitcast i32** %12 to i32*
  %53 = call i64 @IDirectSound8_QueryInterface(i32* %51, i32* @IID_IDirectSound8, i32* %52)
  store i64 %53, i64* %7, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* @DS_OK, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = load i64, i64* %7, align 8
  %59 = trunc i64 %58 to i32
  %60 = call i32 @ok(i32 %57, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* @DS_OK, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %50
  %65 = load i32*, i32** %12, align 8
  %66 = call i32 @IDirectSound8_Release(i32* %65)
  br label %67

67:                                               ; preds = %64, %50
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* @FALSE, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %161

71:                                               ; preds = %67
  %72 = load i32*, i32** %4, align 8
  %73 = call i64 @IDirectSound8_GetCaps(i32* %72, %struct.TYPE_4__* null)
  store i64 %73, i64* %7, align 8
  %74 = load i64, i64* %7, align 8
  %75 = load i64, i64* @DSERR_UNINITIALIZED, align 8
  %76 = icmp eq i64 %74, %75
  %77 = zext i1 %76 to i32
  %78 = load i64, i64* %7, align 8
  %79 = trunc i64 %78 to i32
  %80 = call i32 @ok(i32 %77, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.3, i64 0, i64 0), i32 %79)
  %81 = load i32*, i32** %4, align 8
  %82 = call i64 @IDirectSound8_GetCaps(i32* %81, %struct.TYPE_4__* %8)
  store i64 %82, i64* %7, align 8
  %83 = load i64, i64* %7, align 8
  %84 = load i64, i64* @DSERR_UNINITIALIZED, align 8
  %85 = icmp eq i64 %83, %84
  %86 = zext i1 %85 to i32
  %87 = load i64, i64* %7, align 8
  %88 = trunc i64 %87 to i32
  %89 = call i32 @ok(i32 %86, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.4, i64 0, i64 0), i32 %88)
  %90 = load i32*, i32** %4, align 8
  %91 = call i64 @IDirectSound8_Compact(i32* %90)
  store i64 %91, i64* %7, align 8
  %92 = load i64, i64* %7, align 8
  %93 = load i64, i64* @DSERR_UNINITIALIZED, align 8
  %94 = icmp eq i64 %92, %93
  %95 = zext i1 %94 to i32
  %96 = load i64, i64* %7, align 8
  %97 = trunc i64 %96 to i32
  %98 = call i32 @ok(i32 %95, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.5, i64 0, i64 0), i32 %97)
  %99 = load i32*, i32** %4, align 8
  %100 = call i64 @IDirectSound8_GetSpeakerConfig(i32* %99, i64* %13)
  store i64 %100, i64* %7, align 8
  %101 = load i64, i64* %7, align 8
  %102 = load i64, i64* @DSERR_UNINITIALIZED, align 8
  %103 = icmp eq i64 %101, %102
  %104 = zext i1 %103 to i32
  %105 = load i64, i64* %7, align 8
  %106 = trunc i64 %105 to i32
  %107 = call i32 @ok(i32 %104, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.6, i64 0, i64 0), i32 %106)
  %108 = load i32*, i32** %4, align 8
  %109 = call i64 @IDirectSound8_VerifyCertification(i32* %108, i64* %16)
  store i64 %109, i64* %7, align 8
  %110 = load i64, i64* %7, align 8
  %111 = load i64, i64* @DSERR_UNINITIALIZED, align 8
  %112 = icmp eq i64 %110, %111
  %113 = zext i1 %112 to i32
  %114 = load i64, i64* %7, align 8
  %115 = trunc i64 %114 to i32
  %116 = call i32 @ok(i32 %113, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.7, i64 0, i64 0), i32 %115)
  %117 = load i32*, i32** %4, align 8
  %118 = load i32, i32* %6, align 4
  %119 = call i64 @IDirectSound8_Initialize(i32* %117, i32 %118)
  store i64 %119, i64* %7, align 8
  %120 = load i64, i64* %7, align 8
  %121 = load i64, i64* @DS_OK, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %135, label %123

123:                                              ; preds = %71
  %124 = load i64, i64* %7, align 8
  %125 = load i64, i64* @DSERR_NODRIVER, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %135, label %127

127:                                              ; preds = %123
  %128 = load i64, i64* %7, align 8
  %129 = load i64, i64* @DSERR_ALLOCATED, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %135, label %131

131:                                              ; preds = %127
  %132 = load i64, i64* %7, align 8
  %133 = load i64, i64* @E_FAIL, align 8
  %134 = icmp eq i64 %132, %133
  br label %135

135:                                              ; preds = %131, %127, %123, %71
  %136 = phi i1 [ true, %127 ], [ true, %123 ], [ true, %71 ], [ %134, %131 ]
  %137 = zext i1 %136 to i32
  %138 = load i64, i64* %7, align 8
  %139 = trunc i64 %138 to i32
  %140 = call i32 @ok(i32 %137, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %139)
  %141 = load i64, i64* %7, align 8
  %142 = load i64, i64* @DSERR_NODRIVER, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %135
  %145 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  br label %319

146:                                              ; preds = %135
  %147 = load i64, i64* %7, align 8
  %148 = load i64, i64* @E_FAIL, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %146
  %151 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  br label %319

152:                                              ; preds = %146
  %153 = load i64, i64* %7, align 8
  %154 = load i64, i64* @DSERR_ALLOCATED, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %152
  %157 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  br label %319

158:                                              ; preds = %152
  br label %159

159:                                              ; preds = %158
  br label %160

160:                                              ; preds = %159
  br label %161

161:                                              ; preds = %160, %67
  %162 = load i32*, i32** %4, align 8
  %163 = load i32, i32* %6, align 4
  %164 = call i64 @IDirectSound8_Initialize(i32* %162, i32 %163)
  store i64 %164, i64* %7, align 8
  %165 = load i64, i64* %7, align 8
  %166 = load i64, i64* @DSERR_ALREADYINITIALIZED, align 8
  %167 = icmp eq i64 %165, %166
  %168 = zext i1 %167 to i32
  %169 = load i64, i64* %7, align 8
  %170 = trunc i64 %169 to i32
  %171 = call i32 @ok(i32 %168, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.12, i64 0, i64 0), i32 %170)
  %172 = load i32*, i32** %4, align 8
  %173 = call i64 @IDirectSound8_GetCaps(i32* %172, %struct.TYPE_4__* null)
  store i64 %173, i64* %7, align 8
  %174 = load i64, i64* %7, align 8
  %175 = load i64, i64* @DSERR_INVALIDPARAM, align 8
  %176 = icmp eq i64 %174, %175
  %177 = zext i1 %176 to i32
  %178 = load i64, i64* %7, align 8
  %179 = trunc i64 %178 to i32
  %180 = call i32 @ok(i32 %177, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.13, i64 0, i64 0), i32 %179)
  %181 = call i32 @ZeroMemory(%struct.TYPE_4__* %8, i32 4)
  %182 = load i32*, i32** %4, align 8
  %183 = call i64 @IDirectSound8_GetCaps(i32* %182, %struct.TYPE_4__* %8)
  store i64 %183, i64* %7, align 8
  %184 = load i64, i64* %7, align 8
  %185 = load i64, i64* @DSERR_INVALIDPARAM, align 8
  %186 = icmp eq i64 %184, %185
  %187 = zext i1 %186 to i32
  %188 = load i64, i64* %7, align 8
  %189 = trunc i64 %188 to i32
  %190 = call i32 @ok(i32 %187, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.13, i64 0, i64 0), i32 %189)
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32 4, i32* %191, align 4
  %192 = load i32*, i32** %4, align 8
  %193 = call i64 @IDirectSound8_GetCaps(i32* %192, %struct.TYPE_4__* %8)
  store i64 %193, i64* %7, align 8
  %194 = load i64, i64* %7, align 8
  %195 = load i64, i64* @DS_OK, align 8
  %196 = icmp eq i64 %194, %195
  %197 = zext i1 %196 to i32
  %198 = load i64, i64* %7, align 8
  %199 = trunc i64 %198 to i32
  %200 = call i32 @ok(i32 %197, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i64 0, i64 0), i32 %199)
  %201 = load i32*, i32** %4, align 8
  %202 = call i64 @IDirectSound8_Compact(i32* %201)
  store i64 %202, i64* %7, align 8
  %203 = load i64, i64* %7, align 8
  %204 = load i64, i64* @DSERR_PRIOLEVELNEEDED, align 8
  %205 = icmp eq i64 %203, %204
  %206 = zext i1 %205 to i32
  %207 = load i64, i64* %7, align 8
  %208 = trunc i64 %207 to i32
  %209 = call i32 @ok(i32 %206, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0), i32 %208)
  %210 = load i32*, i32** %4, align 8
  %211 = call i32 (...) @get_hwnd()
  %212 = load i32, i32* @DSSCL_PRIORITY, align 4
  %213 = call i64 @IDirectSound8_SetCooperativeLevel(i32* %210, i32 %211, i32 %212)
  store i64 %213, i64* %7, align 8
  %214 = load i64, i64* %7, align 8
  %215 = load i64, i64* @DS_OK, align 8
  %216 = icmp eq i64 %214, %215
  %217 = zext i1 %216 to i32
  %218 = load i64, i64* %7, align 8
  %219 = trunc i64 %218 to i32
  %220 = call i32 @ok(i32 %217, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.16, i64 0, i64 0), i32 %219)
  %221 = load i32*, i32** %4, align 8
  %222 = call i64 @IDirectSound8_Compact(i32* %221)
  store i64 %222, i64* %7, align 8
  %223 = load i64, i64* %7, align 8
  %224 = load i64, i64* @DS_OK, align 8
  %225 = icmp eq i64 %223, %224
  %226 = zext i1 %225 to i32
  %227 = load i64, i64* %7, align 8
  %228 = trunc i64 %227 to i32
  %229 = call i32 @ok(i32 %226, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0), i32 %228)
  %230 = load i32*, i32** %4, align 8
  %231 = call i64 @IDirectSound8_GetSpeakerConfig(i32* %230, i64* null)
  store i64 %231, i64* %7, align 8
  %232 = load i64, i64* %7, align 8
  %233 = load i64, i64* @DSERR_INVALIDPARAM, align 8
  %234 = icmp eq i64 %232, %233
  %235 = zext i1 %234 to i32
  %236 = load i64, i64* %7, align 8
  %237 = trunc i64 %236 to i32
  %238 = call i32 @ok(i32 %235, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.17, i64 0, i64 0), i32 %237)
  %239 = load i32*, i32** %4, align 8
  %240 = call i64 @IDirectSound8_GetSpeakerConfig(i32* %239, i64* %13)
  store i64 %240, i64* %7, align 8
  %241 = load i64, i64* %7, align 8
  %242 = load i64, i64* @DS_OK, align 8
  %243 = icmp eq i64 %241, %242
  %244 = zext i1 %243 to i32
  %245 = load i64, i64* %7, align 8
  %246 = trunc i64 %245 to i32
  %247 = call i32 @ok(i32 %244, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.18, i64 0, i64 0), i32 %246)
  %248 = load i64, i64* %13, align 8
  store i64 %248, i64* %15, align 8
  %249 = load i32, i32* @DSSPEAKER_STEREO, align 4
  %250 = load i32, i32* @DSSPEAKER_GEOMETRY_WIDE, align 4
  %251 = call i64 @DSSPEAKER_COMBINED(i32 %249, i32 %250)
  store i64 %251, i64* %13, align 8
  %252 = load i64, i64* %13, align 8
  %253 = load i64, i64* %15, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %255, label %259

255:                                              ; preds = %161
  %256 = load i32, i32* @DSSPEAKER_STEREO, align 4
  %257 = load i32, i32* @DSSPEAKER_GEOMETRY_NARROW, align 4
  %258 = call i64 @DSSPEAKER_COMBINED(i32 %256, i32 %257)
  store i64 %258, i64* %13, align 8
  br label %259

259:                                              ; preds = %255, %161
  %260 = load i64, i64* %7, align 8
  %261 = load i64, i64* @DS_OK, align 8
  %262 = icmp eq i64 %260, %261
  br i1 %262, label %263, label %274

263:                                              ; preds = %259
  %264 = load i32*, i32** %4, align 8
  %265 = load i64, i64* %13, align 8
  %266 = call i64 @IDirectSound8_SetSpeakerConfig(i32* %264, i64 %265)
  store i64 %266, i64* %7, align 8
  %267 = load i64, i64* %7, align 8
  %268 = load i64, i64* @DS_OK, align 8
  %269 = icmp eq i64 %267, %268
  %270 = zext i1 %269 to i32
  %271 = load i64, i64* %7, align 8
  %272 = trunc i64 %271 to i32
  %273 = call i32 @ok(i32 %270, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.19, i64 0, i64 0), i32 %272)
  br label %274

274:                                              ; preds = %263, %259
  %275 = load i64, i64* %7, align 8
  %276 = load i64, i64* @DS_OK, align 8
  %277 = icmp eq i64 %275, %276
  br i1 %277, label %278, label %303

278:                                              ; preds = %274
  %279 = load i32*, i32** %4, align 8
  %280 = call i64 @IDirectSound8_GetSpeakerConfig(i32* %279, i64* %14)
  store i64 %280, i64* %7, align 8
  %281 = load i64, i64* %7, align 8
  %282 = load i64, i64* @DS_OK, align 8
  %283 = icmp eq i64 %281, %282
  %284 = zext i1 %283 to i32
  %285 = load i64, i64* %7, align 8
  %286 = trunc i64 %285 to i32
  %287 = call i32 @ok(i32 %284, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.18, i64 0, i64 0), i32 %286)
  %288 = load i64, i64* %7, align 8
  %289 = load i64, i64* @DS_OK, align 8
  %290 = icmp eq i64 %288, %289
  br i1 %290, label %291, label %299

291:                                              ; preds = %278
  %292 = load i64, i64* %13, align 8
  %293 = load i64, i64* %14, align 8
  %294 = icmp ne i64 %292, %293
  br i1 %294, label %295, label %299

295:                                              ; preds = %291
  %296 = load i64, i64* %13, align 8
  %297 = load i64, i64* %14, align 8
  %298 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.20, i64 0, i64 0), i64 %296, i64 %297)
  br label %299

299:                                              ; preds = %295, %291, %278
  %300 = load i32*, i32** %4, align 8
  %301 = load i64, i64* %15, align 8
  %302 = call i64 @IDirectSound8_SetSpeakerConfig(i32* %300, i64 %301)
  br label %303

303:                                              ; preds = %299, %274
  %304 = load i32*, i32** %4, align 8
  %305 = call i64 @IDirectSound8_VerifyCertification(i32* %304, i64* %16)
  store i64 %305, i64* %7, align 8
  %306 = load i64, i64* %7, align 8
  %307 = load i64, i64* @DS_OK, align 8
  %308 = icmp eq i64 %306, %307
  br i1 %308, label %313, label %309

309:                                              ; preds = %303
  %310 = load i64, i64* %7, align 8
  %311 = load i64, i64* @E_NOTIMPL, align 8
  %312 = icmp eq i64 %310, %311
  br label %313

313:                                              ; preds = %309, %303
  %314 = phi i1 [ true, %303 ], [ %312, %309 ]
  %315 = zext i1 %314 to i32
  %316 = load i64, i64* %7, align 8
  %317 = trunc i64 %316 to i32
  %318 = call i32 @ok(i32 %315, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.21, i64 0, i64 0), i32 %317)
  br label %319

319:                                              ; preds = %313, %156, %150, %144
  %320 = load i32*, i32** %4, align 8
  %321 = call i32 @IDirectSound8_Release(i32* %320)
  store i32 %321, i32* %9, align 4
  %322 = load i32, i32* %9, align 4
  %323 = icmp eq i32 %322, 0
  %324 = zext i1 %323 to i32
  %325 = load i32, i32* %9, align 4
  %326 = call i32 @ok(i32 %324, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.22, i64 0, i64 0), i32 %325)
  ret void
}

declare dso_local i64 @IDirectSound8_QueryInterface(i32*, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @IDirectSound8_Release(i32*) #1

declare dso_local i32 @IDirectSound_Release(i32*) #1

declare dso_local i64 @IDirectSound8_GetCaps(i32*, %struct.TYPE_4__*) #1

declare dso_local i64 @IDirectSound8_Compact(i32*) #1

declare dso_local i64 @IDirectSound8_GetSpeakerConfig(i32*, i64*) #1

declare dso_local i64 @IDirectSound8_VerifyCertification(i32*, i64*) #1

declare dso_local i64 @IDirectSound8_Initialize(i32*, i32) #1

declare dso_local i32 @trace(i8*, ...) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @IDirectSound8_SetCooperativeLevel(i32*, i32, i32) #1

declare dso_local i32 @get_hwnd(...) #1

declare dso_local i64 @DSSPEAKER_COMBINED(i32, i32) #1

declare dso_local i64 @IDirectSound8_SetSpeakerConfig(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
