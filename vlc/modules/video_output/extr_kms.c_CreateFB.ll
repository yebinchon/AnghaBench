; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/extr_kms.c_CreateFB.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/extr_kms.c_CreateFB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32*, i64*, i64*, i32, i64*, i32 }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i64, i32, i32 }
%struct.drm_mode_destroy_dumb = type { i32, i32, i32, i64, i32, i32 }
%struct.drm_mode_map_dumb = type { i32, i32, i32, i64, i32, i32 }

@DRM_IOCTL_MODE_CREATE_DUMB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Cannot create dumb buffer\00", align 1
@drvFail = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Cannot create frame buffer\00", align 1
@DRM_IOCTL_MODE_MAP_DUMB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Cannot map dumb buffer\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"Cannot mmap dumb buffer\00", align 1
@drvSuccess = common dso_local global i64 0, align 8
@DRM_IOCTL_MODE_DESTROY_DUMB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i32)* @CreateFB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @CreateFB(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.drm_mode_create_dumb, align 8
  %8 = alloca %struct.drm_mode_destroy_dumb, align 8
  %9 = alloca %struct.drm_mode_map_dumb, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca [4 x i64], align 16
  %15 = alloca [4 x i64], align 16
  %16 = alloca [4 x i64], align 16
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %6, align 8
  %20 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %7, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %20, align 8
  %24 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %7, i32 0, i32 1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %24, align 4
  %28 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %7, i32 0, i32 2
  store i32 32, i32* %28, align 8
  %29 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %7, i32 0, i32 3
  store i64 0, i64* %29, align 8
  %30 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %7, i32 0, i32 4
  store i32 0, i32* %30, align 8
  %31 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %7, i32 0, i32 5
  store i32 0, i32* %31, align 4
  %32 = bitcast %struct.drm_mode_map_dumb* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %32, i8 0, i64 32, i1 false)
  store i32 512, i32* %10, align 4
  store i32 16, i32* %11, align 4
  %33 = bitcast [4 x i64]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %33, i8 0, i64 32, i1 false)
  %34 = bitcast [4 x i64]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %34, i8 0, i64 32, i1 false)
  %35 = bitcast [4 x i64]* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %35, i8 0, i64 32, i1 false)
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %96 [
    i32 130, label %39
    i32 129, label %39
    i32 128, label %39
    i32 131, label %68
  ]

39:                                               ; preds = %2, %2, %2
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = mul nsw i32 %42, 2
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @ALIGN(i32 %43, i32 %44)
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @ALIGN(i32 %53, i32 %54)
  %56 = mul nsw i32 %50, %55
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 4
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  store i32 %56, i32* %60, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @ALIGN(i32 %63, i32 %64)
  %66 = mul nsw i32 2, %65
  %67 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %7, i32 0, i32 1
  store i32 %66, i32* %67, align 4
  br label %111

68:                                               ; preds = %2
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @ALIGN(i32 %71, i32 %72)
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @ALIGN(i32 %81, i32 %82)
  %84 = mul nsw i32 %78, %83
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 4
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  store i32 %84, i32* %88, align 4
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @ALIGN(i32 %91, i32 %92)
  %94 = mul nsw i32 2, %93
  %95 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %7, i32 0, i32 1
  store i32 %94, i32* %95, align 4
  br label %111

96:                                               ; preds = %2
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @ALIGN(i32 %99, i32 %100)
  %102 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %7, i32 0, i32 1
  store i32 %101, i32* %102, align 4
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = mul nsw i32 %105, 4
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @ALIGN(i32 %106, i32 %107)
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 4
  br label %111

111:                                              ; preds = %96, %68, %39
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 7
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @DRM_IOCTL_MODE_CREATE_DUMB, align 4
  %116 = bitcast %struct.drm_mode_create_dumb* %7 to %struct.drm_mode_map_dumb*
  %117 = call i64 @drmIoctl(i32 %114, i32 %115, %struct.drm_mode_map_dumb* %116)
  store i64 %117, i64* %12, align 8
  %118 = load i64, i64* %12, align 8
  %119 = icmp slt i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %111
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %122 = call i32 @msg_Err(%struct.TYPE_5__* %121, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %123 = load i64, i64* @drvFail, align 8
  store i64 %123, i64* %3, align 8
  br label %300

124:                                              ; preds = %111
  %125 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %7, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 9
  store i32 %126, i32* %128, align 8
  %129 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %7, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 5
  %133 = load i64*, i64** %132, align 8
  %134 = load i32, i32* %5, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %133, i64 %135
  store i64 %130, i64* %136, align 8
  store i64 0, i64* %13, align 8
  br label %137

137:                                              ; preds = %177, %124
  %138 = load i64, i64* %13, align 8
  %139 = getelementptr inbounds [4 x i64], [4 x i64]* %15, i64 0, i64 0
  %140 = call i64 @ARRAY_SIZE(i64* %139)
  %141 = icmp ult i64 %138, %140
  br i1 %141, label %142, label %155

142:                                              ; preds = %137
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 4
  %145 = load i32*, i32** %144, align 8
  %146 = load i64, i64* %13, align 8
  %147 = getelementptr inbounds i32, i32* %145, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %142
  %151 = load i64, i64* %13, align 8
  %152 = icmp ult i64 %151, 1
  br label %153

153:                                              ; preds = %150, %142
  %154 = phi i1 [ true, %142 ], [ %152, %150 ]
  br label %155

155:                                              ; preds = %153, %137
  %156 = phi i1 [ false, %137 ], [ %154, %153 ]
  br i1 %156, label %157, label %180

157:                                              ; preds = %155
  %158 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %7, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* %13, align 8
  %161 = getelementptr inbounds [4 x i64], [4 x i64]* %15, i64 0, i64 %160
  store i64 %159, i64* %161, align 8
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = sext i32 %164 to i64
  %166 = load i64, i64* %13, align 8
  %167 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 %166
  store i64 %165, i64* %167, align 8
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 4
  %170 = load i32*, i32** %169, align 8
  %171 = load i64, i64* %13, align 8
  %172 = getelementptr inbounds i32, i32* %170, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = sext i32 %173 to i64
  %175 = load i64, i64* %13, align 8
  %176 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 %175
  store i64 %174, i64* %176, align 8
  br label %177

177:                                              ; preds = %157
  %178 = load i64, i64* %13, align 8
  %179 = add i64 %178, 1
  store i64 %179, i64* %13, align 8
  br label %137

180:                                              ; preds = %155
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 7
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = getelementptr inbounds [4 x i64], [4 x i64]* %15, i64 0, i64 0
  %194 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 0
  %195 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 0
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 8
  %198 = load i64*, i64** %197, align 8
  %199 = load i32, i32* %5, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i64, i64* %198, i64 %200
  %202 = call i64 @drmModeAddFB2(i32 %183, i32 %186, i32 %189, i32 %192, i64* %193, i64* %194, i64* %195, i64* %201, i32 0)
  store i64 %202, i64* %12, align 8
  %203 = load i64, i64* %12, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %180
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %207 = call i32 @msg_Err(%struct.TYPE_5__* %206, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %208 = load i64, i64* @drvFail, align 8
  store i64 %208, i64* %12, align 8
  br label %282

209:                                              ; preds = %180
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 5
  %212 = load i64*, i64** %211, align 8
  %213 = load i32, i32* %5, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i64, i64* %212, i64 %214
  %216 = load i64, i64* %215, align 8
  %217 = getelementptr inbounds %struct.drm_mode_map_dumb, %struct.drm_mode_map_dumb* %9, i32 0, i32 3
  store i64 %216, i64* %217, align 8
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 7
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @DRM_IOCTL_MODE_MAP_DUMB, align 4
  %222 = call i64 @drmIoctl(i32 %220, i32 %221, %struct.drm_mode_map_dumb* %9)
  store i64 %222, i64* %12, align 8
  %223 = load i64, i64* %12, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %209
  %226 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %227 = call i32 @msg_Err(%struct.TYPE_5__* %226, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %228 = load i64, i64* @drvFail, align 8
  store i64 %228, i64* %12, align 8
  br label %264

229:                                              ; preds = %209
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 9
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @PROT_READ, align 4
  %234 = load i32, i32* @PROT_WRITE, align 4
  %235 = or i32 %233, %234
  %236 = load i32, i32* @MAP_SHARED, align 4
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 7
  %239 = load i32, i32* %238, align 8
  %240 = getelementptr inbounds %struct.drm_mode_map_dumb, %struct.drm_mode_map_dumb* %9, i32 0, i32 4
  %241 = load i32, i32* %240, align 8
  %242 = call i64 @mmap(i32 0, i32 %232, i32 %235, i32 %236, i32 %239, i32 %241)
  %243 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 6
  %245 = load i64*, i64** %244, align 8
  %246 = load i32, i32* %5, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i64, i64* %245, i64 %247
  store i64 %242, i64* %248, align 8
  %249 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 6
  %251 = load i64*, i64** %250, align 8
  %252 = load i32, i32* %5, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i64, i64* %251, i64 %253
  %255 = load i64, i64* %254, align 8
  %256 = load i64, i64* @MAP_FAILED, align 8
  %257 = icmp eq i64 %255, %256
  br i1 %257, label %258, label %262

258:                                              ; preds = %229
  %259 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %260 = call i32 @msg_Err(%struct.TYPE_5__* %259, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %261 = load i64, i64* @drvFail, align 8
  store i64 %261, i64* %12, align 8
  br label %264

262:                                              ; preds = %229
  %263 = load i64, i64* @drvSuccess, align 8
  store i64 %263, i64* %3, align 8
  br label %300

264:                                              ; preds = %258, %225
  %265 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i32 0, i32 7
  %267 = load i32, i32* %266, align 8
  %268 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 8
  %270 = load i64*, i64** %269, align 8
  %271 = load i32, i32* %5, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i64, i64* %270, i64 %272
  %274 = load i64, i64* %273, align 8
  %275 = call i32 @drmModeRmFB(i32 %267, i64 %274)
  %276 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 8
  %278 = load i64*, i64** %277, align 8
  %279 = load i32, i32* %5, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i64, i64* %278, i64 %280
  store i64 0, i64* %281, align 8
  br label %282

282:                                              ; preds = %264, %205
  %283 = bitcast %struct.drm_mode_destroy_dumb* %8 to %struct.drm_mode_map_dumb*
  %284 = call i32 @memset(%struct.drm_mode_map_dumb* %283, i32 0, i32 32)
  %285 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 5
  %287 = load i64*, i64** %286, align 8
  %288 = load i32, i32* %5, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i64, i64* %287, i64 %289
  %291 = load i64, i64* %290, align 8
  %292 = getelementptr inbounds %struct.drm_mode_destroy_dumb, %struct.drm_mode_destroy_dumb* %8, i32 0, i32 3
  store i64 %291, i64* %292, align 8
  %293 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %294 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %293, i32 0, i32 7
  %295 = load i32, i32* %294, align 8
  %296 = load i32, i32* @DRM_IOCTL_MODE_DESTROY_DUMB, align 4
  %297 = bitcast %struct.drm_mode_destroy_dumb* %8 to %struct.drm_mode_map_dumb*
  %298 = call i64 @drmIoctl(i32 %295, i32 %296, %struct.drm_mode_map_dumb* %297)
  %299 = load i64, i64* %12, align 8
  store i64 %299, i64* %3, align 8
  br label %300

300:                                              ; preds = %282, %262, %120
  %301 = load i64, i64* %3, align 8
  ret i64 %301
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ALIGN(i32, i32) #2

declare dso_local i64 @drmIoctl(i32, i32, %struct.drm_mode_map_dumb*) #2

declare dso_local i32 @msg_Err(%struct.TYPE_5__*, i8*) #2

declare dso_local i64 @ARRAY_SIZE(i64*) #2

declare dso_local i64 @drmModeAddFB2(i32, i32, i32, i32, i64*, i64*, i64*, i64*, i32) #2

declare dso_local i64 @mmap(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @drmModeRmFB(i32, i64) #2

declare dso_local i32 @memset(%struct.drm_mode_map_dumb*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
