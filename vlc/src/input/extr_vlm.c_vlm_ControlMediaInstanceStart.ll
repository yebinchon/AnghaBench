; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_vlm.c_vlm_ControlMediaInstanceStart.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_vlm.c_vlm_ControlMediaInstanceStart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32, i8*, i32, i8**, i8**, i32, i64, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32*, i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"vod-media\00", align 1
@VLC_VAR_ADDRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"vod-session\00", align 1
@VLC_VAR_STRING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"sout=%s%s%s\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@VLC_INPUT_OPTION_TRUSTED = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"://\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i32, i8*)* @vlm_ControlMediaInstanceStart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlm_ControlMediaInstanceStart(i32* %0, i32 %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call %struct.TYPE_13__* @vlm_ControlMediaGetById(i32* %19, i32 %20)
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %12, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %23 = icmp ne %struct.TYPE_13__* %22, null
  br i1 %23, label %24, label %36

24:                                               ; preds = %5
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp sle i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30, %24, %5
  %37 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %37, i32* %6, align 4
  br label %307

38:                                               ; preds = %30
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 6
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i8*, i8** %11, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %44, %38
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 6
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %47
  %54 = load i8*, i8** %11, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %53, %44
  %57 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %57, i32* %6, align 4
  br label %307

58:                                               ; preds = %53, %47
  %59 = load i32, i32* %10, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp sge i32 %62, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %61, %58
  %69 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %69, i32* %6, align 4
  br label %307

70:                                               ; preds = %61
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = call %struct.TYPE_14__* @vlm_ControlMediaInstanceGetByName(%struct.TYPE_13__* %71, i8* %72)
  store %struct.TYPE_14__* %73, %struct.TYPE_14__** %13, align 8
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %75 = icmp ne %struct.TYPE_14__* %74, null
  br i1 %75, label %201, label %76

76:                                               ; preds = %70
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  store %struct.TYPE_12__* %78, %struct.TYPE_12__** %14, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = call %struct.TYPE_14__* @vlm_MediaInstanceNew(%struct.TYPE_13__* %79, i8* %80)
  store %struct.TYPE_14__* %81, %struct.TYPE_14__** %13, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %83 = icmp ne %struct.TYPE_14__* %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %76
  %85 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %85, i32* %6, align 4
  br label %307

86:                                               ; preds = %76
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 6
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %115

91:                                               ; preds = %86
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @VLC_VAR_ADDRESS, align 4
  %96 = call i32 @var_Create(i32 %94, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %95)
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @var_SetAddress(i32 %99, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %103)
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @VLC_VAR_STRING, align 4
  %109 = call i32 @var_Create(i32 %107, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %108)
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = load i8*, i8** %9, align 8
  %114 = call i32 @var_SetString(i32 %112, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %113)
  br label %115

115:                                              ; preds = %91, %86
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %123, label %120

120:                                              ; preds = %115
  %121 = load i8*, i8** %11, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %169

123:                                              ; preds = %120, %115
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 1
  %126 = load i8*, i8** %125, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  br label %133

132:                                              ; preds = %123
  br label %133

133:                                              ; preds = %132, %128
  %134 = phi i8* [ %131, %128 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %132 ]
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %143

139:                                              ; preds = %133
  %140 = load i8*, i8** %11, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %143

142:                                              ; preds = %139
  br label %148

143:                                              ; preds = %139, %133
  %144 = load i8*, i8** %11, align 8
  %145 = icmp ne i8* %144, null
  %146 = zext i1 %145 to i64
  %147 = select i1 %145, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  br label %148

148:                                              ; preds = %143, %142
  %149 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), %142 ], [ %147, %143 ]
  %150 = load i8*, i8** %11, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %152, label %154

152:                                              ; preds = %148
  %153 = load i8*, i8** %11, align 8
  br label %155

154:                                              ; preds = %148
  br label %155

155:                                              ; preds = %154, %152
  %156 = phi i8* [ %153, %152 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %154 ]
  %157 = call i32 @asprintf(i8** %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %134, i8* %149, i8* %156)
  %158 = icmp ne i32 %157, -1
  br i1 %158, label %159, label %168

159:                                              ; preds = %155
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i8*, i8** %15, align 8
  %164 = load i32, i32* @VLC_INPUT_OPTION_TRUSTED, align 4
  %165 = call i32 @input_item_AddOption(i32 %162, i8* %163, i32 %164)
  %166 = load i8*, i8** %15, align 8
  %167 = call i32 @free(i8* %166)
  br label %168

168:                                              ; preds = %159, %155
  br label %169

169:                                              ; preds = %168, %120
  store i32 0, i32* %16, align 4
  br label %170

170:                                              ; preds = %189, %169
  %171 = load i32, i32* %16, align 4
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = icmp slt i32 %171, %174
  br i1 %175, label %176, label %192

176:                                              ; preds = %170
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 3
  %182 = load i8**, i8*** %181, align 8
  %183 = load i32, i32* %16, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8*, i8** %182, i64 %184
  %186 = load i8*, i8** %185, align 8
  %187 = load i32, i32* @VLC_INPUT_OPTION_TRUSTED, align 4
  %188 = call i32 @input_item_AddOption(i32 %179, i8* %186, i32 %187)
  br label %189

189:                                              ; preds = %176
  %190 = load i32, i32* %16, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %16, align 4
  br label %170

192:                                              ; preds = %170
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %200 = call i32 @TAB_APPEND(i32 %195, i32 %198, %struct.TYPE_14__* %199)
  br label %201

201:                                              ; preds = %192, %70
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 2
  %204 = load i32*, i32** %203, align 8
  store i32* %204, i32** %17, align 8
  %205 = load i32*, i32** %17, align 8
  %206 = call i32 @vlc_player_Lock(i32* %205)
  %207 = load i32*, i32** %17, align 8
  %208 = call i64 @vlc_player_GetCurrentMedia(i32* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %239

210:                                              ; preds = %201
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* %10, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %216, label %225

216:                                              ; preds = %210
  %217 = load i32*, i32** %17, align 8
  %218 = call i64 @vlc_player_IsPaused(i32* %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %216
  %221 = load i32*, i32** %17, align 8
  %222 = call i32 @vlc_player_Resume(i32* %221)
  br label %223

223:                                              ; preds = %220, %216
  %224 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %224, i32* %6, align 4
  br label %307

225:                                              ; preds = %210
  %226 = load i32*, i32** %17, align 8
  %227 = call i32 @vlc_player_Stop(i32* %226)
  %228 = load i32*, i32** %17, align 8
  %229 = call i32 @vlc_player_Unlock(i32* %228)
  %230 = load i32*, i32** %7, align 8
  %231 = load i32, i32* %8, align 4
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 5
  %235 = load i32, i32* %234, align 8
  %236 = call i32 @vlm_SendEventMediaInstanceStopped(i32* %230, i32 %231, i32 %235)
  %237 = load i32*, i32** %17, align 8
  %238 = call i32 @vlc_player_Lock(i32* %237)
  br label %239

239:                                              ; preds = %225, %201
  %240 = load i32, i32* %10, align 4
  %241 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 0
  store i32 %240, i32* %242, align 8
  %243 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i32 0, i32 4
  %246 = load i8**, i8*** %245, align 8
  %247 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i8*, i8** %246, i64 %250
  %252 = load i8*, i8** %251, align 8
  %253 = call i32* @strstr(i8* %252, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %254 = icmp eq i32* %253, null
  br i1 %254, label %255, label %274

255:                                              ; preds = %239
  %256 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %257 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 4
  %259 = load i8**, i8*** %258, align 8
  %260 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i8*, i8** %259, i64 %263
  %265 = load i8*, i8** %264, align 8
  %266 = call i8* @vlc_path2uri(i8* %265, i32* null)
  store i8* %266, i8** %18, align 8
  %267 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %268 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = load i8*, i8** %18, align 8
  %271 = call i32 @input_item_SetURI(i32 %269, i8* %270)
  %272 = load i8*, i8** %18, align 8
  %273 = call i32 @free(i8* %272)
  br label %289

274:                                              ; preds = %239
  %275 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %276 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %279 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %279, i32 0, i32 4
  %281 = load i8**, i8*** %280, align 8
  %282 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %283 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i8*, i8** %281, i64 %285
  %287 = load i8*, i8** %286, align 8
  %288 = call i32 @input_item_SetURI(i32 %277, i8* %287)
  br label %289

289:                                              ; preds = %274, %255
  %290 = load i32*, i32** %17, align 8
  %291 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %292 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = call i32 @vlc_player_SetCurrentMedia(i32* %290, i32 %293)
  %295 = load i32*, i32** %17, align 8
  %296 = call i32 @vlc_player_Start(i32* %295)
  %297 = load i32*, i32** %17, align 8
  %298 = call i32 @vlc_player_Unlock(i32* %297)
  %299 = load i32*, i32** %7, align 8
  %300 = load i32, i32* %8, align 4
  %301 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %302 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %302, i32 0, i32 5
  %304 = load i32, i32* %303, align 8
  %305 = call i32 @vlm_SendEventMediaInstanceStarted(i32* %299, i32 %300, i32 %304)
  %306 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %306, i32* %6, align 4
  br label %307

307:                                              ; preds = %289, %223, %84, %68, %56, %36
  %308 = load i32, i32* %6, align 4
  ret i32 %308
}

declare dso_local %struct.TYPE_13__* @vlm_ControlMediaGetById(i32*, i32) #1

declare dso_local %struct.TYPE_14__* @vlm_ControlMediaInstanceGetByName(%struct.TYPE_13__*, i8*) #1

declare dso_local %struct.TYPE_14__* @vlm_MediaInstanceNew(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @var_Create(i32, i8*, i32) #1

declare dso_local i32 @var_SetAddress(i32, i8*, i32) #1

declare dso_local i32 @var_SetString(i32, i8*, i8*) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @input_item_AddOption(i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @TAB_APPEND(i32, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @vlc_player_Lock(i32*) #1

declare dso_local i64 @vlc_player_GetCurrentMedia(i32*) #1

declare dso_local i64 @vlc_player_IsPaused(i32*) #1

declare dso_local i32 @vlc_player_Resume(i32*) #1

declare dso_local i32 @vlc_player_Stop(i32*) #1

declare dso_local i32 @vlc_player_Unlock(i32*) #1

declare dso_local i32 @vlm_SendEventMediaInstanceStopped(i32*, i32, i32) #1

declare dso_local i32* @strstr(i8*, i8*) #1

declare dso_local i8* @vlc_path2uri(i8*, i32*) #1

declare dso_local i32 @input_item_SetURI(i32, i8*) #1

declare dso_local i32 @vlc_player_SetCurrentMedia(i32*, i32) #1

declare dso_local i32 @vlc_player_Start(i32*) #1

declare dso_local i32 @vlm_SendEventMediaInstanceStarted(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
