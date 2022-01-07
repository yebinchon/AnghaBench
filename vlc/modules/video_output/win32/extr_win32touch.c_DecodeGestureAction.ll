; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_win32touch.c_DecodeGestureAction.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_win32touch.c_DecodeGestureAction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_8__ = type { i32, i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@GESTURE_ACTION_JUMP = common dso_local global i32 0, align 4
@ACTIONID_JUMP_BACKWARD_MEDIUM = common dso_local global i32 0, align 4
@ACTIONID_JUMP_BACKWARD_SHORT = common dso_local global i32 0, align 4
@ACTIONID_JUMP_FORWARD_MEDIUM = common dso_local global i32 0, align 4
@ACTIONID_JUMP_FORWARD_SHORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"key-action\00", align 1
@GESTURE_ACTION_UNDEFINED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@GESTURE_ACTION_BRIGHTNESS = common dso_local global i32 0, align 4
@GESTURE_ACTION_VOLUME = common dso_local global i32 0, align 4
@ACTIONID_VOL_UP = common dso_local global i32 0, align 4
@ACTIONID_VOL_DOWN = common dso_local global i32 0, align 4
@ACTIONID_PLAY_PAUSE = common dso_local global i32 0, align 4
@ACTIONID_TOGGLE_FULLSCREEN = common dso_local global i32 0, align 4
@ACTIONID_LEAVE_FULLSCREEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Unmanaged dwFlag: %lx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*, %struct.TYPE_8__*)* @DecodeGestureAction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DecodeGestureAction(i32* %0, %struct.TYPE_7__* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %6, align 8
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %291 [
    i32 133, label %15
    i32 132, label %35
    i32 131, label %92
    i32 130, label %238
    i32 129, label %246
    i32 128, label %289
  ]

15:                                               ; preds = %3
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 3
  store i32 0, i32* %34, align 4
  br label %292

35:                                               ; preds = %3
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %80

40:                                               ; preds = %35
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @GESTURE_ACTION_JUMP, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %80

46:                                               ; preds = %40
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp sgt i32 %49, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %46
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* @ACTIONID_JUMP_BACKWARD_MEDIUM, align 4
  store i32 %61, i32* %8, align 4
  br label %64

62:                                               ; preds = %55
  %63 = load i32, i32* @ACTIONID_JUMP_BACKWARD_SHORT, align 4
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %62, %60
  br label %75

65:                                               ; preds = %46
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* @ACTIONID_JUMP_FORWARD_MEDIUM, align 4
  store i32 %71, i32* %8, align 4
  br label %74

72:                                               ; preds = %65
  %73 = load i32, i32* @ACTIONID_JUMP_FORWARD_SHORT, align 4
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %72, %70
  br label %75

75:                                               ; preds = %74, %64
  %76 = load i32*, i32** %4, align 8
  %77 = call i32 @vlc_object_instance(i32* %76)
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @var_SetInteger(i32 %77, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %75, %40, %35
  %81 = load i32, i32* @GESTURE_ACTION_UNDEFINED, align 4
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 6
  store i32 %81, i32* %83, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  store i32 -1, i32* %85, align 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  store i32 -1, i32* %87, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 4
  store i32 -1, i32* %89, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 3
  store i32 0, i32* %91, align 4
  br label %292

92:                                               ; preds = %3
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 4
  store i32 131, i32* %94, align 8
  %95 = load i32, i32* @TRUE, align 4
  store i32 %95, i32* %7, align 4
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, 135
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %92
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  br label %114

114:                                              ; preds = %101, %92
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = trunc i64 %117 to i32
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %114
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 3
  store i32 1, i32* %122, align 4
  br label %123

123:                                              ; preds = %120, %114
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @GESTURE_ACTION_UNDEFINED, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %190

129:                                              ; preds = %123
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = sub nsw i32 %132, %136
  %138 = call i32 @abs(i32 %137) #3
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = sub nsw i32 %141, %145
  %147 = call i32 @abs(i32 %146) #3
  %148 = add nsw i32 %138, %147
  %149 = icmp sgt i32 %148, 50
  br i1 %149, label %150, label %189

150:                                              ; preds = %129
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = sub nsw i32 %153, %157
  %159 = call i32 @abs(i32 %158) #3
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = sub nsw i32 %162, %166
  %168 = call i32 @abs(i32 %167) #3
  %169 = icmp sgt i32 %159, %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %150
  %171 = load i32, i32* @GESTURE_ACTION_JUMP, align 4
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 6
  store i32 %171, i32* %173, align 8
  br label %188

174:                                              ; preds = %150
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %174
  %180 = load i32, i32* @GESTURE_ACTION_BRIGHTNESS, align 4
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 6
  store i32 %180, i32* %182, align 8
  br label %187

183:                                              ; preds = %174
  %184 = load i32, i32* @GESTURE_ACTION_VOLUME, align 4
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 6
  store i32 %184, i32* %186, align 8
  br label %187

187:                                              ; preds = %183, %179
  br label %188

188:                                              ; preds = %187, %170
  br label %189

189:                                              ; preds = %188, %129
  br label %190

190:                                              ; preds = %189, %123
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 6
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @GESTURE_ACTION_VOLUME, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %229

196:                                              ; preds = %190
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 3
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = sub nsw i32 %199, %203
  store i32 %204, i32* %9, align 4
  %205 = load i32, i32* %9, align 4
  %206 = icmp sgt i32 %205, 100
  br i1 %206, label %207, label %212

207:                                              ; preds = %196
  %208 = load i32*, i32** %4, align 8
  %209 = call i32 @vlc_object_instance(i32* %208)
  %210 = load i32, i32* @ACTIONID_VOL_UP, align 4
  %211 = call i32 @var_SetInteger(i32 %209, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %210)
  br label %222

212:                                              ; preds = %196
  %213 = load i32, i32* %9, align 4
  %214 = icmp slt i32 %213, -100
  br i1 %214, label %215, label %220

215:                                              ; preds = %212
  %216 = load i32*, i32** %4, align 8
  %217 = call i32 @vlc_object_instance(i32* %216)
  %218 = load i32, i32* @ACTIONID_VOL_DOWN, align 4
  %219 = call i32 @var_SetInteger(i32 %217, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %218)
  br label %221

220:                                              ; preds = %212
  br label %292

221:                                              ; preds = %215
  br label %222

222:                                              ; preds = %221, %207
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 3
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 2
  store i32 %226, i32* %228, align 8
  br label %237

229:                                              ; preds = %190
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 6
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @GESTURE_ACTION_BRIGHTNESS, align 4
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %235, label %236

235:                                              ; preds = %229
  br label %236

236:                                              ; preds = %235, %229
  br label %237

237:                                              ; preds = %236, %222
  br label %292

238:                                              ; preds = %3
  %239 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 4
  store i32 130, i32* %240, align 8
  %241 = load i32*, i32** %4, align 8
  %242 = call i32 @vlc_object_instance(i32* %241)
  %243 = load i32, i32* @ACTIONID_PLAY_PAUSE, align 4
  %244 = call i32 @var_SetInteger(i32 %242, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %243)
  %245 = load i32, i32* @TRUE, align 4
  store i32 %245, i32* %7, align 4
  br label %292

246:                                              ; preds = %3
  %247 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 4
  store i32 129, i32* %248, align 8
  %249 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  switch i32 %251, label %281 [
    i32 135, label %252
    i32 134, label %258
  ]

252:                                              ; preds = %246
  %253 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 2
  %255 = load i64, i64* %254, align 8
  %256 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 5
  store i64 %255, i64* %257, align 8
  br label %287

258:                                              ; preds = %246
  %259 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 2
  %261 = load i64, i64* %260, align 8
  %262 = sitofp i64 %261 to double
  %263 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i32 0, i32 5
  %265 = load i64, i64* %264, align 8
  %266 = sitofp i64 %265 to double
  %267 = fdiv double %262, %266
  store double %267, double* %10, align 8
  %268 = load double, double* %10, align 8
  %269 = fcmp ogt double %268, 1.000000e+00
  br i1 %269, label %270, label %275

270:                                              ; preds = %258
  %271 = load i32*, i32** %4, align 8
  %272 = call i32 @vlc_object_instance(i32* %271)
  %273 = load i32, i32* @ACTIONID_TOGGLE_FULLSCREEN, align 4
  %274 = call i32 @var_SetInteger(i32 %272, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %273)
  br label %280

275:                                              ; preds = %258
  %276 = load i32*, i32** %4, align 8
  %277 = call i32 @vlc_object_instance(i32* %276)
  %278 = load i32, i32* @ACTIONID_LEAVE_FULLSCREEN, align 4
  %279 = call i32 @var_SetInteger(i32 %277, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %278)
  br label %280

280:                                              ; preds = %275, %270
  br label %287

281:                                              ; preds = %246
  %282 = load i32*, i32** %4, align 8
  %283 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @msg_Err(i32* %282, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %285)
  br label %287

287:                                              ; preds = %281, %280, %252
  %288 = load i32, i32* @TRUE, align 4
  store i32 %288, i32* %7, align 4
  br label %292

289:                                              ; preds = %3
  %290 = load i32, i32* @TRUE, align 4
  store i32 %290, i32* %7, align 4
  br label %292

291:                                              ; preds = %3
  br label %292

292:                                              ; preds = %291, %289, %287, %238, %237, %220, %80, %15
  %293 = load i32, i32* %7, align 4
  ret i32 %293
}

declare dso_local i32 @var_SetInteger(i32, i8*, i32) #1

declare dso_local i32 @vlc_object_instance(i32*) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @msg_Err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
