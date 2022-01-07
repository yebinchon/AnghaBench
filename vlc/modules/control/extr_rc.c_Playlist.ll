; ModuleID = '/home/carl/AnghaBench/vlc/modules/control/extr_rc.c_Playlist.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/control/extr_rc.c_Playlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_8__ = type { i64* }

@.str = private unnamed_addr constant [7 x i8] c"repeat\00", align 1
@VLC_PLAYLIST_PLAYBACK_REPEAT_CURRENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@VLC_PLAYLIST_PLAYBACK_REPEAT_NONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Setting repeat to %s\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"loop\00", align 1
@VLC_PLAYLIST_PLAYBACK_REPEAT_ALL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"Setting loop to %s\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM = common dso_local global i32 0, align 4
@VLC_PLAYLIST_PLAYBACK_ORDER_NORMAL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [21 x i8] c"Setting random to %s\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"goto\00", align 1
@.str.11 = private unnamed_addr constant [58 x i8] c"Error: `goto' needs an argument greater or equal to zero.\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Playlist has only %zu element\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"Playlist has only %zu elements\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"enqueue\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"Trying to %s %s to playlist.\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [17 x i8] c"unknown command!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i8*, i64*)* @Playlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Playlist(%struct.TYPE_9__* %0, i8* %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_8__, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  store i64* %2, i64** %23, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %7, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @vlc_playlist_Lock(i32* %29)
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %89, label %34

34:                                               ; preds = %3
  store i32 1, i32* %8, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @vlc_playlist_GetPlaybackRepeat(i32* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @VLC_PLAYLIST_PLAYBACK_REPEAT_CURRENT, align 4
  %39 = icmp eq i32 %37, %38
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %10, align 4
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = call i64 @strlen(i64* %42)
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = call i32 @strncmp(i64* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %50, %45
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = call i32 @strncmp(i64* %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %58, %50
  store i32 0, i32* %8, align 4
  br label %62

62:                                               ; preds = %61, %58, %53
  br label %63

63:                                               ; preds = %62, %34
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %63
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i32, i32* @VLC_PLAYLIST_PLAYBACK_REPEAT_CURRENT, align 4
  br label %77

75:                                               ; preds = %66
  %76 = load i32, i32* @VLC_PLAYLIST_PLAYBACK_REPEAT_NONE, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  store i32 %78, i32* %9, align 4
  %79 = load i32*, i32** %7, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @vlc_playlist_SetPlaybackRepeat(i32* %79, i32 %80)
  br label %82

82:                                               ; preds = %77, %63
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)
  %88 = call i32 (%struct.TYPE_9__*, i8*, ...) @msg_print(%struct.TYPE_9__* %83, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %87)
  br label %300

89:                                               ; preds = %3
  %90 = load i8*, i8** %6, align 8
  %91 = call i32 @strcmp(i8* %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %148, label %93

93:                                               ; preds = %89
  store i32 1, i32* %11, align 4
  %94 = load i32*, i32** %7, align 8
  %95 = call i32 @vlc_playlist_GetPlaybackRepeat(i32* %94)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* @VLC_PLAYLIST_PLAYBACK_REPEAT_ALL, align 4
  %98 = icmp eq i32 %96, %97
  %99 = zext i1 %98 to i32
  store i32 %99, i32* %13, align 4
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %101 = load i64*, i64** %100, align 8
  %102 = call i64 @strlen(i64* %101)
  %103 = icmp sgt i64 %102, 0
  br i1 %103, label %104, label %122

104:                                              ; preds = %93
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %106 = load i64*, i64** %105, align 8
  %107 = call i32 @strncmp(i64* %106, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %104
  %110 = load i32, i32* %13, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %120, label %112

112:                                              ; preds = %109, %104
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %114 = load i64*, i64** %113, align 8
  %115 = call i32 @strncmp(i64* %114, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %112
  %118 = load i32, i32* %13, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %117, %109
  store i32 0, i32* %11, align 4
  br label %121

121:                                              ; preds = %120, %117, %112
  br label %122

122:                                              ; preds = %121, %93
  %123 = load i32, i32* %11, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %141

125:                                              ; preds = %122
  %126 = load i32, i32* %13, align 4
  %127 = icmp ne i32 %126, 0
  %128 = xor i1 %127, true
  %129 = zext i1 %128 to i32
  store i32 %129, i32* %13, align 4
  %130 = load i32, i32* %13, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %125
  %133 = load i32, i32* @VLC_PLAYLIST_PLAYBACK_REPEAT_ALL, align 4
  br label %136

134:                                              ; preds = %125
  %135 = load i32, i32* @VLC_PLAYLIST_PLAYBACK_REPEAT_NONE, align 4
  br label %136

136:                                              ; preds = %134, %132
  %137 = phi i32 [ %133, %132 ], [ %135, %134 ]
  store i32 %137, i32* %12, align 4
  %138 = load i32*, i32** %7, align 8
  %139 = load i32, i32* %12, align 4
  %140 = call i32 @vlc_playlist_SetPlaybackRepeat(i32* %138, i32 %139)
  br label %141

141:                                              ; preds = %136, %122
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %143 = load i32, i32* %13, align 4
  %144 = icmp ne i32 %143, 0
  %145 = zext i1 %144 to i64
  %146 = select i1 %144, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)
  %147 = call i32 (%struct.TYPE_9__*, i8*, ...) @msg_print(%struct.TYPE_9__* %142, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* %146)
  br label %299

148:                                              ; preds = %89
  %149 = load i8*, i8** %6, align 8
  %150 = call i32 @strcmp(i8* %149, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %207, label %152

152:                                              ; preds = %148
  store i32 1, i32* %14, align 4
  %153 = load i32*, i32** %7, align 8
  %154 = call i32 @vlc_playlist_GetPlaybackOrder(i32* %153)
  store i32 %154, i32* %15, align 4
  %155 = load i32, i32* %15, align 4
  %156 = load i32, i32* @VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM, align 4
  %157 = icmp eq i32 %155, %156
  %158 = zext i1 %157 to i32
  store i32 %158, i32* %16, align 4
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %160 = load i64*, i64** %159, align 8
  %161 = call i64 @strlen(i64* %160)
  %162 = icmp sgt i64 %161, 0
  br i1 %162, label %163, label %181

163:                                              ; preds = %152
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %165 = load i64*, i64** %164, align 8
  %166 = call i32 @strncmp(i64* %165, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %163
  %169 = load i32, i32* %16, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %179, label %171

171:                                              ; preds = %168, %163
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %173 = load i64*, i64** %172, align 8
  %174 = call i32 @strncmp(i64* %173, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %180, label %176

176:                                              ; preds = %171
  %177 = load i32, i32* %16, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %180, label %179

179:                                              ; preds = %176, %168
  store i32 0, i32* %14, align 4
  br label %180

180:                                              ; preds = %179, %176, %171
  br label %181

181:                                              ; preds = %180, %152
  %182 = load i32, i32* %14, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %200

184:                                              ; preds = %181
  %185 = load i32, i32* %16, align 4
  %186 = icmp ne i32 %185, 0
  %187 = xor i1 %186, true
  %188 = zext i1 %187 to i32
  store i32 %188, i32* %16, align 4
  %189 = load i32, i32* %16, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %184
  %192 = load i32, i32* @VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM, align 4
  br label %195

193:                                              ; preds = %184
  %194 = load i32, i32* @VLC_PLAYLIST_PLAYBACK_ORDER_NORMAL, align 4
  br label %195

195:                                              ; preds = %193, %191
  %196 = phi i32 [ %192, %191 ], [ %194, %193 ]
  store i32 %196, i32* %15, align 4
  %197 = load i32*, i32** %7, align 8
  %198 = load i32, i32* %15, align 4
  %199 = call i32 @vlc_playlist_SetPlaybackOrder(i32* %197, i32 %198)
  br label %200

200:                                              ; preds = %195, %181
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %202 = load i32, i32* %16, align 4
  %203 = icmp ne i32 %202, 0
  %204 = zext i1 %203 to i64
  %205 = select i1 %203, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)
  %206 = call i32 (%struct.TYPE_9__*, i8*, ...) @msg_print(%struct.TYPE_9__* %201, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8* %205)
  br label %298

207:                                              ; preds = %148
  %208 = load i8*, i8** %6, align 8
  %209 = call i32 @strcmp(i8* %208, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %242, label %211

211:                                              ; preds = %207
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %213 = load i64*, i64** %212, align 8
  %214 = call i64 @atoll(i64* %213)
  store i64 %214, i64* %17, align 8
  %215 = load i64, i64* %17, align 8
  store i64 %215, i64* %18, align 8
  %216 = load i32*, i32** %7, align 8
  %217 = call i64 @vlc_playlist_Count(i32* %216)
  store i64 %217, i64* %19, align 8
  %218 = load i64, i64* %17, align 8
  %219 = icmp slt i64 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %211
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %222 = call i8* @_(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.11, i64 0, i64 0))
  %223 = call i32 (%struct.TYPE_9__*, i8*, ...) @msg_print(%struct.TYPE_9__* %221, i8* %222)
  br label %241

224:                                              ; preds = %211
  %225 = load i64, i64* %18, align 8
  %226 = load i64, i64* %19, align 8
  %227 = icmp ult i64 %225, %226
  br i1 %227, label %228, label %232

228:                                              ; preds = %224
  %229 = load i32*, i32** %7, align 8
  %230 = load i64, i64* %18, align 8
  %231 = call i32 @vlc_playlist_PlayAt(i32* %229, i64 %230)
  br label %240

232:                                              ; preds = %224
  %233 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %234 = load i64, i64* %19, align 8
  %235 = call i32 @vlc_ngettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i64 %234)
  %236 = sext i32 %235 to i64
  %237 = inttoptr i64 %236 to i8*
  %238 = load i64, i64* %19, align 8
  %239 = call i32 (%struct.TYPE_9__*, i8*, ...) @msg_print(%struct.TYPE_9__* %233, i8* %237, i64 %238)
  br label %240

240:                                              ; preds = %232, %228
  br label %241

241:                                              ; preds = %240, %220
  br label %297

242:                                              ; preds = %207
  %243 = load i8*, i8** %6, align 8
  %244 = call i32 @strcmp(i8* %243, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %250

246:                                              ; preds = %242
  %247 = load i8*, i8** %6, align 8
  %248 = call i32 @strcmp(i8* %247, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %293, label %250

250:                                              ; preds = %246, %242
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %252 = load i64*, i64** %251, align 8
  %253 = icmp ne i64* %252, null
  br i1 %253, label %254, label %293

254:                                              ; preds = %250
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %256 = load i64*, i64** %255, align 8
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %293

259:                                              ; preds = %254
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %261 = load i64*, i64** %260, align 8
  %262 = call i32* @parse_MRL(i64* %261)
  store i32* %262, i32** %20, align 8
  %263 = load i32*, i32** %20, align 8
  %264 = icmp ne i32* %263, null
  br i1 %264, label %265, label %292

265:                                              ; preds = %259
  %266 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %267 = load i8*, i8** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %269 = load i64*, i64** %268, align 8
  %270 = call i32 (%struct.TYPE_9__*, i8*, ...) @msg_print(%struct.TYPE_9__* %266, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0), i8* %267, i64* %269)
  %271 = load i32*, i32** %7, align 8
  %272 = call i64 @vlc_playlist_Count(i32* %271)
  store i64 %272, i64* %21, align 8
  %273 = load i32*, i32** %7, align 8
  %274 = load i64, i64* %21, align 8
  %275 = load i32*, i32** %20, align 8
  %276 = call i32 @vlc_playlist_InsertOne(i32* %273, i64 %274, i32* %275)
  store i32 %276, i32* %22, align 4
  %277 = load i32*, i32** %20, align 8
  %278 = call i32 @input_item_Release(i32* %277)
  %279 = load i32, i32* %22, align 4
  %280 = load i32, i32* @VLC_SUCCESS, align 4
  %281 = icmp ne i32 %279, %280
  br i1 %281, label %282, label %283

282:                                              ; preds = %265
  br label %301

283:                                              ; preds = %265
  %284 = load i8*, i8** %6, align 8
  %285 = call i32 @strcmp(i8* %284, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %291, label %287

287:                                              ; preds = %283
  %288 = load i32*, i32** %7, align 8
  %289 = load i64, i64* %21, align 8
  %290 = call i32 @vlc_playlist_PlayAt(i32* %288, i64 %289)
  br label %291

291:                                              ; preds = %287, %283
  br label %292

292:                                              ; preds = %291, %259
  br label %296

293:                                              ; preds = %254, %250, %246
  %294 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %295 = call i32 (%struct.TYPE_9__*, i8*, ...) @msg_print(%struct.TYPE_9__* %294, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0))
  br label %296

296:                                              ; preds = %293, %292
  br label %297

297:                                              ; preds = %296, %241
  br label %298

298:                                              ; preds = %297, %200
  br label %299

299:                                              ; preds = %298, %141
  br label %300

300:                                              ; preds = %299, %82
  br label %301

301:                                              ; preds = %300, %282
  %302 = load i32*, i32** %7, align 8
  %303 = call i32 @vlc_playlist_Unlock(i32* %302)
  ret void
}

declare dso_local i32 @vlc_playlist_Lock(i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @vlc_playlist_GetPlaybackRepeat(i32*) #1

declare dso_local i64 @strlen(i64*) #1

declare dso_local i32 @strncmp(i64*, i8*, i32) #1

declare dso_local i32 @vlc_playlist_SetPlaybackRepeat(i32*, i32) #1

declare dso_local i32 @msg_print(%struct.TYPE_9__*, i8*, ...) #1

declare dso_local i32 @vlc_playlist_GetPlaybackOrder(i32*) #1

declare dso_local i32 @vlc_playlist_SetPlaybackOrder(i32*, i32) #1

declare dso_local i64 @atoll(i64*) #1

declare dso_local i64 @vlc_playlist_Count(i32*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @vlc_playlist_PlayAt(i32*, i64) #1

declare dso_local i32 @vlc_ngettext(i8*, i8*, i64) #1

declare dso_local i32* @parse_MRL(i64*) #1

declare dso_local i32 @vlc_playlist_InsertOne(i32*, i64, i32*) #1

declare dso_local i32 @input_item_Release(i32*) #1

declare dso_local i32 @vlc_playlist_Unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
