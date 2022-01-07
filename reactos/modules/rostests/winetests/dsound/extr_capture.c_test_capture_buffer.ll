; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/dsound/extr_capture.c_test_capture_buffer.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/dsound/extr_capture.c_test_capture_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32*, i32*, %struct.TYPE_12__*, %struct.TYPE_10__*, i32 }
%struct.TYPE_12__ = type { i32, i32 }

@DSERR_INVALIDPARAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [93 x i8] c"IDirectSoundCaptureBuffer_GetCaps() should have returned DSERR_INVALIDPARAM, returned: %08x\0A\00", align 1
@DS_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"IDirectSoundCaptureBuffer_GetCaps() failed: %08x\0A\00", align 1
@winetest_debug = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"    Caps: size = %d flags=0x%08x buffer size=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [95 x i8] c"IDirectSoundCaptureBuffer_GetFormat() should have returned DSERR_INVALIDPARAM, returned: %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [94 x i8] c"IDirectSoundCaptureBuffer_GetFormat() should have returned the needed size: rc=%08x, size=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"IDirectSoundCaptureBuffer_GetFormat() failed: %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"    Format: tag=0x%04x %dx%dx%d avg.B/s=%d align=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [95 x i8] c"IDirectSoundCaptureBuffer_GetStatus() should have returned DSERR_INVALIDPARAM, returned: %08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"IDirectSoundCaptureBuffer_GetStatus() failed: %08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"    Status=0x%04x\0A\00", align 1
@NOTIFICATIONS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@IID_IDirectSoundNotify = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [57 x i8] c"IDirectSoundCaptureBuffer_QueryInterface() failed: %08x\0A\00", align 1
@.str.11 = private unnamed_addr constant [60 x i8] c"IDirectSoundNotify_SetNotificationPositions() failed: %08x\0A\00", align 1
@.str.12 = private unnamed_addr constant [64 x i8] c"IDirectSoundNotify_Release(): has %d references, should have 0\0A\00", align 1
@DSCBSTART_LOOPING = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [48 x i8] c"IDirectSoundCaptureBuffer_Start() failed: %08x\0A\00", align 1
@DSCBSTATUS_CAPTURING = common dso_local global i64 0, align 8
@DSCBSTATUS_LOOPING = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [27 x i8] c"GetStatus: bad status: %x\0A\00", align 1
@WAIT_OBJECT_0 = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [37 x i8] c"WaitForMultipleObjects failed: 0x%x\0A\00", align 1
@WAIT_TIMEOUT = common dso_local global i32 0, align 4
@WAIT_FAILED = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [42 x i8] c"Wrong notification: should be %d, got %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [47 x i8] c"IDirectSoundCaptureBuffer_Stop() failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @test_capture_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_capture_buffer(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__, align 4
  %9 = alloca %struct.TYPE_10__, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_9__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @IDirectSoundCaptureBuffer_GetCaps(i32 %15, %struct.TYPE_11__* null)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @DSERR_INVALIDPARAM, align 4
  %19 = icmp eq i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* %7, align 4
  %22 = call i32 (i32, i8*, i32, ...) @ok(i32 %20, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  store i32 0, i32* %23, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @IDirectSoundCaptureBuffer_GetCaps(i32 %24, %struct.TYPE_11__* %8)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @DSERR_INVALIDPARAM, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* %7, align 4
  %31 = call i32 (i32, i8*, i32, ...) @ok(i32 %29, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  store i32 12, i32* %32, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @IDirectSoundCaptureBuffer_GetCaps(i32 %33, %struct.TYPE_11__* %8)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @DS_OK, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* %7, align 4
  %40 = call i32 (i32, i8*, i32, ...) @ok(i32 %38, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @DS_OK, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %3
  %45 = load i32, i32* @winetest_debug, align 4
  %46 = icmp sgt i32 %45, 1
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i8*, i64, ...) @trace(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i64 %50, i32 %52, i32 %54)
  br label %56

56:                                               ; preds = %47, %44, %3
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @IDirectSoundCaptureBuffer_GetFormat(i32 %57, %struct.TYPE_10__* null, i32 0, i64* null)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @DSERR_INVALIDPARAM, align 4
  %61 = icmp eq i32 %59, %60
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* %7, align 4
  %64 = call i32 (i32, i8*, i32, ...) @ok(i32 %62, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  store i64 0, i64* %10, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @IDirectSoundCaptureBuffer_GetFormat(i32 %65, %struct.TYPE_10__* null, i32 0, i64* %10)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @DS_OK, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %56
  %71 = load i64, i64* %10, align 8
  %72 = icmp ne i64 %71, 0
  br label %73

73:                                               ; preds = %70, %56
  %74 = phi i1 [ false, %56 ], [ %72, %70 ]
  %75 = zext i1 %74 to i32
  %76 = load i32, i32* %7, align 4
  %77 = load i64, i64* %10, align 8
  %78 = call i32 (i32, i8*, i32, ...) @ok(i32 %75, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.4, i64 0, i64 0), i32 %76, i64 %77)
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @IDirectSoundCaptureBuffer_GetFormat(i32 %79, %struct.TYPE_10__* %9, i32 24, i64* null)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @DS_OK, align 4
  %83 = icmp eq i32 %81, %82
  %84 = zext i1 %83 to i32
  %85 = load i32, i32* %7, align 4
  %86 = call i32 (i32, i8*, i32, ...) @ok(i32 %84, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @DS_OK, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %108

90:                                               ; preds = %73
  %91 = load i32, i32* @winetest_debug, align 4
  %92 = icmp sgt i32 %91, 1
  br i1 %92, label %93, label %108

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i8*, i64, ...) @trace(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i64 %96, i32 %98, i32 %100, i32 %102, i32 %104, i32 %106)
  br label %108

108:                                              ; preds = %93, %90, %73
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @IDirectSoundCaptureBuffer_GetStatus(i32 %109, i64* null)
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @DSERR_INVALIDPARAM, align 4
  %113 = icmp eq i32 %111, %112
  %114 = zext i1 %113 to i32
  %115 = load i32, i32* %7, align 4
  %116 = call i32 (i32, i8*, i32, ...) @ok(i32 %114, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.7, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @IDirectSoundCaptureBuffer_GetStatus(i32 %117, i64* %11)
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* @DS_OK, align 4
  %121 = icmp eq i32 %119, %120
  %122 = zext i1 %121 to i32
  %123 = load i32, i32* %7, align 4
  %124 = call i32 (i32, i8*, i32, ...) @ok(i32 %122, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @DS_OK, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %134

128:                                              ; preds = %108
  %129 = load i32, i32* @winetest_debug, align 4
  %130 = icmp sgt i32 %129, 1
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load i64, i64* %11, align 8
  %133 = call i32 (i8*, i64, ...) @trace(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i64 %132)
  br label %134

134:                                              ; preds = %131, %128, %108
  %135 = call i32 @ZeroMemory(%struct.TYPE_9__* %12, i32 48)
  %136 = load i32, i32* %5, align 4
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 6
  store i32 %136, i32* %137, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 5
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %138, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  store i32 %140, i32* %141, align 8
  store i32 0, i32* %13, align 4
  br label %142

142:                                              ; preds = %155, %134
  %143 = load i32, i32* %13, align 4
  %144 = load i32, i32* @NOTIFICATIONS, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %158

146:                                              ; preds = %142
  %147 = load i32, i32* @FALSE, align 4
  %148 = load i32, i32* @FALSE, align 4
  %149 = call i32 @CreateEvent(i32* null, i32 %147, i32 %148, i32* null)
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %13, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  store i32 %149, i32* %154, align 4
  br label %155

155:                                              ; preds = %146
  %156 = load i32, i32* %13, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %13, align 4
  br label %142

158:                                              ; preds = %142
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @NOTIFICATIONS, align 4
  %162 = sdiv i32 %160, %161
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  store i32 %162, i32* %163, align 4
  %164 = load i32, i32* %5, align 4
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 3
  %166 = bitcast i32** %165 to i8**
  %167 = call i32 @IDirectSoundCaptureBuffer_QueryInterface(i32 %164, i32* @IID_IDirectSoundNotify, i8** %166)
  store i32 %167, i32* %7, align 4
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* @DS_OK, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %175

171:                                              ; preds = %158
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 3
  %173 = load i32*, i32** %172, align 8
  %174 = icmp ne i32* %173, null
  br label %175

175:                                              ; preds = %171, %158
  %176 = phi i1 [ false, %158 ], [ %174, %171 ]
  %177 = zext i1 %176 to i32
  %178 = load i32, i32* %7, align 4
  %179 = call i32 (i32, i8*, i32, ...) @ok(i32 %177, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.10, i64 0, i64 0), i32 %178)
  store i32 0, i32* %13, align 4
  br label %180

180:                                              ; preds = %211, %175
  %181 = load i32, i32* %13, align 4
  %182 = load i32, i32* @NOTIFICATIONS, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %214

184:                                              ; preds = %180
  %185 = load i32, i32* %13, align 4
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = mul nsw i32 %185, %187
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = add nsw i32 %188, %190
  %192 = sub nsw i32 %191, 1
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 4
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %193, align 8
  %195 = load i32, i32* %13, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 0
  store i32 %192, i32* %198, align 4
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* %13, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 4
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %205, align 8
  %207 = load i32, i32* %13, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 1
  store i32 %204, i32* %210, align 4
  br label %211

211:                                              ; preds = %184
  %212 = load i32, i32* %13, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %13, align 4
  br label %180

214:                                              ; preds = %180
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 3
  %216 = load i32*, i32** %215, align 8
  %217 = load i32, i32* @NOTIFICATIONS, align 4
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 4
  %219 = load %struct.TYPE_12__*, %struct.TYPE_12__** %218, align 8
  %220 = call i32 @IDirectSoundNotify_SetNotificationPositions(i32* %216, i32 %217, %struct.TYPE_12__* %219)
  store i32 %220, i32* %7, align 4
  %221 = load i32, i32* %7, align 4
  %222 = load i32, i32* @DS_OK, align 4
  %223 = icmp eq i32 %221, %222
  %224 = zext i1 %223 to i32
  %225 = load i32, i32* %7, align 4
  %226 = call i32 (i32, i8*, i32, ...) @ok(i32 %224, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.11, i64 0, i64 0), i32 %225)
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 3
  %228 = load i32*, i32** %227, align 8
  %229 = call i32 @IDirectSoundNotify_Release(i32* %228)
  store i32 %229, i32* %14, align 4
  %230 = load i32, i32* %14, align 4
  %231 = icmp eq i32 %230, 0
  %232 = zext i1 %231 to i32
  %233 = load i32, i32* %14, align 4
  %234 = call i32 (i32, i8*, i32, ...) @ok(i32 %232, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.12, i64 0, i64 0), i32 %233)
  %235 = load i32, i32* %5, align 4
  %236 = load i32, i32* @DSCBSTART_LOOPING, align 4
  %237 = call i32 @IDirectSoundCaptureBuffer_Start(i32 %235, i32 %236)
  store i32 %237, i32* %7, align 4
  %238 = load i32, i32* %7, align 4
  %239 = load i32, i32* @DS_OK, align 4
  %240 = icmp eq i32 %238, %239
  %241 = zext i1 %240 to i32
  %242 = load i32, i32* %7, align 4
  %243 = call i32 (i32, i8*, i32, ...) @ok(i32 %241, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13, i64 0, i64 0), i32 %242)
  %244 = load i32, i32* %5, align 4
  %245 = call i32 @IDirectSoundCaptureBuffer_Start(i32 %244, i32 0)
  store i32 %245, i32* %7, align 4
  %246 = load i32, i32* %7, align 4
  %247 = load i32, i32* @DS_OK, align 4
  %248 = icmp eq i32 %246, %247
  %249 = zext i1 %248 to i32
  %250 = load i32, i32* %7, align 4
  %251 = call i32 (i32, i8*, i32, ...) @ok(i32 %249, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13, i64 0, i64 0), i32 %250)
  %252 = load i32, i32* %5, align 4
  %253 = call i32 @IDirectSoundCaptureBuffer_GetStatus(i32 %252, i64* %11)
  store i32 %253, i32* %7, align 4
  %254 = load i32, i32* %7, align 4
  %255 = load i32, i32* @DS_OK, align 4
  %256 = icmp eq i32 %254, %255
  %257 = zext i1 %256 to i32
  %258 = load i32, i32* %7, align 4
  %259 = call i32 (i32, i8*, i32, ...) @ok(i32 %257, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0), i32 %258)
  %260 = load i64, i64* %11, align 8
  %261 = load i64, i64* @DSCBSTATUS_CAPTURING, align 8
  %262 = load i64, i64* @DSCBSTATUS_LOOPING, align 8
  %263 = or i64 %261, %262
  %264 = icmp eq i64 %260, %263
  br i1 %264, label %272, label %265

265:                                              ; preds = %214
  %266 = load i64, i64* %11, align 8
  %267 = load i64, i64* @DSCBSTATUS_CAPTURING, align 8
  %268 = icmp eq i64 %266, %267
  %269 = zext i1 %268 to i32
  %270 = call i64 @broken(i32 %269)
  %271 = icmp ne i64 %270, 0
  br label %272

272:                                              ; preds = %265, %214
  %273 = phi i1 [ true, %214 ], [ %271, %265 ]
  %274 = zext i1 %273 to i32
  %275 = load i64, i64* %11, align 8
  %276 = trunc i64 %275 to i32
  %277 = call i32 (i32, i8*, i32, ...) @ok(i32 %274, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), i32 %276)
  %278 = load i32, i32* %6, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %336

280:                                              ; preds = %272
  store i32 0, i32* %13, align 4
  br label %281

281:                                              ; preds = %332, %280
  %282 = load i32, i32* %13, align 4
  %283 = load i32, i32* @NOTIFICATIONS, align 4
  %284 = mul nsw i32 %283, 2
  %285 = icmp slt i32 %282, %284
  br i1 %285, label %286, label %335

286:                                              ; preds = %281
  %287 = load i32, i32* @NOTIFICATIONS, align 4
  %288 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %289 = load i32*, i32** %288, align 8
  %290 = load i32, i32* @FALSE, align 4
  %291 = call i32 @WaitForMultipleObjects(i32 %287, i32* %289, i32 %290, i32 3000)
  store i32 %291, i32* %7, align 4
  %292 = load i32, i32* %7, align 4
  %293 = load i32, i32* @WAIT_OBJECT_0, align 4
  %294 = load i32, i32* %13, align 4
  %295 = load i32, i32* @NOTIFICATIONS, align 4
  %296 = srem i32 %294, %295
  %297 = add nsw i32 %293, %296
  %298 = icmp eq i32 %292, %297
  %299 = zext i1 %298 to i32
  %300 = load i32, i32* %7, align 4
  %301 = call i32 (i32, i8*, i32, ...) @ok(i32 %299, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0), i32 %300)
  %302 = load i32, i32* %7, align 4
  %303 = load i32, i32* @WAIT_OBJECT_0, align 4
  %304 = load i32, i32* %13, align 4
  %305 = load i32, i32* @NOTIFICATIONS, align 4
  %306 = srem i32 %304, %305
  %307 = add nsw i32 %303, %306
  %308 = icmp ne i32 %302, %307
  br i1 %308, label %309, label %327

309:                                              ; preds = %286
  %310 = load i32, i32* %7, align 4
  %311 = load i32, i32* @WAIT_TIMEOUT, align 4
  %312 = icmp eq i32 %310, %311
  br i1 %312, label %317, label %313

313:                                              ; preds = %309
  %314 = load i32, i32* %7, align 4
  %315 = load i32, i32* @WAIT_FAILED, align 4
  %316 = icmp eq i32 %314, %315
  br label %317

317:                                              ; preds = %313, %309
  %318 = phi i1 [ true, %309 ], [ %316, %313 ]
  %319 = zext i1 %318 to i32
  %320 = load i32, i32* %13, align 4
  %321 = load i32, i32* @NOTIFICATIONS, align 4
  %322 = srem i32 %320, %321
  %323 = load i32, i32* %7, align 4
  %324 = load i32, i32* @WAIT_OBJECT_0, align 4
  %325 = sub nsw i32 %323, %324
  %326 = call i32 (i32, i8*, i32, ...) @ok(i32 %319, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.16, i64 0, i64 0), i32 %322, i32 %325)
  br label %327

327:                                              ; preds = %317, %286
  %328 = call i32 @capture_buffer_service(%struct.TYPE_9__* %12)
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %331, label %330

330:                                              ; preds = %327
  br label %335

331:                                              ; preds = %327
  br label %332

332:                                              ; preds = %331
  %333 = load i32, i32* %13, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %13, align 4
  br label %281

335:                                              ; preds = %330, %281
  br label %336

336:                                              ; preds = %335, %272
  %337 = load i32, i32* %5, align 4
  %338 = call i32 @IDirectSoundCaptureBuffer_Stop(i32 %337)
  store i32 %338, i32* %7, align 4
  %339 = load i32, i32* %7, align 4
  %340 = load i32, i32* @DS_OK, align 4
  %341 = icmp eq i32 %339, %340
  %342 = zext i1 %341 to i32
  %343 = load i32, i32* %7, align 4
  %344 = call i32 (i32, i8*, i32, ...) @ok(i32 %342, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.17, i64 0, i64 0), i32 %343)
  %345 = load i32, i32* %5, align 4
  %346 = call i32 @IDirectSoundCaptureBuffer_Stop(i32 %345)
  store i32 %346, i32* %7, align 4
  %347 = load i32, i32* %7, align 4
  %348 = load i32, i32* @DS_OK, align 4
  %349 = icmp eq i32 %347, %348
  %350 = zext i1 %349 to i32
  %351 = load i32, i32* %7, align 4
  %352 = call i32 (i32, i8*, i32, ...) @ok(i32 %350, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.17, i64 0, i64 0), i32 %351)
  ret void
}

declare dso_local i32 @IDirectSoundCaptureBuffer_GetCaps(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @trace(i8*, i64, ...) #1

declare dso_local i32 @IDirectSoundCaptureBuffer_GetFormat(i32, %struct.TYPE_10__*, i32, i64*) #1

declare dso_local i32 @IDirectSoundCaptureBuffer_GetStatus(i32, i64*) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @CreateEvent(i32*, i32, i32, i32*) #1

declare dso_local i32 @IDirectSoundCaptureBuffer_QueryInterface(i32, i32*, i8**) #1

declare dso_local i32 @IDirectSoundNotify_SetNotificationPositions(i32*, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @IDirectSoundNotify_Release(i32*) #1

declare dso_local i32 @IDirectSoundCaptureBuffer_Start(i32, i32) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @WaitForMultipleObjects(i32, i32*, i32, i32) #1

declare dso_local i32 @capture_buffer_service(%struct.TYPE_9__*) #1

declare dso_local i32 @IDirectSoundCaptureBuffer_Stop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
