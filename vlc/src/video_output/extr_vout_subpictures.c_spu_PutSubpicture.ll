; ModuleID = '/home/carl/AnghaBench/vlc/src/video_output/extr_vout_subpictures.c_spu_PutSubpicture.c'
source_filename = "/home/carl/AnghaBench/vlc/src/video_output/extr_vout_subpictures.c_spu_PutSubpicture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i8*, i8*, i32, i32, i32, i32, i64 }
%struct.TYPE_16__ = type { i64, i8*, i8*, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32*, %struct.TYPE_17__* }
%struct.spu_channel = type { i32, i64 }

@SubFilterDelProxyCallbacks = common dso_local global i32 0, align 4
@SubFilterAddProxyCallbacks = common dso_local global i32 0, align 4
@VOUT_SPU_CHANNEL_OSD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"subpicture heap full\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spu_PutSubpicture(%struct.TYPE_18__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.spu_channel*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [2 x i8*], align 16
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  store %struct.TYPE_19__* %16, %struct.TYPE_19__** %5, align 8
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 2
  %19 = call i32 @vlc_mutex_lock(i32* %18)
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %6, align 8
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 0
  store i8* null, i8** %24, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 2
  %27 = call i32 @vlc_mutex_unlock(i32* %26)
  store i32 0, i32* %7, align 4
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 3
  %30 = call i32 @vlc_mutex_lock(i32* %29)
  %31 = load i8*, i8** %6, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %89

33:                                               ; preds = %2
  %34 = load i8*, i8** %6, align 8
  %35 = load i8, i8* %34, align 1
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %37, label %77

37:                                               ; preds = %33
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 6
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @SubFilterDelProxyCallbacks, align 4
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 6
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @filter_chain_ForEach(i32 %45, i32 %46, i64 %49)
  br label %51

51:                                               ; preds = %42, %37
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @filter_chain_Clear(i32 %54)
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 @filter_chain_AppendFromString(i32 %60, i8* %61)
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 6
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %51
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @SubFilterAddProxyCallbacks, align 4
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 6
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @filter_chain_ForEach(i32 %70, i32 %71, i64 %74)
  br label %76

76:                                               ; preds = %67, %51
  br label %82

77:                                               ; preds = %33
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @filter_chain_Clear(i32 %80)
  br label %82

82:                                               ; preds = %77, %76
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @filter_chain_IsEmpty(i32 %87)
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %82, %2
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 3
  %92 = call i32 @vlc_mutex_unlock(i32* %91)
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %134

95:                                               ; preds = %89
  %96 = load i8*, i8** %6, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %133

98:                                               ; preds = %95
  %99 = load i8*, i8** %6, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %133

103:                                              ; preds = %98
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 2
  %106 = call i32 @vlc_mutex_lock(i32* %105)
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %117

111:                                              ; preds = %103
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = load i8, i8* %114, align 1
  %116 = icmp ne i8 %115, 0
  br i1 %116, label %129, label %117

117:                                              ; preds = %111, %103
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @free(i8* %120)
  %122 = load i8*, i8** %6, align 8
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 1
  store i8* %122, i8** %124, align 8
  %125 = load i8*, i8** %6, align 8
  %126 = call i32 @strdup(i8* %125)
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 5
  store i32 %126, i32* %128, align 4
  store i8* null, i8** %6, align 8
  br label %129

129:                                              ; preds = %117, %111
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 2
  %132 = call i32 @vlc_mutex_unlock(i32* %131)
  br label %133

133:                                              ; preds = %129, %98, %95
  br label %134

134:                                              ; preds = %133, %89
  %135 = load i8*, i8** %6, align 8
  %136 = call i32 @free(i8* %135)
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 3
  %139 = call i32 @vlc_mutex_lock(i32* %138)
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %146 = call %struct.TYPE_16__* @filter_chain_SubFilter(i32 %144, %struct.TYPE_16__* %145)
  store %struct.TYPE_16__* %146, %struct.TYPE_16__** %4, align 8
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 3
  %149 = call i32 @vlc_mutex_unlock(i32* %148)
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %151 = icmp ne %struct.TYPE_16__* %150, null
  br i1 %151, label %152, label %157

152:                                              ; preds = %134
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp slt i64 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %152, %134
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %159 = icmp ne %struct.TYPE_16__* %158, null
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %162 = call i32 @subpicture_Delete(%struct.TYPE_16__* %161)
  br label %163

163:                                              ; preds = %160, %157
  br label %256

164:                                              ; preds = %152
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @VOUT_SPU_CHANNEL_OSD, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %164
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %172 = load i64, i64* @VOUT_SPU_CHANNEL_OSD, align 8
  %173 = call i32 @spu_ClearChannel(%struct.TYPE_18__* %171, i64 %172)
  br label %174

174:                                              ; preds = %170, %164
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 3
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %176, align 8
  store %struct.TYPE_17__* %177, %struct.TYPE_17__** %8, align 8
  br label %178

178:                                              ; preds = %188, %174
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %180 = icmp ne %struct.TYPE_17__* %179, null
  br i1 %180, label %181, label %192

181:                                              ; preds = %178
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = icmp eq i32* %184, null
  %186 = zext i1 %185 to i32
  %187 = call i32 @assert(i32 %186)
  br label %188

188:                                              ; preds = %181
  %189 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %190, align 8
  store %struct.TYPE_17__* %191, %struct.TYPE_17__** %8, align 8
  br label %178

192:                                              ; preds = %178
  %193 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %193, i32 0, i32 2
  %195 = call i32 @vlc_mutex_lock(i32* %194)
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = call %struct.spu_channel* @spu_GetChannel(%struct.TYPE_18__* %196, i64 %199)
  store %struct.spu_channel* %200, %struct.spu_channel** %9, align 8
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 2
  %203 = load i8*, i8** %202, align 8
  store i8* %203, i8** %10, align 8
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 1
  %206 = load i8*, i8** %205, align 8
  store i8* %206, i8** %11, align 8
  %207 = load %struct.spu_channel*, %struct.spu_channel** %9, align 8
  %208 = getelementptr inbounds %struct.spu_channel, %struct.spu_channel* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %234

211:                                              ; preds = %192
  %212 = call i8* (...) @vlc_tick_now()
  store i8* %212, i8** %12, align 8
  %213 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 0
  %214 = load i8*, i8** %10, align 8
  store i8* %214, i8** %213, align 8
  %215 = getelementptr inbounds i8*, i8** %213, i64 1
  %216 = load i8*, i8** %11, align 8
  store i8* %216, i8** %215, align 8
  %217 = load %struct.spu_channel*, %struct.spu_channel** %9, align 8
  %218 = getelementptr inbounds %struct.spu_channel, %struct.spu_channel* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = load i8*, i8** %12, align 8
  %221 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 0
  %222 = load %struct.spu_channel*, %struct.spu_channel** %9, align 8
  %223 = getelementptr inbounds %struct.spu_channel, %struct.spu_channel* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @vlc_clock_ConvertArrayToSystem(i64 %219, i8* %220, i8** %221, i32 2, i32 %224)
  %226 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 0
  %227 = load i8*, i8** %226, align 16
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %228, i32 0, i32 2
  store i8* %227, i8** %229, align 8
  %230 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 1
  %231 = load i8*, i8** %230, align 8
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 1
  store i8* %231, i8** %233, align 8
  br label %234

234:                                              ; preds = %211, %192
  %235 = load %struct.spu_channel*, %struct.spu_channel** %9, align 8
  %236 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %237 = load i8*, i8** %10, align 8
  %238 = load i8*, i8** %11, align 8
  %239 = call i64 @spu_channel_Push(%struct.spu_channel* %235, %struct.TYPE_16__* %236, i8* %237, i8* %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %249

241:                                              ; preds = %234
  %242 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %242, i32 0, i32 2
  %244 = call i32 @vlc_mutex_unlock(i32* %243)
  %245 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %246 = call i32 @msg_Err(%struct.TYPE_18__* %245, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %247 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %248 = call i32 @subpicture_Delete(%struct.TYPE_16__* %247)
  br label %256

249:                                              ; preds = %234
  %250 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %251 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %252 = call i32 @spu_PrerenderEnqueue(%struct.TYPE_19__* %250, %struct.TYPE_16__* %251)
  %253 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %253, i32 0, i32 2
  %255 = call i32 @vlc_mutex_unlock(i32* %254)
  br label %256

256:                                              ; preds = %249, %241, %163
  ret void
}

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @filter_chain_ForEach(i32, i32, i64) #1

declare dso_local i32 @filter_chain_Clear(i32) #1

declare dso_local i32 @filter_chain_AppendFromString(i32, i8*) #1

declare dso_local i32 @filter_chain_IsEmpty(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local %struct.TYPE_16__* @filter_chain_SubFilter(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @subpicture_Delete(%struct.TYPE_16__*) #1

declare dso_local i32 @spu_ClearChannel(%struct.TYPE_18__*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.spu_channel* @spu_GetChannel(%struct.TYPE_18__*, i64) #1

declare dso_local i8* @vlc_tick_now(...) #1

declare dso_local i32 @vlc_clock_ConvertArrayToSystem(i64, i8*, i8**, i32, i32) #1

declare dso_local i64 @spu_channel_Push(%struct.spu_channel*, %struct.TYPE_16__*, i8*, i8*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @spu_PrerenderEnqueue(%struct.TYPE_19__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
