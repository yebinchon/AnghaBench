; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/extr_splitter.c_vlc_vidsplit_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/extr_splitter.c_vlc_vidsplit_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32*, i32, i32, i32 }
%struct.TYPE_18__ = type { i32 (%struct.TYPE_18__*)*, i32, i32, i32, i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.vlc_vidsplit_part*, i32*, i32, %struct.TYPE_21__ }
%struct.vlc_vidsplit_part = type { i32, i32, i32, %struct.TYPE_18__*, i32* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_22__*, i32, i32* }
%struct.TYPE_22__ = type { i8*, i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"video-splitter\00", align 1
@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"video splitter\00", align 1
@__const.vlc_vidsplit_Open.vdcfg = private unnamed_addr constant %struct.TYPE_20__ { i32 1, i32* null, i32 1, i32 0, i32 0 }, align 8
@vlc_vidsplit_Prepare = common dso_local global i32 0, align 4
@vlc_vidsplit_Display = common dso_local global i32 0, align 4
@vlc_vidsplit_Control = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_20__*, i32*, i32*)* @vlc_vidsplit_Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlc_vidsplit_Open(%struct.TYPE_18__* %0, %struct.TYPE_20__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_22__*, align 8
  %16 = alloca %struct.TYPE_20__, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.vlc_vidsplit_part*, align 8
  %19 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %21 = call i32* @VLC_OBJECT(%struct.TYPE_18__* %20)
  store i32* %21, i32** %10, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %23 = call i64 @vout_display_cfg_IsWindowed(%struct.TYPE_20__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %26, i32* %5, align 4
  br label %241

27:                                               ; preds = %4
  %28 = load i32*, i32** %10, align 8
  %29 = call i8* @var_InheritString(i32* %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i8* %29, i8** %11, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %33, i32* %5, align 4
  br label %241

34:                                               ; preds = %27
  %35 = load i32*, i32** %10, align 8
  %36 = call %struct.TYPE_19__* @vlc_object_create(i32* %35, i32 56)
  store %struct.TYPE_19__* %36, %struct.TYPE_19__** %12, align 8
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %38 = icmp eq %struct.TYPE_19__* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = load i8*, i8** %11, align 8
  %44 = call i32 @free(i8* %43)
  %45 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %45, i32* %5, align 4
  br label %241

46:                                               ; preds = %34
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 5
  store %struct.TYPE_19__* %47, %struct.TYPE_19__** %49, align 8
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 3
  store %struct.TYPE_21__* %51, %struct.TYPE_21__** %13, align 8
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 2
  %54 = call i32 @vlc_mutex_init(i32* %53)
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 4
  %59 = call i32 @video_format_Copy(i32* %56, i32* %58)
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = call i32* @module_need(%struct.TYPE_21__* %60, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %61, i32 1)
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 3
  store i32* %62, i32** %64, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = call i32 @free(i8* %65)
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %81

71:                                               ; preds = %46
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 2
  %74 = call i32 @video_format_Clean(i32* %73)
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 2
  %77 = call i32 @vlc_mutex_destroy(i32* %76)
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %79 = call i32 @vlc_object_delete(%struct.TYPE_21__* %78)
  %80 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %80, i32* %5, align 4
  br label %241

81:                                               ; preds = %46
  %82 = load i32*, i32** %10, align 8
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = mul i64 %86, 4
  %88 = trunc i64 %87 to i32
  %89 = call i8* @vlc_obj_malloc(i32* %82, i32 %88)
  %90 = bitcast i8* %89 to i32*
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 1
  store i32* %90, i32** %92, align 8
  %93 = load i32*, i32** %10, align 8
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = mul i64 %97, 32
  %99 = trunc i64 %98 to i32
  %100 = call i8* @vlc_obj_malloc(i32* %93, i32 %99)
  %101 = bitcast i8* %100 to %struct.vlc_vidsplit_part*
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 0
  store %struct.vlc_vidsplit_part* %101, %struct.vlc_vidsplit_part** %103, align 8
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = icmp eq i32* %106, null
  br i1 %107, label %113, label %108

108:                                              ; preds = %81
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 0
  %111 = load %struct.vlc_vidsplit_part*, %struct.vlc_vidsplit_part** %110, align 8
  %112 = icmp eq %struct.vlc_vidsplit_part* %111, null
  br label %113

113:                                              ; preds = %108, %81
  %114 = phi i1 [ true, %81 ], [ %112, %108 ]
  %115 = zext i1 %114 to i32
  %116 = call i64 @unlikely(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %113
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 0
  store i32 0, i32* %120, align 8
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %122 = call i32 @vlc_vidsplit_Close(%struct.TYPE_18__* %121)
  %123 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %123, i32* %5, align 4
  br label %241

124:                                              ; preds = %113
  store i32 0, i32* %14, align 4
  br label %125

125:                                              ; preds = %224, %124
  %126 = load i32, i32* %14, align 4
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp slt i32 %126, %129
  br i1 %130, label %131, label %227

131:                                              ; preds = %125
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %133, align 8
  %135 = load i32, i32* %14, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i64 %136
  store %struct.TYPE_22__* %137, %struct.TYPE_22__** %15, align 8
  %138 = bitcast %struct.TYPE_20__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %138, i8* align 8 bitcast (%struct.TYPE_20__* @__const.vlc_vidsplit_Open.vdcfg to i8*), i64 32, i1 false)
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  store i8* %141, i8** %17, align 8
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 0
  %144 = load %struct.vlc_vidsplit_part*, %struct.vlc_vidsplit_part** %143, align 8
  %145 = load i32, i32* %14, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.vlc_vidsplit_part, %struct.vlc_vidsplit_part* %144, i64 %146
  store %struct.vlc_vidsplit_part* %147, %struct.vlc_vidsplit_part** %18, align 8
  %148 = load %struct.vlc_vidsplit_part*, %struct.vlc_vidsplit_part** %18, align 8
  %149 = getelementptr inbounds %struct.vlc_vidsplit_part, %struct.vlc_vidsplit_part* %148, i32 0, i32 2
  %150 = call i32 @vlc_sem_init(i32* %149, i32 1)
  %151 = load %struct.vlc_vidsplit_part*, %struct.vlc_vidsplit_part** %18, align 8
  %152 = getelementptr inbounds %struct.vlc_vidsplit_part, %struct.vlc_vidsplit_part* %151, i32 0, i32 3
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %152, align 8
  %153 = load %struct.vlc_vidsplit_part*, %struct.vlc_vidsplit_part** %18, align 8
  %154 = getelementptr inbounds %struct.vlc_vidsplit_part, %struct.vlc_vidsplit_part* %153, i32 0, i32 0
  store i32 1, i32* %154, align 8
  %155 = load %struct.vlc_vidsplit_part*, %struct.vlc_vidsplit_part** %18, align 8
  %156 = getelementptr inbounds %struct.vlc_vidsplit_part, %struct.vlc_vidsplit_part* %155, i32 0, i32 1
  store i32 1, i32* %156, align 4
  %157 = load i32*, i32** %10, align 8
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %158, i32 0, i32 1
  %160 = load %struct.vlc_vidsplit_part*, %struct.vlc_vidsplit_part** %18, align 8
  %161 = call i32* @video_splitter_CreateWindow(i32* %157, %struct.TYPE_20__* %16, i32* %159, %struct.vlc_vidsplit_part* %160)
  %162 = load %struct.vlc_vidsplit_part*, %struct.vlc_vidsplit_part** %18, align 8
  %163 = getelementptr inbounds %struct.vlc_vidsplit_part, %struct.vlc_vidsplit_part* %162, i32 0, i32 4
  store i32* %161, i32** %163, align 8
  %164 = load %struct.vlc_vidsplit_part*, %struct.vlc_vidsplit_part** %18, align 8
  %165 = getelementptr inbounds %struct.vlc_vidsplit_part, %struct.vlc_vidsplit_part* %164, i32 0, i32 4
  %166 = load i32*, i32** %165, align 8
  %167 = icmp eq i32* %166, null
  br i1 %167, label %168, label %175

168:                                              ; preds = %131
  %169 = load i32, i32* %14, align 4
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %171 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 8
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %173 = call i32 @vlc_vidsplit_Close(%struct.TYPE_18__* %172)
  %174 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %174, i32* %5, align 4
  br label %241

175:                                              ; preds = %131
  %176 = load %struct.vlc_vidsplit_part*, %struct.vlc_vidsplit_part** %18, align 8
  %177 = getelementptr inbounds %struct.vlc_vidsplit_part, %struct.vlc_vidsplit_part* %176, i32 0, i32 4
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 1
  store i32* %178, i32** %179, align 8
  %180 = load i32*, i32** %10, align 8
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %181, i32 0, i32 1
  %183 = load i32*, i32** %9, align 8
  %184 = load i8*, i8** %17, align 8
  %185 = call %struct.TYPE_18__* @vout_display_New(i32* %180, i32* %182, i32* %183, %struct.TYPE_20__* %16, i8* %184, i32* null)
  store %struct.TYPE_18__* %185, %struct.TYPE_18__** %19, align 8
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %187 = icmp eq %struct.TYPE_18__* %186, null
  br i1 %187, label %188, label %206

188:                                              ; preds = %175
  %189 = load %struct.vlc_vidsplit_part*, %struct.vlc_vidsplit_part** %18, align 8
  %190 = getelementptr inbounds %struct.vlc_vidsplit_part, %struct.vlc_vidsplit_part* %189, i32 0, i32 4
  %191 = load i32*, i32** %190, align 8
  %192 = call i32 @vout_window_Disable(i32* %191)
  %193 = load %struct.vlc_vidsplit_part*, %struct.vlc_vidsplit_part** %18, align 8
  %194 = getelementptr inbounds %struct.vlc_vidsplit_part, %struct.vlc_vidsplit_part* %193, i32 0, i32 4
  %195 = load i32*, i32** %194, align 8
  %196 = call i32 @vout_window_Delete(i32* %195)
  %197 = load %struct.vlc_vidsplit_part*, %struct.vlc_vidsplit_part** %18, align 8
  %198 = getelementptr inbounds %struct.vlc_vidsplit_part, %struct.vlc_vidsplit_part* %197, i32 0, i32 2
  %199 = call i32 @vlc_sem_destroy(i32* %198)
  %200 = load i32, i32* %14, align 4
  %201 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %202 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %201, i32 0, i32 0
  store i32 %200, i32* %202, align 8
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %204 = call i32 @vlc_vidsplit_Close(%struct.TYPE_18__* %203)
  %205 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %205, i32* %5, align 4
  br label %241

206:                                              ; preds = %175
  %207 = load %struct.vlc_vidsplit_part*, %struct.vlc_vidsplit_part** %18, align 8
  %208 = getelementptr inbounds %struct.vlc_vidsplit_part, %struct.vlc_vidsplit_part* %207, i32 0, i32 2
  %209 = call i32 @vlc_sem_wait(i32* %208)
  %210 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %211 = load %struct.vlc_vidsplit_part*, %struct.vlc_vidsplit_part** %18, align 8
  %212 = getelementptr inbounds %struct.vlc_vidsplit_part, %struct.vlc_vidsplit_part* %211, i32 0, i32 3
  store %struct.TYPE_18__* %210, %struct.TYPE_18__** %212, align 8
  %213 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %214 = load %struct.vlc_vidsplit_part*, %struct.vlc_vidsplit_part** %18, align 8
  %215 = getelementptr inbounds %struct.vlc_vidsplit_part, %struct.vlc_vidsplit_part* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.vlc_vidsplit_part*, %struct.vlc_vidsplit_part** %18, align 8
  %218 = getelementptr inbounds %struct.vlc_vidsplit_part, %struct.vlc_vidsplit_part* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @vout_display_SetSize(%struct.TYPE_18__* %213, i32 %216, i32 %219)
  %221 = load %struct.vlc_vidsplit_part*, %struct.vlc_vidsplit_part** %18, align 8
  %222 = getelementptr inbounds %struct.vlc_vidsplit_part, %struct.vlc_vidsplit_part* %221, i32 0, i32 2
  %223 = call i32 @vlc_sem_post(i32* %222)
  br label %224

224:                                              ; preds = %206
  %225 = load i32, i32* %14, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %14, align 4
  br label %125

227:                                              ; preds = %125
  %228 = load i32, i32* @vlc_vidsplit_Prepare, align 4
  %229 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %229, i32 0, i32 3
  store i32 %228, i32* %230, align 8
  %231 = load i32, i32* @vlc_vidsplit_Display, align 4
  %232 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %233 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %232, i32 0, i32 2
  store i32 %231, i32* %233, align 4
  %234 = load i32, i32* @vlc_vidsplit_Control, align 4
  %235 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %235, i32 0, i32 1
  store i32 %234, i32* %236, align 8
  %237 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %237, i32 0, i32 0
  store i32 (%struct.TYPE_18__*)* @vlc_vidsplit_Close, i32 (%struct.TYPE_18__*)** %238, align 8
  %239 = load i32*, i32** %8, align 8
  %240 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %240, i32* %5, align 4
  br label %241

241:                                              ; preds = %227, %188, %168, %118, %71, %42, %32, %25
  %242 = load i32, i32* %5, align 4
  ret i32 %242
}

declare dso_local i32* @VLC_OBJECT(%struct.TYPE_18__*) #1

declare dso_local i64 @vout_display_cfg_IsWindowed(%struct.TYPE_20__*) #1

declare dso_local i8* @var_InheritString(i32*, i8*) #1

declare dso_local %struct.TYPE_19__* @vlc_object_create(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @vlc_mutex_init(i32*) #1

declare dso_local i32 @video_format_Copy(i32*, i32*) #1

declare dso_local i32* @module_need(%struct.TYPE_21__*, i8*, i8*, i32) #1

declare dso_local i32 @video_format_Clean(i32*) #1

declare dso_local i32 @vlc_mutex_destroy(i32*) #1

declare dso_local i32 @vlc_object_delete(%struct.TYPE_21__*) #1

declare dso_local i8* @vlc_obj_malloc(i32*, i32) #1

declare dso_local i32 @vlc_vidsplit_Close(%struct.TYPE_18__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vlc_sem_init(i32*, i32) #1

declare dso_local i32* @video_splitter_CreateWindow(i32*, %struct.TYPE_20__*, i32*, %struct.vlc_vidsplit_part*) #1

declare dso_local %struct.TYPE_18__* @vout_display_New(i32*, i32*, i32*, %struct.TYPE_20__*, i8*, i32*) #1

declare dso_local i32 @vout_window_Disable(i32*) #1

declare dso_local i32 @vout_window_Delete(i32*) #1

declare dso_local i32 @vlc_sem_destroy(i32*) #1

declare dso_local i32 @vlc_sem_wait(i32*) #1

declare dso_local i32 @vout_display_SetSize(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @vlc_sem_post(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
