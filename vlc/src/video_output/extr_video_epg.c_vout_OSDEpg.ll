; ModuleID = '/home/carl/AnghaBench/vlc/src/video_output/extr_video_epg.c_vout_OSDEpg.c'
source_filename = "/home/carl/AnghaBench/vlc/src/video_output/extr_video_epg.c_vout_OSDEpg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64, i32*, %struct.TYPE_23__**, i32, i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64, i64, i64 }
%struct.TYPE_27__ = type { %struct.TYPE_22__*, i8*, i32, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_27__*, i32, i32, i32 }
%struct.TYPE_25__ = type { i32, i32, i32, i32, i64, i64, i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@vlc_meta_Title = common dso_local global i32 0, align 4
@vlc_meta_ArtworkURL = common dso_local global i32 0, align 4
@OSDEpgDestroy = common dso_local global i32 0, align 4
@OSDEpgUpdate = common dso_local global i32 0, align 4
@OSDEpgValidate = common dso_local global i32 0, align 4
@VOUT_SPU_CHANNEL_OSD = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vout_OSDEpg(i32* %0, %struct.TYPE_26__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_23__*, align 8
  %14 = alloca %struct.TYPE_23__*, align 8
  %15 = alloca %struct.TYPE_27__*, align 8
  %16 = alloca %struct.TYPE_24__, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_25__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %5, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %6, align 8
  %19 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %19, i32 0, i32 0
  %21 = call i32 @vlc_mutex_lock(i32* %20)
  %22 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  store %struct.TYPE_22__* %24, %struct.TYPE_22__** %8, align 8
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %26 = icmp ne %struct.TYPE_22__* %25, null
  br i1 %26, label %27, label %153

27:                                               ; preds = %2
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 5
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %29, align 8
  store %struct.TYPE_23__* %30, %struct.TYPE_23__** %9, align 8
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.TYPE_22__* @vlc_epg_New(i32 %33, i32 %36)
  store %struct.TYPE_22__* %37, %struct.TYPE_22__** %6, align 8
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %39 = icmp ne %struct.TYPE_22__* %38, null
  br i1 %39, label %40, label %152

40:                                               ; preds = %27
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %42 = icmp ne %struct.TYPE_23__* %41, null
  br i1 %42, label %43, label %64

43:                                               ; preds = %40
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %45 = call %struct.TYPE_23__* @vlc_epg_event_Duplicate(%struct.TYPE_23__* %44)
  store %struct.TYPE_23__* %45, %struct.TYPE_23__** %10, align 8
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %47 = icmp ne %struct.TYPE_23__* %46, null
  br i1 %47, label %48, label %63

48:                                               ; preds = %43
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %51 = call i32 @vlc_epg_AddEvent(%struct.TYPE_22__* %49, %struct.TYPE_23__* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %55 = call i32 @vlc_epg_event_Delete(%struct.TYPE_23__* %54)
  br label %62

56:                                               ; preds = %48
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @vlc_epg_SetCurrent(%struct.TYPE_22__* %57, i64 %60)
  br label %62

62:                                               ; preds = %56, %53
  br label %63

63:                                               ; preds = %62, %43
  br label %64

64:                                               ; preds = %63, %40
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %11, align 8
  store i64 0, i64* %12, align 8
  br label %65

65:                                               ; preds = %119, %64
  %66 = load i64, i64* %12, align 8
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ult i64 %66, %69
  br i1 %70, label %71, label %122

71:                                               ; preds = %65
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %73, align 8
  %75 = load i64, i64* %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %74, i64 %75
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %76, align 8
  store %struct.TYPE_23__* %77, %struct.TYPE_23__** %13, align 8
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %79 = icmp ne %struct.TYPE_23__* %78, null
  br i1 %79, label %80, label %88

80:                                               ; preds = %71
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp sgt i64 %83, %86
  br i1 %87, label %88, label %118

88:                                               ; preds = %80, %71
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %90 = icmp ne %struct.TYPE_23__* %89, null
  br i1 %90, label %91, label %111

91:                                               ; preds = %88
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %94, %97
  br i1 %98, label %99, label %118

99:                                               ; preds = %91
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %105, %108
  %110 = icmp sge i64 %102, %109
  br i1 %110, label %111, label %118

111:                                              ; preds = %99, %88
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 2
  %114 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %113, align 8
  %115 = load i64, i64* %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %114, i64 %115
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %116, align 8
  store %struct.TYPE_23__* %117, %struct.TYPE_23__** %11, align 8
  br label %118

118:                                              ; preds = %111, %99, %91, %80
  br label %119

119:                                              ; preds = %118
  %120 = load i64, i64* %12, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %12, align 8
  br label %65

122:                                              ; preds = %65
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %124 = icmp ne %struct.TYPE_23__* %123, null
  br i1 %124, label %125, label %136

125:                                              ; preds = %122
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %127 = call %struct.TYPE_23__* @vlc_epg_event_Duplicate(%struct.TYPE_23__* %126)
  store %struct.TYPE_23__* %127, %struct.TYPE_23__** %14, align 8
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %130 = call i32 @vlc_epg_AddEvent(%struct.TYPE_22__* %128, %struct.TYPE_23__* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %125
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %134 = call i32 @vlc_epg_event_Delete(%struct.TYPE_23__* %133)
  br label %135

135:                                              ; preds = %132, %125
  br label %136

136:                                              ; preds = %135, %122
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp ugt i64 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %136
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = call i32* @strdup(i32* %144)
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 1
  store i32* %145, i32** %147, align 8
  br label %151

148:                                              ; preds = %136
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %150 = call i32 @vlc_epg_Delete(%struct.TYPE_22__* %149)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %6, align 8
  br label %151

151:                                              ; preds = %148, %141
  br label %152

152:                                              ; preds = %151, %27
  br label %153

153:                                              ; preds = %152, %2
  %154 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* %7, align 4
  %157 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %157, i32 0, i32 0
  %159 = call i32 @vlc_mutex_unlock(i32* %158)
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %161 = icmp eq %struct.TYPE_22__* %160, null
  br i1 %161, label %162, label %164

162:                                              ; preds = %153
  %163 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %163, i32* %3, align 4
  br label %253

164:                                              ; preds = %153
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = icmp eq i32* %167, null
  br i1 %168, label %169, label %176

169:                                              ; preds = %164
  %170 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %171 = load i32, i32* @vlc_meta_Title, align 4
  %172 = call i8* @input_item_GetMeta(%struct.TYPE_26__* %170, i32 %171)
  %173 = bitcast i8* %172 to i32*
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %174, i32 0, i32 1
  store i32* %173, i32** %175, align 8
  br label %176

176:                                              ; preds = %169, %164
  %177 = call %struct.TYPE_27__* @malloc(i32 24)
  store %struct.TYPE_27__* %177, %struct.TYPE_27__** %15, align 8
  %178 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %179 = icmp ne %struct.TYPE_27__* %178, null
  br i1 %179, label %184, label %180

180:                                              ; preds = %176
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %182 = call i32 @vlc_epg_Delete(%struct.TYPE_22__* %181)
  %183 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %183, i32* %3, align 4
  br label %253

184:                                              ; preds = %176
  %185 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %186 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %187 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %186, i32 0, i32 0
  store %struct.TYPE_22__* %185, %struct.TYPE_22__** %187, align 8
  %188 = load i32*, i32** %4, align 8
  %189 = call i32 @VLC_OBJECT(i32* %188)
  %190 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %191 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %190, i32 0, i32 3
  store i32 %189, i32* %191, align 4
  %192 = load i32, i32* %7, align 4
  %193 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %194 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %193, i32 0, i32 2
  store i32 %192, i32* %194, align 8
  %195 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %196 = load i32, i32* @vlc_meta_ArtworkURL, align 4
  %197 = call i8* @input_item_GetMeta(%struct.TYPE_26__* %195, i32 %196)
  %198 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %199 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %198, i32 0, i32 1
  store i8* %197, i8** %199, align 8
  %200 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %201 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %200, i32 0, i32 1
  %202 = load i8*, i8** %201, align 8
  %203 = icmp ne i8* %202, null
  br i1 %203, label %208, label %204

204:                                              ; preds = %184
  %205 = call i8* (...) @GetDefaultArtUri()
  %206 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %207 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %206, i32 0, i32 1
  store i8* %205, i8** %207, align 8
  br label %208

208:                                              ; preds = %204, %184
  %209 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 0
  %210 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  store %struct.TYPE_27__* %210, %struct.TYPE_27__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 1
  %212 = load i32, i32* @OSDEpgDestroy, align 4
  store i32 %212, i32* %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 2
  %214 = load i32, i32* @OSDEpgUpdate, align 4
  store i32 %214, i32* %213, align 4
  %215 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 3
  %216 = load i32, i32* @OSDEpgValidate, align 4
  store i32 %216, i32* %215, align 8
  %217 = call i64 (...) @vlc_tick_now()
  store i64 %217, i64* %17, align 8
  %218 = call %struct.TYPE_25__* @subpicture_New(%struct.TYPE_24__* %16)
  store %struct.TYPE_25__* %218, %struct.TYPE_25__** %18, align 8
  %219 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %220 = icmp ne %struct.TYPE_25__* %219, null
  br i1 %220, label %229, label %221

221:                                              ; preds = %208
  %222 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %223 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_22__*, %struct.TYPE_22__** %223, align 8
  %225 = call i32 @vlc_epg_Delete(%struct.TYPE_22__* %224)
  %226 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %227 = call i32 @free(%struct.TYPE_27__* %226)
  %228 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %228, i32* %3, align 4
  br label %253

229:                                              ; preds = %208
  %230 = load i32, i32* @VOUT_SPU_CHANNEL_OSD, align 4
  %231 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %232 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %231, i32 0, i32 6
  store i32 %230, i32* %232, align 8
  %233 = load i64, i64* %17, align 8
  %234 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %235 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %234, i32 0, i32 5
  store i64 %233, i64* %235, align 8
  %236 = load i64, i64* %17, align 8
  %237 = call i64 @VLC_TICK_FROM_SEC(i32 3)
  %238 = add nsw i64 %236, %237
  %239 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %240 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %239, i32 0, i32 4
  store i64 %238, i64* %240, align 8
  %241 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %242 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %241, i32 0, i32 0
  store i32 1, i32* %242, align 8
  %243 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %244 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %243, i32 0, i32 1
  store i32 0, i32* %244, align 4
  %245 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %246 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %245, i32 0, i32 2
  store i32 1, i32* %246, align 8
  %247 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %248 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %247, i32 0, i32 3
  store i32 0, i32* %248, align 4
  %249 = load i32*, i32** %4, align 8
  %250 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %251 = call i32 @vout_PutSubpicture(i32* %249, %struct.TYPE_25__* %250)
  %252 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %252, i32* %3, align 4
  br label %253

253:                                              ; preds = %229, %221, %180, %162
  %254 = load i32, i32* %3, align 4
  ret i32 %254
}

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local %struct.TYPE_22__* @vlc_epg_New(i32, i32) #1

declare dso_local %struct.TYPE_23__* @vlc_epg_event_Duplicate(%struct.TYPE_23__*) #1

declare dso_local i32 @vlc_epg_AddEvent(%struct.TYPE_22__*, %struct.TYPE_23__*) #1

declare dso_local i32 @vlc_epg_event_Delete(%struct.TYPE_23__*) #1

declare dso_local i32 @vlc_epg_SetCurrent(%struct.TYPE_22__*, i64) #1

declare dso_local i32* @strdup(i32*) #1

declare dso_local i32 @vlc_epg_Delete(%struct.TYPE_22__*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i8* @input_item_GetMeta(%struct.TYPE_26__*, i32) #1

declare dso_local %struct.TYPE_27__* @malloc(i32) #1

declare dso_local i32 @VLC_OBJECT(i32*) #1

declare dso_local i8* @GetDefaultArtUri(...) #1

declare dso_local i64 @vlc_tick_now(...) #1

declare dso_local %struct.TYPE_25__* @subpicture_New(%struct.TYPE_24__*) #1

declare dso_local i32 @free(%struct.TYPE_27__*) #1

declare dso_local i64 @VLC_TICK_FROM_SEC(i32) #1

declare dso_local i32 @vout_PutSubpicture(i32*, %struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
