; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/mp4/extr_mp4.c_GetMoofBox.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/mp4/extr_mp4.c_GetMoofBox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_28__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32, %struct.TYPE_30__**, i32 }
%struct.TYPE_30__ = type { i64, i32, i64, i32, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { %struct.TYPE_31__* }
%struct.TYPE_31__ = type { %struct.TYPE_27__*, %struct.TYPE_31__* }
%struct.TYPE_27__ = type { i64, i64, i32, i64, i64 }
%struct.TYPE_33__ = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"moof\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"mfhd\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"traf\00", align 1
@MP4_TFHD_DFLT_SAMPLE_DURATION = common dso_local global i32 0, align 4
@MP4_TFHD_DFLT_SAMPLE_SIZE = common dso_local global i32 0, align 4
@MP4_TFHD_DURATION_IS_EMPTY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"tfhd\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"tfdt\00", align 1
@BLOCK_FLAG_TYPE_I = common dso_local global i32 0, align 4
@MP4_TRUN_FIRST_FLAGS = common dso_local global i32 0, align 4
@MP4_TRUN_SAMPLE_DURATION = common dso_local global i32 0, align 4
@MP4_TRUN_SAMPLE_SIZE = common dso_local global i32 0, align 4
@MP4_TRUN_SAMPLE_TIME_OFFSET = common dso_local global i32 0, align 4
@MP4_TRUN_DATA_OFFSET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"trun\00", align 1
@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@VIDEO_ES = common dso_local global i64 0, align 8
@AUDIO_ES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_32__* (%struct.TYPE_28__*, i64*, i64, i32)* @GetMoofBox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_32__* @GetMoofBox(%struct.TYPE_28__* %0, i64* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_32__*, align 8
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_29__*, align 8
  %11 = alloca %struct.TYPE_32__*, align 8
  %12 = alloca %struct.TYPE_32__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_30__*, align 8
  %16 = alloca %struct.TYPE_32__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_31__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_32__*, align 8
  %24 = alloca %struct.TYPE_32__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_32__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca %struct.TYPE_31__*, align 8
  %30 = alloca i64, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %31 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_29__*, %struct.TYPE_29__** %32, align 8
  store %struct.TYPE_29__* %33, %struct.TYPE_29__** %10, align 8
  store i64 0, i64* %13, align 8
  %34 = load i64*, i64** %7, align 8
  store i64 0, i64* %34, align 8
  %35 = call %struct.TYPE_32__* @box_new(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_32__* %35, %struct.TYPE_32__** %11, align 8
  %36 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %37 = icmp ne %struct.TYPE_32__* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %4
  store %struct.TYPE_32__* null, %struct.TYPE_32__** %5, align 8
  br label %646

39:                                               ; preds = %4
  %40 = call %struct.TYPE_32__* @box_full_new(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0)
  store %struct.TYPE_32__* %40, %struct.TYPE_32__** %12, align 8
  %41 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %42 = icmp ne %struct.TYPE_32__* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %45 = call i32 @bo_free(%struct.TYPE_32__* %44)
  store %struct.TYPE_32__* null, %struct.TYPE_32__** %5, align 8
  br label %646

46:                                               ; preds = %39
  %47 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %48 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 8
  %52 = call i32 @bo_add_32be(%struct.TYPE_32__* %47, i32 %50)
  %53 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %54 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %55 = call i32 @box_gather(%struct.TYPE_32__* %53, %struct.TYPE_32__* %54)
  store i32 0, i32* %14, align 4
  br label %56

56:                                               ; preds = %612, %46
  %57 = load i32, i32* %14, align 4
  %58 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ult i32 %57, %60
  br i1 %61, label %62, label %615

62:                                               ; preds = %56
  %63 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %64, align 8
  %66 = load i32, i32* %14, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_30__*, %struct.TYPE_30__** %65, i64 %67
  %69 = load %struct.TYPE_30__*, %struct.TYPE_30__** %68, align 8
  store %struct.TYPE_30__* %69, %struct.TYPE_30__** %15, align 8
  %70 = call %struct.TYPE_32__* @box_new(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_32__* %70, %struct.TYPE_32__** %16, align 8
  %71 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %72 = icmp ne %struct.TYPE_32__* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %62
  br label %612

74:                                               ; preds = %62
  store i32 0, i32* %17, align 4
  %75 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %76 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %18, align 8
  store i32 1, i32* %19, align 4
  store i32 1, i32* %20, align 4
  %78 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %79 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_31__*, %struct.TYPE_31__** %80, align 8
  %82 = icmp ne %struct.TYPE_31__* %81, null
  br i1 %82, label %83, label %142

83:                                               ; preds = %74
  %84 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %85 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_31__*, %struct.TYPE_31__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_31__*, %struct.TYPE_31__** %88, align 8
  store %struct.TYPE_31__* %89, %struct.TYPE_31__** %21, align 8
  br label %90

90:                                               ; preds = %103, %83
  %91 = load %struct.TYPE_31__*, %struct.TYPE_31__** %21, align 8
  %92 = icmp ne %struct.TYPE_31__* %91, null
  br i1 %92, label %93, label %101

93:                                               ; preds = %90
  %94 = load i32, i32* %20, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %19, align 4
  %98 = icmp ne i32 %97, 0
  br label %99

99:                                               ; preds = %96, %93
  %100 = phi i1 [ true, %93 ], [ %98, %96 ]
  br label %101

101:                                              ; preds = %99, %90
  %102 = phi i1 [ false, %90 ], [ %100, %99 ]
  br i1 %102, label %103, label %141

103:                                              ; preds = %101
  %104 = load %struct.TYPE_31__*, %struct.TYPE_31__** %21, align 8
  %105 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_27__*, %struct.TYPE_27__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %110 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_31__*, %struct.TYPE_31__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_27__*, %struct.TYPE_27__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %108, %116
  %118 = zext i1 %117 to i32
  %119 = load i32, i32* %20, align 4
  %120 = and i32 %119, %118
  store i32 %120, i32* %20, align 4
  %121 = load %struct.TYPE_31__*, %struct.TYPE_31__** %21, align 8
  %122 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_27__*, %struct.TYPE_27__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %127 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_31__*, %struct.TYPE_31__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_27__*, %struct.TYPE_27__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp eq i64 %125, %133
  %135 = zext i1 %134 to i32
  %136 = load i32, i32* %19, align 4
  %137 = and i32 %136, %135
  store i32 %137, i32* %19, align 4
  %138 = load %struct.TYPE_31__*, %struct.TYPE_31__** %21, align 8
  %139 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_31__*, %struct.TYPE_31__** %139, align 8
  store %struct.TYPE_31__* %140, %struct.TYPE_31__** %21, align 8
  br label %90

141:                                              ; preds = %101
  br label %142

142:                                              ; preds = %141, %74
  store i32 0, i32* %22, align 4
  %143 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %144 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_31__*, %struct.TYPE_31__** %145, align 8
  %147 = icmp ne %struct.TYPE_31__* %146, null
  br i1 %147, label %148, label %211

148:                                              ; preds = %142
  %149 = load i32, i32* %20, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %179

151:                                              ; preds = %148
  %152 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %153 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %152, i32 0, i32 4
  %154 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_31__*, %struct.TYPE_31__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_27__*, %struct.TYPE_27__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %161 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = call i64 @mp4mux_track_GetDefaultSampleDuration(i32 %162)
  %164 = icmp ne i64 %159, %163
  br i1 %164, label %165, label %179

165:                                              ; preds = %151
  %166 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %167 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %166, i32 0, i32 4
  %168 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_31__*, %struct.TYPE_31__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_27__*, %struct.TYPE_27__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %165
  %176 = load i32, i32* @MP4_TFHD_DFLT_SAMPLE_DURATION, align 4
  %177 = load i32, i32* %22, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %22, align 4
  br label %179

179:                                              ; preds = %175, %165, %151, %148
  %180 = load i32, i32* %19, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %210

182:                                              ; preds = %179
  %183 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %184 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %183, i32 0, i32 4
  %185 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_31__*, %struct.TYPE_31__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_27__*, %struct.TYPE_27__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %192 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = call i64 @mp4mux_track_GetDefaultSampleSize(i32 %193)
  %195 = icmp ne i64 %190, %194
  br i1 %195, label %196, label %210

196:                                              ; preds = %182
  %197 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %198 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %197, i32 0, i32 4
  %199 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %198, i32 0, i32 0
  %200 = load %struct.TYPE_31__*, %struct.TYPE_31__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %200, i32 0, i32 0
  %202 = load %struct.TYPE_27__*, %struct.TYPE_27__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %196
  %207 = load i32, i32* @MP4_TFHD_DFLT_SAMPLE_SIZE, align 4
  %208 = load i32, i32* %22, align 4
  %209 = or i32 %208, %207
  store i32 %209, i32* %22, align 4
  br label %210

210:                                              ; preds = %206, %196, %182, %179
  br label %215

211:                                              ; preds = %142
  %212 = load i32, i32* @MP4_TFHD_DURATION_IS_EMPTY, align 4
  %213 = load i32, i32* %22, align 4
  %214 = or i32 %213, %212
  store i32 %214, i32* %22, align 4
  br label %215

215:                                              ; preds = %211, %210
  %216 = load i32, i32* %22, align 4
  %217 = call %struct.TYPE_32__* @box_full_new(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 %216)
  store %struct.TYPE_32__* %217, %struct.TYPE_32__** %23, align 8
  %218 = load %struct.TYPE_32__*, %struct.TYPE_32__** %23, align 8
  %219 = icmp ne %struct.TYPE_32__* %218, null
  br i1 %219, label %223, label %220

220:                                              ; preds = %215
  %221 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %222 = call i32 @bo_free(%struct.TYPE_32__* %221)
  br label %612

223:                                              ; preds = %215
  %224 = load %struct.TYPE_32__*, %struct.TYPE_32__** %23, align 8
  %225 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %226 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @mp4mux_track_GetID(i32 %227)
  %229 = call i32 @bo_add_32be(%struct.TYPE_32__* %224, i32 %228)
  %230 = load i32, i32* %22, align 4
  %231 = load i32, i32* @MP4_TFHD_DFLT_SAMPLE_DURATION, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %250

234:                                              ; preds = %223
  %235 = load %struct.TYPE_32__*, %struct.TYPE_32__** %23, align 8
  %236 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %237 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %236, i32 0, i32 4
  %238 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %237, i32 0, i32 0
  %239 = load %struct.TYPE_31__*, %struct.TYPE_31__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %239, i32 0, i32 0
  %241 = load %struct.TYPE_27__*, %struct.TYPE_27__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %245 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 8
  %247 = call i32 @mp4mux_track_GetTimescale(i32 %246)
  %248 = call i32 @samples_from_vlc_tick(i64 %243, i32 %247)
  %249 = call i32 @bo_add_32be(%struct.TYPE_32__* %235, i32 %248)
  br label %250

250:                                              ; preds = %234, %223
  %251 = load i32, i32* %22, align 4
  %252 = load i32, i32* @MP4_TFHD_DFLT_SAMPLE_SIZE, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %267

255:                                              ; preds = %250
  %256 = load %struct.TYPE_32__*, %struct.TYPE_32__** %23, align 8
  %257 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %258 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %257, i32 0, i32 4
  %259 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %258, i32 0, i32 0
  %260 = load %struct.TYPE_31__*, %struct.TYPE_31__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %260, i32 0, i32 0
  %262 = load %struct.TYPE_27__*, %struct.TYPE_27__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %262, i32 0, i32 1
  %264 = load i64, i64* %263, align 8
  %265 = trunc i64 %264 to i32
  %266 = call i32 @bo_add_32be(%struct.TYPE_32__* %256, i32 %265)
  br label %267

267:                                              ; preds = %255, %250
  %268 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %269 = load %struct.TYPE_32__*, %struct.TYPE_32__** %23, align 8
  %270 = call i32 @box_gather(%struct.TYPE_32__* %268, %struct.TYPE_32__* %269)
  %271 = call %struct.TYPE_32__* @box_full_new(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 1, i32 0)
  store %struct.TYPE_32__* %271, %struct.TYPE_32__** %24, align 8
  %272 = load %struct.TYPE_32__*, %struct.TYPE_32__** %24, align 8
  %273 = icmp ne %struct.TYPE_32__* %272, null
  br i1 %273, label %277, label %274

274:                                              ; preds = %267
  %275 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %276 = call i32 @bo_free(%struct.TYPE_32__* %275)
  br label %612

277:                                              ; preds = %267
  %278 = load %struct.TYPE_32__*, %struct.TYPE_32__** %24, align 8
  %279 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %280 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %283 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 8
  %285 = call i32 @mp4mux_track_GetTimescale(i32 %284)
  %286 = call i32 @samples_from_vlc_tick(i64 %281, i32 %285)
  %287 = call i32 @bo_add_64be(%struct.TYPE_32__* %278, i32 %286)
  %288 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %289 = load %struct.TYPE_32__*, %struct.TYPE_32__** %24, align 8
  %290 = call i32 @box_gather(%struct.TYPE_32__* %288, %struct.TYPE_32__* %289)
  %291 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %292 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %291, i32 0, i32 4
  %293 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %292, i32 0, i32 0
  %294 = load %struct.TYPE_31__*, %struct.TYPE_31__** %293, align 8
  %295 = icmp ne %struct.TYPE_31__* %294, null
  br i1 %295, label %296, label %608

296:                                              ; preds = %277
  store i32 0, i32* %25, align 4
  %297 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %298 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %297, i32 0, i32 2
  %299 = load i64, i64* %298, align 8
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %317

301:                                              ; preds = %296
  %302 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %303 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %302, i32 0, i32 4
  %304 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %303, i32 0, i32 0
  %305 = load %struct.TYPE_31__*, %struct.TYPE_31__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %305, i32 0, i32 0
  %307 = load %struct.TYPE_27__*, %struct.TYPE_27__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %307, i32 0, i32 2
  %309 = load i32, i32* %308, align 8
  %310 = load i32, i32* @BLOCK_FLAG_TYPE_I, align 4
  %311 = and i32 %309, %310
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %317, label %313

313:                                              ; preds = %301
  %314 = load i32, i32* @MP4_TRUN_FIRST_FLAGS, align 4
  %315 = load i32, i32* %25, align 4
  %316 = or i32 %315, %314
  store i32 %316, i32* %25, align 4
  br label %317

317:                                              ; preds = %313, %301, %296
  %318 = load i32, i32* %20, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %331

320:                                              ; preds = %317
  %321 = load i32, i32* %22, align 4
  %322 = load i32, i32* @MP4_TFHD_DFLT_SAMPLE_DURATION, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %335, label %325

325:                                              ; preds = %320
  %326 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %327 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 8
  %329 = call i64 @mp4mux_track_GetDefaultSampleDuration(i32 %328)
  %330 = icmp eq i64 %329, 0
  br i1 %330, label %331, label %335

331:                                              ; preds = %325, %317
  %332 = load i32, i32* @MP4_TRUN_SAMPLE_DURATION, align 4
  %333 = load i32, i32* %25, align 4
  %334 = or i32 %333, %332
  store i32 %334, i32* %25, align 4
  br label %335

335:                                              ; preds = %331, %325, %320
  %336 = load i32, i32* %19, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %349

338:                                              ; preds = %335
  %339 = load i32, i32* %22, align 4
  %340 = load i32, i32* @MP4_TFHD_DFLT_SAMPLE_SIZE, align 4
  %341 = and i32 %339, %340
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %353, label %343

343:                                              ; preds = %338
  %344 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %345 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 8
  %347 = call i64 @mp4mux_track_GetDefaultSampleSize(i32 %346)
  %348 = icmp eq i64 %347, 0
  br i1 %348, label %349, label %353

349:                                              ; preds = %343, %335
  %350 = load i32, i32* @MP4_TRUN_SAMPLE_SIZE, align 4
  %351 = load i32, i32* %25, align 4
  %352 = or i32 %351, %350
  store i32 %352, i32* %25, align 4
  br label %353

353:                                              ; preds = %349, %343, %338
  %354 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %355 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 8
  %357 = call i64 @mp4mux_track_HasBFrames(i32 %356)
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %363

359:                                              ; preds = %353
  %360 = load i32, i32* @MP4_TRUN_SAMPLE_TIME_OFFSET, align 4
  %361 = load i32, i32* %25, align 4
  %362 = or i32 %361, %360
  store i32 %362, i32* %25, align 4
  br label %363

363:                                              ; preds = %359, %353
  %364 = load i64, i64* %13, align 8
  %365 = icmp eq i64 %364, 0
  br i1 %365, label %366, label %370

366:                                              ; preds = %363
  %367 = load i32, i32* @MP4_TRUN_DATA_OFFSET, align 4
  %368 = load i32, i32* %25, align 4
  %369 = or i32 %368, %367
  store i32 %369, i32* %25, align 4
  br label %370

370:                                              ; preds = %366, %363
  %371 = load i32, i32* %25, align 4
  %372 = call %struct.TYPE_32__* @box_full_new(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 0, i32 %371)
  store %struct.TYPE_32__* %372, %struct.TYPE_32__** %26, align 8
  %373 = load %struct.TYPE_32__*, %struct.TYPE_32__** %26, align 8
  %374 = icmp ne %struct.TYPE_32__* %373, null
  br i1 %374, label %378, label %375

375:                                              ; preds = %370
  %376 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %377 = call i32 @bo_free(%struct.TYPE_32__* %376)
  br label %612

378:                                              ; preds = %370
  store i32 0, i32* %27, align 4
  %379 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %380 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %379, i32 0, i32 0
  %381 = load i64, i64* %380, align 8
  store i64 %381, i64* %28, align 8
  %382 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %383 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %382, i32 0, i32 4
  %384 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %383, i32 0, i32 0
  %385 = load %struct.TYPE_31__*, %struct.TYPE_31__** %384, align 8
  store %struct.TYPE_31__* %385, %struct.TYPE_31__** %29, align 8
  br label %386

386:                                              ; preds = %403, %378
  %387 = load %struct.TYPE_31__*, %struct.TYPE_31__** %29, align 8
  %388 = icmp ne %struct.TYPE_31__* %387, null
  br i1 %388, label %389, label %416

389:                                              ; preds = %386
  %390 = load i64, i64* %8, align 8
  %391 = icmp ne i64 %390, 0
  br i1 %391, label %392, label %403

392:                                              ; preds = %389
  %393 = load i64, i64* %28, align 8
  %394 = load %struct.TYPE_31__*, %struct.TYPE_31__** %29, align 8
  %395 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %394, i32 0, i32 0
  %396 = load %struct.TYPE_27__*, %struct.TYPE_27__** %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %396, i32 0, i32 0
  %398 = load i64, i64* %397, align 8
  %399 = add nsw i64 %393, %398
  %400 = load i64, i64* %8, align 8
  %401 = icmp sgt i64 %399, %400
  br i1 %401, label %402, label %403

402:                                              ; preds = %392
  br label %416

403:                                              ; preds = %392, %389
  %404 = load i32, i32* %27, align 4
  %405 = add nsw i32 %404, 1
  store i32 %405, i32* %27, align 4
  %406 = load %struct.TYPE_31__*, %struct.TYPE_31__** %29, align 8
  %407 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %406, i32 0, i32 0
  %408 = load %struct.TYPE_27__*, %struct.TYPE_27__** %407, align 8
  %409 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %408, i32 0, i32 0
  %410 = load i64, i64* %409, align 8
  %411 = load i64, i64* %28, align 8
  %412 = add nsw i64 %411, %410
  store i64 %412, i64* %28, align 8
  %413 = load %struct.TYPE_31__*, %struct.TYPE_31__** %29, align 8
  %414 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %413, i32 0, i32 1
  %415 = load %struct.TYPE_31__*, %struct.TYPE_31__** %414, align 8
  store %struct.TYPE_31__* %415, %struct.TYPE_31__** %29, align 8
  br label %386

416:                                              ; preds = %402, %386
  %417 = load %struct.TYPE_32__*, %struct.TYPE_32__** %26, align 8
  %418 = load i32, i32* %27, align 4
  %419 = call i32 @bo_add_32be(%struct.TYPE_32__* %417, i32 %418)
  %420 = load i32, i32* %25, align 4
  %421 = load i32, i32* @MP4_TRUN_DATA_OFFSET, align 4
  %422 = and i32 %420, %421
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %436

424:                                              ; preds = %416
  %425 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %426 = call i32 @bo_size(%struct.TYPE_32__* %425)
  %427 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %428 = call i32 @bo_size(%struct.TYPE_32__* %427)
  %429 = add nsw i32 %426, %428
  %430 = load %struct.TYPE_32__*, %struct.TYPE_32__** %26, align 8
  %431 = call i32 @bo_size(%struct.TYPE_32__* %430)
  %432 = add nsw i32 %429, %431
  %433 = sext i32 %432 to i64
  store i64 %433, i64* %13, align 8
  %434 = load %struct.TYPE_32__*, %struct.TYPE_32__** %26, align 8
  %435 = call i32 @bo_add_32be(%struct.TYPE_32__* %434, i32 -559038737)
  br label %436

436:                                              ; preds = %424, %416
  %437 = load i32, i32* %25, align 4
  %438 = load i32, i32* @MP4_TRUN_FIRST_FLAGS, align 4
  %439 = and i32 %437, %438
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %444

441:                                              ; preds = %436
  %442 = load %struct.TYPE_32__*, %struct.TYPE_32__** %26, align 8
  %443 = call i32 @bo_add_32be(%struct.TYPE_32__* %442, i32 65536)
  br label %444

444:                                              ; preds = %441, %436
  br label %445

445:                                              ; preds = %596, %444
  %446 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %447 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %446, i32 0, i32 4
  %448 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %447, i32 0, i32 0
  %449 = load %struct.TYPE_31__*, %struct.TYPE_31__** %448, align 8
  %450 = icmp ne %struct.TYPE_31__* %449, null
  br i1 %450, label %451, label %454

451:                                              ; preds = %445
  %452 = load i32, i32* %27, align 4
  %453 = icmp ne i32 %452, 0
  br label %454

454:                                              ; preds = %451, %445
  %455 = phi i1 [ false, %445 ], [ %453, %451 ]
  br i1 %455, label %456, label %604

456:                                              ; preds = %454
  %457 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %458 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %457, i32 0, i32 4
  %459 = load %struct.TYPE_31__*, %struct.TYPE_31__** %29, align 8
  %460 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %458, i32 0, i32 0
  %461 = load %struct.TYPE_31__*, %struct.TYPE_31__** %460, align 8
  %462 = call i32 @DEQUEUE_ENTRY(%struct.TYPE_31__* %461, %struct.TYPE_31__* %459)
  %463 = load i32, i32* %25, align 4
  %464 = load i32, i32* @MP4_TRUN_SAMPLE_DURATION, align 4
  %465 = and i32 %463, %464
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %467, label %480

467:                                              ; preds = %456
  %468 = load %struct.TYPE_32__*, %struct.TYPE_32__** %26, align 8
  %469 = load %struct.TYPE_31__*, %struct.TYPE_31__** %29, align 8
  %470 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %469, i32 0, i32 0
  %471 = load %struct.TYPE_27__*, %struct.TYPE_27__** %470, align 8
  %472 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %471, i32 0, i32 0
  %473 = load i64, i64* %472, align 8
  %474 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %475 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %474, i32 0, i32 1
  %476 = load i32, i32* %475, align 8
  %477 = call i32 @mp4mux_track_GetTimescale(i32 %476)
  %478 = call i32 @samples_from_vlc_tick(i64 %473, i32 %477)
  %479 = call i32 @bo_add_32be(%struct.TYPE_32__* %468, i32 %478)
  br label %480

480:                                              ; preds = %467, %456
  %481 = load i32, i32* %25, align 4
  %482 = load i32, i32* @MP4_TRUN_SAMPLE_SIZE, align 4
  %483 = and i32 %481, %482
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %485, label %494

485:                                              ; preds = %480
  %486 = load %struct.TYPE_32__*, %struct.TYPE_32__** %26, align 8
  %487 = load %struct.TYPE_31__*, %struct.TYPE_31__** %29, align 8
  %488 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %487, i32 0, i32 0
  %489 = load %struct.TYPE_27__*, %struct.TYPE_27__** %488, align 8
  %490 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %489, i32 0, i32 1
  %491 = load i64, i64* %490, align 8
  %492 = trunc i64 %491 to i32
  %493 = call i32 @bo_add_32be(%struct.TYPE_32__* %486, i32 %492)
  br label %494

494:                                              ; preds = %485, %480
  %495 = load i32, i32* %25, align 4
  %496 = load i32, i32* @MP4_TRUN_SAMPLE_TIME_OFFSET, align 4
  %497 = and i32 %495, %496
  %498 = icmp ne i32 %497, 0
  br i1 %498, label %499, label %540

499:                                              ; preds = %494
  store i64 0, i64* %30, align 8
  %500 = load %struct.TYPE_31__*, %struct.TYPE_31__** %29, align 8
  %501 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %500, i32 0, i32 0
  %502 = load %struct.TYPE_27__*, %struct.TYPE_27__** %501, align 8
  %503 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %502, i32 0, i32 3
  %504 = load i64, i64* %503, align 8
  %505 = load i64, i64* @VLC_TICK_INVALID, align 8
  %506 = icmp ne i64 %504, %505
  br i1 %506, label %507, label %531

507:                                              ; preds = %499
  %508 = load %struct.TYPE_31__*, %struct.TYPE_31__** %29, align 8
  %509 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %508, i32 0, i32 0
  %510 = load %struct.TYPE_27__*, %struct.TYPE_27__** %509, align 8
  %511 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %510, i32 0, i32 4
  %512 = load i64, i64* %511, align 8
  %513 = load %struct.TYPE_31__*, %struct.TYPE_31__** %29, align 8
  %514 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %513, i32 0, i32 0
  %515 = load %struct.TYPE_27__*, %struct.TYPE_27__** %514, align 8
  %516 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %515, i32 0, i32 3
  %517 = load i64, i64* %516, align 8
  %518 = icmp sgt i64 %512, %517
  br i1 %518, label %519, label %531

519:                                              ; preds = %507
  %520 = load %struct.TYPE_31__*, %struct.TYPE_31__** %29, align 8
  %521 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %520, i32 0, i32 0
  %522 = load %struct.TYPE_27__*, %struct.TYPE_27__** %521, align 8
  %523 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %522, i32 0, i32 4
  %524 = load i64, i64* %523, align 8
  %525 = load %struct.TYPE_31__*, %struct.TYPE_31__** %29, align 8
  %526 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %525, i32 0, i32 0
  %527 = load %struct.TYPE_27__*, %struct.TYPE_27__** %526, align 8
  %528 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %527, i32 0, i32 3
  %529 = load i64, i64* %528, align 8
  %530 = sub nsw i64 %524, %529
  store i64 %530, i64* %30, align 8
  br label %531

531:                                              ; preds = %519, %507, %499
  %532 = load %struct.TYPE_32__*, %struct.TYPE_32__** %26, align 8
  %533 = load i64, i64* %30, align 8
  %534 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %535 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %534, i32 0, i32 1
  %536 = load i32, i32* %535, align 8
  %537 = call i32 @mp4mux_track_GetTimescale(i32 %536)
  %538 = call i32 @samples_from_vlc_tick(i64 %533, i32 %537)
  %539 = call i32 @bo_add_32be(%struct.TYPE_32__* %532, i32 %538)
  br label %540

540:                                              ; preds = %531, %494
  %541 = load %struct.TYPE_31__*, %struct.TYPE_31__** %29, align 8
  %542 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %541, i32 0, i32 0
  %543 = load %struct.TYPE_27__*, %struct.TYPE_27__** %542, align 8
  %544 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %543, i32 0, i32 1
  %545 = load i64, i64* %544, align 8
  %546 = load i64*, i64** %7, align 8
  %547 = load i64, i64* %546, align 8
  %548 = add i64 %547, %545
  store i64 %548, i64* %546, align 8
  %549 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %550 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %549, i32 0, i32 3
  %551 = load i32, i32* %550, align 8
  %552 = load %struct.TYPE_31__*, %struct.TYPE_31__** %29, align 8
  %553 = call i32 @ENQUEUE_ENTRY(i32 %551, %struct.TYPE_31__* %552)
  %554 = load i32, i32* %27, align 4
  %555 = add nsw i32 %554, -1
  store i32 %555, i32* %27, align 4
  %556 = load i32, i32* %17, align 4
  %557 = add nsw i32 %556, 1
  store i32 %557, i32* %17, align 4
  %558 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %559 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %558, i32 0, i32 2
  %560 = load i64, i64* %559, align 8
  %561 = icmp ne i64 %560, 0
  br i1 %561, label %562, label %596

562:                                              ; preds = %540
  %563 = load %struct.TYPE_31__*, %struct.TYPE_31__** %29, align 8
  %564 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %563, i32 0, i32 0
  %565 = load %struct.TYPE_27__*, %struct.TYPE_27__** %564, align 8
  %566 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %565, i32 0, i32 2
  %567 = load i32, i32* %566, align 8
  %568 = load i32, i32* @BLOCK_FLAG_TYPE_I, align 4
  %569 = and i32 %567, %568
  %570 = icmp ne i32 %569, 0
  br i1 %570, label %571, label %596

571:                                              ; preds = %562
  %572 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %573 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %572, i32 0, i32 1
  %574 = load i32, i32* %573, align 8
  %575 = call %struct.TYPE_33__* @mp4mux_track_GetFmt(i32 %574)
  %576 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %575, i32 0, i32 0
  %577 = load i64, i64* %576, align 8
  %578 = load i64, i64* @VIDEO_ES, align 8
  %579 = icmp eq i64 %577, %578
  br i1 %579, label %589, label %580

580:                                              ; preds = %571
  %581 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %582 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %581, i32 0, i32 1
  %583 = load i32, i32* %582, align 8
  %584 = call %struct.TYPE_33__* @mp4mux_track_GetFmt(i32 %583)
  %585 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %584, i32 0, i32 0
  %586 = load i64, i64* %585, align 8
  %587 = load i64, i64* @AUDIO_ES, align 8
  %588 = icmp eq i64 %586, %587
  br i1 %588, label %589, label %596

589:                                              ; preds = %580, %571
  %590 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %591 = load i32, i32* %9, align 4
  %592 = load i32, i32* %14, align 4
  %593 = load i32, i32* %17, align 4
  %594 = load i64, i64* %18, align 8
  %595 = call i32 @AddKeyframeEntry(%struct.TYPE_30__* %590, i32 %591, i32 %592, i32 %593, i64 %594)
  br label %596

596:                                              ; preds = %589, %580, %562, %540
  %597 = load %struct.TYPE_31__*, %struct.TYPE_31__** %29, align 8
  %598 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %597, i32 0, i32 0
  %599 = load %struct.TYPE_27__*, %struct.TYPE_27__** %598, align 8
  %600 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %599, i32 0, i32 0
  %601 = load i64, i64* %600, align 8
  %602 = load i64, i64* %18, align 8
  %603 = add nsw i64 %602, %601
  store i64 %603, i64* %18, align 8
  br label %445

604:                                              ; preds = %454
  %605 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %606 = load %struct.TYPE_32__*, %struct.TYPE_32__** %26, align 8
  %607 = call i32 @box_gather(%struct.TYPE_32__* %605, %struct.TYPE_32__* %606)
  br label %608

608:                                              ; preds = %604, %277
  %609 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %610 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %611 = call i32 @box_gather(%struct.TYPE_32__* %609, %struct.TYPE_32__* %610)
  br label %612

612:                                              ; preds = %608, %375, %274, %220, %73
  %613 = load i32, i32* %14, align 4
  %614 = add i32 %613, 1
  store i32 %614, i32* %14, align 4
  br label %56

615:                                              ; preds = %56
  %616 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %617 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %616, i32 0, i32 0
  %618 = load %struct.TYPE_25__*, %struct.TYPE_25__** %617, align 8
  %619 = icmp ne %struct.TYPE_25__* %618, null
  br i1 %619, label %623, label %620

620:                                              ; preds = %615
  %621 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %622 = call i32 @bo_free(%struct.TYPE_32__* %621)
  store %struct.TYPE_32__* null, %struct.TYPE_32__** %5, align 8
  br label %646

623:                                              ; preds = %615
  %624 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %625 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %626 = call i32 @bo_size(%struct.TYPE_32__* %625)
  %627 = call i32 @box_fix(%struct.TYPE_32__* %624, i32 %626)
  %628 = load i64, i64* %13, align 8
  %629 = icmp ne i64 %628, 0
  br i1 %629, label %630, label %637

630:                                              ; preds = %623
  %631 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %632 = load i64, i64* %13, align 8
  %633 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %634 = call i32 @bo_size(%struct.TYPE_32__* %633)
  %635 = add nsw i32 %634, 8
  %636 = call i32 @bo_set_32be(%struct.TYPE_32__* %631, i64 %632, i32 %635)
  br label %637

637:                                              ; preds = %630, %623
  %638 = load i32, i32* @BLOCK_FLAG_TYPE_I, align 4
  %639 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %640 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %639, i32 0, i32 0
  %641 = load %struct.TYPE_25__*, %struct.TYPE_25__** %640, align 8
  %642 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %641, i32 0, i32 0
  %643 = load i32, i32* %642, align 4
  %644 = or i32 %643, %638
  store i32 %644, i32* %642, align 4
  %645 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  store %struct.TYPE_32__* %645, %struct.TYPE_32__** %5, align 8
  br label %646

646:                                              ; preds = %637, %620, %43, %38
  %647 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  ret %struct.TYPE_32__* %647
}

declare dso_local %struct.TYPE_32__* @box_new(i8*) #1

declare dso_local %struct.TYPE_32__* @box_full_new(i8*, i32, i32) #1

declare dso_local i32 @bo_free(%struct.TYPE_32__*) #1

declare dso_local i32 @bo_add_32be(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @box_gather(%struct.TYPE_32__*, %struct.TYPE_32__*) #1

declare dso_local i64 @mp4mux_track_GetDefaultSampleDuration(i32) #1

declare dso_local i64 @mp4mux_track_GetDefaultSampleSize(i32) #1

declare dso_local i32 @mp4mux_track_GetID(i32) #1

declare dso_local i32 @samples_from_vlc_tick(i64, i32) #1

declare dso_local i32 @mp4mux_track_GetTimescale(i32) #1

declare dso_local i32 @bo_add_64be(%struct.TYPE_32__*, i32) #1

declare dso_local i64 @mp4mux_track_HasBFrames(i32) #1

declare dso_local i32 @bo_size(%struct.TYPE_32__*) #1

declare dso_local i32 @DEQUEUE_ENTRY(%struct.TYPE_31__*, %struct.TYPE_31__*) #1

declare dso_local i32 @ENQUEUE_ENTRY(i32, %struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_33__* @mp4mux_track_GetFmt(i32) #1

declare dso_local i32 @AddKeyframeEntry(%struct.TYPE_30__*, i32, i32, i32, i64) #1

declare dso_local i32 @box_fix(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @bo_set_32be(%struct.TYPE_32__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
