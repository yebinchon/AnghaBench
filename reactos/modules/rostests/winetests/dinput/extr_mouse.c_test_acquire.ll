; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/dinput/extr_mouse.c_test_acquire.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/dinput/extr_mouse.c_test_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [55 x i8] c"Not running as foreground app, skipping acquire tests\0A\00", align 1
@GUID_SysMouse = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"IDirectInput_CreateDevice() failed: %08x\0A\00", align 1
@DISCL_NONEXCLUSIVE = common dso_local global i32 0, align 4
@DISCL_FOREGROUND = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"SetCooperativeLevel: %08x\0A\00", align 1
@DIPH_DEVICE = common dso_local global i32 0, align 4
@DIPROP_BUFFERSIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"SetProperty() failed: %08x\0A\00", align 1
@c_dfDIMouse = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"IDirectInputDevice_SetDataFormat() failed: %08x\0A\00", align 1
@S_FALSE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [57 x i8] c"IDirectInputDevice_Unacquire() should have failed: %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"IDirectInputDevice_Acquire() failed: %08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"IDirectInputDevice_Acquire() should have failed: %08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"static\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"Temporary\00", align 1
@WS_VISIBLE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [30 x i8] c"CreateWindowA failed with %u\0A\00", align 1
@DIERR_NOTACQUIRED = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [43 x i8] c"GetDeviceState() should have failed: %08x\0A\00", align 1
@DIERR_OTHERAPPHASPRIO = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [36 x i8] c"Acquire() should have failed: %08x\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"Acquire() failed: %08x\0A\00", align 1
@winetest_interactive = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [57 x i8] c"ROSTESTS-176/CORE-9710: Skipping randomly failing tests\0A\00", align 1
@MOUSEEVENTF_MOVE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [37 x i8] c"GetDeviceData() failed: %08x cnt:%d\0A\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"Failed: %08x\0A\00", align 1
@DI_OK = common dso_local global i64 0, align 8
@DIPH_BYOFFSET = common dso_local global i32 0, align 4
@DIMOFS_Y = common dso_local global i32 0, align 4
@DIPROP_GRANULARITY = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [50 x i8] c"GetProperty(): %08x, dwData: %i but should be 1.\0A\00", align 1
@DIPH_BYID = common dso_local global i32 0, align 4
@DIDFT_RELAXIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @test_acquire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_acquire(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_4__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32* null, i32** %6, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @SetForegroundWindow(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = call i32 @skip(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %314

18:                                               ; preds = %2
  %19 = load i32*, i32** %3, align 8
  %20 = call i64 @IDirectInput_CreateDevice(i32* %19, i32* @GUID_SysMouse, i32** %6, i32* null)
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @SUCCEEDED(i64 %21)
  %23 = load i64, i64* %5, align 8
  %24 = call i32 (i32, i8*, i64, ...) @ok(i32 %22, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %23)
  %25 = load i64, i64* %5, align 8
  %26 = call i64 @FAILED(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  br label %314

29:                                               ; preds = %18
  %30 = load i32*, i32** %6, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* @DISCL_NONEXCLUSIVE, align 4
  %33 = load i32, i32* @DISCL_FOREGROUND, align 4
  %34 = or i32 %32, %33
  %35 = call i64 @IDirectInputDevice_SetCooperativeLevel(i32* %30, i32* %31, i32 %34)
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @S_OK, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = load i64, i64* %5, align 8
  %41 = call i32 (i32, i8*, i64, ...) @ok(i32 %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %40)
  %42 = call i32 @memset(%struct.TYPE_4__* %9, i32 0, i32 20)
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i32 5, i32* %43, align 4
  %44 = load i32, i32* @DIPH_DEVICE, align 4
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i32 20, i32* %48, align 4
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  store i32 4, i32* %50, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* @DIPROP_BUFFERSIZE, align 4
  %53 = ptrtoint %struct.TYPE_4__* %9 to i32
  %54 = call i64 @IDirectInputDevice_SetProperty(i32* %51, i32 %52, i32 %53)
  store i64 %54, i64* %5, align 8
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* @S_OK, align 8
  %57 = icmp eq i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = load i64, i64* %5, align 8
  %60 = call i32 (i32, i8*, i64, ...) @ok(i32 %58, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %59)
  %61 = load i32*, i32** %6, align 8
  %62 = call i64 @IDirectInputDevice_SetDataFormat(i32* %61, i32* @c_dfDIMouse)
  store i64 %62, i64* %5, align 8
  %63 = load i64, i64* %5, align 8
  %64 = call i32 @SUCCEEDED(i64 %63)
  %65 = load i64, i64* %5, align 8
  %66 = call i32 (i32, i8*, i64, ...) @ok(i32 %64, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i64 %65)
  %67 = load i32*, i32** %6, align 8
  %68 = call i64 @IDirectInputDevice_Unacquire(i32* %67)
  store i64 %68, i64* %5, align 8
  %69 = load i64, i64* %5, align 8
  %70 = load i64, i64* @S_FALSE, align 8
  %71 = icmp eq i64 %69, %70
  %72 = zext i1 %71 to i32
  %73 = load i64, i64* %5, align 8
  %74 = call i32 (i32, i8*, i64, ...) @ok(i32 %72, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i64 %73)
  %75 = load i32*, i32** %6, align 8
  %76 = call i64 @IDirectInputDevice_Acquire(i32* %75)
  store i64 %76, i64* %5, align 8
  %77 = load i64, i64* %5, align 8
  %78 = call i32 @SUCCEEDED(i64 %77)
  %79 = load i64, i64* %5, align 8
  %80 = call i32 (i32, i8*, i64, ...) @ok(i32 %78, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i64 %79)
  %81 = load i32*, i32** %6, align 8
  %82 = call i64 @IDirectInputDevice_Acquire(i32* %81)
  store i64 %82, i64* %5, align 8
  %83 = load i64, i64* %5, align 8
  %84 = load i64, i64* @S_FALSE, align 8
  %85 = icmp eq i64 %83, %84
  %86 = zext i1 %85 to i32
  %87 = load i64, i64* %5, align 8
  %88 = call i32 (i32, i8*, i64, ...) @ok(i32 %86, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0), i64 %87)
  %89 = load i32, i32* @WS_VISIBLE, align 4
  %90 = call i32* @CreateWindowA(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %89, i32 10, i32 210, i32 200, i32 200, i32* null, i32* null, i32* null, i32* null)
  store i32* %90, i32** %8, align 8
  %91 = load i32*, i32** %8, align 8
  %92 = icmp ne i32* %91, null
  %93 = zext i1 %92 to i32
  %94 = call i32 (...) @GetLastError()
  %95 = sext i32 %94 to i64
  %96 = call i32 (i32, i8*, i64, ...) @ok(i32 %93, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i64 %95)
  %97 = load i32*, i32** %6, align 8
  %98 = call i64 @IDirectInputDevice_GetDeviceState(i32* %97, i32 4, i32* %7)
  store i64 %98, i64* %5, align 8
  %99 = load i64, i64* %5, align 8
  %100 = load i64, i64* @DIERR_NOTACQUIRED, align 8
  %101 = icmp eq i64 %99, %100
  %102 = zext i1 %101 to i32
  %103 = load i64, i64* %5, align 8
  %104 = call i32 (i32, i8*, i64, ...) @ok(i32 %102, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0), i64 %103)
  %105 = load i32*, i32** %6, align 8
  %106 = call i64 @IDirectInputDevice_Acquire(i32* %105)
  store i64 %106, i64* %5, align 8
  %107 = load i64, i64* %5, align 8
  %108 = load i64, i64* @DIERR_OTHERAPPHASPRIO, align 8
  %109 = icmp eq i64 %107, %108
  %110 = zext i1 %109 to i32
  %111 = load i64, i64* %5, align 8
  %112 = call i32 (i32, i8*, i64, ...) @ok(i32 %110, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0), i64 %111)
  %113 = load i32*, i32** %4, align 8
  %114 = call i32 @SetActiveWindow(i32* %113)
  %115 = load i32*, i32** %6, align 8
  %116 = call i64 @IDirectInputDevice_Acquire(i32* %115)
  store i64 %116, i64* %5, align 8
  %117 = load i64, i64* %5, align 8
  %118 = load i64, i64* @S_OK, align 8
  %119 = icmp eq i64 %117, %118
  %120 = zext i1 %119 to i32
  %121 = load i64, i64* %5, align 8
  %122 = call i32 (i32, i8*, i64, ...) @ok(i32 %120, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i64 %121)
  %123 = load i32, i32* @winetest_interactive, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %29
  %126 = call i32 @skip(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.14, i64 0, i64 0))
  br label %305

127:                                              ; preds = %29
  %128 = load i32, i32* @MOUSEEVENTF_MOVE, align 4
  %129 = call i32 @mouse_event(i32 %128, i32 10, i32 10, i32 0, i32 0)
  store i32 1, i32* %11, align 4
  %130 = load i32*, i32** %6, align 8
  %131 = call i64 @IDirectInputDevice_GetDeviceData(i32* %130, i32 4, i32* %10, i32* %11, i32 0)
  store i64 %131, i64* %5, align 8
  %132 = load i64, i64* %5, align 8
  %133 = load i64, i64* @S_OK, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %127
  %136 = load i32, i32* %11, align 4
  %137 = icmp sgt i32 %136, 0
  br label %138

138:                                              ; preds = %135, %127
  %139 = phi i1 [ false, %127 ], [ %137, %135 ]
  %140 = zext i1 %139 to i32
  %141 = load i64, i64* %5, align 8
  %142 = load i32, i32* %11, align 4
  %143 = call i32 (i32, i8*, i64, ...) @ok(i32 %140, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0), i64 %141, i32 %142)
  %144 = load i32, i32* @MOUSEEVENTF_MOVE, align 4
  %145 = call i32 @mouse_event(i32 %144, i32 10, i32 10, i32 0, i32 0)
  %146 = load i32*, i32** %6, align 8
  %147 = call i64 @IDirectInputDevice_Unacquire(i32* %146)
  store i64 %147, i64* %5, align 8
  %148 = load i64, i64* %5, align 8
  %149 = load i64, i64* @S_OK, align 8
  %150 = icmp eq i64 %148, %149
  %151 = zext i1 %150 to i32
  %152 = load i64, i64* %5, align 8
  %153 = call i32 (i32, i8*, i64, ...) @ok(i32 %151, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i64 %152)
  store i32 1, i32* %11, align 4
  %154 = load i32*, i32** %6, align 8
  %155 = call i64 @IDirectInputDevice_GetDeviceData(i32* %154, i32 4, i32* %10, i32* %11, i32 0)
  store i64 %155, i64* %5, align 8
  %156 = load i64, i64* %5, align 8
  %157 = load i64, i64* @S_OK, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %138
  %160 = load i32, i32* %11, align 4
  %161 = icmp sgt i32 %160, 0
  br label %162

162:                                              ; preds = %159, %138
  %163 = phi i1 [ false, %138 ], [ %161, %159 ]
  %164 = zext i1 %163 to i32
  %165 = load i64, i64* %5, align 8
  %166 = load i32, i32* %11, align 4
  %167 = call i32 (i32, i8*, i64, ...) @ok(i32 %164, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0), i64 %165, i32 %166)
  %168 = load i32*, i32** %6, align 8
  %169 = call i64 @IDirectInputDevice_Acquire(i32* %168)
  store i64 %169, i64* %5, align 8
  %170 = load i64, i64* %5, align 8
  %171 = load i64, i64* @S_OK, align 8
  %172 = icmp eq i64 %170, %171
  %173 = zext i1 %172 to i32
  %174 = load i64, i64* %5, align 8
  %175 = call i32 (i32, i8*, i64, ...) @ok(i32 %173, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i64 %174)
  %176 = load i32, i32* @MOUSEEVENTF_MOVE, align 4
  %177 = call i32 @mouse_event(i32 %176, i32 10, i32 10, i32 0, i32 0)
  %178 = load i32*, i32** %6, align 8
  %179 = call i64 @IDirectInputDevice_Unacquire(i32* %178)
  store i64 %179, i64* %5, align 8
  %180 = load i64, i64* %5, align 8
  %181 = load i64, i64* @S_OK, align 8
  %182 = icmp eq i64 %180, %181
  %183 = zext i1 %182 to i32
  %184 = load i64, i64* %5, align 8
  %185 = call i32 (i32, i8*, i64, ...) @ok(i32 %183, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i64 %184)
  %186 = load i32*, i32** %6, align 8
  %187 = call i64 @IDirectInputDevice_Acquire(i32* %186)
  store i64 %187, i64* %5, align 8
  %188 = load i64, i64* %5, align 8
  %189 = load i64, i64* @S_OK, align 8
  %190 = icmp eq i64 %188, %189
  %191 = zext i1 %190 to i32
  %192 = load i64, i64* %5, align 8
  %193 = call i32 (i32, i8*, i64, ...) @ok(i32 %191, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i64 %192)
  store i32 1, i32* %11, align 4
  %194 = load i32*, i32** %6, align 8
  %195 = call i64 @IDirectInputDevice_GetDeviceData(i32* %194, i32 4, i32* %10, i32* %11, i32 0)
  store i64 %195, i64* %5, align 8
  %196 = load i64, i64* %5, align 8
  %197 = load i64, i64* @S_OK, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %202

199:                                              ; preds = %162
  %200 = load i32, i32* %11, align 4
  %201 = icmp sgt i32 %200, 0
  br label %202

202:                                              ; preds = %199, %162
  %203 = phi i1 [ false, %162 ], [ %201, %199 ]
  %204 = zext i1 %203 to i32
  %205 = load i64, i64* %5, align 8
  %206 = load i32, i32* %11, align 4
  %207 = call i32 (i32, i8*, i64, ...) @ok(i32 %204, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0), i64 %205, i32 %206)
  store i32 0, i32* %12, align 4
  br label %208

208:                                              ; preds = %218, %202
  %209 = load i32, i32* %12, align 4
  %210 = icmp slt i32 %209, 6
  br i1 %210, label %211, label %221

211:                                              ; preds = %208
  %212 = load i32, i32* @MOUSEEVENTF_MOVE, align 4
  %213 = load i32, i32* %12, align 4
  %214 = add nsw i32 10, %213
  %215 = load i32, i32* %12, align 4
  %216 = add nsw i32 10, %215
  %217 = call i32 @mouse_event(i32 %212, i32 %214, i32 %216, i32 0, i32 0)
  br label %218

218:                                              ; preds = %211
  %219 = load i32, i32* %12, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %12, align 4
  br label %208

221:                                              ; preds = %208
  store i32 1, i32* %11, align 4
  %222 = load i32*, i32** %6, align 8
  %223 = call i64 @IDirectInputDevice_GetDeviceData(i32* %222, i32 4, i32* %10, i32* %11, i32 0)
  store i64 %223, i64* %5, align 8
  %224 = load i64, i64* %5, align 8
  %225 = load i64, i64* @DI_OK, align 8
  %226 = icmp eq i64 %224, %225
  %227 = zext i1 %226 to i32
  %228 = load i64, i64* %5, align 8
  %229 = load i32, i32* %11, align 4
  %230 = call i32 (i32, i8*, i64, ...) @ok(i32 %227, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0), i64 %228, i32 %229)
  store i32 1, i32* %11, align 4
  %231 = load i32*, i32** %6, align 8
  %232 = call i64 @IDirectInputDevice_GetDeviceData(i32* %231, i32 4, i32* %10, i32* %11, i32 0)
  store i64 %232, i64* %5, align 8
  %233 = load i64, i64* %5, align 8
  %234 = load i64, i64* @DI_OK, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %236, label %239

236:                                              ; preds = %221
  %237 = load i32, i32* %11, align 4
  %238 = icmp eq i32 %237, 1
  br label %239

239:                                              ; preds = %236, %221
  %240 = phi i1 [ false, %221 ], [ %238, %236 ]
  %241 = zext i1 %240 to i32
  %242 = load i64, i64* %5, align 8
  %243 = load i32, i32* %11, align 4
  %244 = call i32 (i32, i8*, i64, ...) @ok(i32 %241, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0), i64 %242, i32 %243)
  %245 = call i32 @memset(%struct.TYPE_4__* %9, i32 0, i32 20)
  %246 = load i32, i32* @DIPH_BYOFFSET, align 4
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %247, i32 0, i32 3
  store i32 %246, i32* %248, align 4
  %249 = load i32, i32* @DIMOFS_Y, align 4
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 2
  store i32 %249, i32* %251, align 4
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 0
  store i32 20, i32* %253, align 4
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 1
  store i32 4, i32* %255, align 4
  %256 = load i32*, i32** %6, align 8
  %257 = load i32, i32* @DIPROP_GRANULARITY, align 4
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %259 = call i64 @IDirectInputDevice_GetProperty(i32* %256, i32 %257, %struct.TYPE_5__* %258)
  store i64 %259, i64* %5, align 8
  %260 = load i64, i64* %5, align 8
  %261 = load i64, i64* @S_OK, align 8
  %262 = icmp eq i64 %260, %261
  br i1 %262, label %263, label %267

263:                                              ; preds = %239
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = icmp eq i32 %265, 1
  br label %267

267:                                              ; preds = %263, %239
  %268 = phi i1 [ false, %239 ], [ %266, %263 ]
  %269 = zext i1 %268 to i32
  %270 = load i64, i64* %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = call i32 (i32, i8*, i64, ...) @ok(i32 %269, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.17, i64 0, i64 0), i64 %270, i32 %272)
  %274 = call i32 @memset(%struct.TYPE_4__* %9, i32 0, i32 20)
  %275 = load i32, i32* @DIPH_BYID, align 4
  %276 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %276, i32 0, i32 3
  store i32 %275, i32* %277, align 4
  %278 = call i32 @DIDFT_MAKEINSTANCE(i32 1)
  %279 = load i32, i32* @DIDFT_RELAXIS, align 4
  %280 = or i32 %278, %279
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %282 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %281, i32 0, i32 2
  store i32 %280, i32* %282, align 4
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %284 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %283, i32 0, i32 0
  store i32 20, i32* %284, align 4
  %285 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %285, i32 0, i32 1
  store i32 4, i32* %286, align 4
  %287 = load i32*, i32** %6, align 8
  %288 = load i32, i32* @DIPROP_GRANULARITY, align 4
  %289 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %290 = call i64 @IDirectInputDevice_GetProperty(i32* %287, i32 %288, %struct.TYPE_5__* %289)
  store i64 %290, i64* %5, align 8
  %291 = load i64, i64* %5, align 8
  %292 = load i64, i64* @S_OK, align 8
  %293 = icmp eq i64 %291, %292
  br i1 %293, label %294, label %298

294:                                              ; preds = %267
  %295 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = icmp eq i32 %296, 1
  br label %298

298:                                              ; preds = %294, %267
  %299 = phi i1 [ false, %267 ], [ %297, %294 ]
  %300 = zext i1 %299 to i32
  %301 = load i64, i64* %5, align 8
  %302 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = call i32 (i32, i8*, i64, ...) @ok(i32 %300, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.17, i64 0, i64 0), i64 %301, i32 %303)
  br label %305

305:                                              ; preds = %298, %125
  %306 = load i32*, i32** %6, align 8
  %307 = icmp ne i32* %306, null
  br i1 %307, label %308, label %311

308:                                              ; preds = %305
  %309 = load i32*, i32** %6, align 8
  %310 = call i32 @IUnknown_Release(i32* %309)
  br label %311

311:                                              ; preds = %308, %305
  %312 = load i32*, i32** %8, align 8
  %313 = call i32 @DestroyWindow(i32* %312)
  br label %314

314:                                              ; preds = %311, %28, %16
  ret void
}

declare dso_local i32 @SetForegroundWindow(i32*) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i64 @IDirectInput_CreateDevice(i32*, i32*, i32**, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

declare dso_local i32 @SUCCEEDED(i64) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @IDirectInputDevice_SetCooperativeLevel(i32*, i32*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @IDirectInputDevice_SetProperty(i32*, i32, i32) #1

declare dso_local i64 @IDirectInputDevice_SetDataFormat(i32*, i32*) #1

declare dso_local i64 @IDirectInputDevice_Unacquire(i32*) #1

declare dso_local i64 @IDirectInputDevice_Acquire(i32*) #1

declare dso_local i32* @CreateWindowA(i8*, i8*, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i64 @IDirectInputDevice_GetDeviceState(i32*, i32, i32*) #1

declare dso_local i32 @SetActiveWindow(i32*) #1

declare dso_local i32 @mouse_event(i32, i32, i32, i32, i32) #1

declare dso_local i64 @IDirectInputDevice_GetDeviceData(i32*, i32, i32*, i32*, i32) #1

declare dso_local i64 @IDirectInputDevice_GetProperty(i32*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @DIDFT_MAKEINSTANCE(i32) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i32 @DestroyWindow(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
