; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_input.c_Init.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_input.c_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_14__*, i32*, i32*, i32, %struct.TYPE_15__*, %struct.TYPE_13__**, i32, i32, %struct.TYPE_13__*, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i8* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { double }

@OPENING_S = common dso_local global i32 0, align 4
@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"meta-file\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Input is a meta file: disabling unneeded options\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"sout\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"sout-all\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"input-slave\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"input-repeat\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"sub-file\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"sub-autodetect-file\00", align 1
@DEMUX_GET_LENGTH = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"rate\00", align 1
@INPUT_CONTROL_SET_RATE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [24 x i8] c"starting in %ssync mode\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"`%s' successfully opened\00", align 1
@PLAYING_S = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@ERROR_S = common dso_local global i32 0, align 4
@ES_OUT_MODE_END = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Init(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.TYPE_11__, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call %struct.TYPE_12__* @input_priv(i32* %11)
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %4, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* @OPENING_S, align 4
  %15 = load i64, i64* @VLC_TICK_INVALID, align 8
  %16 = call i32 @input_ChangeState(i32* %13, i32 %14, i64 %15)
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @input_SendEventCache(i32* %17, double 0.000000e+00)
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @vlc_object_parent(i32* %19)
  %21 = call i64 @var_Type(i32 %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %1
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %24, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @var_SetString(i32* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @var_SetBool(i32* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @var_SetString(i32* %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @var_SetInteger(i32* %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 0)
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @var_SetString(i32* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @var_SetBool(i32* %36, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 0)
  br label %38

38:                                               ; preds = %23, %1
  %39 = load i32*, i32** %3, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 11
  %45 = load i32, i32* %44, align 8
  %46 = call i32* @input_EsOutTimeshiftNew(i32* %39, i32 %42, i32 %45)
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 3
  store i32* %46, i32** %48, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %38
  br label %213

54:                                               ; preds = %38
  %55 = load i32*, i32** %3, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 6
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call %struct.TYPE_13__* @InputSourceNew(i32* %55, i8* %60, i32* null, i32 0)
  store %struct.TYPE_13__* %61, %struct.TYPE_13__** %5, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %63 = icmp eq %struct.TYPE_13__* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  br label %213

65:                                               ; preds = %54
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 10
  store %struct.TYPE_13__* %66, %struct.TYPE_13__** %68, align 8
  %69 = load i32*, i32** %3, align 8
  %70 = call i32 @InitTitle(i32* %69, i32 0)
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @DEMUX_GET_LENGTH, align 4
  %75 = call i64 @demux_Control(i32 %73, i32 %74, i64* %6)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %65
  %78 = load i64, i64* @VLC_TICK_INVALID, align 8
  store i64 %78, i64* %6, align 8
  br label %79

79:                                               ; preds = %77, %65
  %80 = load i64, i64* %6, align 8
  %81 = load i64, i64* @VLC_TICK_INVALID, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 6
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %85, align 8
  %87 = call i64 @input_item_GetDuration(%struct.TYPE_15__* %86)
  store i64 %87, i64* %6, align 8
  br label %88

88:                                               ; preds = %83, %79
  %89 = load i32*, i32** %3, align 8
  %90 = load i64, i64* @VLC_TICK_INVALID, align 8
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 9
  %93 = load i32, i32* %92, align 4
  %94 = load i64, i64* %6, align 8
  %95 = call i32 @input_SendEventTimes(i32* %89, double 0.000000e+00, i64 %90, i32 %93, i64 %94)
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 8
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %123, label %100

100:                                              ; preds = %88
  %101 = load i32*, i32** %3, align 8
  %102 = call i32 @StartTitle(i32* %101)
  %103 = load i32*, i32** %3, align 8
  %104 = call i32 @SetSubtitlesOptions(i32* %103)
  %105 = load i32*, i32** %3, align 8
  %106 = call i32 @LoadSlaves(i32* %105)
  %107 = load i32*, i32** %3, align 8
  %108 = call i32 @InitPrograms(i32* %107)
  %109 = load i32*, i32** %3, align 8
  %110 = call double @var_GetFloat(i32* %109, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  store double %110, double* %7, align 8
  %111 = load double, double* %7, align 8
  %112 = fcmp une double %111, 0.000000e+00
  br i1 %112, label %113, label %122

113:                                              ; preds = %100
  %114 = load double, double* %7, align 8
  %115 = fcmp une double %114, 1.000000e+00
  br i1 %115, label %116, label %122

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %118 = load double, double* %7, align 8
  store double %118, double* %117, align 8
  %119 = load i32*, i32** %3, align 8
  %120 = load i32, i32* @INPUT_CONTROL_SET_RATE, align 4
  %121 = call i32 @input_ControlPushHelper(i32* %119, i32 %120, %struct.TYPE_11__* %8)
  br label %122

122:                                              ; preds = %116, %113, %100
  br label %123

123:                                              ; preds = %122, %88
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 8
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %151, label %128

128:                                              ; preds = %123
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %130, align 8
  %132 = icmp ne %struct.TYPE_14__* %131, null
  br i1 %132, label %133, label %151

133:                                              ; preds = %128
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 2
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp sgt i64 %138, 0
  %140 = zext i1 %139 to i32
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  %143 = load i32*, i32** %3, align 8
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp ne i32 %146, 0
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %150 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %143, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i8* %149)
  br label %151

151:                                              ; preds = %133, %128, %123
  %152 = load i32*, i32** %3, align 8
  %153 = call %struct.TYPE_12__* @input_priv(i32* %152)
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 6
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %154, align 8
  %156 = call i32 @input_item_IsPreparsed(%struct.TYPE_15__* %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %199, label %158

158:                                              ; preds = %151
  %159 = call i32* (...) @vlc_meta_New()
  store i32* %159, i32** %9, align 8
  %160 = load i32*, i32** %9, align 8
  %161 = icmp ne i32* %160, null
  br i1 %161, label %162, label %198

162:                                              ; preds = %158
  %163 = load i32*, i32** %3, align 8
  %164 = load i32*, i32** %9, align 8
  %165 = call i32 @InputMetaUser(i32* %163, i32* %164)
  %166 = load i32*, i32** %3, align 8
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %168 = load i32*, i32** %9, align 8
  %169 = call i32 @InputSourceMeta(i32* %166, %struct.TYPE_13__* %167, i32* %168)
  store i32 0, i32* %10, align 4
  br label %170

170:                                              ; preds = %187, %162
  %171 = load i32, i32* %10, align 4
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = icmp slt i32 %171, %174
  br i1 %175, label %176, label %190

176:                                              ; preds = %170
  %177 = load i32*, i32** %3, align 8
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 7
  %180 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %179, align 8
  %181 = load i32, i32* %10, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %180, i64 %182
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %183, align 8
  %185 = load i32*, i32** %9, align 8
  %186 = call i32 @InputSourceMeta(i32* %177, %struct.TYPE_13__* %184, i32* %185)
  br label %187

187:                                              ; preds = %176
  %188 = load i32, i32* %10, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %10, align 4
  br label %170

190:                                              ; preds = %170
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 3
  %193 = load i32*, i32** %192, align 8
  %194 = load i32*, i32** %9, align 8
  %195 = call i32 @es_out_ControlSetMeta(i32* %193, i32* %194)
  %196 = load i32*, i32** %9, align 8
  %197 = call i32 @vlc_meta_Delete(i32* %196)
  br label %198

198:                                              ; preds = %190, %158
  br label %199

199:                                              ; preds = %198, %151
  %200 = load i32*, i32** %3, align 8
  %201 = load i32*, i32** %3, align 8
  %202 = call %struct.TYPE_12__* @input_priv(i32* %201)
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 6
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 0
  %206 = load i8*, i8** %205, align 8
  %207 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %200, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i8* %206)
  %208 = load i32*, i32** %3, align 8
  %209 = load i32, i32* @PLAYING_S, align 4
  %210 = call i64 (...) @vlc_tick_now()
  %211 = call i32 @input_ChangeState(i32* %208, i32 %209, i64 %210)
  %212 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %212, i32* %2, align 4
  br label %286

213:                                              ; preds = %64, %53
  %214 = load i32*, i32** %3, align 8
  %215 = load i32, i32* @ERROR_S, align 4
  %216 = load i64, i64* @VLC_TICK_INVALID, align 8
  %217 = call i32 @input_ChangeState(i32* %214, i32 %215, i64 %216)
  %218 = load i32*, i32** %3, align 8
  %219 = call %struct.TYPE_12__* @input_priv(i32* %218)
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 3
  %221 = load i32*, i32** %220, align 8
  %222 = icmp ne i32* %221, null
  br i1 %222, label %223, label %229

223:                                              ; preds = %213
  %224 = load i32*, i32** %3, align 8
  %225 = call %struct.TYPE_12__* @input_priv(i32* %224)
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 3
  %227 = load i32*, i32** %226, align 8
  %228 = call i32 @es_out_Delete(i32* %227)
  br label %229

229:                                              ; preds = %223, %213
  %230 = load i32*, i32** %3, align 8
  %231 = call %struct.TYPE_12__* @input_priv(i32* %230)
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 5
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* @ES_OUT_MODE_END, align 4
  %235 = call i32 @es_out_SetMode(i32 %233, i32 %234)
  %236 = load i32*, i32** %3, align 8
  %237 = call %struct.TYPE_12__* @input_priv(i32* %236)
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 4
  %239 = load i32*, i32** %238, align 8
  %240 = icmp ne i32* %239, null
  br i1 %240, label %241, label %278

241:                                              ; preds = %229
  %242 = load i32*, i32** %3, align 8
  %243 = call %struct.TYPE_12__* @input_priv(i32* %242)
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 2
  %245 = load %struct.TYPE_14__*, %struct.TYPE_14__** %244, align 8
  %246 = icmp ne %struct.TYPE_14__* %245, null
  br i1 %246, label %247, label %257

247:                                              ; preds = %241
  %248 = load i32*, i32** %3, align 8
  %249 = call %struct.TYPE_12__* @input_priv(i32* %248)
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 4
  %251 = load i32*, i32** %250, align 8
  %252 = load i32*, i32** %3, align 8
  %253 = call %struct.TYPE_12__* @input_priv(i32* %252)
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 2
  %255 = load %struct.TYPE_14__*, %struct.TYPE_14__** %254, align 8
  %256 = call i32 @input_resource_RequestSout(i32* %251, %struct.TYPE_14__* %255, i32* null)
  br label %257

257:                                              ; preds = %247, %241
  %258 = load i32*, i32** %3, align 8
  %259 = call %struct.TYPE_12__* @input_priv(i32* %258)
  %260 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %259, i32 0, i32 4
  %261 = load i32*, i32** %260, align 8
  %262 = call i32 @input_resource_SetInput(i32* %261, i32* null)
  %263 = load i32*, i32** %3, align 8
  %264 = call %struct.TYPE_12__* @input_priv(i32* %263)
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %264, i32 0, i32 4
  %266 = load i32*, i32** %265, align 8
  %267 = icmp ne i32* %266, null
  br i1 %267, label %268, label %277

268:                                              ; preds = %257
  %269 = load i32*, i32** %3, align 8
  %270 = call %struct.TYPE_12__* @input_priv(i32* %269)
  %271 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %270, i32 0, i32 4
  %272 = load i32*, i32** %271, align 8
  %273 = call i32 @input_resource_Release(i32* %272)
  %274 = load i32*, i32** %3, align 8
  %275 = call %struct.TYPE_12__* @input_priv(i32* %274)
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 4
  store i32* null, i32** %276, align 8
  br label %277

277:                                              ; preds = %268, %257
  br label %278

278:                                              ; preds = %277, %229
  %279 = load i32*, i32** %3, align 8
  %280 = call %struct.TYPE_12__* @input_priv(i32* %279)
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i32 0, i32 3
  store i32* null, i32** %281, align 8
  %282 = load i32*, i32** %3, align 8
  %283 = call %struct.TYPE_12__* @input_priv(i32* %282)
  %284 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %283, i32 0, i32 2
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %284, align 8
  %285 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %285, i32* %2, align 4
  br label %286

286:                                              ; preds = %278, %199
  %287 = load i32, i32* %2, align 4
  ret i32 %287
}

declare dso_local %struct.TYPE_12__* @input_priv(i32*) #1

declare dso_local i32 @input_ChangeState(i32*, i32, i64) #1

declare dso_local i32 @input_SendEventCache(i32*, double) #1

declare dso_local i64 @var_Type(i32, i8*) #1

declare dso_local i32 @vlc_object_parent(i32*) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, ...) #1

declare dso_local i32 @var_SetString(i32*, i8*, i8*) #1

declare dso_local i32 @var_SetBool(i32*, i8*, i32) #1

declare dso_local i32 @var_SetInteger(i32*, i8*, i32) #1

declare dso_local i32* @input_EsOutTimeshiftNew(i32*, i32, i32) #1

declare dso_local %struct.TYPE_13__* @InputSourceNew(i32*, i8*, i32*, i32) #1

declare dso_local i32 @InitTitle(i32*, i32) #1

declare dso_local i64 @demux_Control(i32, i32, i64*) #1

declare dso_local i64 @input_item_GetDuration(%struct.TYPE_15__*) #1

declare dso_local i32 @input_SendEventTimes(i32*, double, i64, i32, i64) #1

declare dso_local i32 @StartTitle(i32*) #1

declare dso_local i32 @SetSubtitlesOptions(i32*) #1

declare dso_local i32 @LoadSlaves(i32*) #1

declare dso_local i32 @InitPrograms(i32*) #1

declare dso_local double @var_GetFloat(i32*, i8*) #1

declare dso_local i32 @input_ControlPushHelper(i32*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @input_item_IsPreparsed(%struct.TYPE_15__*) #1

declare dso_local i32* @vlc_meta_New(...) #1

declare dso_local i32 @InputMetaUser(i32*, i32*) #1

declare dso_local i32 @InputSourceMeta(i32*, %struct.TYPE_13__*, i32*) #1

declare dso_local i32 @es_out_ControlSetMeta(i32*, i32*) #1

declare dso_local i32 @vlc_meta_Delete(i32*) #1

declare dso_local i64 @vlc_tick_now(...) #1

declare dso_local i32 @es_out_Delete(i32*) #1

declare dso_local i32 @es_out_SetMode(i32, i32) #1

declare dso_local i32 @input_resource_RequestSout(i32*, %struct.TYPE_14__*, i32*) #1

declare dso_local i32 @input_resource_SetInput(i32*, i32*) #1

declare dso_local i32 @input_resource_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
