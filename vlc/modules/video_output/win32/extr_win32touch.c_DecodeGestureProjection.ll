; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_win32touch.c_DecodeGestureProjection.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_win32touch.c_DecodeGestureProjection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, double, i64, i32 }
%struct.TYPE_8__ = type { i32, i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@GESTURE_ACTION_JUMP = common dso_local global i32 0, align 4
@ACTIONID_JUMP_BACKWARD_SHORT = common dso_local global i32 0, align 4
@ACTIONID_JUMP_FORWARD_SHORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"key-action\00", align 1
@GESTURE_ACTION_UNDEFINED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@GESTURE_ACTION_VOLUME = common dso_local global i32 0, align 4
@ACTIONID_VOL_UP = common dso_local global i32 0, align 4
@ACTIONID_VOL_DOWN = common dso_local global i32 0, align 4
@ACTIONID_PLAY_PAUSE = common dso_local global i32 0, align 4
@ACTIONID_VIEWPOINT_FOV_IN = common dso_local global i32 0, align 4
@ACTIONID_VIEWPOINT_FOV_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*, %struct.TYPE_8__*)* @DecodeGestureProjection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DecodeGestureProjection(i32* %0, %struct.TYPE_7__* %1, %struct.TYPE_8__* %2) #0 {
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
  switch i32 %14, label %282 [
    i32 133, label %15
    i32 132, label %35
    i32 131, label %82
    i32 130, label %215
    i32 129, label %223
    i32 128, label %280
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
  br label %283

35:                                               ; preds = %3
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %70

40:                                               ; preds = %35
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @GESTURE_ACTION_JUMP, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %70

46:                                               ; preds = %40
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %46
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp sgt i32 %54, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %51
  %61 = load i32, i32* @ACTIONID_JUMP_BACKWARD_SHORT, align 4
  store i32 %61, i32* %8, align 4
  br label %64

62:                                               ; preds = %51
  %63 = load i32, i32* @ACTIONID_JUMP_FORWARD_SHORT, align 4
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @vlc_object_instance(i32* %65)
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @var_SetInteger(i32 %66, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %64, %46
  br label %70

70:                                               ; preds = %69, %40, %35
  %71 = load i32, i32* @GESTURE_ACTION_UNDEFINED, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 7
  store i32 %71, i32* %73, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  store i32 -1, i32* %75, align 4
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  store i32 -1, i32* %77, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 4
  store i32 -1, i32* %79, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 3
  store i32 0, i32* %81, align 4
  br label %283

82:                                               ; preds = %3
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 4
  store i32 131, i32* %84, align 8
  %85 = load i32, i32* @TRUE, align 4
  store i32 %85, i32* %7, align 4
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, 134
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %82
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  br label %104

104:                                              ; preds = %91, %82
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = trunc i64 %107 to i32
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 3
  store i32 1, i32* %112, align 4
  br label %113

113:                                              ; preds = %110, %104
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %175

118:                                              ; preds = %113
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 7
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @GESTURE_ACTION_UNDEFINED, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %175

124:                                              ; preds = %118
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = sub nsw i32 %127, %131
  %133 = call i32 @abs(i32 %132) #3
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = sub nsw i32 %136, %140
  %142 = call i32 @abs(i32 %141) #3
  %143 = add nsw i32 %133, %142
  %144 = icmp sgt i32 %143, 50
  br i1 %144, label %145, label %174

145:                                              ; preds = %124
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = sub nsw i32 %148, %152
  %154 = call i32 @abs(i32 %153) #3
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = sub nsw i32 %157, %161
  %163 = call i32 @abs(i32 %162) #3
  %164 = icmp sgt i32 %154, %163
  br i1 %164, label %165, label %169

165:                                              ; preds = %145
  %166 = load i32, i32* @GESTURE_ACTION_JUMP, align 4
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 7
  store i32 %166, i32* %168, align 8
  br label %173

169:                                              ; preds = %145
  %170 = load i32, i32* @GESTURE_ACTION_VOLUME, align 4
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 7
  store i32 %170, i32* %172, align 8
  br label %173

173:                                              ; preds = %169, %165
  br label %174

174:                                              ; preds = %173, %124
  br label %175

175:                                              ; preds = %174, %118, %113
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 7
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @GESTURE_ACTION_VOLUME, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %214

181:                                              ; preds = %175
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = sub nsw i32 %184, %188
  store i32 %189, i32* %9, align 4
  %190 = load i32, i32* %9, align 4
  %191 = icmp sgt i32 %190, 100
  br i1 %191, label %192, label %197

192:                                              ; preds = %181
  %193 = load i32*, i32** %4, align 8
  %194 = call i32 @vlc_object_instance(i32* %193)
  %195 = load i32, i32* @ACTIONID_VOL_UP, align 4
  %196 = call i32 @var_SetInteger(i32 %194, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %195)
  br label %207

197:                                              ; preds = %181
  %198 = load i32, i32* %9, align 4
  %199 = icmp slt i32 %198, -100
  br i1 %199, label %200, label %205

200:                                              ; preds = %197
  %201 = load i32*, i32** %4, align 8
  %202 = call i32 @vlc_object_instance(i32* %201)
  %203 = load i32, i32* @ACTIONID_VOL_DOWN, align 4
  %204 = call i32 @var_SetInteger(i32 %202, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %203)
  br label %206

205:                                              ; preds = %197
  br label %283

206:                                              ; preds = %200
  br label %207

207:                                              ; preds = %206, %192
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 3
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 2
  store i32 %211, i32* %213, align 8
  br label %214

214:                                              ; preds = %207, %175
  br label %283

215:                                              ; preds = %3
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 4
  store i32 130, i32* %217, align 8
  %218 = load i32*, i32** %4, align 8
  %219 = call i32 @vlc_object_instance(i32* %218)
  %220 = load i32, i32* @ACTIONID_PLAY_PAUSE, align 4
  %221 = call i32 @var_SetInteger(i32 %219, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %220)
  %222 = load i32, i32* @TRUE, align 4
  store i32 %222, i32* %7, align 4
  br label %283

223:                                              ; preds = %3
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 4
  store i32 129, i32* %225, align 8
  %226 = load i32, i32* @TRUE, align 4
  store i32 %226, i32* %7, align 4
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  switch i32 %229, label %238 [
    i32 134, label %230
  ]

230:                                              ; preds = %223
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 2
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 6
  store i64 %233, i64* %235, align 8
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 5
  store double 1.000000e+00, double* %237, align 8
  br label %279

238:                                              ; preds = %223
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 2
  %241 = load i64, i64* %240, align 8
  %242 = sitofp i64 %241 to double
  %243 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 6
  %245 = load i64, i64* %244, align 8
  %246 = sitofp i64 %245 to double
  %247 = fdiv double %242, %246
  store double %247, double* %10, align 8
  %248 = load double, double* %10, align 8
  %249 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 5
  %251 = load double, double* %250, align 8
  %252 = fmul double %251, 1.010000e+00
  %253 = fcmp ogt double %248, %252
  br i1 %253, label %254, label %262

254:                                              ; preds = %238
  %255 = load i32*, i32** %4, align 8
  %256 = call i32 @vlc_object_instance(i32* %255)
  %257 = load i32, i32* @ACTIONID_VIEWPOINT_FOV_IN, align 4
  %258 = call i32 @var_SetInteger(i32 %256, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %257)
  %259 = load double, double* %10, align 8
  %260 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 5
  store double %259, double* %261, align 8
  br label %278

262:                                              ; preds = %238
  %263 = load double, double* %10, align 8
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 5
  %266 = load double, double* %265, align 8
  %267 = fmul double %266, 0x3FEFAE147AE147AE
  %268 = fcmp olt double %263, %267
  br i1 %268, label %269, label %277

269:                                              ; preds = %262
  %270 = load i32*, i32** %4, align 8
  %271 = call i32 @vlc_object_instance(i32* %270)
  %272 = load i32, i32* @ACTIONID_VIEWPOINT_FOV_OUT, align 4
  %273 = call i32 @var_SetInteger(i32 %271, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %272)
  %274 = load double, double* %10, align 8
  %275 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %275, i32 0, i32 5
  store double %274, double* %276, align 8
  br label %277

277:                                              ; preds = %269, %262
  br label %278

278:                                              ; preds = %277, %254
  br label %279

279:                                              ; preds = %278, %230
  br label %283

280:                                              ; preds = %3
  %281 = load i32, i32* @TRUE, align 4
  store i32 %281, i32* %7, align 4
  br label %283

282:                                              ; preds = %3
  br label %283

283:                                              ; preds = %282, %280, %279, %215, %214, %205, %70, %15
  %284 = load i32, i32* %7, align 4
  ret i32 %284
}

declare dso_local i32 @var_SetInteger(i32, i8*, i32) #1

declare dso_local i32 @vlc_object_instance(i32*) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
