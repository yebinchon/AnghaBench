; ModuleID = '/home/carl/AnghaBench/vlc/modules/control/extr_rc.c_Input.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/control/extr_rc.c_Input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i8* }
%struct.vlc_player_title = type { i32 }
%struct.vlc_player_track = type { i8* }

@.str = private unnamed_addr constant [5 x i8] c"seek\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"chapter\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Currently playing chapter %zd/%zu.\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"No chapter selected.\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Currently playing title %zd/%zu.\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"No title selected.\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"atrack\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"vtrack\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"strack\00", align 1
@AUDIO_ES = common dso_local global i32 0, align 4
@VIDEO_ES = common dso_local global i32 0, align 4
@SPU_ES = common dso_local global i32 0, align 4
@VLC_PLAYER_SELECT_EXCLUSIVE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"+----[ %s ]\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"| %zu - %s%s\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c" *\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"+----[ end of %s ]\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"record\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i8*, i8*)* @Input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Input(%struct.TYPE_9__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_8__, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vlc_player_title*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca %struct.vlc_player_track*, align 8
  %20 = alloca %struct.vlc_player_track*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.vlc_player_track*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  store i8* %2, i8** %27, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32* @vlc_playlist_GetPlayer(i32 %32)
  store i32* %33, i32** %7, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @vlc_player_Lock(i32* %34)
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %74, label %39

39:                                               ; preds = %3
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @strlen(i8* %41)
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %65

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @strlen(i8* %48)
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %46, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 37
  br i1 %55, label %56, label %65

56:                                               ; preds = %44
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call double @atof(i8* %58)
  %60 = fdiv double %59, 1.000000e+02
  %61 = fptrunc double %60 to float
  store float %61, float* %8, align 4
  %62 = load i32*, i32** %7, align 8
  %63 = load float, float* %8, align 4
  %64 = call i32 @vlc_player_SetPosition(i32* %62, float %63)
  br label %73

65:                                               ; preds = %44, %39
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @atoi(i8* %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @vlc_tick_from_sec(i32 %70)
  %72 = call i32 @vlc_player_SetTime(i32* %69, i32 %71)
  br label %73

73:                                               ; preds = %65, %56
  br label %321

74:                                               ; preds = %3
  %75 = load i8*, i8** %6, align 8
  %76 = call i32 @strcmp(i8* %75, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %112, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = load i8, i8* %80, align 1
  %82 = icmp ne i8 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load i32*, i32** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @atoi(i8* %86)
  %88 = call i32 @vlc_player_SelectChapterIdx(i32* %84, i32 %87)
  br label %111

89:                                               ; preds = %78
  %90 = load i32*, i32** %7, align 8
  %91 = call %struct.vlc_player_title* @vlc_player_GetSelectedTitle(i32* %90)
  store %struct.vlc_player_title* %91, %struct.vlc_player_title** %10, align 8
  store i32 -1, i32* %11, align 4
  %92 = load %struct.vlc_player_title*, %struct.vlc_player_title** %10, align 8
  %93 = icmp ne %struct.vlc_player_title* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load i32*, i32** %7, align 8
  %96 = call i32 @vlc_player_GetSelectedChapterIdx(i32* %95)
  store i32 %96, i32* %11, align 4
  br label %97

97:                                               ; preds = %94, %89
  %98 = load i32, i32* %11, align 4
  %99 = icmp ne i32 %98, -1
  br i1 %99, label %100, label %107

100:                                              ; preds = %97
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %102 = load i32, i32* %11, align 4
  %103 = load %struct.vlc_player_title*, %struct.vlc_player_title** %10, align 8
  %104 = getelementptr inbounds %struct.vlc_player_title, %struct.vlc_player_title* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (%struct.TYPE_9__*, i8*, ...) @msg_print(%struct.TYPE_9__* %101, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %102, i32 %105)
  br label %110

107:                                              ; preds = %97
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %109 = call i32 (%struct.TYPE_9__*, i8*, ...) @msg_print(%struct.TYPE_9__* %108, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %110

110:                                              ; preds = %107, %100
  br label %111

111:                                              ; preds = %110, %83
  br label %320

112:                                              ; preds = %74
  %113 = load i8*, i8** %6, align 8
  %114 = call i32 @strcmp(i8* %113, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %159, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = load i8, i8* %118, align 1
  %120 = icmp ne i8 %119, 0
  br i1 %120, label %121, label %133

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @atoi(i8* %123)
  store i32 %124, i32* %12, align 4
  %125 = load i32, i32* %12, align 4
  %126 = icmp sge i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %121
  %128 = load i32*, i32** %7, align 8
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = call i32 @vlc_player_SelectTitleIdx(i32* %128, i64 %130)
  br label %132

132:                                              ; preds = %127, %121
  br label %158

133:                                              ; preds = %116
  %134 = load i32*, i32** %7, align 8
  %135 = call i32 @vlc_player_GetSelectedTitleIdx(i32* %134)
  store i32 %135, i32* %13, align 4
  %136 = load i32*, i32** %7, align 8
  %137 = call i32* @vlc_player_GetTitleList(i32* %136)
  store i32* %137, i32** %14, align 8
  store i64 0, i64* %15, align 8
  %138 = load i32*, i32** %14, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %143

140:                                              ; preds = %133
  %141 = load i32*, i32** %14, align 8
  %142 = call i64 @vlc_player_title_list_GetCount(i32* %141)
  store i64 %142, i64* %15, align 8
  br label %143

143:                                              ; preds = %140, %133
  %144 = load i32, i32* %13, align 4
  %145 = icmp ne i32 %144, -1
  br i1 %145, label %146, label %154

146:                                              ; preds = %143
  %147 = load i64, i64* %15, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %146
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %151 = load i32, i32* %13, align 4
  %152 = load i64, i64* %15, align 8
  %153 = call i32 (%struct.TYPE_9__*, i8*, ...) @msg_print(%struct.TYPE_9__* %150, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %151, i64 %152)
  br label %157

154:                                              ; preds = %146, %143
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %156 = call i32 (%struct.TYPE_9__*, i8*, ...) @msg_print(%struct.TYPE_9__* %155, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %157

157:                                              ; preds = %154, %149
  br label %158

158:                                              ; preds = %157, %132
  br label %319

159:                                              ; preds = %112
  %160 = load i8*, i8** %6, align 8
  %161 = call i32 @strcmp(i8* %160, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %159
  %164 = load i8*, i8** %6, align 8
  %165 = call i32 @strcmp(i8* %164, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %163
  %168 = load i8*, i8** %6, align 8
  %169 = call i32 @strcmp(i8* %168, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %274, label %171

171:                                              ; preds = %167, %163, %159
  %172 = load i8*, i8** %6, align 8
  %173 = call i32 @strcmp(i8* %172, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %177, label %175

175:                                              ; preds = %171
  %176 = load i32, i32* @AUDIO_ES, align 4
  store i32 %176, i32* %16, align 4
  br label %186

177:                                              ; preds = %171
  %178 = load i8*, i8** %6, align 8
  %179 = call i32 @strcmp(i8* %178, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %183, label %181

181:                                              ; preds = %177
  %182 = load i32, i32* @VIDEO_ES, align 4
  store i32 %182, i32* %16, align 4
  br label %185

183:                                              ; preds = %177
  %184 = load i32, i32* @SPU_ES, align 4
  store i32 %184, i32* %16, align 4
  br label %185

185:                                              ; preds = %183, %181
  br label %186

186:                                              ; preds = %185, %175
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %188 = load i8*, i8** %187, align 8
  %189 = icmp ne i8* %188, null
  br i1 %189, label %190, label %226

190:                                              ; preds = %186
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %192 = load i8*, i8** %191, align 8
  %193 = load i8, i8* %192, align 1
  %194 = sext i8 %193 to i32
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %226

196:                                              ; preds = %190
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %198 = load i8*, i8** %197, align 8
  %199 = call i32 @atoi(i8* %198)
  store i32 %199, i32* %17, align 4
  %200 = load i32, i32* %17, align 4
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %196
  br label %322

203:                                              ; preds = %196
  %204 = load i32*, i32** %7, align 8
  %205 = load i32, i32* %16, align 4
  %206 = call i64 @vlc_player_GetTrackCount(i32* %204, i32 %205)
  store i64 %206, i64* %18, align 8
  %207 = load i32, i32* %17, align 4
  %208 = zext i32 %207 to i64
  %209 = load i64, i64* %18, align 8
  %210 = icmp uge i64 %208, %209
  br i1 %210, label %211, label %212

211:                                              ; preds = %203
  br label %322

212:                                              ; preds = %203
  %213 = load i32*, i32** %7, align 8
  %214 = load i32, i32* %16, align 4
  %215 = load i32, i32* %17, align 4
  %216 = sext i32 %215 to i64
  %217 = call %struct.vlc_player_track* @vlc_player_GetTrackAt(i32* %213, i32 %214, i64 %216)
  store %struct.vlc_player_track* %217, %struct.vlc_player_track** %19, align 8
  %218 = load %struct.vlc_player_track*, %struct.vlc_player_track** %19, align 8
  %219 = icmp ne %struct.vlc_player_track* %218, null
  br i1 %219, label %221, label %220

220:                                              ; preds = %212
  br label %322

221:                                              ; preds = %212
  %222 = load i32*, i32** %7, align 8
  %223 = load %struct.vlc_player_track*, %struct.vlc_player_track** %19, align 8
  %224 = load i32, i32* @VLC_PLAYER_SELECT_EXCLUSIVE, align 4
  %225 = call i32 @vlc_player_SelectTrack(i32* %222, %struct.vlc_player_track* %223, i32 %224)
  br label %273

226:                                              ; preds = %190, %186
  %227 = load i32*, i32** %7, align 8
  %228 = load i32, i32* %16, align 4
  %229 = call %struct.vlc_player_track* @vlc_player_GetSelectedTrack(i32* %227, i32 %228)
  store %struct.vlc_player_track* %229, %struct.vlc_player_track** %20, align 8
  %230 = load %struct.vlc_player_track*, %struct.vlc_player_track** %20, align 8
  %231 = icmp ne %struct.vlc_player_track* %230, null
  br i1 %231, label %232, label %236

232:                                              ; preds = %226
  %233 = load %struct.vlc_player_track*, %struct.vlc_player_track** %20, align 8
  %234 = getelementptr inbounds %struct.vlc_player_track, %struct.vlc_player_track* %233, i32 0, i32 0
  %235 = load i8*, i8** %234, align 8
  br label %238

236:                                              ; preds = %226
  %237 = load i8*, i8** %6, align 8
  br label %238

238:                                              ; preds = %236, %232
  %239 = phi i8* [ %235, %232 ], [ %237, %236 ]
  store i8* %239, i8** %21, align 8
  %240 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %241 = load i8*, i8** %21, align 8
  %242 = call i32 (%struct.TYPE_9__*, i8*, ...) @msg_print(%struct.TYPE_9__* %240, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8* %241)
  %243 = load i32*, i32** %7, align 8
  %244 = load i32, i32* %16, align 4
  %245 = call i64 @vlc_player_GetTrackCount(i32* %243, i32 %244)
  store i64 %245, i64* %22, align 8
  store i64 0, i64* %23, align 8
  br label %246

246:                                              ; preds = %266, %238
  %247 = load i64, i64* %23, align 8
  %248 = load i64, i64* %22, align 8
  %249 = icmp ult i64 %247, %248
  br i1 %249, label %250, label %269

250:                                              ; preds = %246
  %251 = load i32*, i32** %7, align 8
  %252 = load i32, i32* %16, align 4
  %253 = load i64, i64* %23, align 8
  %254 = call %struct.vlc_player_track* @vlc_player_GetTrackAt(i32* %251, i32 %252, i64 %253)
  store %struct.vlc_player_track* %254, %struct.vlc_player_track** %24, align 8
  %255 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %256 = load i64, i64* %23, align 8
  %257 = load %struct.vlc_player_track*, %struct.vlc_player_track** %24, align 8
  %258 = getelementptr inbounds %struct.vlc_player_track, %struct.vlc_player_track* %257, i32 0, i32 0
  %259 = load i8*, i8** %258, align 8
  %260 = load %struct.vlc_player_track*, %struct.vlc_player_track** %24, align 8
  %261 = load %struct.vlc_player_track*, %struct.vlc_player_track** %20, align 8
  %262 = icmp eq %struct.vlc_player_track* %260, %261
  %263 = zext i1 %262 to i64
  %264 = select i1 %262, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)
  %265 = call i32 (%struct.TYPE_9__*, i8*, ...) @msg_print(%struct.TYPE_9__* %255, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i64 %256, i8* %259, i8* %264)
  br label %266

266:                                              ; preds = %250
  %267 = load i64, i64* %23, align 8
  %268 = add i64 %267, 1
  store i64 %268, i64* %23, align 8
  br label %246

269:                                              ; preds = %246
  %270 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %271 = load i8*, i8** %21, align 8
  %272 = call i32 (%struct.TYPE_9__*, i8*, ...) @msg_print(%struct.TYPE_9__* %270, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i8* %271)
  br label %273

273:                                              ; preds = %269, %221
  br label %318

274:                                              ; preds = %167
  %275 = load i8*, i8** %6, align 8
  %276 = call i32 @strcmp(i8* %275, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %317, label %278

278:                                              ; preds = %274
  store i32 1, i32* %25, align 4
  %279 = load i32*, i32** %7, align 8
  %280 = call i32 @vlc_player_IsRecording(i32* %279)
  store i32 %280, i32* %26, align 4
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %282 = load i8*, i8** %281, align 8
  %283 = getelementptr inbounds i8, i8* %282, i64 0
  %284 = load i8, i8* %283, align 1
  %285 = sext i8 %284 to i32
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %305

287:                                              ; preds = %278
  %288 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %289 = load i8*, i8** %288, align 8
  %290 = call i32 @strncmp(i8* %289, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i32 2)
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %295, label %292

292:                                              ; preds = %287
  %293 = load i32, i32* %26, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %303, label %295

295:                                              ; preds = %292, %287
  %296 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %297 = load i8*, i8** %296, align 8
  %298 = call i32 @strncmp(i8* %297, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32 3)
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %304, label %300

300:                                              ; preds = %295
  %301 = load i32, i32* %26, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %304, label %303

303:                                              ; preds = %300, %292
  store i32 0, i32* %25, align 4
  br label %304

304:                                              ; preds = %303, %300, %295
  br label %305

305:                                              ; preds = %304, %278
  %306 = load i32, i32* %25, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %316

308:                                              ; preds = %305
  %309 = load i32, i32* %26, align 4
  %310 = icmp ne i32 %309, 0
  %311 = xor i1 %310, true
  %312 = zext i1 %311 to i32
  store i32 %312, i32* %26, align 4
  %313 = load i32*, i32** %7, align 8
  %314 = load i32, i32* %26, align 4
  %315 = call i32 @vlc_player_SetRecordingEnabled(i32* %313, i32 %314)
  br label %316

316:                                              ; preds = %308, %305
  br label %317

317:                                              ; preds = %316, %274
  br label %318

318:                                              ; preds = %317, %273
  br label %319

319:                                              ; preds = %318, %158
  br label %320

320:                                              ; preds = %319, %111
  br label %321

321:                                              ; preds = %320, %73
  br label %322

322:                                              ; preds = %321, %220, %211, %202
  %323 = load i32*, i32** %7, align 8
  %324 = call i32 @vlc_player_Unlock(i32* %323)
  ret void
}

declare dso_local i32* @vlc_playlist_GetPlayer(i32) #1

declare dso_local i32 @vlc_player_Lock(i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local double @atof(i8*) #1

declare dso_local i32 @vlc_player_SetPosition(i32*, float) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @vlc_player_SetTime(i32*, i32) #1

declare dso_local i32 @vlc_tick_from_sec(i32) #1

declare dso_local i32 @vlc_player_SelectChapterIdx(i32*, i32) #1

declare dso_local %struct.vlc_player_title* @vlc_player_GetSelectedTitle(i32*) #1

declare dso_local i32 @vlc_player_GetSelectedChapterIdx(i32*) #1

declare dso_local i32 @msg_print(%struct.TYPE_9__*, i8*, ...) #1

declare dso_local i32 @vlc_player_SelectTitleIdx(i32*, i64) #1

declare dso_local i32 @vlc_player_GetSelectedTitleIdx(i32*) #1

declare dso_local i32* @vlc_player_GetTitleList(i32*) #1

declare dso_local i64 @vlc_player_title_list_GetCount(i32*) #1

declare dso_local i64 @vlc_player_GetTrackCount(i32*, i32) #1

declare dso_local %struct.vlc_player_track* @vlc_player_GetTrackAt(i32*, i32, i64) #1

declare dso_local i32 @vlc_player_SelectTrack(i32*, %struct.vlc_player_track*, i32) #1

declare dso_local %struct.vlc_player_track* @vlc_player_GetSelectedTrack(i32*, i32) #1

declare dso_local i32 @vlc_player_IsRecording(i32*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @vlc_player_SetRecordingEnabled(i32*, i32) #1

declare dso_local i32 @vlc_player_Unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
