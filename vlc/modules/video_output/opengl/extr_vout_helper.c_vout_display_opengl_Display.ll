; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/opengl/extr_vout_helper.c_vout_display_opengl_Display.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/opengl/extr_vout_helper.c_vout_display_opengl_Display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { float*, float*, i32, i32, i32, %struct.TYPE_27__, i32*, %struct.TYPE_22__*, %struct.prgm*, %struct.TYPE_23__*, %struct.TYPE_28__ }
%struct.TYPE_27__ = type { i32 (i32)*, i32 (i32, i32, i32)*, i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32)*, i32 (i32)*, i32 (i32, i32, double*, i32)*, i32 (i32, i32)*, i32 (i32, i64)*, i32 (i64)*, i32 (i32, i32*)*, i32 (i32, i32*)*, i32 (i32, i32)*, i32 (i32)*, i32 (i32)*, i32 (i32)* }
%struct.TYPE_22__ = type { double, double, double, double, double, double, i64, i32, i32, i32 }
%struct.prgm = type { %struct.TYPE_26__, %struct.TYPE_25__, %struct.TYPE_24__, %struct.TYPE_21__*, i32 }
%struct.TYPE_26__ = type { i32, i32, i32, i32 }
%struct.TYPE_25__ = type { i32, i32, i32, i32 }
%struct.TYPE_24__ = type { i32, i32* }
%struct.TYPE_21__ = type { i32, i32 (%struct.TYPE_21__*, i32*, i32*, i32)*, i32, %struct.TYPE_31__* }
%struct.TYPE_31__ = type { %struct.TYPE_30__, %struct.TYPE_29__ }
%struct.TYPE_30__ = type { float, i64 }
%struct.TYPE_29__ = type { float, i64 }
%struct.TYPE_23__ = type { %struct.TYPE_21__*, i32 }
%struct.TYPE_28__ = type { float, float, float, float }
%struct.TYPE_20__ = type { float, float, float, float }

@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@PICTURE_PLANE_MAX = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@GL_BLEND = common dso_local global i32 0, align 4
@GL_SRC_ALPHA = common dso_local global i32 0, align 4
@GL_ONE_MINUS_SRC_ALPHA = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@GL_TEXTURE0 = common dso_local global i64 0, align 8
@GL_ARRAY_BUFFER = common dso_local global i32 0, align 4
@GL_STATIC_DRAW = common dso_local global i32 0, align 4
@GL_FLOAT = common dso_local global i32 0, align 4
@GL_FALSE = common dso_local global i32 0, align 4
@GL_TRIANGLE_STRIP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vout_display_opengl_Display(%struct.TYPE_32__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_32__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.prgm*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_21__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_22__*, align 8
  %23 = alloca [8 x double], align 16
  %24 = alloca [8 x double], align 16
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %25 = call i32 (...) @GL_ASSERT_NOERROR()
  %26 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %27, i32 0, i32 14
  %29 = load i32 (i32)*, i32 (i32)** %28, align 8
  %30 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %31 = call i32 %29(i32 %30)
  %32 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %33, i32 0, i32 13
  %35 = load i32 (i32)*, i32 (i32)** %34, align 8
  %36 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %36, i32 0, i32 9
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 %35(i32 %40)
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 0
  %44 = load float, float* %43, align 4
  %45 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %45, i32 0, i32 10
  %47 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %46, i32 0, i32 0
  %48 = load float, float* %47, align 8
  %49 = fcmp une float %44, %48
  br i1 %49, label %77, label %50

50:                                               ; preds = %2
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 1
  %53 = load float, float* %52, align 4
  %54 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %54, i32 0, i32 10
  %56 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %55, i32 0, i32 1
  %57 = load float, float* %56, align 4
  %58 = fcmp une float %53, %57
  br i1 %58, label %77, label %59

59:                                               ; preds = %50
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 2
  %62 = load float, float* %61, align 4
  %63 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %63, i32 0, i32 10
  %65 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %64, i32 0, i32 2
  %66 = load float, float* %65, align 8
  %67 = fcmp une float %62, %66
  br i1 %67, label %77, label %68

68:                                               ; preds = %59
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 3
  %71 = load float, float* %70, align 4
  %72 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %72, i32 0, i32 10
  %74 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %73, i32 0, i32 3
  %75 = load float, float* %74, align 4
  %76 = fcmp une float %71, %75
  br i1 %76, label %77, label %243

77:                                               ; preds = %68, %59, %50, %2
  %78 = load i32, i32* @PICTURE_PLANE_MAX, align 4
  %79 = zext i32 %78 to i64
  %80 = call i8* @llvm.stacksave()
  store i8* %80, i8** %6, align 8
  %81 = alloca float, i64 %79, align 16
  store i64 %79, i64* %7, align 8
  %82 = load i32, i32* @PICTURE_PLANE_MAX, align 4
  %83 = zext i32 %82 to i64
  %84 = alloca float, i64 %83, align 16
  store i64 %83, i64* %8, align 8
  %85 = load i32, i32* @PICTURE_PLANE_MAX, align 4
  %86 = zext i32 %85 to i64
  %87 = alloca float, i64 %86, align 16
  store i64 %86, i64* %9, align 8
  %88 = load i32, i32* @PICTURE_PLANE_MAX, align 4
  %89 = zext i32 %88 to i64
  %90 = alloca float, i64 %89, align 16
  store i64 %89, i64* %10, align 8
  %91 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %91, i32 0, i32 9
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %94, align 8
  store %struct.TYPE_21__* %95, %struct.TYPE_21__** %11, align 8
  store i32 0, i32* %12, align 4
  br label %96

96:                                               ; preds = %201, %77
  %97 = load i32, i32* %12, align 4
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp ult i32 %97, %100
  br i1 %101, label %102, label %204

102:                                              ; preds = %96
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 3
  %105 = load %struct.TYPE_31__*, %struct.TYPE_31__** %104, align 8
  %106 = load i32, i32* %12, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = sitofp i64 %111 to float
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 3
  %115 = load %struct.TYPE_31__*, %struct.TYPE_31__** %114, align 8
  %116 = load i32, i32* %12, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %119, i32 0, i32 0
  %121 = load float, float* %120, align 8
  %122 = fdiv float %112, %121
  %123 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %123, i32 0, i32 0
  %125 = load float*, float** %124, align 8
  %126 = load i32, i32* %12, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds float, float* %125, i64 %127
  %129 = load float, float* %128, align 4
  %130 = fdiv float %122, %129
  store float %130, float* %13, align 4
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 3
  %133 = load %struct.TYPE_31__*, %struct.TYPE_31__** %132, align 8
  %134 = load i32, i32* %12, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = sitofp i64 %139 to float
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 3
  %143 = load %struct.TYPE_31__*, %struct.TYPE_31__** %142, align 8
  %144 = load i32, i32* %12, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %147, i32 0, i32 0
  %149 = load float, float* %148, align 8
  %150 = fdiv float %140, %149
  %151 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %151, i32 0, i32 1
  %153 = load float*, float** %152, align 8
  %154 = load i32, i32* %12, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds float, float* %153, i64 %155
  %157 = load float, float* %156, align 4
  %158 = fdiv float %150, %157
  store float %158, float* %14, align 4
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 0
  %161 = load float, float* %160, align 4
  %162 = fadd float %161, 0.000000e+00
  %163 = load float, float* %13, align 4
  %164 = fmul float %162, %163
  %165 = load i32, i32* %12, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds float, float* %81, i64 %166
  store float %164, float* %167, align 4
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 1
  %170 = load float, float* %169, align 4
  %171 = fadd float %170, 0.000000e+00
  %172 = load float, float* %14, align 4
  %173 = fmul float %171, %172
  %174 = load i32, i32* %12, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds float, float* %84, i64 %175
  store float %173, float* %176, align 4
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 0
  %179 = load float, float* %178, align 4
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 2
  %182 = load float, float* %181, align 4
  %183 = fadd float %179, %182
  %184 = load float, float* %13, align 4
  %185 = fmul float %183, %184
  %186 = load i32, i32* %12, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds float, float* %87, i64 %187
  store float %185, float* %188, align 4
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %189, i32 0, i32 1
  %191 = load float, float* %190, align 4
  %192 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i32 0, i32 3
  %194 = load float, float* %193, align 4
  %195 = fadd float %191, %194
  %196 = load float, float* %14, align 4
  %197 = fmul float %195, %196
  %198 = load i32, i32* %12, align 4
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds float, float* %90, i64 %199
  store float %197, float* %200, align 4
  br label %201

201:                                              ; preds = %102
  %202 = load i32, i32* %12, align 4
  %203 = add i32 %202, 1
  store i32 %203, i32* %12, align 4
  br label %96

204:                                              ; preds = %96
  %205 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %206 = call i32 @TextureCropForStereo(%struct.TYPE_32__* %205, float* %81, float* %84, float* %87, float* %90)
  %207 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %208 = call i32 @SetupCoords(%struct.TYPE_32__* %207, float* %81, float* %84, float* %87, float* %90)
  store i32 %208, i32* %15, align 4
  %209 = load i32, i32* %15, align 4
  %210 = load i32, i32* @VLC_SUCCESS, align 4
  %211 = icmp ne i32 %209, %210
  br i1 %211, label %212, label %214

212:                                              ; preds = %204
  %213 = load i32, i32* %15, align 4
  store i32 %213, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %239

214:                                              ; preds = %204
  %215 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %215, i32 0, i32 0
  %217 = load float, float* %216, align 4
  %218 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %218, i32 0, i32 10
  %220 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %219, i32 0, i32 0
  store float %217, float* %220, align 8
  %221 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %221, i32 0, i32 1
  %223 = load float, float* %222, align 4
  %224 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %224, i32 0, i32 10
  %226 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %225, i32 0, i32 1
  store float %223, float* %226, align 4
  %227 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %227, i32 0, i32 2
  %229 = load float, float* %228, align 4
  %230 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %230, i32 0, i32 10
  %232 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %231, i32 0, i32 2
  store float %229, float* %232, align 8
  %233 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %233, i32 0, i32 3
  %235 = load float, float* %234, align 4
  %236 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %236, i32 0, i32 10
  %238 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %237, i32 0, i32 3
  store float %235, float* %238, align 4
  store i32 0, i32* %16, align 4
  br label %239

239:                                              ; preds = %214, %212
  %240 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %240)
  %241 = load i32, i32* %16, align 4
  switch i32 %241, label %609 [
    i32 0, label %242
    i32 1, label %607
  ]

242:                                              ; preds = %239
  br label %243

243:                                              ; preds = %242, %68
  %244 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %245 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %245, i32 0, i32 9
  %247 = load %struct.TYPE_23__*, %struct.TYPE_23__** %246, align 8
  %248 = call i32 @DrawWithShaders(%struct.TYPE_32__* %244, %struct.TYPE_23__* %247)
  %249 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %249, i32 0, i32 8
  %251 = load %struct.prgm*, %struct.prgm** %250, align 8
  store %struct.prgm* %251, %struct.prgm** %17, align 8
  %252 = load %struct.prgm*, %struct.prgm** %17, align 8
  %253 = getelementptr inbounds %struct.prgm, %struct.prgm* %252, i32 0, i32 4
  %254 = load i32, i32* %253, align 8
  store i32 %254, i32* %18, align 4
  %255 = load %struct.prgm*, %struct.prgm** %17, align 8
  %256 = getelementptr inbounds %struct.prgm, %struct.prgm* %255, i32 0, i32 3
  %257 = load %struct.TYPE_21__*, %struct.TYPE_21__** %256, align 8
  store %struct.TYPE_21__* %257, %struct.TYPE_21__** %19, align 8
  %258 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %258, i32 0, i32 5
  %260 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %259, i32 0, i32 13
  %261 = load i32 (i32)*, i32 (i32)** %260, align 8
  %262 = load i32, i32* %18, align 4
  %263 = call i32 %261(i32 %262)
  %264 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %264, i32 0, i32 5
  %266 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %265, i32 0, i32 12
  %267 = load i32 (i32)*, i32 (i32)** %266, align 8
  %268 = load i32, i32* @GL_BLEND, align 4
  %269 = call i32 %267(i32 %268)
  %270 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %270, i32 0, i32 5
  %272 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %271, i32 0, i32 11
  %273 = load i32 (i32, i32)*, i32 (i32, i32)** %272, align 8
  %274 = load i32, i32* @GL_SRC_ALPHA, align 4
  %275 = load i32, i32* @GL_ONE_MINUS_SRC_ALPHA, align 4
  %276 = call i32 %273(i32 %274, i32 %275)
  %277 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 8
  %280 = mul nsw i32 2, %279
  %281 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %281, i32 0, i32 3
  %283 = load i32, i32* %282, align 4
  %284 = icmp sgt i32 %280, %283
  br i1 %284, label %285, label %340

285:                                              ; preds = %243
  %286 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %287 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %286, i32 0, i32 3
  %288 = load i32, i32* %287, align 4
  %289 = icmp sgt i32 %288, 0
  br i1 %289, label %290, label %302

290:                                              ; preds = %285
  %291 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %292 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %291, i32 0, i32 5
  %293 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %292, i32 0, i32 10
  %294 = load i32 (i32, i32*)*, i32 (i32, i32*)** %293, align 8
  %295 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %296 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %295, i32 0, i32 3
  %297 = load i32, i32* %296, align 4
  %298 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %299 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %298, i32 0, i32 6
  %300 = load i32*, i32** %299, align 8
  %301 = call i32 %294(i32 %297, i32* %300)
  br label %302

302:                                              ; preds = %290, %285
  %303 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %303, i32 0, i32 3
  store i32 0, i32* %304, align 4
  %305 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %305, i32 0, i32 2
  %307 = load i32, i32* %306, align 8
  %308 = mul nsw i32 2, %307
  store i32 %308, i32* %20, align 4
  %309 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %310 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %309, i32 0, i32 6
  %311 = load i32*, i32** %310, align 8
  %312 = load i32, i32* %20, align 4
  %313 = sext i32 %312 to i64
  %314 = mul i64 %313, 4
  %315 = trunc i64 %314 to i32
  %316 = call i32* @realloc_or_free(i32* %311, i32 %315)
  %317 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %318 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %317, i32 0, i32 6
  store i32* %316, i32** %318, align 8
  %319 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %320 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %319, i32 0, i32 6
  %321 = load i32*, i32** %320, align 8
  %322 = icmp ne i32* %321, null
  br i1 %322, label %325, label %323

323:                                              ; preds = %302
  %324 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %324, i32* %3, align 4
  br label %607

325:                                              ; preds = %302
  %326 = load i32, i32* %20, align 4
  %327 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %328 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %327, i32 0, i32 3
  store i32 %326, i32* %328, align 4
  %329 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %330 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %329, i32 0, i32 5
  %331 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %330, i32 0, i32 9
  %332 = load i32 (i32, i32*)*, i32 (i32, i32*)** %331, align 8
  %333 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %334 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %333, i32 0, i32 3
  %335 = load i32, i32* %334, align 4
  %336 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %337 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %336, i32 0, i32 6
  %338 = load i32*, i32** %337, align 8
  %339 = call i32 %332(i32 %335, i32* %338)
  br label %340

340:                                              ; preds = %325, %243
  %341 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %342 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %341, i32 0, i32 5
  %343 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %342, i32 0, i32 8
  %344 = load i32 (i64)*, i32 (i64)** %343, align 8
  %345 = load i64, i64* @GL_TEXTURE0, align 8
  %346 = add nsw i64 %345, 0
  %347 = call i32 %344(i64 %346)
  store i32 0, i32* %21, align 4
  br label %348

348:                                              ; preds = %591, %340
  %349 = load i32, i32* %21, align 4
  %350 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %351 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %350, i32 0, i32 2
  %352 = load i32, i32* %351, align 8
  %353 = icmp slt i32 %349, %352
  br i1 %353, label %354, label %594

354:                                              ; preds = %348
  %355 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %356 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %355, i32 0, i32 7
  %357 = load %struct.TYPE_22__*, %struct.TYPE_22__** %356, align 8
  %358 = load i32, i32* %21, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %357, i64 %359
  store %struct.TYPE_22__* %360, %struct.TYPE_22__** %22, align 8
  %361 = getelementptr inbounds [8 x double], [8 x double]* %23, i64 0, i64 0
  %362 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %363 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %362, i32 0, i32 0
  %364 = load double, double* %363, align 8
  store double %364, double* %361, align 8
  %365 = getelementptr inbounds double, double* %361, i64 1
  %366 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %367 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %366, i32 0, i32 1
  %368 = load double, double* %367, align 8
  store double %368, double* %365, align 8
  %369 = getelementptr inbounds double, double* %365, i64 1
  %370 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %371 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %370, i32 0, i32 0
  %372 = load double, double* %371, align 8
  store double %372, double* %369, align 8
  %373 = getelementptr inbounds double, double* %369, i64 1
  %374 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %375 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %374, i32 0, i32 2
  %376 = load double, double* %375, align 8
  store double %376, double* %373, align 8
  %377 = getelementptr inbounds double, double* %373, i64 1
  %378 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %379 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %378, i32 0, i32 3
  %380 = load double, double* %379, align 8
  store double %380, double* %377, align 8
  %381 = getelementptr inbounds double, double* %377, i64 1
  %382 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %383 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %382, i32 0, i32 1
  %384 = load double, double* %383, align 8
  store double %384, double* %381, align 8
  %385 = getelementptr inbounds double, double* %381, i64 1
  %386 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %387 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %386, i32 0, i32 3
  %388 = load double, double* %387, align 8
  store double %388, double* %385, align 8
  %389 = getelementptr inbounds double, double* %385, i64 1
  %390 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %391 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %390, i32 0, i32 2
  %392 = load double, double* %391, align 8
  store double %392, double* %389, align 8
  %393 = getelementptr inbounds [8 x double], [8 x double]* %24, i64 0, i64 0
  store double 0.000000e+00, double* %393, align 8
  %394 = getelementptr inbounds double, double* %393, i64 1
  store double 0.000000e+00, double* %394, align 8
  %395 = getelementptr inbounds double, double* %394, i64 1
  store double 0.000000e+00, double* %395, align 8
  %396 = getelementptr inbounds double, double* %395, i64 1
  %397 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %398 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %397, i32 0, i32 4
  %399 = load double, double* %398, align 8
  store double %399, double* %396, align 8
  %400 = getelementptr inbounds double, double* %396, i64 1
  %401 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %402 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %401, i32 0, i32 5
  %403 = load double, double* %402, align 8
  store double %403, double* %400, align 8
  %404 = getelementptr inbounds double, double* %400, i64 1
  store double 0.000000e+00, double* %404, align 8
  %405 = getelementptr inbounds double, double* %404, i64 1
  %406 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %407 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %406, i32 0, i32 5
  %408 = load double, double* %407, align 8
  store double %408, double* %405, align 8
  %409 = getelementptr inbounds double, double* %405, i64 1
  %410 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %411 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %410, i32 0, i32 4
  %412 = load double, double* %411, align 8
  store double %412, double* %409, align 8
  %413 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %414 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %413, i32 0, i32 6
  %415 = load i64, i64* %414, align 8
  %416 = icmp ne i64 %415, 0
  %417 = zext i1 %416 to i32
  %418 = call i32 @assert(i32 %417)
  %419 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %420 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %419, i32 0, i32 5
  %421 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %420, i32 0, i32 7
  %422 = load i32 (i32, i64)*, i32 (i32, i64)** %421, align 8
  %423 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %424 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %423, i32 0, i32 2
  %425 = load i32, i32* %424, align 8
  %426 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %427 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %426, i32 0, i32 6
  %428 = load i64, i64* %427, align 8
  %429 = call i32 %422(i32 %425, i64 %428)
  %430 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %431 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %430, i32 0, i32 1
  %432 = load i32 (%struct.TYPE_21__*, i32*, i32*, i32)*, i32 (%struct.TYPE_21__*, i32*, i32*, i32)** %431, align 8
  %433 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %434 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %435 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %434, i32 0, i32 9
  %436 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %437 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %436, i32 0, i32 8
  %438 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %439 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %438, i32 0, i32 7
  %440 = load i32, i32* %439, align 8
  %441 = call i32 %432(%struct.TYPE_21__* %433, i32* %435, i32* %437, i32 %440)
  %442 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %443 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %442, i32 0, i32 5
  %444 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %443, i32 0, i32 6
  %445 = load i32 (i32, i32)*, i32 (i32, i32)** %444, align 8
  %446 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %447 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %448 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %447, i32 0, i32 6
  %449 = load i32*, i32** %448, align 8
  %450 = load i32, i32* %21, align 4
  %451 = mul nsw i32 2, %450
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds i32, i32* %449, i64 %452
  %454 = load i32, i32* %453, align 4
  %455 = call i32 %445(i32 %446, i32 %454)
  %456 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %457 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %456, i32 0, i32 5
  %458 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %457, i32 0, i32 5
  %459 = load i32 (i32, i32, double*, i32)*, i32 (i32, i32, double*, i32)** %458, align 8
  %460 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %461 = getelementptr inbounds [8 x double], [8 x double]* %24, i64 0, i64 0
  %462 = load i32, i32* @GL_STATIC_DRAW, align 4
  %463 = call i32 %459(i32 %460, i32 64, double* %461, i32 %462)
  %464 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %465 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %464, i32 0, i32 5
  %466 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %465, i32 0, i32 4
  %467 = load i32 (i32)*, i32 (i32)** %466, align 8
  %468 = load %struct.prgm*, %struct.prgm** %17, align 8
  %469 = getelementptr inbounds %struct.prgm, %struct.prgm* %468, i32 0, i32 2
  %470 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %469, i32 0, i32 1
  %471 = load i32*, i32** %470, align 8
  %472 = getelementptr inbounds i32, i32* %471, i64 0
  %473 = load i32, i32* %472, align 4
  %474 = call i32 %467(i32 %473)
  %475 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %476 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %475, i32 0, i32 5
  %477 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %476, i32 0, i32 3
  %478 = load i32 (i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32)** %477, align 8
  %479 = load %struct.prgm*, %struct.prgm** %17, align 8
  %480 = getelementptr inbounds %struct.prgm, %struct.prgm* %479, i32 0, i32 2
  %481 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %480, i32 0, i32 1
  %482 = load i32*, i32** %481, align 8
  %483 = getelementptr inbounds i32, i32* %482, i64 0
  %484 = load i32, i32* %483, align 4
  %485 = load i32, i32* @GL_FLOAT, align 4
  %486 = call i32 %478(i32 %484, i32 2, i32 %485, i32 0, i32 0, i32 0)
  %487 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %488 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %487, i32 0, i32 5
  %489 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %488, i32 0, i32 6
  %490 = load i32 (i32, i32)*, i32 (i32, i32)** %489, align 8
  %491 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %492 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %493 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %492, i32 0, i32 6
  %494 = load i32*, i32** %493, align 8
  %495 = load i32, i32* %21, align 4
  %496 = mul nsw i32 2, %495
  %497 = add nsw i32 %496, 1
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds i32, i32* %494, i64 %498
  %500 = load i32, i32* %499, align 4
  %501 = call i32 %490(i32 %491, i32 %500)
  %502 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %503 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %502, i32 0, i32 5
  %504 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %503, i32 0, i32 5
  %505 = load i32 (i32, i32, double*, i32)*, i32 (i32, i32, double*, i32)** %504, align 8
  %506 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %507 = getelementptr inbounds [8 x double], [8 x double]* %23, i64 0, i64 0
  %508 = load i32, i32* @GL_STATIC_DRAW, align 4
  %509 = call i32 %505(i32 %506, i32 64, double* %507, i32 %508)
  %510 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %511 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %510, i32 0, i32 5
  %512 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %511, i32 0, i32 4
  %513 = load i32 (i32)*, i32 (i32)** %512, align 8
  %514 = load %struct.prgm*, %struct.prgm** %17, align 8
  %515 = getelementptr inbounds %struct.prgm, %struct.prgm* %514, i32 0, i32 2
  %516 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %515, i32 0, i32 0
  %517 = load i32, i32* %516, align 8
  %518 = call i32 %513(i32 %517)
  %519 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %520 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %519, i32 0, i32 5
  %521 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %520, i32 0, i32 3
  %522 = load i32 (i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32)** %521, align 8
  %523 = load %struct.prgm*, %struct.prgm** %17, align 8
  %524 = getelementptr inbounds %struct.prgm, %struct.prgm* %523, i32 0, i32 2
  %525 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %524, i32 0, i32 0
  %526 = load i32, i32* %525, align 8
  %527 = load i32, i32* @GL_FLOAT, align 4
  %528 = call i32 %522(i32 %526, i32 2, i32 %527, i32 0, i32 0, i32 0)
  %529 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %530 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %529, i32 0, i32 5
  %531 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %530, i32 0, i32 2
  %532 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %531, align 8
  %533 = load %struct.prgm*, %struct.prgm** %17, align 8
  %534 = getelementptr inbounds %struct.prgm, %struct.prgm* %533, i32 0, i32 1
  %535 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %534, i32 0, i32 3
  %536 = load i32, i32* %535, align 4
  %537 = load i32, i32* @GL_FALSE, align 4
  %538 = load %struct.prgm*, %struct.prgm** %17, align 8
  %539 = getelementptr inbounds %struct.prgm, %struct.prgm* %538, i32 0, i32 0
  %540 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %539, i32 0, i32 3
  %541 = load i32, i32* %540, align 4
  %542 = call i32 %532(i32 %536, i32 1, i32 %537, i32 %541)
  %543 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %544 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %543, i32 0, i32 5
  %545 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %544, i32 0, i32 2
  %546 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %545, align 8
  %547 = load %struct.prgm*, %struct.prgm** %17, align 8
  %548 = getelementptr inbounds %struct.prgm, %struct.prgm* %547, i32 0, i32 1
  %549 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %548, i32 0, i32 2
  %550 = load i32, i32* %549, align 8
  %551 = load i32, i32* @GL_FALSE, align 4
  %552 = load %struct.prgm*, %struct.prgm** %17, align 8
  %553 = getelementptr inbounds %struct.prgm, %struct.prgm* %552, i32 0, i32 0
  %554 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %553, i32 0, i32 2
  %555 = load i32, i32* %554, align 8
  %556 = call i32 %546(i32 %550, i32 1, i32 %551, i32 %555)
  %557 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %558 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %557, i32 0, i32 5
  %559 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %558, i32 0, i32 2
  %560 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %559, align 8
  %561 = load %struct.prgm*, %struct.prgm** %17, align 8
  %562 = getelementptr inbounds %struct.prgm, %struct.prgm* %561, i32 0, i32 1
  %563 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %562, i32 0, i32 1
  %564 = load i32, i32* %563, align 4
  %565 = load i32, i32* @GL_FALSE, align 4
  %566 = load %struct.prgm*, %struct.prgm** %17, align 8
  %567 = getelementptr inbounds %struct.prgm, %struct.prgm* %566, i32 0, i32 0
  %568 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %567, i32 0, i32 1
  %569 = load i32, i32* %568, align 4
  %570 = call i32 %560(i32 %564, i32 1, i32 %565, i32 %569)
  %571 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %572 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %571, i32 0, i32 5
  %573 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %572, i32 0, i32 2
  %574 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %573, align 8
  %575 = load %struct.prgm*, %struct.prgm** %17, align 8
  %576 = getelementptr inbounds %struct.prgm, %struct.prgm* %575, i32 0, i32 1
  %577 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %576, i32 0, i32 0
  %578 = load i32, i32* %577, align 8
  %579 = load i32, i32* @GL_FALSE, align 4
  %580 = load %struct.prgm*, %struct.prgm** %17, align 8
  %581 = getelementptr inbounds %struct.prgm, %struct.prgm* %580, i32 0, i32 0
  %582 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %581, i32 0, i32 0
  %583 = load i32, i32* %582, align 8
  %584 = call i32 %574(i32 %578, i32 1, i32 %579, i32 %583)
  %585 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %586 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %585, i32 0, i32 5
  %587 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %586, i32 0, i32 1
  %588 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %587, align 8
  %589 = load i32, i32* @GL_TRIANGLE_STRIP, align 4
  %590 = call i32 %588(i32 %589, i32 0, i32 4)
  br label %591

591:                                              ; preds = %354
  %592 = load i32, i32* %21, align 4
  %593 = add nsw i32 %592, 1
  store i32 %593, i32* %21, align 4
  br label %348

594:                                              ; preds = %348
  %595 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %596 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %595, i32 0, i32 5
  %597 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %596, i32 0, i32 0
  %598 = load i32 (i32)*, i32 (i32)** %597, align 8
  %599 = load i32, i32* @GL_BLEND, align 4
  %600 = call i32 %598(i32 %599)
  %601 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %602 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %601, i32 0, i32 4
  %603 = load i32, i32* %602, align 8
  %604 = call i32 @vlc_gl_Swap(i32 %603)
  %605 = call i32 (...) @GL_ASSERT_NOERROR()
  %606 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %606, i32* %3, align 4
  br label %607

607:                                              ; preds = %594, %323, %239
  %608 = load i32, i32* %3, align 4
  ret i32 %608

609:                                              ; preds = %239
  unreachable
}

declare dso_local i32 @GL_ASSERT_NOERROR(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @TextureCropForStereo(%struct.TYPE_32__*, float*, float*, float*, float*) #1

declare dso_local i32 @SetupCoords(%struct.TYPE_32__*, float*, float*, float*, float*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @DrawWithShaders(%struct.TYPE_32__*, %struct.TYPE_23__*) #1

declare dso_local i32* @realloc_or_free(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_gl_Swap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
