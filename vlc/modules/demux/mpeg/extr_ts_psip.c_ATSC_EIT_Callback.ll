; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_psip.c_ATSC_EIT_Callback.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_psip.c_ATSC_EIT_Callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_38__ = type { i32, i32, %struct.TYPE_39__*, i32 }
%struct.TYPE_39__ = type { i64, i32, %struct.TYPE_39__* }
%struct.TYPE_37__ = type { i64, %struct.TYPE_48__ }
%struct.TYPE_48__ = type { %struct.TYPE_50__* }
%struct.TYPE_50__ = type { %struct.TYPE_51__*, %struct.TYPE_43__* }
%struct.TYPE_51__ = type { i32, i64, %struct.TYPE_44__*, i32, i32 }
%struct.TYPE_44__ = type { i32, i32 }
%struct.TYPE_43__ = type { i64 }
%struct.TYPE_40__ = type { i32, %struct.TYPE_41__* }
%struct.TYPE_41__ = type { i32 }
%struct.TYPE_49__ = type { i32, i64, %struct.TYPE_47__* }
%struct.TYPE_47__ = type { i32, i32 }
%struct.TYPE_36__ = type { %struct.TYPE_46__ }
%struct.TYPE_46__ = type { i32, i32 }
%struct.TYPE_42__ = type { %struct.TYPE_45__ }
%struct.TYPE_45__ = type { i32* }

@TYPE_PSIP = common dso_local global i64 0, align 8
@ATSC_BASE_PID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Received EIT for unknown channel %d\00", align 1
@ATSC_TABLE_TYPE_EIT_0 = common dso_local global i32 0, align 4
@ES_OUT_SET_GROUP_EPG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_38__*)* @ATSC_EIT_Callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ATSC_EIT_Callback(i8* %0, %struct.TYPE_38__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_38__*, align 8
  %5 = alloca %struct.TYPE_37__*, align 8
  %6 = alloca %struct.TYPE_40__*, align 8
  %7 = alloca %struct.TYPE_41__*, align 8
  %8 = alloca %struct.TYPE_37__*, align 8
  %9 = alloca %struct.TYPE_50__*, align 8
  %10 = alloca %struct.TYPE_51__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_37__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_49__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_39__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_36__*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_38__* %1, %struct.TYPE_38__** %4, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_37__*
  store %struct.TYPE_37__* %23, %struct.TYPE_37__** %5, align 8
  %24 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @TYPE_PSIP, align 8
  %28 = icmp ne i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %2
  %33 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @TYPE_PSIP, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %41 = call i32 @dvbpsi_atsc_DeleteEIT(%struct.TYPE_38__* %40)
  br label %291

42:                                               ; preds = %2
  %43 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_50__*, %struct.TYPE_50__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_43__*, %struct.TYPE_43__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to %struct.TYPE_40__*
  store %struct.TYPE_40__* %51, %struct.TYPE_40__** %6, align 8
  %52 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_41__*, %struct.TYPE_41__** %53, align 8
  store %struct.TYPE_41__* %54, %struct.TYPE_41__** %7, align 8
  %55 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %56 = load i32, i32* @ATSC_BASE_PID, align 4
  %57 = call %struct.TYPE_37__* @GetPID(%struct.TYPE_41__* %55, i32 %56)
  store %struct.TYPE_37__* %57, %struct.TYPE_37__** %8, align 8
  %58 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_50__*, %struct.TYPE_50__** %60, align 8
  store %struct.TYPE_50__* %61, %struct.TYPE_50__** %9, align 8
  %62 = load %struct.TYPE_50__*, %struct.TYPE_50__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_51__*, %struct.TYPE_51__** %63, align 8
  store %struct.TYPE_51__* %64, %struct.TYPE_51__** %10, align 8
  %65 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %91

69:                                               ; preds = %42
  %70 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @TYPE_PSIP, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %86, label %75

75:                                               ; preds = %69
  %76 = load %struct.TYPE_51__*, %struct.TYPE_51__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_44__*, %struct.TYPE_44__** %77, align 8
  %79 = icmp ne %struct.TYPE_44__* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load %struct.TYPE_51__*, %struct.TYPE_51__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  br label %86

86:                                               ; preds = %80, %75, %69
  %87 = phi i1 [ true, %75 ], [ true, %69 ], [ %85, %80 ]
  %88 = zext i1 %87 to i32
  %89 = call i64 @unlikely(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86, %42
  %92 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %93 = call i32 @dvbpsi_atsc_DeleteEIT(%struct.TYPE_38__* %92)
  br label %291

94:                                               ; preds = %86
  %95 = load %struct.TYPE_51__*, %struct.TYPE_51__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @ATSC_TranslateVChannelToProgram(i32 %97, i32 %100, i32* %11)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %111, label %103

103:                                              ; preds = %94
  %104 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %105 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @msg_Warn(%struct.TYPE_40__* %104, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %107)
  %109 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %110 = call i32 @dvbpsi_atsc_DeleteEIT(%struct.TYPE_38__* %109)
  br label %291

111:                                              ; preds = %94
  %112 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_51__*, %struct.TYPE_51__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_50__*, %struct.TYPE_50__** %119, align 8
  %121 = call %struct.TYPE_37__* @ATSC_GetSiblingxTTPID(i32* %113, i32 %116, %struct.TYPE_50__* %120)
  store %struct.TYPE_37__* %121, %struct.TYPE_37__** %12, align 8
  %122 = load %struct.TYPE_51__*, %struct.TYPE_51__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %122, i32 0, i32 2
  %124 = load %struct.TYPE_44__*, %struct.TYPE_44__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_51__*, %struct.TYPE_51__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_44__*, %struct.TYPE_44__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i64 @atsc_a65_GPSTimeToEpoch(i32 %126, i32 %131)
  store i64 %132, i64* %13, align 8
  %133 = load i64, i64* %13, align 8
  %134 = call i32 @EIT_DEBUG_TIMESHIFT(i64 %133)
  %135 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_50__*, %struct.TYPE_50__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_51__*, %struct.TYPE_51__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  store i32 %142, i32* %14, align 4
  %143 = load i32, i32* %14, align 4
  %144 = call i32 @assert(i32 %143)
  %145 = load i32, i32* %14, align 4
  %146 = load i32, i32* @ATSC_TABLE_TYPE_EIT_0, align 4
  %147 = sub nsw i32 %145, %146
  %148 = load i32, i32* %11, align 4
  %149 = call %struct.TYPE_49__* @vlc_epg_New(i32 %147, i32 %148)
  store %struct.TYPE_49__* %149, %struct.TYPE_49__** %15, align 8
  %150 = load %struct.TYPE_49__*, %struct.TYPE_49__** %15, align 8
  %151 = icmp ne %struct.TYPE_49__* %150, null
  br i1 %151, label %155, label %152

152:                                              ; preds = %111
  %153 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %154 = call i32 @dvbpsi_atsc_DeleteEIT(%struct.TYPE_38__* %153)
  br label %291

155:                                              ; preds = %111
  %156 = load i32, i32* %14, align 4
  %157 = load i32, i32* @ATSC_TABLE_TYPE_EIT_0, align 4
  %158 = icmp eq i32 %156, %157
  %159 = zext i1 %158 to i32
  %160 = load %struct.TYPE_49__*, %struct.TYPE_49__** %15, align 8
  %161 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 8
  %162 = load %struct.TYPE_51__*, %struct.TYPE_51__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %172, label %166

166:                                              ; preds = %155
  %167 = call i64 @atsc_a65_handle_New(i32* null)
  %168 = load %struct.TYPE_51__*, %struct.TYPE_51__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %168, i32 0, i32 1
  store i64 %167, i64* %169, align 8
  %170 = icmp ne i64 %167, 0
  br i1 %170, label %172, label %171

171:                                              ; preds = %166
  br label %280

172:                                              ; preds = %166, %155
  store i64 0, i64* %16, align 8
  %173 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %173, i32 0, i32 2
  %175 = load %struct.TYPE_39__*, %struct.TYPE_39__** %174, align 8
  store %struct.TYPE_39__* %175, %struct.TYPE_39__** %17, align 8
  br label %176

176:                                              ; preds = %221, %172
  %177 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %178 = icmp ne %struct.TYPE_39__* %177, null
  br i1 %178, label %179, label %225

179:                                              ; preds = %176
  store i32* null, i32** %18, align 8
  %180 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %181 = icmp ne %struct.TYPE_37__* %180, null
  br i1 %181, label %182, label %200

182:                                              ; preds = %179
  %183 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %184 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_50__*, %struct.TYPE_50__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_51__*, %struct.TYPE_51__** %187, align 8
  %189 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %193 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @toETMId(i32 %191, i32 %194)
  %196 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = call i32* @ATSC_ETTFindByETMId(%struct.TYPE_51__* %188, i32 %195, i32 %198)
  store i32* %199, i32** %18, align 8
  br label %200

200:                                              ; preds = %182, %179
  %201 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %202 = load %struct.TYPE_51__*, %struct.TYPE_51__** %10, align 8
  %203 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %204 = load i32*, i32** %18, align 8
  %205 = load %struct.TYPE_49__*, %struct.TYPE_49__** %15, align 8
  %206 = call i64 @ATSC_AddVLCEPGEvent(%struct.TYPE_40__* %201, %struct.TYPE_51__* %202, %struct.TYPE_39__* %203, i32* %204, %struct.TYPE_49__* %205)
  store i64 %206, i64* %19, align 8
  %207 = load i64, i64* %19, align 8
  %208 = load i64, i64* %13, align 8
  %209 = icmp sle i64 %207, %208
  br i1 %209, label %210, label %220

210:                                              ; preds = %200
  %211 = load i64, i64* %19, align 8
  %212 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %213 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = add nsw i64 %211, %214
  %216 = load i64, i64* %13, align 8
  %217 = icmp sgt i64 %215, %216
  br i1 %217, label %218, label %220

218:                                              ; preds = %210
  %219 = load i64, i64* %19, align 8
  store i64 %219, i64* %16, align 8
  br label %220

220:                                              ; preds = %218, %210, %200
  br label %221

221:                                              ; preds = %220
  %222 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %223 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %222, i32 0, i32 2
  %224 = load %struct.TYPE_39__*, %struct.TYPE_39__** %223, align 8
  store %struct.TYPE_39__* %224, %struct.TYPE_39__** %17, align 8
  br label %176

225:                                              ; preds = %176
  %226 = load %struct.TYPE_49__*, %struct.TYPE_49__** %15, align 8
  %227 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %266

230:                                              ; preds = %225
  %231 = load i64, i64* %16, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %266

233:                                              ; preds = %230
  %234 = load %struct.TYPE_49__*, %struct.TYPE_49__** %15, align 8
  %235 = load i64, i64* %16, align 8
  %236 = call i32 @vlc_epg_SetCurrent(%struct.TYPE_49__* %234, i64 %235)
  %237 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %237, i32 0, i32 0
  %239 = call %struct.TYPE_42__* @ts_pid_Get(i32* %238, i32 0)
  %240 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %240, i32 0, i32 0
  %242 = load i32*, i32** %241, align 8
  store i32* %242, i32** %20, align 8
  %243 = load i32*, i32** %20, align 8
  %244 = load i32, i32* %11, align 4
  %245 = call %struct.TYPE_36__* @ts_pat_Get_pmt(i32* %243, i32 %244)
  store %struct.TYPE_36__* %245, %struct.TYPE_36__** %21, align 8
  %246 = load %struct.TYPE_36__*, %struct.TYPE_36__** %21, align 8
  %247 = icmp ne %struct.TYPE_36__* %246, null
  br i1 %247, label %248, label %265

248:                                              ; preds = %233
  %249 = load %struct.TYPE_49__*, %struct.TYPE_49__** %15, align 8
  %250 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %249, i32 0, i32 2
  %251 = load %struct.TYPE_47__*, %struct.TYPE_47__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.TYPE_36__*, %struct.TYPE_36__** %21, align 8
  %255 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %255, i32 0, i32 1
  store i32 %253, i32* %256, align 4
  %257 = load %struct.TYPE_49__*, %struct.TYPE_49__** %15, align 8
  %258 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %257, i32 0, i32 2
  %259 = load %struct.TYPE_47__*, %struct.TYPE_47__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.TYPE_36__*, %struct.TYPE_36__** %21, align 8
  %263 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %263, i32 0, i32 0
  store i32 %261, i32* %264, align 4
  br label %265

265:                                              ; preds = %248, %233
  br label %266

266:                                              ; preds = %265, %230, %225
  %267 = load %struct.TYPE_49__*, %struct.TYPE_49__** %15, align 8
  %268 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %267, i32 0, i32 1
  %269 = load i64, i64* %268, align 8
  %270 = icmp sgt i64 %269, 0
  br i1 %270, label %271, label %279

271:                                              ; preds = %266
  %272 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* @ES_OUT_SET_GROUP_EPG, align 4
  %276 = load i32, i32* %11, align 4
  %277 = load %struct.TYPE_49__*, %struct.TYPE_49__** %15, align 8
  %278 = call i32 @es_out_Control(i32 %274, i32 %275, i32 %276, %struct.TYPE_49__* %277)
  br label %279

279:                                              ; preds = %271, %266
  br label %280

280:                                              ; preds = %279, %171
  %281 = load %struct.TYPE_49__*, %struct.TYPE_49__** %15, align 8
  %282 = call i32 @vlc_epg_Delete(%struct.TYPE_49__* %281)
  %283 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %284, i32 0, i32 0
  %286 = load %struct.TYPE_50__*, %struct.TYPE_50__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %286, i32 0, i32 0
  %288 = load %struct.TYPE_51__*, %struct.TYPE_51__** %287, align 8
  %289 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %290 = call i32 @ATSC_EITInsert(%struct.TYPE_51__* %288, %struct.TYPE_38__* %289)
  br label %291

291:                                              ; preds = %280, %152, %103, %91, %32
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @dvbpsi_atsc_DeleteEIT(%struct.TYPE_38__*) #1

declare dso_local %struct.TYPE_37__* @GetPID(%struct.TYPE_41__*, i32) #1

declare dso_local i32 @ATSC_TranslateVChannelToProgram(i32, i32, i32*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_40__*, i8*, i32) #1

declare dso_local %struct.TYPE_37__* @ATSC_GetSiblingxTTPID(i32*, i32, %struct.TYPE_50__*) #1

declare dso_local i64 @atsc_a65_GPSTimeToEpoch(i32, i32) #1

declare dso_local i32 @EIT_DEBUG_TIMESHIFT(i64) #1

declare dso_local %struct.TYPE_49__* @vlc_epg_New(i32, i32) #1

declare dso_local i64 @atsc_a65_handle_New(i32*) #1

declare dso_local i32* @ATSC_ETTFindByETMId(%struct.TYPE_51__*, i32, i32) #1

declare dso_local i32 @toETMId(i32, i32) #1

declare dso_local i64 @ATSC_AddVLCEPGEvent(%struct.TYPE_40__*, %struct.TYPE_51__*, %struct.TYPE_39__*, i32*, %struct.TYPE_49__*) #1

declare dso_local i32 @vlc_epg_SetCurrent(%struct.TYPE_49__*, i64) #1

declare dso_local %struct.TYPE_42__* @ts_pid_Get(i32*, i32) #1

declare dso_local %struct.TYPE_36__* @ts_pat_Get_pmt(i32*, i32) #1

declare dso_local i32 @es_out_Control(i32, i32, i32, %struct.TYPE_49__*) #1

declare dso_local i32 @vlc_epg_Delete(%struct.TYPE_49__*) #1

declare dso_local i32 @ATSC_EITInsert(%struct.TYPE_51__*, %struct.TYPE_38__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
