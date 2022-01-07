; ModuleID = '/home/carl/AnghaBench/vlc/src/video_output/extr_video_output.c_ThreadDisplayRenderPicture.c'
source_filename = "/home/carl/AnghaBench/vlc/src/video_output/extr_video_output.c_ThreadDisplayRenderPicture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_77__ = type { %struct.TYPE_59__* }
%struct.TYPE_59__ = type { i64, i32, i32, i32, i32, %struct.TYPE_72__, %struct.TYPE_66__, %struct.TYPE_71__*, i32, i32, i32, %struct.TYPE_73__, %struct.TYPE_60__*, %struct.TYPE_69__ }
%struct.TYPE_72__ = type { i64, %struct.TYPE_70__* }
%struct.TYPE_70__ = type { i32 }
%struct.TYPE_66__ = type { i32, i32 }
%struct.TYPE_71__ = type { %struct.TYPE_68__ }
%struct.TYPE_68__ = type { %struct.TYPE_65__ }
%struct.TYPE_65__ = type { i64 }
%struct.TYPE_73__ = type { i64, i64 }
%struct.TYPE_60__ = type { i32 (%struct.TYPE_60__*, %struct.TYPE_63__*, i32*, i64)*, %struct.TYPE_62__, %struct.TYPE_74__, %struct.TYPE_64__*, %struct.TYPE_62__ }
%struct.TYPE_63__ = type { i32, %struct.TYPE_67__ }
%struct.TYPE_67__ = type { i32, i32 }
%struct.TYPE_74__ = type { i64*, i32 }
%struct.TYPE_64__ = type { %struct.TYPE_76__ }
%struct.TYPE_76__ = type { %struct.TYPE_75__ }
%struct.TYPE_75__ = type { i32, i32 }
%struct.TYPE_62__ = type { i64, i32, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_69__ = type { i32, i32 }
%struct.TYPE_61__ = type { i32, i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Unsupported timestamp modifications done by chain_interactive\00", align 1
@INT64_MAX = common dso_local global i64 0, align 8
@ORIENT_NORMAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [62 x i8] c"Failed to create blending filter, OSD/Subtitles will not work\00", align 1
@VOUT_REDISPLAY_DELAY = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_77__*, i32)* @ThreadDisplayRenderPicture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ThreadDisplayRenderPicture(%struct.TYPE_77__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_77__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_59__*, align 8
  %7 = alloca %struct.TYPE_63__*, align 8
  %8 = alloca %struct.TYPE_63__*, align 8
  %9 = alloca %struct.TYPE_60__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca %struct.TYPE_62__, align 8
  %17 = alloca %struct.TYPE_61__, align 4
  %18 = alloca %struct.TYPE_62__, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_63__*, align 8
  %21 = alloca %struct.TYPE_63__*, align 8
  %22 = alloca %struct.TYPE_63__*, align 8
  %23 = alloca %struct.TYPE_63__*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.TYPE_77__* %0, %struct.TYPE_77__** %4, align 8
  store i32 %1, i32* %5, align 4
  %28 = load %struct.TYPE_77__*, %struct.TYPE_77__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_59__*, %struct.TYPE_59__** %29, align 8
  store %struct.TYPE_59__* %30, %struct.TYPE_59__** %6, align 8
  %31 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_70__*, %struct.TYPE_70__** %33, align 8
  %35 = call %struct.TYPE_63__* @picture_Hold(%struct.TYPE_70__* %34)
  store %struct.TYPE_63__* %35, %struct.TYPE_63__** %7, align 8
  %36 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %36, i32 0, i32 6
  %38 = call i32 @vout_chrono_Start(%struct.TYPE_66__* %37)
  %39 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %39, i32 0, i32 13
  %41 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %40, i32 0, i32 0
  %42 = call i32 @vlc_mutex_lock(i32* %41)
  %43 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %43, i32 0, i32 13
  %45 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_63__*, %struct.TYPE_63__** %7, align 8
  %48 = call %struct.TYPE_63__* @filter_chain_VideoFilter(i32 %46, %struct.TYPE_63__* %47)
  store %struct.TYPE_63__* %48, %struct.TYPE_63__** %8, align 8
  %49 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %49, i32 0, i32 13
  %51 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %50, i32 0, i32 0
  %52 = call i32 @vlc_mutex_unlock(i32* %51)
  %53 = load %struct.TYPE_63__*, %struct.TYPE_63__** %8, align 8
  %54 = icmp ne %struct.TYPE_63__* %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %2
  %56 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %56, i32* %3, align 4
  br label %561

57:                                               ; preds = %2
  %58 = load %struct.TYPE_63__*, %struct.TYPE_63__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_70__*, %struct.TYPE_70__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %60, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %57
  %69 = load %struct.TYPE_77__*, %struct.TYPE_77__** %4, align 8
  %70 = call i32 @msg_Warn(%struct.TYPE_77__* %69, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %57
  %72 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %72, i32 0, i32 12
  %74 = load %struct.TYPE_60__*, %struct.TYPE_60__** %73, align 8
  store %struct.TYPE_60__* %74, %struct.TYPE_60__** %9, align 8
  %75 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %75, i32 0, i32 2
  %77 = call i32 @vlc_mutex_lock(i32* %76)
  %78 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %78, i32 0, i32 8
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @vout_snapshot_IsRequested(i32 %80)
  store i32 %81, i32* %10, align 4
  %82 = call i64 (...) @vlc_tick_now()
  store i64 %82, i64* %11, align 8
  %83 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %83, i32 0, i32 11
  %85 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %71
  %89 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %89, i32 0, i32 11
  %91 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %12, align 8
  br label %124

93:                                               ; preds = %71
  %94 = load %struct.TYPE_63__*, %struct.TYPE_63__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp sle i32 %96, 1
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = load i64, i64* %11, align 8
  br label %113

100:                                              ; preds = %93
  %101 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = load i64, i64* %11, align 8
  %105 = load %struct.TYPE_63__*, %struct.TYPE_63__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = call i64 @vlc_clock_ConvertToSystem(i32 %103, i64 %104, i64 %108, i32 %111)
  br label %113

113:                                              ; preds = %100, %98
  %114 = phi i64 [ %99, %98 ], [ %112, %100 ]
  store i64 %114, i64* %12, align 8
  %115 = load i64, i64* %12, align 8
  %116 = load i64, i64* @INT64_MAX, align 8
  %117 = icmp eq i64 %115, %116
  %118 = zext i1 %117 to i32
  %119 = call i64 @unlikely(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %113
  %122 = load i64, i64* %11, align 8
  store i64 %122, i64* %12, align 8
  store i32 1, i32* %5, align 4
  br label %123

123:                                              ; preds = %121, %113
  br label %124

124:                                              ; preds = %123, %88
  %125 = load i32, i32* %10, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %140, label %127

127:                                              ; preds = %124
  %128 = load %struct.TYPE_60__*, %struct.TYPE_60__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %129, i32 0, i32 0
  %131 = load i64*, i64** %130, align 8
  %132 = icmp ne i64* %131, null
  br i1 %132, label %133, label %140

133:                                              ; preds = %127
  %134 = load %struct.TYPE_60__*, %struct.TYPE_60__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %135, i32 0, i32 0
  %137 = load i64*, i64** %136, align 8
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br label %140

140:                                              ; preds = %133, %127, %124
  %141 = phi i1 [ false, %127 ], [ false, %124 ], [ %139, %133 ]
  %142 = zext i1 %141 to i32
  store i32 %142, i32* %13, align 4
  %143 = load i32, i32* %13, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %152, label %145

145:                                              ; preds = %140
  %146 = load %struct.TYPE_60__*, %struct.TYPE_60__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @ORIENT_NORMAL, align 8
  %151 = icmp eq i64 %149, %150
  br label %152

152:                                              ; preds = %145, %140
  %153 = phi i1 [ false, %140 ], [ %151, %145 ]
  %154 = zext i1 %153 to i32
  store i32 %154, i32* %14, align 4
  %155 = load i32, i32* %13, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %209

157:                                              ; preds = %152
  %158 = load %struct.TYPE_60__*, %struct.TYPE_60__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_60__*, %struct.TYPE_60__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %160, i32 0, i32 3
  %162 = load %struct.TYPE_64__*, %struct.TYPE_64__** %161, align 8
  %163 = call i32 @vout_display_PlacePicture(%struct.TYPE_61__* %17, %struct.TYPE_62__* %159, %struct.TYPE_64__* %162)
  %164 = load %struct.TYPE_60__*, %struct.TYPE_60__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %164, i32 0, i32 1
  %166 = bitcast %struct.TYPE_62__* %16 to i8*
  %167 = bitcast %struct.TYPE_62__* %165 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %166, i8* align 8 %167, i64 40, i1 false)
  %168 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %16, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %16, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = mul nsw i32 %169, %171
  %173 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %17, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %17, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = mul nsw i32 %174, %176
  %178 = icmp slt i32 %172, %177
  br i1 %178, label %179, label %204

179:                                              ; preds = %157
  %180 = load %struct.TYPE_60__*, %struct.TYPE_60__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %180, i32 0, i32 3
  %182 = load %struct.TYPE_64__*, %struct.TYPE_64__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %16, i32 0, i32 7
  store i32 %186, i32* %187, align 4
  %188 = load %struct.TYPE_60__*, %struct.TYPE_60__** %9, align 8
  %189 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %188, i32 0, i32 3
  %190 = load %struct.TYPE_64__*, %struct.TYPE_64__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %16, i32 0, i32 6
  store i32 %194, i32* %195, align 8
  %196 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %17, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %16, i32 0, i32 3
  store i32 %197, i32* %198, align 8
  %199 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %16, i32 0, i32 1
  store i32 %197, i32* %199, align 8
  %200 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %17, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %16, i32 0, i32 4
  store i32 %201, i32* %202, align 4
  %203 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %16, i32 0, i32 2
  store i32 %201, i32* %203, align 4
  br label %204

204:                                              ; preds = %179, %157
  %205 = load %struct.TYPE_60__*, %struct.TYPE_60__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %206, i32 0, i32 0
  %208 = load i64*, i64** %207, align 8
  store i64* %208, i64** %15, align 8
  br label %294

209:                                              ; preds = %152
  %210 = load i32, i32* %14, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %217

212:                                              ; preds = %209
  %213 = load %struct.TYPE_60__*, %struct.TYPE_60__** %9, align 8
  %214 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %213, i32 0, i32 1
  %215 = bitcast %struct.TYPE_62__* %16 to i8*
  %216 = bitcast %struct.TYPE_62__* %214 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %215, i8* align 8 %216, i64 40, i1 false)
  br label %238

217:                                              ; preds = %209
  %218 = load %struct.TYPE_60__*, %struct.TYPE_60__** %9, align 8
  %219 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %218, i32 0, i32 4
  %220 = bitcast %struct.TYPE_62__* %16 to i8*
  %221 = bitcast %struct.TYPE_62__* %219 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %220, i8* align 8 %221, i64 40, i1 false)
  %222 = load %struct.TYPE_60__*, %struct.TYPE_60__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %222, i32 0, i32 3
  %224 = load %struct.TYPE_64__*, %struct.TYPE_64__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %16, i32 0, i32 7
  store i32 %228, i32* %229, align 4
  %230 = load %struct.TYPE_60__*, %struct.TYPE_60__** %9, align 8
  %231 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %230, i32 0, i32 3
  %232 = load %struct.TYPE_64__*, %struct.TYPE_64__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %16, i32 0, i32 6
  store i32 %236, i32* %237, align 8
  br label %238

238:                                              ; preds = %217, %212
  store i64* null, i64** %15, align 8
  %239 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %239, i32 0, i32 7
  %241 = load %struct.TYPE_71__*, %struct.TYPE_71__** %240, align 8
  %242 = icmp ne %struct.TYPE_71__* %241, null
  br i1 %242, label %243, label %263

243:                                              ; preds = %238
  %244 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %244, i32 0, i32 7
  %246 = load %struct.TYPE_71__*, %struct.TYPE_71__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %16, i32 0, i32 5
  %252 = load i64, i64* %251, align 8
  %253 = icmp ne i64 %250, %252
  br i1 %253, label %254, label %263

254:                                              ; preds = %243
  %255 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %256 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %255, i32 0, i32 7
  %257 = load %struct.TYPE_71__*, %struct.TYPE_71__** %256, align 8
  %258 = call i32 @filter_DeleteBlend(%struct.TYPE_71__* %257)
  %259 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %260 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %259, i32 0, i32 7
  store %struct.TYPE_71__* null, %struct.TYPE_71__** %260, align 8
  %261 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %261, i32 0, i32 0
  store i64 0, i64* %262, align 8
  br label %263

263:                                              ; preds = %254, %243, %238
  %264 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %264, i32 0, i32 7
  %266 = load %struct.TYPE_71__*, %struct.TYPE_71__** %265, align 8
  %267 = icmp ne %struct.TYPE_71__* %266, null
  br i1 %267, label %293, label %268

268:                                              ; preds = %263
  %269 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %16, i32 0, i32 5
  %273 = load i64, i64* %272, align 8
  %274 = icmp ne i64 %271, %273
  br i1 %274, label %275, label %293

275:                                              ; preds = %268
  %276 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %16, i32 0, i32 5
  %277 = load i64, i64* %276, align 8
  %278 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %279 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %278, i32 0, i32 0
  store i64 %277, i64* %279, align 8
  %280 = load %struct.TYPE_77__*, %struct.TYPE_77__** %4, align 8
  %281 = call i32 @VLC_OBJECT(%struct.TYPE_77__* %280)
  %282 = call %struct.TYPE_71__* @filter_NewBlend(i32 %281, %struct.TYPE_62__* %16)
  %283 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %283, i32 0, i32 7
  store %struct.TYPE_71__* %282, %struct.TYPE_71__** %284, align 8
  %285 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %285, i32 0, i32 7
  %287 = load %struct.TYPE_71__*, %struct.TYPE_71__** %286, align 8
  %288 = icmp ne %struct.TYPE_71__* %287, null
  br i1 %288, label %292, label %289

289:                                              ; preds = %275
  %290 = load %struct.TYPE_77__*, %struct.TYPE_77__** %4, align 8
  %291 = call i32 @msg_Err(%struct.TYPE_77__* %290, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  br label %292

292:                                              ; preds = %289, %275
  br label %293

293:                                              ; preds = %292, %268, %263
  br label %294

294:                                              ; preds = %293, %204
  %295 = call i32 @video_format_ApplyRotation(%struct.TYPE_62__* %18, %struct.TYPE_62__* %16)
  %296 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %297 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %296, i32 0, i32 10
  %298 = load i32, i32* %297, align 8
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %301, label %300

300:                                              ; preds = %294
  br label %316

301:                                              ; preds = %294
  %302 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %303 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %302, i32 0, i32 10
  %304 = load i32, i32* %303, align 8
  %305 = load i64*, i64** %15, align 8
  %306 = load %struct.TYPE_60__*, %struct.TYPE_60__** %9, align 8
  %307 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %306, i32 0, i32 1
  %308 = load i64, i64* %11, align 8
  %309 = load i64, i64* %12, align 8
  %310 = load i32, i32* %10, align 4
  %311 = load %struct.TYPE_60__*, %struct.TYPE_60__** %9, align 8
  %312 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %311, i32 0, i32 2
  %313 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 8
  %315 = call i32* @spu_Render(i32 %304, i64* %305, %struct.TYPE_62__* %18, %struct.TYPE_62__* %307, i64 %308, i64 %309, i32 %310, i32 %314)
  br label %316

316:                                              ; preds = %301, %300
  %317 = phi i32* [ null, %300 ], [ %315, %301 ]
  store i32* %317, i32** %19, align 8
  %318 = load %struct.TYPE_63__*, %struct.TYPE_63__** %8, align 8
  store %struct.TYPE_63__* %318, %struct.TYPE_63__** %20, align 8
  %319 = load %struct.TYPE_63__*, %struct.TYPE_63__** %20, align 8
  store %struct.TYPE_63__* %319, %struct.TYPE_63__** %21, align 8
  %320 = load i32, i32* %14, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %378

322:                                              ; preds = %316
  %323 = load i32*, i32** %19, align 8
  %324 = icmp ne i32* %323, null
  br i1 %324, label %325, label %378

325:                                              ; preds = %322
  %326 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %327 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %326, i32 0, i32 7
  %328 = load %struct.TYPE_71__*, %struct.TYPE_71__** %327, align 8
  %329 = icmp ne %struct.TYPE_71__* %328, null
  br i1 %329, label %330, label %375

330:                                              ; preds = %325
  %331 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %332 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %331, i32 0, i32 9
  %333 = load i32, i32* %332, align 4
  %334 = call %struct.TYPE_63__* @picture_pool_Get(i32 %333)
  store %struct.TYPE_63__* %334, %struct.TYPE_63__** %22, align 8
  %335 = load %struct.TYPE_63__*, %struct.TYPE_63__** %22, align 8
  %336 = icmp ne %struct.TYPE_63__* %335, null
  br i1 %336, label %337, label %374

337:                                              ; preds = %330
  %338 = load %struct.TYPE_63__*, %struct.TYPE_63__** %22, align 8
  %339 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %338, i32 0, i32 1
  %340 = load %struct.TYPE_63__*, %struct.TYPE_63__** %8, align 8
  %341 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %340, i32 0, i32 1
  %342 = call i32 @video_format_CopyCropAr(%struct.TYPE_67__* %339, %struct.TYPE_67__* %341)
  %343 = load %struct.TYPE_63__*, %struct.TYPE_63__** %22, align 8
  %344 = load %struct.TYPE_63__*, %struct.TYPE_63__** %8, align 8
  %345 = call i32 @picture_Copy(%struct.TYPE_63__* %343, %struct.TYPE_63__* %344)
  %346 = load %struct.TYPE_63__*, %struct.TYPE_63__** %22, align 8
  %347 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %348 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %347, i32 0, i32 7
  %349 = load %struct.TYPE_71__*, %struct.TYPE_71__** %348, align 8
  %350 = load i32*, i32** %19, align 8
  %351 = call i64 @picture_BlendSubpicture(%struct.TYPE_63__* %346, %struct.TYPE_71__* %349, i32* %350)
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %357

353:                                              ; preds = %337
  %354 = load %struct.TYPE_63__*, %struct.TYPE_63__** %20, align 8
  %355 = call i32 @picture_Release(%struct.TYPE_63__* %354)
  %356 = load %struct.TYPE_63__*, %struct.TYPE_63__** %22, align 8
  store %struct.TYPE_63__* %356, %struct.TYPE_63__** %20, align 8
  store %struct.TYPE_63__* %356, %struct.TYPE_63__** %21, align 8
  br label %373

357:                                              ; preds = %337
  %358 = load i32, i32* %10, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %370

360:                                              ; preds = %357
  %361 = load %struct.TYPE_77__*, %struct.TYPE_77__** %4, align 8
  %362 = load %struct.TYPE_63__*, %struct.TYPE_63__** %22, align 8
  %363 = load i32*, i32** %19, align 8
  %364 = call %struct.TYPE_63__* @ConvertRGB32AndBlend(%struct.TYPE_77__* %361, %struct.TYPE_63__* %362, i32* %363)
  store %struct.TYPE_63__* %364, %struct.TYPE_63__** %23, align 8
  %365 = load %struct.TYPE_63__*, %struct.TYPE_63__** %23, align 8
  %366 = icmp ne %struct.TYPE_63__* %365, null
  br i1 %366, label %367, label %369

367:                                              ; preds = %360
  %368 = load %struct.TYPE_63__*, %struct.TYPE_63__** %23, align 8
  store %struct.TYPE_63__* %368, %struct.TYPE_63__** %21, align 8
  br label %369

369:                                              ; preds = %367, %360
  br label %370

370:                                              ; preds = %369, %357
  %371 = load %struct.TYPE_63__*, %struct.TYPE_63__** %22, align 8
  %372 = call i32 @picture_Release(%struct.TYPE_63__* %371)
  br label %373

373:                                              ; preds = %370, %353
  br label %374

374:                                              ; preds = %373, %330
  br label %375

375:                                              ; preds = %374, %325
  %376 = load i32*, i32** %19, align 8
  %377 = call i32 @subpicture_Delete(i32* %376)
  store i32* null, i32** %19, align 8
  br label %378

378:                                              ; preds = %375, %322, %316
  %379 = load i32, i32* %10, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %398

381:                                              ; preds = %378
  %382 = load %struct.TYPE_63__*, %struct.TYPE_63__** %21, align 8
  %383 = call i32 @assert(%struct.TYPE_63__* %382)
  %384 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %385 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %384, i32 0, i32 8
  %386 = load i32, i32* %385, align 8
  %387 = load %struct.TYPE_60__*, %struct.TYPE_60__** %9, align 8
  %388 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %387, i32 0, i32 1
  %389 = load %struct.TYPE_63__*, %struct.TYPE_63__** %21, align 8
  %390 = call i32 @vout_snapshot_Set(i32 %386, %struct.TYPE_62__* %388, %struct.TYPE_63__* %389)
  %391 = load %struct.TYPE_63__*, %struct.TYPE_63__** %21, align 8
  %392 = load %struct.TYPE_63__*, %struct.TYPE_63__** %20, align 8
  %393 = icmp ne %struct.TYPE_63__* %391, %392
  br i1 %393, label %394, label %397

394:                                              ; preds = %381
  %395 = load %struct.TYPE_63__*, %struct.TYPE_63__** %21, align 8
  %396 = call i32 @picture_Release(%struct.TYPE_63__* %395)
  br label %397

397:                                              ; preds = %394, %381
  br label %398

398:                                              ; preds = %397, %378
  %399 = load %struct.TYPE_60__*, %struct.TYPE_60__** %9, align 8
  %400 = load %struct.TYPE_63__*, %struct.TYPE_63__** %20, align 8
  %401 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %400, i32 0, i32 1
  %402 = call i32 @vout_UpdateDisplaySourceProperties(%struct.TYPE_60__* %399, %struct.TYPE_67__* %401)
  %403 = load %struct.TYPE_60__*, %struct.TYPE_60__** %9, align 8
  %404 = load %struct.TYPE_63__*, %struct.TYPE_63__** %20, align 8
  %405 = call %struct.TYPE_63__* @vout_ConvertForDisplay(%struct.TYPE_60__* %403, %struct.TYPE_63__* %404)
  store %struct.TYPE_63__* %405, %struct.TYPE_63__** %20, align 8
  %406 = load %struct.TYPE_63__*, %struct.TYPE_63__** %20, align 8
  %407 = icmp eq %struct.TYPE_63__* %406, null
  br i1 %407, label %408, label %419

408:                                              ; preds = %398
  %409 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %410 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %409, i32 0, i32 2
  %411 = call i32 @vlc_mutex_unlock(i32* %410)
  %412 = load i32*, i32** %19, align 8
  %413 = icmp ne i32* %412, null
  br i1 %413, label %414, label %417

414:                                              ; preds = %408
  %415 = load i32*, i32** %19, align 8
  %416 = call i32 @subpicture_Delete(i32* %415)
  br label %417

417:                                              ; preds = %414, %408
  %418 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %418, i32* %3, align 4
  br label %561

419:                                              ; preds = %398
  %420 = load i32, i32* %13, align 4
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %437, label %422

422:                                              ; preds = %419
  %423 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %424 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %423, i32 0, i32 7
  %425 = load %struct.TYPE_71__*, %struct.TYPE_71__** %424, align 8
  %426 = icmp ne %struct.TYPE_71__* %425, null
  br i1 %426, label %427, label %437

427:                                              ; preds = %422
  %428 = load i32*, i32** %19, align 8
  %429 = icmp ne i32* %428, null
  br i1 %429, label %430, label %437

430:                                              ; preds = %427
  %431 = load %struct.TYPE_63__*, %struct.TYPE_63__** %20, align 8
  %432 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %433 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %432, i32 0, i32 7
  %434 = load %struct.TYPE_71__*, %struct.TYPE_71__** %433, align 8
  %435 = load i32*, i32** %19, align 8
  %436 = call i64 @picture_BlendSubpicture(%struct.TYPE_63__* %431, %struct.TYPE_71__* %434, i32* %435)
  br label %437

437:                                              ; preds = %430, %427, %422, %419
  %438 = call i64 (...) @vlc_tick_now()
  store i64 %438, i64* %11, align 8
  %439 = load %struct.TYPE_63__*, %struct.TYPE_63__** %20, align 8
  %440 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %439, i32 0, i32 0
  %441 = load i32, i32* %440, align 4
  %442 = sext i32 %441 to i64
  store i64 %442, i64* %24, align 8
  %443 = load i32, i32* %5, align 4
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %445, label %447

445:                                              ; preds = %437
  %446 = load i64, i64* %11, align 8
  br label %457

447:                                              ; preds = %437
  %448 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %449 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %448, i32 0, i32 4
  %450 = load i32, i32* %449, align 4
  %451 = load i64, i64* %11, align 8
  %452 = load i64, i64* %24, align 8
  %453 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %454 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %453, i32 0, i32 3
  %455 = load i32, i32* %454, align 8
  %456 = call i64 @vlc_clock_ConvertToSystem(i32 %450, i64 %451, i64 %452, i32 %455)
  br label %457

457:                                              ; preds = %447, %445
  %458 = phi i64 [ %446, %445 ], [ %456, %447 ]
  store i64 %458, i64* %25, align 8
  %459 = load i64, i64* %25, align 8
  %460 = load i64, i64* @INT64_MAX, align 8
  %461 = icmp eq i64 %459, %460
  %462 = zext i1 %461 to i32
  %463 = call i64 @unlikely(i32 %462)
  %464 = icmp ne i64 %463, 0
  br i1 %464, label %465, label %467

465:                                              ; preds = %457
  %466 = load i64, i64* %11, align 8
  store i64 %466, i64* %25, align 8
  store i32 1, i32* %5, align 4
  br label %467

467:                                              ; preds = %465, %457
  %468 = load %struct.TYPE_63__*, %struct.TYPE_63__** %20, align 8
  %469 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %468, i32 0, i32 1
  %470 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %469, i32 0, i32 0
  %471 = load i32, i32* %470, align 4
  store i32 %471, i32* %26, align 4
  %472 = load %struct.TYPE_63__*, %struct.TYPE_63__** %20, align 8
  %473 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %472, i32 0, i32 1
  %474 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %473, i32 0, i32 1
  %475 = load i32, i32* %474, align 4
  store i32 %475, i32* %27, align 4
  %476 = load %struct.TYPE_60__*, %struct.TYPE_60__** %9, align 8
  %477 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %476, i32 0, i32 0
  %478 = load i32 (%struct.TYPE_60__*, %struct.TYPE_63__*, i32*, i64)*, i32 (%struct.TYPE_60__*, %struct.TYPE_63__*, i32*, i64)** %477, align 8
  %479 = icmp ne i32 (%struct.TYPE_60__*, %struct.TYPE_63__*, i32*, i64)* %478, null
  br i1 %479, label %480, label %495

480:                                              ; preds = %467
  %481 = load %struct.TYPE_60__*, %struct.TYPE_60__** %9, align 8
  %482 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %481, i32 0, i32 0
  %483 = load i32 (%struct.TYPE_60__*, %struct.TYPE_63__*, i32*, i64)*, i32 (%struct.TYPE_60__*, %struct.TYPE_63__*, i32*, i64)** %482, align 8
  %484 = load %struct.TYPE_60__*, %struct.TYPE_60__** %9, align 8
  %485 = load %struct.TYPE_63__*, %struct.TYPE_63__** %20, align 8
  %486 = load i32, i32* %13, align 4
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %488, label %490

488:                                              ; preds = %480
  %489 = load i32*, i32** %19, align 8
  br label %491

490:                                              ; preds = %480
  br label %491

491:                                              ; preds = %490, %488
  %492 = phi i32* [ %489, %488 ], [ null, %490 ]
  %493 = load i64, i64* %25, align 8
  %494 = call i32 %483(%struct.TYPE_60__* %484, %struct.TYPE_63__* %485, i32* %492, i64 %493)
  br label %495

495:                                              ; preds = %491, %467
  %496 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %497 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %496, i32 0, i32 6
  %498 = call i32 @vout_chrono_Stop(%struct.TYPE_66__* %497)
  %499 = call i64 (...) @vlc_tick_now()
  store i64 %499, i64* %11, align 8
  %500 = load i32, i32* %5, align 4
  %501 = icmp ne i32 %500, 0
  br i1 %501, label %527, label %502

502:                                              ; preds = %495
  %503 = load i64, i64* %11, align 8
  %504 = load i64, i64* %25, align 8
  %505 = icmp sgt i64 %503, %504
  %506 = zext i1 %505 to i32
  %507 = call i64 @unlikely(i32 %506)
  %508 = icmp ne i64 %507, 0
  br i1 %508, label %509, label %511

509:                                              ; preds = %502
  %510 = load i64, i64* %11, align 8
  store i64 %510, i64* %25, align 8
  br label %522

511:                                              ; preds = %502
  %512 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %513 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %512, i32 0, i32 4
  %514 = load i32, i32* %513, align 4
  %515 = load i64, i64* %11, align 8
  %516 = load i64, i64* %24, align 8
  %517 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %518 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %517, i32 0, i32 3
  %519 = load i32, i32* %518, align 8
  %520 = load i32, i32* @VOUT_REDISPLAY_DELAY, align 4
  %521 = call i32 @vlc_clock_Wait(i32 %514, i64 %515, i64 %516, i32 %519, i32 %520)
  br label %522

522:                                              ; preds = %511, %509
  %523 = load i64, i64* %25, align 8
  %524 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %525 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %524, i32 0, i32 5
  %526 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %525, i32 0, i32 0
  store i64 %523, i64* %526, align 8
  br label %533

527:                                              ; preds = %495
  %528 = load i64, i64* %11, align 8
  %529 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %530 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %529, i32 0, i32 5
  %531 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %530, i32 0, i32 0
  store i64 %528, i64* %531, align 8
  %532 = load i64, i64* @INT64_MAX, align 8
  store i64 %532, i64* %25, align 8
  br label %533

533:                                              ; preds = %527, %522
  %534 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %535 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %534, i32 0, i32 4
  %536 = load i32, i32* %535, align 4
  %537 = load i64, i64* %25, align 8
  %538 = load i64, i64* %24, align 8
  %539 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %540 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %539, i32 0, i32 3
  %541 = load i32, i32* %540, align 8
  %542 = load i32, i32* %26, align 4
  %543 = load i32, i32* %27, align 4
  %544 = call i32 @vlc_clock_UpdateVideo(i32 %536, i64 %537, i64 %538, i32 %541, i32 %542, i32 %543)
  %545 = load %struct.TYPE_60__*, %struct.TYPE_60__** %9, align 8
  %546 = load %struct.TYPE_63__*, %struct.TYPE_63__** %20, align 8
  %547 = call i32 @vout_display_Display(%struct.TYPE_60__* %545, %struct.TYPE_63__* %546)
  %548 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %549 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %548, i32 0, i32 2
  %550 = call i32 @vlc_mutex_unlock(i32* %549)
  %551 = load i32*, i32** %19, align 8
  %552 = icmp ne i32* %551, null
  br i1 %552, label %553, label %556

553:                                              ; preds = %533
  %554 = load i32*, i32** %19, align 8
  %555 = call i32 @subpicture_Delete(i32* %554)
  br label %556

556:                                              ; preds = %553, %533
  %557 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %558 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %557, i32 0, i32 1
  %559 = call i32 @vout_statistic_AddDisplayed(i32* %558, i32 1)
  %560 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %560, i32* %3, align 4
  br label %561

561:                                              ; preds = %556, %417, %55
  %562 = load i32, i32* %3, align 4
  ret i32 %562
}

declare dso_local %struct.TYPE_63__* @picture_Hold(%struct.TYPE_70__*) #1

declare dso_local i32 @vout_chrono_Start(%struct.TYPE_66__*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local %struct.TYPE_63__* @filter_chain_VideoFilter(i32, %struct.TYPE_63__*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_77__*, i8*) #1

declare dso_local i32 @vout_snapshot_IsRequested(i32) #1

declare dso_local i64 @vlc_tick_now(...) #1

declare dso_local i64 @vlc_clock_ConvertToSystem(i32, i64, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vout_display_PlacePicture(%struct.TYPE_61__*, %struct.TYPE_62__*, %struct.TYPE_64__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @filter_DeleteBlend(%struct.TYPE_71__*) #1

declare dso_local %struct.TYPE_71__* @filter_NewBlend(i32, %struct.TYPE_62__*) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_77__*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_77__*, i8*) #1

declare dso_local i32 @video_format_ApplyRotation(%struct.TYPE_62__*, %struct.TYPE_62__*) #1

declare dso_local i32* @spu_Render(i32, i64*, %struct.TYPE_62__*, %struct.TYPE_62__*, i64, i64, i32, i32) #1

declare dso_local %struct.TYPE_63__* @picture_pool_Get(i32) #1

declare dso_local i32 @video_format_CopyCropAr(%struct.TYPE_67__*, %struct.TYPE_67__*) #1

declare dso_local i32 @picture_Copy(%struct.TYPE_63__*, %struct.TYPE_63__*) #1

declare dso_local i64 @picture_BlendSubpicture(%struct.TYPE_63__*, %struct.TYPE_71__*, i32*) #1

declare dso_local i32 @picture_Release(%struct.TYPE_63__*) #1

declare dso_local %struct.TYPE_63__* @ConvertRGB32AndBlend(%struct.TYPE_77__*, %struct.TYPE_63__*, i32*) #1

declare dso_local i32 @subpicture_Delete(i32*) #1

declare dso_local i32 @assert(%struct.TYPE_63__*) #1

declare dso_local i32 @vout_snapshot_Set(i32, %struct.TYPE_62__*, %struct.TYPE_63__*) #1

declare dso_local i32 @vout_UpdateDisplaySourceProperties(%struct.TYPE_60__*, %struct.TYPE_67__*) #1

declare dso_local %struct.TYPE_63__* @vout_ConvertForDisplay(%struct.TYPE_60__*, %struct.TYPE_63__*) #1

declare dso_local i32 @vout_chrono_Stop(%struct.TYPE_66__*) #1

declare dso_local i32 @vlc_clock_Wait(i32, i64, i64, i32, i32) #1

declare dso_local i32 @vlc_clock_UpdateVideo(i32, i64, i64, i32, i32, i32) #1

declare dso_local i32 @vout_display_Display(%struct.TYPE_60__*, %struct.TYPE_63__*) #1

declare dso_local i32 @vout_statistic_AddDisplayed(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
