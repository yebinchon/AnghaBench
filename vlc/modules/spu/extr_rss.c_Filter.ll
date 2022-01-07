; ModuleID = '/home/carl/AnghaBench/vlc/modules/spu/extr_rss.c_Filter.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/spu/extr_rss.c_Filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i32, i32, %struct.TYPE_30__*, i64, i64 }
%struct.TYPE_30__ = type { i32, i32, %struct.TYPE_33__*, i32, %struct.TYPE_26__*, %struct.TYPE_28__ }
%struct.TYPE_33__ = type { i32, i32, i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_23__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, i64, i64, i32, i64, i32, i64, i8*, i32, i32, %struct.TYPE_25__*, i32, i32, %struct.TYPE_34__*, i64, i32 }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_34__ = type { i64*, i64, %struct.TYPE_35__*, %struct.TYPE_27__* }
%struct.TYPE_35__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32, i64 }
%struct.TYPE_27__ = type { i64* }
%struct.TYPE_31__ = type { i32, i32, i64, i32, i32, i64 }

@scroll_title = common dso_local global i64 0, align 8
@VLC_CODEC_TEXT = common dso_local global i32 0, align 4
@default_title = common dso_local global i64 0, align 8
@hide_title = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@prepend_title = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"%s : %s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" - %s\00", align 1
@SUBPICTURE_ALIGN_LEFT = common dso_local global i32 0, align 4
@SUBPICTURE_ALIGN_TOP = common dso_local global i32 0, align 4
@VLC_CODEC_YUVA = common dso_local global i32 0, align 4
@Y_PLANE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"cannot allocate SPU region\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_32__* (%struct.TYPE_23__*, i64)* @Filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_32__* @Filter(%struct.TYPE_23__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_32__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_32__*, align 8
  %8 = alloca %struct.TYPE_31__, align 8
  %9 = alloca %struct.TYPE_33__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_34__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_35__*, align 8
  %17 = alloca %struct.TYPE_31__, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store i64 %1, i64* %5, align 8
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  store %struct.TYPE_24__* %20, %struct.TYPE_24__** %6, align 8
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 9
  %23 = call i32 @vlc_mutex_lock(i32* %22)
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %24, i32 0, i32 15
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %2
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 9
  %36 = call i32 @vlc_mutex_unlock(i32* %35)
  store %struct.TYPE_32__* null, %struct.TYPE_32__** %3, align 8
  br label %615

37:                                               ; preds = %28, %2
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %37
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @scroll_title, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 -1, i32 0
  %56 = icmp eq i32 %48, %55
  br label %57

57:                                               ; preds = %45, %37
  %58 = phi i1 [ false, %37 ], [ %56, %45 ]
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 5, i32 1
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = mul nsw i32 %60, %63
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %40, %65
  %67 = load i64, i64* %5, align 8
  %68 = icmp sgt i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %57
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %70, i32 0, i32 9
  %72 = call i32 @vlc_mutex_unlock(i32* %71)
  store %struct.TYPE_32__* null, %struct.TYPE_32__** %3, align 8
  br label %615

73:                                               ; preds = %57
  %74 = load i64, i64* %5, align 8
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %78, align 8
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %101

85:                                               ; preds = %73
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 13
  %88 = load %struct.TYPE_34__*, %struct.TYPE_34__** %87, align 8
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 6
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %88, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %92, i32 0, i32 0
  %94 = load i64*, i64** %93, align 8
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds i64, i64* %94, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %124, label %170

101:                                              ; preds = %73
  %102 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %102, i32 0, i32 13
  %104 = load %struct.TYPE_34__*, %struct.TYPE_34__** %103, align 8
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i32 0, i32 6
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %104, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %108, i32 0, i32 3
  %110 = load %struct.TYPE_27__*, %struct.TYPE_27__** %109, align 8
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %110, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %115, i32 0, i32 0
  %117 = load i64*, i64** %116, align 8
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds i64, i64* %117, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %170

124:                                              ; preds = %101, %85
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %125, i32 0, i32 2
  store i64 0, i64* %126, align 8
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 8
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %135, i32 0, i32 13
  %137 = load %struct.TYPE_34__*, %struct.TYPE_34__** %136, align 8
  %138 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %138, i32 0, i32 6
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %137, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = icmp uge i64 %134, %143
  br i1 %144, label %145, label %169

145:                                              ; preds = %124
  %146 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %146, i32 0, i32 4
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @scroll_title, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %145
  %152 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %152, i32 0, i32 3
  store i32 -1, i32* %153, align 8
  br label %157

154:                                              ; preds = %145
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %155, i32 0, i32 3
  store i32 0, i32* %156, align 8
  br label %157

157:                                              ; preds = %154, %151
  %158 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %158, i32 0, i32 6
  %160 = load i64, i64* %159, align 8
  %161 = add i64 %160, 1
  %162 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = sext i32 %164 to i64
  %166 = urem i64 %161, %165
  %167 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %167, i32 0, i32 6
  store i64 %166, i64* %168, align 8
  br label %169

169:                                              ; preds = %157, %124
  br label %170

170:                                              ; preds = %169, %101, %85
  %171 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %172 = call %struct.TYPE_32__* @filter_NewSubpicture(%struct.TYPE_23__* %171)
  store %struct.TYPE_32__* %172, %struct.TYPE_32__** %7, align 8
  %173 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %174 = icmp ne %struct.TYPE_32__* %173, null
  br i1 %174, label %179, label %175

175:                                              ; preds = %170
  %176 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %176, i32 0, i32 9
  %178 = call i32 @vlc_mutex_unlock(i32* %177)
  store %struct.TYPE_32__* null, %struct.TYPE_32__** %3, align 8
  br label %615

179:                                              ; preds = %170
  %180 = load i32, i32* @VLC_CODEC_TEXT, align 4
  %181 = call i32 @video_format_Init(%struct.TYPE_31__* %8, i32 %180)
  %182 = call i8* @subpicture_region_New(%struct.TYPE_31__* %8)
  %183 = bitcast i8* %182 to %struct.TYPE_30__*
  %184 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %184, i32 0, i32 2
  store %struct.TYPE_30__* %183, %struct.TYPE_30__** %185, align 8
  %186 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %186, i32 0, i32 2
  %188 = load %struct.TYPE_30__*, %struct.TYPE_30__** %187, align 8
  %189 = icmp ne %struct.TYPE_30__* %188, null
  br i1 %189, label %196, label %190

190:                                              ; preds = %179
  %191 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %192 = call i32 @subpicture_Delete(%struct.TYPE_32__* %191)
  %193 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %193, i32 0, i32 9
  %195 = call i32 @vlc_mutex_unlock(i32* %194)
  store %struct.TYPE_32__* null, %struct.TYPE_32__** %3, align 8
  br label %615

196:                                              ; preds = %179
  %197 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 8
  store i32 %199, i32* %11, align 4
  %200 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %200, i32 0, i32 6
  %202 = load i64, i64* %201, align 8
  %203 = trunc i64 %202 to i32
  store i32 %203, i32* %10, align 4
  %204 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %204, i32 0, i32 13
  %206 = load %struct.TYPE_34__*, %struct.TYPE_34__** %205, align 8
  %207 = load i32, i32* %10, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %206, i64 %208
  store %struct.TYPE_34__* %209, %struct.TYPE_34__** %12, align 8
  %210 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %211 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %210, i32 0, i32 2
  %212 = load %struct.TYPE_35__*, %struct.TYPE_35__** %211, align 8
  %213 = icmp ne %struct.TYPE_35__* %212, null
  br i1 %213, label %214, label %220

214:                                              ; preds = %196
  %215 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %215, i32 0, i32 4
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @default_title, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %226, label %220

220:                                              ; preds = %214, %196
  %221 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %221, i32 0, i32 4
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @hide_title, align 8
  %225 = icmp eq i64 %223, %224
  br i1 %225, label %226, label %251

226:                                              ; preds = %220, %214
  %227 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %227, i32 0, i32 7
  %229 = load i8*, i8** %228, align 8
  %230 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %230, i32 0, i32 14
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %233, i32 0, i32 13
  %235 = load %struct.TYPE_34__*, %struct.TYPE_34__** %234, align 8
  %236 = load i32, i32* %10, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %238, i32 0, i32 3
  %240 = load %struct.TYPE_27__*, %struct.TYPE_27__** %239, align 8
  %241 = load i32, i32* %11, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %240, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %243, i32 0, i32 0
  %245 = load i64*, i64** %244, align 8
  %246 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %246, i32 0, i32 2
  %248 = load i64, i64* %247, align 8
  %249 = getelementptr inbounds i64, i64* %245, i64 %248
  %250 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %229, i64 %232, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64* %249)
  br label %365

251:                                              ; preds = %220
  %252 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %253 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %252, i32 0, i32 2
  %254 = load %struct.TYPE_35__*, %struct.TYPE_35__** %253, align 8
  %255 = icmp ne %struct.TYPE_35__* %254, null
  br i1 %255, label %262, label %256

256:                                              ; preds = %251
  %257 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %257, i32 0, i32 4
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* @default_title, align 8
  %261 = icmp eq i64 %259, %260
  br i1 %261, label %268, label %262

262:                                              ; preds = %256, %251
  %263 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %263, i32 0, i32 4
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @prepend_title, align 8
  %267 = icmp eq i64 %265, %266
  br i1 %267, label %268, label %301

268:                                              ; preds = %262, %256
  %269 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %269, i32 0, i32 7
  %271 = load i8*, i8** %270, align 8
  %272 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %272, i32 0, i32 14
  %274 = load i64, i64* %273, align 8
  %275 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %276 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %275, i32 0, i32 13
  %277 = load %struct.TYPE_34__*, %struct.TYPE_34__** %276, align 8
  %278 = load i32, i32* %10, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %277, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %280, i32 0, i32 0
  %282 = load i64*, i64** %281, align 8
  %283 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %283, i32 0, i32 13
  %285 = load %struct.TYPE_34__*, %struct.TYPE_34__** %284, align 8
  %286 = load i32, i32* %10, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %285, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %288, i32 0, i32 3
  %290 = load %struct.TYPE_27__*, %struct.TYPE_27__** %289, align 8
  %291 = load i32, i32* %11, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %290, i64 %292
  %294 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %293, i32 0, i32 0
  %295 = load i64*, i64** %294, align 8
  %296 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %297 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %296, i32 0, i32 2
  %298 = load i64, i64* %297, align 8
  %299 = getelementptr inbounds i64, i64* %295, i64 %298
  %300 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %271, i64 %274, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64* %282, i64* %299)
  br label %364

301:                                              ; preds = %262
  %302 = load i32, i32* %11, align 4
  %303 = icmp eq i32 %302, -1
  br i1 %303, label %304, label %338

304:                                              ; preds = %301
  %305 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %306 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %305, i32 0, i32 7
  %307 = load i8*, i8** %306, align 8
  %308 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %309 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %308, i32 0, i32 14
  %310 = load i64, i64* %309, align 8
  %311 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %312 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %311, i32 0, i32 13
  %313 = load %struct.TYPE_34__*, %struct.TYPE_34__** %312, align 8
  %314 = load i32, i32* %10, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %313, i64 %315
  %317 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %316, i32 0, i32 0
  %318 = load i64*, i64** %317, align 8
  %319 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %320 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %319, i32 0, i32 2
  %321 = load i64, i64* %320, align 8
  %322 = getelementptr inbounds i64, i64* %318, i64 %321
  %323 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %324 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %323, i32 0, i32 13
  %325 = load %struct.TYPE_34__*, %struct.TYPE_34__** %324, align 8
  %326 = load i32, i32* %10, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %325, i64 %327
  %329 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %328, i32 0, i32 3
  %330 = load %struct.TYPE_27__*, %struct.TYPE_27__** %329, align 8
  %331 = load i32, i32* %11, align 4
  %332 = add nsw i32 %331, 1
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %330, i64 %333
  %335 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %334, i32 0, i32 0
  %336 = load i64*, i64** %335, align 8
  %337 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %307, i64 %310, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64* %322, i64* %336)
  br label %363

338:                                              ; preds = %301
  %339 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %340 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %339, i32 0, i32 7
  %341 = load i8*, i8** %340, align 8
  %342 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %343 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %342, i32 0, i32 14
  %344 = load i64, i64* %343, align 8
  %345 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %346 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %345, i32 0, i32 13
  %347 = load %struct.TYPE_34__*, %struct.TYPE_34__** %346, align 8
  %348 = load i32, i32* %10, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %347, i64 %349
  %351 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %350, i32 0, i32 3
  %352 = load %struct.TYPE_27__*, %struct.TYPE_27__** %351, align 8
  %353 = load i32, i32* %11, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %352, i64 %354
  %356 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %355, i32 0, i32 0
  %357 = load i64*, i64** %356, align 8
  %358 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %359 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %358, i32 0, i32 2
  %360 = load i64, i64* %359, align 8
  %361 = getelementptr inbounds i64, i64* %357, i64 %360
  %362 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %341, i64 %344, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64* %361)
  br label %363

363:                                              ; preds = %338, %304
  br label %364

364:                                              ; preds = %363, %268
  br label %365

365:                                              ; preds = %364, %226
  br label %366

366:                                              ; preds = %391, %365
  %367 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %368 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %367, i32 0, i32 7
  %369 = load i8*, i8** %368, align 8
  %370 = call i32 @strlen(i8* %369)
  %371 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %372 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %371, i32 0, i32 14
  %373 = load i64, i64* %372, align 8
  %374 = trunc i64 %373 to i32
  %375 = icmp ult i32 %370, %374
  br i1 %375, label %376, label %419

376:                                              ; preds = %366
  %377 = load i32, i32* %11, align 4
  %378 = add nsw i32 %377, 1
  store i32 %378, i32* %11, align 4
  %379 = load i32, i32* %11, align 4
  %380 = sext i32 %379 to i64
  %381 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %382 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %381, i32 0, i32 13
  %383 = load %struct.TYPE_34__*, %struct.TYPE_34__** %382, align 8
  %384 = load i32, i32* %10, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %383, i64 %385
  %387 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %386, i32 0, i32 1
  %388 = load i64, i64* %387, align 8
  %389 = icmp eq i64 %380, %388
  br i1 %389, label %390, label %391

390:                                              ; preds = %376
  br label %419

391:                                              ; preds = %376
  %392 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %393 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %392, i32 0, i32 7
  %394 = load i8*, i8** %393, align 8
  %395 = call i8* @strchr(i8* %394, i32 0)
  %396 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %397 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %396, i32 0, i32 14
  %398 = load i64, i64* %397, align 8
  %399 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %400 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %399, i32 0, i32 7
  %401 = load i8*, i8** %400, align 8
  %402 = call i32 @strlen(i8* %401)
  %403 = zext i32 %402 to i64
  %404 = sub nsw i64 %398, %403
  %405 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %406 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %405, i32 0, i32 13
  %407 = load %struct.TYPE_34__*, %struct.TYPE_34__** %406, align 8
  %408 = load i32, i32* %10, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %407, i64 %409
  %411 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %410, i32 0, i32 3
  %412 = load %struct.TYPE_27__*, %struct.TYPE_27__** %411, align 8
  %413 = load i32, i32* %11, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %412, i64 %414
  %416 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %415, i32 0, i32 0
  %417 = load i64*, i64** %416, align 8
  %418 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %395, i64 %404, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64* %417)
  br label %366

419:                                              ; preds = %390, %366
  %420 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %421 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %420, i32 0, i32 7
  %422 = load i8*, i8** %421, align 8
  %423 = call i8* @strdup(i8* %422)
  store i8* %423, i8** %13, align 8
  %424 = load i8*, i8** %13, align 8
  store i8* %424, i8** %14, align 8
  %425 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %426 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %425, i32 0, i32 7
  %427 = load i8*, i8** %426, align 8
  store i8* %427, i8** %15, align 8
  %428 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %429 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %428, i32 0, i32 7
  %430 = load i8*, i8** %429, align 8
  %431 = call i32 @EnsureUTF8(i8* %430)
  br label %432

432:                                              ; preds = %447, %419
  %433 = load i8*, i8** %15, align 8
  %434 = load i8, i8* %433, align 1
  %435 = sext i8 %434 to i32
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %452

437:                                              ; preds = %432
  %438 = load i8*, i8** %15, align 8
  %439 = load i8, i8* %438, align 1
  %440 = sext i8 %439 to i32
  %441 = load i8*, i8** %13, align 8
  %442 = load i8, i8* %441, align 1
  %443 = sext i8 %442 to i32
  %444 = icmp ne i32 %440, %443
  br i1 %444, label %445, label %447

445:                                              ; preds = %437
  %446 = load i8*, i8** %15, align 8
  store i8 32, i8* %446, align 1
  br label %447

447:                                              ; preds = %445, %437
  %448 = load i8*, i8** %15, align 8
  %449 = getelementptr inbounds i8, i8* %448, i32 1
  store i8* %449, i8** %15, align 8
  %450 = load i8*, i8** %13, align 8
  %451 = getelementptr inbounds i8, i8* %450, i32 1
  store i8* %451, i8** %13, align 8
  br label %432

452:                                              ; preds = %432
  %453 = load i8*, i8** %14, align 8
  %454 = call i32 @free(i8* %453)
  %455 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %456 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %455, i32 0, i32 7
  %457 = load i8*, i8** %456, align 8
  %458 = call %struct.TYPE_26__* @text_segment_New(i8* %457)
  %459 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %460 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %459, i32 0, i32 2
  %461 = load %struct.TYPE_30__*, %struct.TYPE_30__** %460, align 8
  %462 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %461, i32 0, i32 4
  store %struct.TYPE_26__* %458, %struct.TYPE_26__** %462, align 8
  %463 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %464 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %463, i32 0, i32 10
  %465 = load %struct.TYPE_25__*, %struct.TYPE_25__** %464, align 8
  %466 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %465, i32 0, i32 0
  %467 = load i64, i64* %466, align 8
  %468 = icmp sgt i64 %467, 0
  br i1 %468, label %469, label %480

469:                                              ; preds = %452
  %470 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %471 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %470, i32 0, i32 10
  %472 = load %struct.TYPE_25__*, %struct.TYPE_25__** %471, align 8
  %473 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %472, i32 0, i32 0
  %474 = load i64, i64* %473, align 8
  %475 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %476 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %475, i32 0, i32 2
  %477 = load %struct.TYPE_30__*, %struct.TYPE_30__** %476, align 8
  %478 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %477, i32 0, i32 5
  %479 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %478, i32 0, i32 0
  store i64 %474, i64* %479, align 8
  br label %480

480:                                              ; preds = %469, %452
  %481 = load i64, i64* %5, align 8
  %482 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %483 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %482, i32 0, i32 4
  store i64 %481, i64* %483, align 8
  %484 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %485 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %484, i32 0, i32 3
  store i64 0, i64* %485, align 8
  %486 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %487 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %486, i32 0, i32 0
  store i32 1, i32* %487, align 8
  %488 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %489 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %488, i32 0, i32 8
  %490 = load i32, i32* %489, align 8
  %491 = icmp slt i32 %490, 0
  br i1 %491, label %492, label %502

492:                                              ; preds = %480
  %493 = load i32, i32* @SUBPICTURE_ALIGN_LEFT, align 4
  %494 = load i32, i32* @SUBPICTURE_ALIGN_TOP, align 4
  %495 = or i32 %493, %494
  %496 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %497 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %496, i32 0, i32 2
  %498 = load %struct.TYPE_30__*, %struct.TYPE_30__** %497, align 8
  %499 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %498, i32 0, i32 0
  store i32 %495, i32* %499, align 8
  %500 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %501 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %500, i32 0, i32 1
  store i32 1, i32* %501, align 4
  br label %512

502:                                              ; preds = %480
  %503 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %504 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %503, i32 0, i32 8
  %505 = load i32, i32* %504, align 8
  %506 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %507 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %506, i32 0, i32 2
  %508 = load %struct.TYPE_30__*, %struct.TYPE_30__** %507, align 8
  %509 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %508, i32 0, i32 0
  store i32 %505, i32* %509, align 8
  %510 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %511 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %510, i32 0, i32 1
  store i32 0, i32* %511, align 4
  br label %512

512:                                              ; preds = %502, %492
  %513 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %514 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %513, i32 0, i32 12
  %515 = load i32, i32* %514, align 4
  %516 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %517 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %516, i32 0, i32 2
  %518 = load %struct.TYPE_30__*, %struct.TYPE_30__** %517, align 8
  %519 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %518, i32 0, i32 1
  store i32 %515, i32* %519, align 4
  %520 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %521 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %520, i32 0, i32 11
  %522 = load i32, i32* %521, align 8
  %523 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %524 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %523, i32 0, i32 2
  %525 = load %struct.TYPE_30__*, %struct.TYPE_30__** %524, align 8
  %526 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %525, i32 0, i32 3
  store i32 %522, i32* %526, align 8
  %527 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %528 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %527, i32 0, i32 10
  %529 = load %struct.TYPE_25__*, %struct.TYPE_25__** %528, align 8
  %530 = call i32 @text_style_Duplicate(%struct.TYPE_25__* %529)
  %531 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %532 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %531, i32 0, i32 2
  %533 = load %struct.TYPE_30__*, %struct.TYPE_30__** %532, align 8
  %534 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %533, i32 0, i32 4
  %535 = load %struct.TYPE_26__*, %struct.TYPE_26__** %534, align 8
  %536 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %535, i32 0, i32 0
  store i32 %530, i32* %536, align 4
  %537 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %538 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %537, i32 0, i32 2
  %539 = load %struct.TYPE_35__*, %struct.TYPE_35__** %538, align 8
  %540 = icmp ne %struct.TYPE_35__* %539, null
  br i1 %540, label %541, label %610

541:                                              ; preds = %512
  %542 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %543 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %542, i32 0, i32 2
  %544 = load %struct.TYPE_35__*, %struct.TYPE_35__** %543, align 8
  store %struct.TYPE_35__* %544, %struct.TYPE_35__** %16, align 8
  %545 = load i32, i32* @VLC_CODEC_YUVA, align 4
  %546 = call i32 @video_format_Init(%struct.TYPE_31__* %17, i32 %545)
  %547 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %17, i32 0, i32 1
  store i32 1, i32* %547, align 4
  %548 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %17, i32 0, i32 0
  store i32 1, i32* %548, align 8
  %549 = load %struct.TYPE_35__*, %struct.TYPE_35__** %16, align 8
  %550 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %549, i32 0, i32 0
  %551 = load %struct.TYPE_29__*, %struct.TYPE_29__** %550, align 8
  %552 = load i64, i64* @Y_PLANE, align 8
  %553 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %551, i64 %552
  %554 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %553, i32 0, i32 1
  %555 = load i64, i64* %554, align 8
  %556 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %17, i32 0, i32 2
  store i64 %555, i64* %556, align 8
  %557 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %17, i32 0, i32 5
  store i64 %555, i64* %557, align 8
  %558 = load %struct.TYPE_35__*, %struct.TYPE_35__** %16, align 8
  %559 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %558, i32 0, i32 0
  %560 = load %struct.TYPE_29__*, %struct.TYPE_29__** %559, align 8
  %561 = load i64, i64* @Y_PLANE, align 8
  %562 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %560, i64 %561
  %563 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %562, i32 0, i32 0
  %564 = load i32, i32* %563, align 8
  %565 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %17, i32 0, i32 3
  store i32 %564, i32* %565, align 8
  %566 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %17, i32 0, i32 4
  store i32 %564, i32* %566, align 4
  %567 = call i8* @subpicture_region_New(%struct.TYPE_31__* %17)
  %568 = bitcast i8* %567 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %568, %struct.TYPE_33__** %9, align 8
  %569 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %570 = icmp ne %struct.TYPE_33__* %569, null
  br i1 %570, label %574, label %571

571:                                              ; preds = %541
  %572 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %573 = call i32 @msg_Err(%struct.TYPE_23__* %572, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %609

574:                                              ; preds = %541
  %575 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %576 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %575, i32 0, i32 2
  %577 = load %struct.TYPE_30__*, %struct.TYPE_30__** %576, align 8
  %578 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %577, i32 0, i32 1
  %579 = load i32, i32* %578, align 4
  %580 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %581 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %580, i32 0, i32 2
  store i32 %579, i32* %581, align 4
  %582 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %583 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %582, i32 0, i32 2
  %584 = load %struct.TYPE_30__*, %struct.TYPE_30__** %583, align 8
  %585 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %584, i32 0, i32 3
  %586 = load i32, i32* %585, align 8
  %587 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %588 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %587, i32 0, i32 1
  store i32 %586, i32* %588, align 4
  %589 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %590 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %589, i32 0, i32 0
  %591 = load i32, i32* %590, align 4
  %592 = load %struct.TYPE_35__*, %struct.TYPE_35__** %16, align 8
  %593 = call i32 @picture_Copy(i32 %591, %struct.TYPE_35__* %592)
  %594 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %595 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %596 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %595, i32 0, i32 2
  %597 = load %struct.TYPE_30__*, %struct.TYPE_30__** %596, align 8
  %598 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %597, i32 0, i32 2
  store %struct.TYPE_33__* %594, %struct.TYPE_33__** %598, align 8
  %599 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %17, i32 0, i32 2
  %600 = load i64, i64* %599, align 8
  %601 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %602 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %601, i32 0, i32 2
  %603 = load %struct.TYPE_30__*, %struct.TYPE_30__** %602, align 8
  %604 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %603, i32 0, i32 1
  %605 = load i32, i32* %604, align 4
  %606 = sext i32 %605 to i64
  %607 = add nsw i64 %606, %600
  %608 = trunc i64 %607 to i32
  store i32 %608, i32* %604, align 4
  br label %609

609:                                              ; preds = %574, %571
  br label %610

610:                                              ; preds = %609, %512
  %611 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %612 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %611, i32 0, i32 9
  %613 = call i32 @vlc_mutex_unlock(i32* %612)
  %614 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  store %struct.TYPE_32__* %614, %struct.TYPE_32__** %3, align 8
  br label %615

615:                                              ; preds = %610, %190, %175, %69, %33
  %616 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  ret %struct.TYPE_32__* %616
}

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local %struct.TYPE_32__* @filter_NewSubpicture(%struct.TYPE_23__*) #1

declare dso_local i32 @video_format_Init(%struct.TYPE_31__*, i32) #1

declare dso_local i8* @subpicture_region_New(%struct.TYPE_31__*) #1

declare dso_local i32 @subpicture_Delete(%struct.TYPE_32__*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @EnsureUTF8(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.TYPE_26__* @text_segment_New(i8*) #1

declare dso_local i32 @text_style_Duplicate(%struct.TYPE_25__*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_23__*, i8*) #1

declare dso_local i32 @picture_Copy(i32, %struct.TYPE_35__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
