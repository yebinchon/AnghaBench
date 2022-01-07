; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_svg.c_DecodeBlock.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_svg.c_DecodeBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_20__, i64 }
%struct.TYPE_20__ = type { %struct.TYPE_26__, i32 }
%struct.TYPE_26__ = type { double, double, double, double, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_24__ = type { i32, i64, i64, i32, i32 }
%struct.TYPE_23__ = type { double, double, double }
%struct.TYPE_21__ = type { i64, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_25__ = type { i32, i32 }

@VLCDEC_SUCCESS = common dso_local global i32 0, align 4
@BLOCK_FLAG_CORRUPTED = common dso_local global i32 0, align 4
@VLC_CODEC_BGRA = common dso_local global i32 0, align 4
@CAIRO_FORMAT_ARGB32 = common dso_local global i32 0, align 4
@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.TYPE_24__*)* @DecodeBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DecodeBlock(%struct.TYPE_22__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_25__, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %20, %struct.TYPE_23__** %6, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %7, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %22 = icmp eq %struct.TYPE_24__* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %24, i32* %3, align 4
  br label %392

25:                                               ; preds = %2
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %34 = call i32 @block_Release(%struct.TYPE_24__* %33)
  %35 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %35, i32* %3, align 4
  br label %392

36:                                               ; preds = %25
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i32* @rsvg_handle_new_from_data(i32 %39, i32 %42, i32* null)
  store i32* %43, i32** %10, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %36
  br label %362

47:                                               ; preds = %36
  %48 = load i32*, i32** %10, align 8
  %49 = call i32 @rsvg_handle_get_dimensions(i32* %48, %struct.TYPE_25__* %13)
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 0
  %52 = load double, double* %51, align 8
  %53 = fcmp ogt double %52, 0.000000e+00
  br i1 %53, label %54, label %69

54:                                               ; preds = %47
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 0
  %57 = load double, double* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sitofp i32 %59 to double
  %61 = fmul double %57, %60
  store double %61, double* %8, align 8
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 0
  %64 = load double, double* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sitofp i32 %66 to double
  %68 = fmul double %64, %67
  store double %68, double* %9, align 8
  br label %154

69:                                               ; preds = %47
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 1
  %72 = load double, double* %71, align 8
  %73 = fcmp olt double %72, 0.000000e+00
  br i1 %73, label %74, label %94

74:                                               ; preds = %69
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 2
  %77 = load double, double* %76, align 8
  %78 = fcmp ogt double %77, 0.000000e+00
  br i1 %78, label %79, label %94

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = sitofp i32 %81 to double
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 2
  %85 = load double, double* %84, align 8
  %86 = fmul double %82, %85
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = sitofp i32 %88 to double
  %90 = fdiv double %86, %89
  store double %90, double* %8, align 8
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 2
  %93 = load double, double* %92, align 8
  store double %93, double* %9, align 8
  br label %153

94:                                               ; preds = %74, %69
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 1
  %97 = load double, double* %96, align 8
  %98 = fcmp ogt double %97, 0.000000e+00
  br i1 %98, label %99, label %119

99:                                               ; preds = %94
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 2
  %102 = load double, double* %101, align 8
  %103 = fcmp olt double %102, 0.000000e+00
  br i1 %103, label %104, label %119

104:                                              ; preds = %99
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 1
  %107 = load double, double* %106, align 8
  store double %107, double* %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = sitofp i32 %109 to double
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 1
  %113 = load double, double* %112, align 8
  %114 = fmul double %110, %113
  %115 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = sitofp i32 %116 to double
  %118 = fdiv double %114, %117
  store double %118, double* %9, align 8
  br label %152

119:                                              ; preds = %99, %94
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %120, i32 0, i32 1
  %122 = load double, double* %121, align 8
  %123 = fcmp ogt double %122, 0.000000e+00
  br i1 %123, label %124, label %144

124:                                              ; preds = %119
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 2
  %127 = load double, double* %126, align 8
  %128 = fcmp ogt double %127, 0.000000e+00
  br i1 %128, label %129, label %144

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = sitofp i32 %131 to double
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %133, i32 0, i32 2
  %135 = load double, double* %134, align 8
  %136 = fmul double %132, %135
  %137 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = sitofp i32 %138 to double
  %140 = fdiv double %136, %139
  store double %140, double* %8, align 8
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %141, i32 0, i32 2
  %143 = load double, double* %142, align 8
  store double %143, double* %9, align 8
  br label %151

144:                                              ; preds = %124, %119
  %145 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = sitofp i32 %146 to double
  store double %147, double* %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = sitofp i32 %149 to double
  store double %150, double* %9, align 8
  br label %151

151:                                              ; preds = %144, %129
  br label %152

152:                                              ; preds = %151, %104
  br label %153

153:                                              ; preds = %152, %79
  br label %154

154:                                              ; preds = %153, %54
  %155 = load i32, i32* @VLC_CODEC_BGRA, align 4
  %156 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %158, i32 0, i32 9
  store i32 %155, i32* %159, align 4
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 1
  store i32 %155, i32* %162, align 8
  %163 = load double, double* %8, align 8
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %166, i32 0, i32 0
  store double %163, double* %167, align 8
  %168 = load double, double* %9, align 8
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %171, i32 0, i32 1
  store double %168, double* %172, align 8
  %173 = load double, double* %8, align 8
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %176, i32 0, i32 2
  store double %173, double* %177, align 8
  %178 = load double, double* %9, align 8
  %179 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %181, i32 0, i32 3
  store double %178, double* %182, align 8
  %183 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %185, i32 0, i32 4
  store i32 1, i32* %186, align 8
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %189, i32 0, i32 5
  store i32 1, i32* %190, align 4
  %191 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %193, i32 0, i32 6
  store i32 -2139095040, i32* %194, align 8
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %197, i32 0, i32 7
  store i32 65280, i32* %198, align 4
  %199 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %201, i32 0, i32 8
  store i32 255, i32* %202, align 8
  %203 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %204, i32 0, i32 0
  %206 = call i32 @video_format_FixRgb(%struct.TYPE_26__* %205)
  %207 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %208 = call i64 @decoder_UpdateVideoFormat(%struct.TYPE_22__* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %154
  br label %362

211:                                              ; preds = %154
  %212 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %213 = call %struct.TYPE_21__* @decoder_NewPicture(%struct.TYPE_22__* %212)
  store %struct.TYPE_21__* %213, %struct.TYPE_21__** %7, align 8
  %214 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %215 = icmp ne %struct.TYPE_21__* %214, null
  br i1 %215, label %217, label %216

216:                                              ; preds = %211
  br label %362

217:                                              ; preds = %211
  %218 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %218, i32 0, i32 1
  %220 = load %struct.TYPE_19__*, %struct.TYPE_19__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %220, i64 0
  %222 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %224, i32 0, i32 1
  %226 = load %struct.TYPE_19__*, %struct.TYPE_19__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %226, i64 0
  %228 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %230, i32 0, i32 1
  %232 = load %struct.TYPE_19__*, %struct.TYPE_19__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %232, i64 0
  %234 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = mul nsw i32 %229, %235
  %237 = call i32 @memset(i32 %223, i32 0, i32 %236)
  %238 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %238, i32 0, i32 1
  %240 = load %struct.TYPE_19__*, %struct.TYPE_19__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @CAIRO_FORMAT_ARGB32, align 4
  %244 = load double, double* %8, align 8
  %245 = load double, double* %9, align 8
  %246 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %246, i32 0, i32 1
  %248 = load %struct.TYPE_19__*, %struct.TYPE_19__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %248, i64 0
  %250 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = call i32* @cairo_image_surface_create_for_data(i32 %242, i32 %243, double %244, double %245, i32 %251)
  store i32* %252, i32** %11, align 8
  %253 = load i32*, i32** %11, align 8
  %254 = icmp ne i32* %253, null
  br i1 %254, label %258, label %255

255:                                              ; preds = %217
  %256 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %257 = call i32 @picture_Release(%struct.TYPE_21__* %256)
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %7, align 8
  br label %362

258:                                              ; preds = %217
  %259 = load i32*, i32** %11, align 8
  %260 = call i32* @cairo_create(i32* %259)
  store i32* %260, i32** %12, align 8
  %261 = load i32*, i32** %12, align 8
  %262 = icmp ne i32* %261, null
  br i1 %262, label %266, label %263

263:                                              ; preds = %258
  %264 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %265 = call i32 @picture_Release(%struct.TYPE_21__* %264)
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %7, align 8
  br label %362

266:                                              ; preds = %258
  %267 = load double, double* %8, align 8
  %268 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = sitofp i32 %269 to double
  %271 = fcmp une double %267, %270
  br i1 %271, label %278, label %272

272:                                              ; preds = %266
  %273 = load double, double* %9, align 8
  %274 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = sitofp i32 %275 to double
  %277 = fcmp une double %273, %276
  br i1 %277, label %278, label %336

278:                                              ; preds = %272, %266
  %279 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %279, i32 0, i32 0
  %281 = load double, double* %280, align 8
  %282 = fcmp ogt double %281, 0.000000e+00
  br i1 %282, label %283, label %297

283:                                              ; preds = %278
  %284 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %285 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %284, i32 0, i32 1
  %286 = load double, double* %285, align 8
  %287 = fcmp ogt double %286, 0.000000e+00
  br i1 %287, label %297, label %288

288:                                              ; preds = %283
  %289 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %289, i32 0, i32 2
  %291 = load double, double* %290, align 8
  %292 = fcmp ogt double %291, 0.000000e+00
  br i1 %292, label %297, label %293

293:                                              ; preds = %288
  %294 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %295 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %294, i32 0, i32 0
  %296 = load double, double* %295, align 8
  store double %296, double* %15, align 8
  store double %296, double* %14, align 8
  br label %331

297:                                              ; preds = %288, %283, %278
  %298 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %301 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %302, i32 0, i32 4
  %304 = load i32, i32* %303, align 8
  %305 = mul nsw i32 %299, %304
  %306 = sitofp i32 %305 to double
  %307 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %310 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %311, i32 0, i32 5
  %313 = load i32, i32* %312, align 4
  %314 = mul nsw i32 %308, %313
  %315 = sitofp i32 %314 to double
  %316 = fdiv double %306, %315
  store double %316, double* %16, align 8
  %317 = load double, double* %16, align 8
  %318 = load double, double* %8, align 8
  %319 = fmul double %317, %318
  %320 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 0
  %321 = load i32, i32* %320, align 4
  %322 = sitofp i32 %321 to double
  %323 = fdiv double %319, %322
  store double %323, double* %14, align 8
  %324 = load double, double* %16, align 8
  %325 = load double, double* %9, align 8
  %326 = fmul double %324, %325
  %327 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = sitofp i32 %328 to double
  %330 = fdiv double %326, %329
  store double %330, double* %15, align 8
  br label %331

331:                                              ; preds = %297, %293
  %332 = load i32*, i32** %12, align 8
  %333 = load double, double* %14, align 8
  %334 = load double, double* %15, align 8
  %335 = call i32 @cairo_scale(i32* %332, double %333, double %334)
  br label %336

336:                                              ; preds = %331, %272
  %337 = load i32*, i32** %10, align 8
  %338 = load i32*, i32** %12, align 8
  %339 = call i32 @rsvg_handle_render_cairo(i32* %337, i32* %338)
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %344, label %341

341:                                              ; preds = %336
  %342 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %343 = call i32 @picture_Release(%struct.TYPE_21__* %342)
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %7, align 8
  br label %362

344:                                              ; preds = %336
  %345 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %346 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %345, i32 0, i32 1
  %347 = load i64, i64* %346, align 8
  %348 = load i64, i64* @VLC_TICK_INVALID, align 8
  %349 = icmp ne i64 %347, %348
  br i1 %349, label %350, label %354

350:                                              ; preds = %344
  %351 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %352 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %351, i32 0, i32 1
  %353 = load i64, i64* %352, align 8
  br label %358

354:                                              ; preds = %344
  %355 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %356 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %355, i32 0, i32 2
  %357 = load i64, i64* %356, align 8
  br label %358

358:                                              ; preds = %354, %350
  %359 = phi i64 [ %353, %350 ], [ %357, %354 ]
  %360 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %361 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %360, i32 0, i32 0
  store i64 %359, i64* %361, align 8
  br label %362

362:                                              ; preds = %358, %341, %263, %255, %216, %210, %46
  %363 = load i32*, i32** %10, align 8
  %364 = icmp ne i32* %363, null
  br i1 %364, label %365, label %369

365:                                              ; preds = %362
  %366 = load i32*, i32** %10, align 8
  %367 = call i32 @G_OBJECT(i32* %366)
  %368 = call i32 @g_object_unref(i32 %367)
  br label %369

369:                                              ; preds = %365, %362
  %370 = load i32*, i32** %12, align 8
  %371 = icmp ne i32* %370, null
  br i1 %371, label %372, label %375

372:                                              ; preds = %369
  %373 = load i32*, i32** %12, align 8
  %374 = call i32 @cairo_destroy(i32* %373)
  br label %375

375:                                              ; preds = %372, %369
  %376 = load i32*, i32** %11, align 8
  %377 = icmp ne i32* %376, null
  br i1 %377, label %378, label %381

378:                                              ; preds = %375
  %379 = load i32*, i32** %11, align 8
  %380 = call i32 @cairo_surface_destroy(i32* %379)
  br label %381

381:                                              ; preds = %378, %375
  %382 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %383 = call i32 @block_Release(%struct.TYPE_24__* %382)
  %384 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %385 = icmp ne %struct.TYPE_21__* %384, null
  br i1 %385, label %386, label %390

386:                                              ; preds = %381
  %387 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %388 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %389 = call i32 @decoder_QueueVideo(%struct.TYPE_22__* %387, %struct.TYPE_21__* %388)
  br label %390

390:                                              ; preds = %386, %381
  %391 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %391, i32* %3, align 4
  br label %392

392:                                              ; preds = %390, %32, %23
  %393 = load i32, i32* %3, align 4
  ret i32 %393
}

declare dso_local i32 @block_Release(%struct.TYPE_24__*) #1

declare dso_local i32* @rsvg_handle_new_from_data(i32, i32, i32*) #1

declare dso_local i32 @rsvg_handle_get_dimensions(i32*, %struct.TYPE_25__*) #1

declare dso_local i32 @video_format_FixRgb(%struct.TYPE_26__*) #1

declare dso_local i64 @decoder_UpdateVideoFormat(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_21__* @decoder_NewPicture(%struct.TYPE_22__*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32* @cairo_image_surface_create_for_data(i32, i32, double, double, i32) #1

declare dso_local i32 @picture_Release(%struct.TYPE_21__*) #1

declare dso_local i32* @cairo_create(i32*) #1

declare dso_local i32 @cairo_scale(i32*, double, double) #1

declare dso_local i32 @rsvg_handle_render_cairo(i32*, i32*) #1

declare dso_local i32 @g_object_unref(i32) #1

declare dso_local i32 @G_OBJECT(i32*) #1

declare dso_local i32 @cairo_destroy(i32*) #1

declare dso_local i32 @cairo_surface_destroy(i32*) #1

declare dso_local i32 @decoder_QueueVideo(%struct.TYPE_22__*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
