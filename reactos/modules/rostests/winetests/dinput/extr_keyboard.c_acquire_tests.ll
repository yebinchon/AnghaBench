; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/dinput/extr_keyboard.c_acquire_tests.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/dinput/extr_keyboard.c_acquire_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i64*, i32 }

@GUID_Key = common dso_local global i32 0, align 4
@__const.acquire_tests.dodf = private unnamed_addr constant [4 x i64] [i64 ptrtoint (i32* @GUID_Key to i64), i64 ptrtoint (i32* @GUID_Key to i64), i64 ptrtoint (i32* @GUID_Key to i64), i64 ptrtoint (i32* @GUID_Key to i64)], align 16
@LANG_ENGLISH = common dso_local global i32 0, align 4
@SUBLANG_DEFAULT = common dso_local global i32 0, align 4
@DIDF_RELAXIS = common dso_local global i32 0, align 4
@GUID_SysKeyboard = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"IDirectInput_CreateDevice() failed: %08x\0A\00", align 1
@c_dfDIKeyboard = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"IDirectInputDevice_SetDataFormat() failed: %08x\0A\00", align 1
@DISCL_NONEXCLUSIVE = common dso_local global i32 0, align 4
@DISCL_BACKGROUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"IDirectInputDevice_SetCooperativeLevel() failed: %08x\0A\00", align 1
@DIERR_NOTACQUIRED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [65 x i8] c"IDirectInputDevice_GetDeviceState(10,) should have failed: %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"IDirectInputDevice_GetDeviceState() should have failed: %08x\0A\00", align 1
@S_FALSE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [57 x i8] c"IDirectInputDevice_Unacquire() should have failed: %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"IDirectInputDevice_Acquire() failed: %08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"IDirectInputDevice_Acquire() should have failed: %08x\0A\00", align 1
@DIERR_INVALIDPARAM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [50 x i8] c"IDirectInputDevice_GetDeviceState() failed: %08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"IDirectInputDevice_Uncquire() failed: %08x\0A\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"IDirectInputDevice_GetDeviceState(4,) failed: %08x\0A\00", align 1
@.str.11 = private unnamed_addr constant [66 x i8] c"IDirectInputDevice_GetDeviceState(256,) should have failed: %08x\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Should be zeroed, got 0x%08x\0A\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"Keyboard event not processed, skipping test\0A\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"IDirectInputDevice_Unacquire() failed: %08x\0A\00", align 1
@.str.15 = private unnamed_addr constant [48 x i8] c"IDirectInputDevice_GetDeviceState failed: %08x\0A\00", align 1
@KEYEVENTF_KEYUP = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [39 x i8] c"Unexpected raw devices registered: %d\0A\00", align 1
@DIDFT_BUTTON = common dso_local global i32 0, align 4
@DIK_E = common dso_local global i32 0, align 4
@DIK_Q = common dso_local global i32 0, align 4
@DIK_R = common dso_local global i32 0, align 4
@DIK_W = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @acquire_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acquire_tests(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca [256 x i64], align 16
  %8 = alloca [6 x i64], align 16
  %9 = alloca i32, align 4
  %10 = alloca [4 x i64], align 16
  %11 = alloca %struct.TYPE_4__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = bitcast [4 x i64]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 bitcast ([4 x i64]* @__const.acquire_tests.dodf to i8*), i64 32, i1 false)
  %17 = load i32, i32* @LANG_ENGLISH, align 4
  %18 = load i32, i32* @SUBLANG_DEFAULT, align 4
  %19 = call i32 @MAKELANGID(i32 %17, i32 %18)
  %20 = call i32 @activate_keyboard_layout(i32 %19, i32* %13)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  br label %282

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32 32, i32* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  store i32 8, i32* %26, align 4
  %27 = load i32, i32* @DIDF_RELAXIS, align 4
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 5
  store i32 %27, i32* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  store i32 48, i32* %29, align 8
  %30 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 0
  %31 = call i32 @ARRAY_SIZE(i64* %30)
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 4
  store i64* %33, i64** %34, align 8
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @IDirectInput_CreateDevice(i32* %35, i32* @GUID_SysKeyboard, i32** %6, i32* null)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @SUCCEEDED(i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @ok(i32 %38, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = call i64 @FAILED(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %24
  br label %282

45:                                               ; preds = %24
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @IDirectInputDevice_SetDataFormat(i32* %46, %struct.TYPE_4__* @c_dfDIKeyboard)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @SUCCEEDED(i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @ok(i32 %49, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* @DISCL_NONEXCLUSIVE, align 4
  %54 = load i32, i32* @DISCL_BACKGROUND, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @IDirectInputDevice_SetCooperativeLevel(i32* %52, i32* null, i32 %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @SUCCEEDED(i32 %57)
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @ok(i32 %58, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  %61 = load i32*, i32** %6, align 8
  %62 = getelementptr inbounds [256 x i64], [256 x i64]* %7, i64 0, i64 0
  %63 = call i32 @IDirectInputDevice_GetDeviceState(i32* %61, i32 10, i64* %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @DIERR_NOTACQUIRED, align 4
  %66 = icmp eq i32 %64, %65
  %67 = zext i1 %66 to i32
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @ok(i32 %67, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  %70 = load i32*, i32** %6, align 8
  %71 = getelementptr inbounds [256 x i64], [256 x i64]* %7, i64 0, i64 0
  %72 = call i32 @IDirectInputDevice_GetDeviceState(i32* %70, i32 2048, i64* %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @DIERR_NOTACQUIRED, align 4
  %75 = icmp eq i32 %73, %74
  %76 = zext i1 %75 to i32
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @ok(i32 %76, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0), i32 %77)
  %79 = load i32*, i32** %6, align 8
  %80 = call i32 @IDirectInputDevice_Unacquire(i32* %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @S_FALSE, align 4
  %83 = icmp eq i32 %81, %82
  %84 = zext i1 %83 to i32
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @ok(i32 %84, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i32 %85)
  %87 = load i32*, i32** %6, align 8
  %88 = call i32 @IDirectInputDevice_Acquire(i32* %87)
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @SUCCEEDED(i32 %89)
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @ok(i32 %90, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %91)
  %93 = load i32*, i32** %6, align 8
  %94 = call i32 @IDirectInputDevice_Acquire(i32* %93)
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @S_FALSE, align 4
  %97 = icmp eq i32 %95, %96
  %98 = zext i1 %97 to i32
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @ok(i32 %98, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0), i32 %99)
  %101 = load i32*, i32** %6, align 8
  %102 = getelementptr inbounds [256 x i64], [256 x i64]* %7, i64 0, i64 0
  %103 = call i32 @IDirectInputDevice_GetDeviceState(i32* %101, i32 10, i64* %102)
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* @DIERR_INVALIDPARAM, align 4
  %106 = icmp eq i32 %104, %105
  %107 = zext i1 %106 to i32
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @ok(i32 %107, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i32 %108)
  %110 = load i32*, i32** %6, align 8
  %111 = getelementptr inbounds [256 x i64], [256 x i64]* %7, i64 0, i64 0
  %112 = call i32 @IDirectInputDevice_GetDeviceState(i32* %110, i32 2048, i64* %111)
  store i32 %112, i32* %5, align 4
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @SUCCEEDED(i32 %113)
  %115 = load i32, i32* %5, align 4
  %116 = call i32 @ok(i32 %114, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0), i32 %115)
  %117 = load i32*, i32** %6, align 8
  %118 = call i32 @IDirectInputDevice_Unacquire(i32* %117)
  store i32 %118, i32* %5, align 4
  %119 = load i32, i32* %5, align 4
  %120 = call i32 @SUCCEEDED(i32 %119)
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @ok(i32 %120, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0), i32 %121)
  %123 = load i32*, i32** %6, align 8
  %124 = call i32 @IDirectInputDevice_SetDataFormat(i32* %123, %struct.TYPE_4__* %11)
  store i32 %124, i32* %5, align 4
  %125 = load i32, i32* %5, align 4
  %126 = call i32 @SUCCEEDED(i32 %125)
  %127 = load i32, i32* %5, align 4
  %128 = call i32 @ok(i32 %126, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %127)
  %129 = load i32*, i32** %6, align 8
  %130 = call i32 @IDirectInputDevice_Acquire(i32* %129)
  store i32 %130, i32* %5, align 4
  %131 = load i32, i32* %5, align 4
  %132 = call i32 @SUCCEEDED(i32 %131)
  %133 = load i32, i32* %5, align 4
  %134 = call i32 @ok(i32 %132, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %133)
  %135 = load i32*, i32** %6, align 8
  %136 = getelementptr inbounds [6 x i64], [6 x i64]* %8, i64 0, i64 0
  %137 = call i32 @IDirectInputDevice_GetDeviceState(i32* %135, i32 48, i64* %136)
  store i32 %137, i32* %5, align 4
  %138 = load i32, i32* %5, align 4
  %139 = call i32 @SUCCEEDED(i32 %138)
  %140 = load i32, i32* %5, align 4
  %141 = call i32 @ok(i32 %139, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0), i32 %140)
  %142 = load i32*, i32** %6, align 8
  %143 = getelementptr inbounds [256 x i64], [256 x i64]* %7, i64 0, i64 0
  %144 = call i32 @IDirectInputDevice_GetDeviceState(i32* %142, i32 2048, i64* %143)
  store i32 %144, i32* %5, align 4
  %145 = load i32, i32* %5, align 4
  %146 = load i32, i32* @DIERR_INVALIDPARAM, align 4
  %147 = icmp eq i32 %145, %146
  %148 = zext i1 %147 to i32
  %149 = load i32, i32* %5, align 4
  %150 = call i32 @ok(i32 %148, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.11, i64 0, i64 0), i32 %149)
  %151 = getelementptr inbounds [6 x i64], [6 x i64]* %8, i64 0, i64 0
  %152 = call i32 @memset(i64* %151, i32 86, i32 48)
  %153 = load i32*, i32** %6, align 8
  %154 = getelementptr inbounds [6 x i64], [6 x i64]* %8, i64 0, i64 0
  %155 = call i32 @IDirectInputDevice_GetDeviceState(i32* %153, i32 48, i64* %154)
  store i32 0, i32* %9, align 4
  br label %156

156:                                              ; preds = %174, %45
  %157 = load i32, i32* %9, align 4
  %158 = getelementptr inbounds [6 x i64], [6 x i64]* %8, i64 0, i64 0
  %159 = call i32 @ARRAY_SIZE(i64* %158)
  %160 = icmp slt i32 %157, %159
  br i1 %160, label %161, label %177

161:                                              ; preds = %156
  %162 = load i32, i32* %9, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [6 x i64], [6 x i64]* %8, i64 0, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = icmp eq i64 %165, 0
  %167 = zext i1 %166 to i32
  %168 = load i32, i32* %9, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [6 x i64], [6 x i64]* %8, i64 0, i64 %169
  %171 = load i64, i64* %170, align 8
  %172 = trunc i64 %171 to i32
  %173 = call i32 @ok(i32 %167, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i32 %172)
  br label %174

174:                                              ; preds = %161
  %175 = load i32, i32* %9, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %9, align 4
  br label %156

177:                                              ; preds = %156
  %178 = load i32, i32* %4, align 4
  %179 = call i32 @SetFocus(i32 %178)
  %180 = call i32 (...) @pump_messages()
  %181 = call i32 @keybd_event(i8 signext 81, i32 0, i32 0, i32 0)
  %182 = load i32*, i32** %6, align 8
  %183 = getelementptr inbounds [6 x i64], [6 x i64]* %8, i64 0, i64 0
  %184 = call i32 @IDirectInputDevice_GetDeviceState(i32* %182, i32 48, i64* %183)
  store i32 %184, i32* %5, align 4
  %185 = load i32, i32* %5, align 4
  %186 = call i32 @SUCCEEDED(i32 %185)
  %187 = load i32, i32* %5, align 4
  %188 = call i32 @ok(i32 %186, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0), i32 %187)
  %189 = getelementptr inbounds [6 x i64], [6 x i64]* %8, i64 0, i64 0
  %190 = load i64, i64* %189, align 16
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %194, label %192

192:                                              ; preds = %177
  %193 = call i32 @win_skip(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i64 0, i64 0))
  br label %236

194:                                              ; preds = %177
  %195 = load i32*, i32** %6, align 8
  %196 = call i32 @IDirectInputDevice_Unacquire(i32* %195)
  store i32 %196, i32* %5, align 4
  %197 = load i32, i32* %5, align 4
  %198 = call i32 @SUCCEEDED(i32 %197)
  %199 = load i32, i32* %5, align 4
  %200 = call i32 @ok(i32 %198, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i64 0, i64 0), i32 %199)
  %201 = load i32*, i32** %6, align 8
  %202 = call i32 @IDirectInputDevice_Acquire(i32* %201)
  store i32 %202, i32* %5, align 4
  %203 = load i32, i32* %5, align 4
  %204 = call i32 @SUCCEEDED(i32 %203)
  %205 = load i32, i32* %5, align 4
  %206 = call i32 @ok(i32 %204, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %205)
  %207 = load i32*, i32** %6, align 8
  %208 = getelementptr inbounds [6 x i64], [6 x i64]* %8, i64 0, i64 0
  %209 = call i32 @IDirectInputDevice_GetDeviceState(i32* %207, i32 48, i64* %208)
  store i32 %209, i32* %5, align 4
  %210 = load i32, i32* %5, align 4
  %211 = call i32 @SUCCEEDED(i32 %210)
  %212 = load i32, i32* %5, align 4
  %213 = call i32 @ok(i32 %211, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.15, i64 0, i64 0), i32 %212)
  store i32 0, i32* %9, align 4
  br label %214

214:                                              ; preds = %232, %194
  %215 = load i32, i32* %9, align 4
  %216 = getelementptr inbounds [6 x i64], [6 x i64]* %8, i64 0, i64 0
  %217 = call i32 @ARRAY_SIZE(i64* %216)
  %218 = icmp slt i32 %215, %217
  br i1 %218, label %219, label %235

219:                                              ; preds = %214
  %220 = load i32, i32* %9, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [6 x i64], [6 x i64]* %8, i64 0, i64 %221
  %223 = load i64, i64* %222, align 8
  %224 = icmp eq i64 %223, 0
  %225 = zext i1 %224 to i32
  %226 = load i32, i32* %9, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [6 x i64], [6 x i64]* %8, i64 0, i64 %227
  %229 = load i64, i64* %228, align 8
  %230 = trunc i64 %229 to i32
  %231 = call i32 @ok(i32 %225, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i32 %230)
  br label %232

232:                                              ; preds = %219
  %233 = load i32, i32* %9, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %9, align 4
  br label %214

235:                                              ; preds = %214
  br label %236

236:                                              ; preds = %235, %192
  %237 = load i32, i32* @KEYEVENTF_KEYUP, align 4
  %238 = call i32 @keybd_event(i8 signext 81, i32 0, i32 %237, i32 0)
  store i32 0, i32* %14, align 4
  %239 = call i32 @GetRegisteredRawInputDevices(i32* null, i32* %14, i32 4)
  %240 = load i32, i32* %14, align 4
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %248, label %242

242:                                              ; preds = %236
  %243 = load i32, i32* %14, align 4
  %244 = icmp eq i32 %243, 1
  %245 = zext i1 %244 to i32
  %246 = call i64 @broken(i32 %245)
  %247 = icmp ne i64 %246, 0
  br label %248

248:                                              ; preds = %242, %236
  %249 = phi i1 [ true, %236 ], [ %247, %242 ]
  %250 = zext i1 %249 to i32
  %251 = load i32, i32* %14, align 4
  %252 = call i32 @ok(i32 %250, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i64 0, i64 0), i32 %251)
  %253 = load i32*, i32** %6, align 8
  %254 = call i32 @IDirectInputDevice_Acquire(i32* %253)
  store i32 %254, i32* %5, align 4
  %255 = load i32, i32* %5, align 4
  %256 = call i32 @SUCCEEDED(i32 %255)
  %257 = load i32, i32* %5, align 4
  %258 = call i32 @ok(i32 %256, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %257)
  store i32 0, i32* %15, align 4
  %259 = call i32 @GetRegisteredRawInputDevices(i32* null, i32* %15, i32 4)
  %260 = load i32, i32* %15, align 4
  %261 = load i32, i32* %14, align 4
  %262 = icmp eq i32 %260, %261
  %263 = zext i1 %262 to i32
  %264 = load i32, i32* %15, align 4
  %265 = call i32 @ok(i32 %263, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i64 0, i64 0), i32 %264)
  %266 = load i32*, i32** %6, align 8
  %267 = call i32 @IDirectInputDevice_Unacquire(i32* %266)
  store i32 %267, i32* %5, align 4
  %268 = load i32, i32* %5, align 4
  %269 = call i32 @SUCCEEDED(i32 %268)
  %270 = load i32, i32* %5, align 4
  %271 = call i32 @ok(i32 %269, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i64 0, i64 0), i32 %270)
  %272 = load i32*, i32** %6, align 8
  %273 = icmp ne i32* %272, null
  br i1 %273, label %274, label %277

274:                                              ; preds = %248
  %275 = load i32*, i32** %6, align 8
  %276 = call i32 @IUnknown_Release(i32* %275)
  br label %277

277:                                              ; preds = %274, %248
  %278 = load i32, i32* %13, align 4
  %279 = call i32 @ActivateKeyboardLayout(i32 %278, i32 0)
  %280 = load i32, i32* %12, align 4
  %281 = call i32 @UnloadKeyboardLayout(i32 %280)
  br label %282

282:                                              ; preds = %277, %44, %23
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @activate_keyboard_layout(i32, i32*) #2

declare dso_local i32 @MAKELANGID(i32, i32) #2

declare dso_local i32 @ARRAY_SIZE(i64*) #2

declare dso_local i32 @IDirectInput_CreateDevice(i32*, i32*, i32**, i32*) #2

declare dso_local i32 @ok(i32, i8*, i32) #2

declare dso_local i32 @SUCCEEDED(i32) #2

declare dso_local i64 @FAILED(i32) #2

declare dso_local i32 @IDirectInputDevice_SetDataFormat(i32*, %struct.TYPE_4__*) #2

declare dso_local i32 @IDirectInputDevice_SetCooperativeLevel(i32*, i32*, i32) #2

declare dso_local i32 @IDirectInputDevice_GetDeviceState(i32*, i32, i64*) #2

declare dso_local i32 @IDirectInputDevice_Unacquire(i32*) #2

declare dso_local i32 @IDirectInputDevice_Acquire(i32*) #2

declare dso_local i32 @memset(i64*, i32, i32) #2

declare dso_local i32 @SetFocus(i32) #2

declare dso_local i32 @pump_messages(...) #2

declare dso_local i32 @keybd_event(i8 signext, i32, i32, i32) #2

declare dso_local i32 @win_skip(i8*) #2

declare dso_local i32 @GetRegisteredRawInputDevices(i32*, i32*, i32) #2

declare dso_local i64 @broken(i32) #2

declare dso_local i32 @IUnknown_Release(i32*) #2

declare dso_local i32 @ActivateKeyboardLayout(i32, i32) #2

declare dso_local i32 @UnloadKeyboardLayout(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
