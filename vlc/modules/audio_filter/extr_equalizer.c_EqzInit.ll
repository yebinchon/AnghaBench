; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_filter/extr_equalizer.c_EqzInit.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_filter/extr_equalizer.c_EqzInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i32, float*, float*, float*, i32, float, float*, float**, float**, float***, float*** }
%struct.TYPE_32__ = type { i32, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { float, float, float, i32 }
%struct.TYPE_29__ = type { i8* }

@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"equalizer-vlcfreqs\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"equalizer-bands\00", align 1
@VLC_VAR_STRING = common dso_local global i32 0, align 4
@VLC_VAR_DOINHERIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"equalizer-preset\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"equalizer-2pass\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"equalizer-preamp\00", align 1
@VLC_VAR_FLOAT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"No preset selected\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [49 x i8] c"equalizer loaded for %d Hz with %d bands %d pass\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"   %.2f Hz -> factor:%f alpha:%f beta:%f gamma:%f\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_30__*, i32)* @EqzInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EqzInit(%struct.TYPE_30__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_30__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_31__*, align 8
  %7 = alloca %struct.TYPE_32__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_29__, align 8
  %11 = alloca %struct.TYPE_29__, align 8
  %12 = alloca %struct.TYPE_29__, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  store %struct.TYPE_31__* %18, %struct.TYPE_31__** %6, align 8
  %19 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %20 = call i32* @vlc_object_parent(%struct.TYPE_30__* %19)
  store i32* %20, i32** %13, align 8
  %21 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %21, i32* %14, align 4
  %22 = load i32*, i32** %13, align 8
  %23 = call i32 @var_InheritBool(i32* %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %15, align 4
  %26 = call i32 @EqzCoeffs(i32 %24, float 1.000000e+00, i32 %25, %struct.TYPE_32__* %7)
  %27 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %7, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i8* @vlc_alloc(i32 %33, i32 4)
  %35 = bitcast i8* %34 to float*
  %36 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %36, i32 0, i32 1
  store float* %35, float** %37, align 8
  %38 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i8* @vlc_alloc(i32 %40, i32 4)
  %42 = bitcast i8* %41 to float*
  %43 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %43, i32 0, i32 2
  store float* %42, float** %44, align 8
  %45 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i8* @vlc_alloc(i32 %47, i32 4)
  %49 = bitcast i8* %48 to float*
  %50 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %50, i32 0, i32 3
  store float* %49, float** %51, align 8
  %52 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %52, i32 0, i32 1
  %54 = load float*, float** %53, align 8
  %55 = icmp ne float* %54, null
  br i1 %55, label %56, label %66

56:                                               ; preds = %2
  %57 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %57, i32 0, i32 2
  %59 = load float*, float** %58, align 8
  %60 = icmp ne float* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %62, i32 0, i32 3
  %64 = load float*, float** %63, align 8
  %65 = icmp ne float* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %61, %56, %2
  br label %417

67:                                               ; preds = %61
  store i32 0, i32* %8, align 4
  br label %68

68:                                               ; preds = %114, %67
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %117

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %7, i32 0, i32 1
  %76 = load %struct.TYPE_28__*, %struct.TYPE_28__** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %79, i32 0, i32 0
  %81 = load float, float* %80, align 4
  %82 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %82, i32 0, i32 1
  %84 = load float*, float** %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds float, float* %84, i64 %86
  store float %81, float* %87, align 4
  %88 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %7, i32 0, i32 1
  %89 = load %struct.TYPE_28__*, %struct.TYPE_28__** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %92, i32 0, i32 1
  %94 = load float, float* %93, align 4
  %95 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %95, i32 0, i32 2
  %97 = load float*, float** %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds float, float* %97, i64 %99
  store float %94, float* %100, align 4
  %101 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %7, i32 0, i32 1
  %102 = load %struct.TYPE_28__*, %struct.TYPE_28__** %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %105, i32 0, i32 2
  %107 = load float, float* %106, align 4
  %108 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %108, i32 0, i32 3
  %110 = load float*, float** %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds float, float* %110, i64 %112
  store float %107, float* %113, align 4
  br label %114

114:                                              ; preds = %74
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %8, align 4
  br label %68

117:                                              ; preds = %68
  %118 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %118, i32 0, i32 4
  store i32 0, i32* %119, align 8
  %120 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %120, i32 0, i32 5
  store float 1.000000e+00, float* %121, align 4
  %122 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i8* @vlc_alloc(i32 %124, i32 4)
  %126 = bitcast i8* %125 to float*
  %127 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %127, i32 0, i32 6
  store float* %126, float** %128, align 8
  %129 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %129, i32 0, i32 6
  %131 = load float*, float** %130, align 8
  %132 = icmp ne float* %131, null
  br i1 %132, label %134, label %133

133:                                              ; preds = %117
  br label %417

134:                                              ; preds = %117
  store i32 0, i32* %8, align 4
  br label %135

135:                                              ; preds = %148, %134
  %136 = load i32, i32* %8, align 4
  %137 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp slt i32 %136, %139
  br i1 %140, label %141, label %151

141:                                              ; preds = %135
  %142 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %142, i32 0, i32 6
  %144 = load float*, float** %143, align 8
  %145 = load i32, i32* %8, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds float, float* %144, i64 %146
  store float 0.000000e+00, float* %147, align 4
  br label %148

148:                                              ; preds = %141
  %149 = load i32, i32* %8, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %8, align 4
  br label %135

151:                                              ; preds = %135
  store i32 0, i32* %9, align 4
  br label %152

152:                                              ; preds = %247, %151
  %153 = load i32, i32* %9, align 4
  %154 = icmp slt i32 %153, 32
  br i1 %154, label %155, label %250

155:                                              ; preds = %152
  %156 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %156, i32 0, i32 8
  %158 = load float**, float*** %157, align 8
  %159 = load i32, i32* %9, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds float*, float** %158, i64 %160
  %162 = load float*, float** %161, align 8
  %163 = getelementptr inbounds float, float* %162, i64 1
  store float 0.000000e+00, float* %163, align 4
  %164 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %164, i32 0, i32 8
  %166 = load float**, float*** %165, align 8
  %167 = load i32, i32* %9, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds float*, float** %166, i64 %168
  %170 = load float*, float** %169, align 8
  %171 = getelementptr inbounds float, float* %170, i64 0
  store float 0.000000e+00, float* %171, align 4
  %172 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %172, i32 0, i32 7
  %174 = load float**, float*** %173, align 8
  %175 = load i32, i32* %9, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds float*, float** %174, i64 %176
  %178 = load float*, float** %177, align 8
  %179 = getelementptr inbounds float, float* %178, i64 1
  store float 0.000000e+00, float* %179, align 4
  %180 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %180, i32 0, i32 7
  %182 = load float**, float*** %181, align 8
  %183 = load i32, i32* %9, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds float*, float** %182, i64 %184
  %186 = load float*, float** %185, align 8
  %187 = getelementptr inbounds float, float* %186, i64 0
  store float 0.000000e+00, float* %187, align 4
  store i32 0, i32* %8, align 4
  br label %188

188:                                              ; preds = %243, %155
  %189 = load i32, i32* %8, align 4
  %190 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = icmp slt i32 %189, %192
  br i1 %193, label %194, label %246

194:                                              ; preds = %188
  %195 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %195, i32 0, i32 10
  %197 = load float***, float**** %196, align 8
  %198 = load i32, i32* %9, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds float**, float*** %197, i64 %199
  %201 = load float**, float*** %200, align 8
  %202 = load i32, i32* %8, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds float*, float** %201, i64 %203
  %205 = load float*, float** %204, align 8
  %206 = getelementptr inbounds float, float* %205, i64 1
  store float 0.000000e+00, float* %206, align 4
  %207 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %207, i32 0, i32 10
  %209 = load float***, float**** %208, align 8
  %210 = load i32, i32* %9, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds float**, float*** %209, i64 %211
  %213 = load float**, float*** %212, align 8
  %214 = load i32, i32* %8, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds float*, float** %213, i64 %215
  %217 = load float*, float** %216, align 8
  %218 = getelementptr inbounds float, float* %217, i64 0
  store float 0.000000e+00, float* %218, align 4
  %219 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %219, i32 0, i32 9
  %221 = load float***, float**** %220, align 8
  %222 = load i32, i32* %9, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds float**, float*** %221, i64 %223
  %225 = load float**, float*** %224, align 8
  %226 = load i32, i32* %8, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds float*, float** %225, i64 %227
  %229 = load float*, float** %228, align 8
  %230 = getelementptr inbounds float, float* %229, i64 1
  store float 0.000000e+00, float* %230, align 4
  %231 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %231, i32 0, i32 9
  %233 = load float***, float**** %232, align 8
  %234 = load i32, i32* %9, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds float**, float*** %233, i64 %235
  %237 = load float**, float*** %236, align 8
  %238 = load i32, i32* %8, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds float*, float** %237, i64 %239
  %241 = load float*, float** %240, align 8
  %242 = getelementptr inbounds float, float* %241, i64 0
  store float 0.000000e+00, float* %242, align 4
  br label %243

243:                                              ; preds = %194
  %244 = load i32, i32* %8, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %8, align 4
  br label %188

246:                                              ; preds = %188
  br label %247

247:                                              ; preds = %246
  %248 = load i32, i32* %9, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %9, align 4
  br label %152

250:                                              ; preds = %152
  %251 = load i32*, i32** %13, align 8
  %252 = load i32, i32* @VLC_VAR_STRING, align 4
  %253 = load i32, i32* @VLC_VAR_DOINHERIT, align 4
  %254 = or i32 %252, %253
  %255 = call i32 @var_Create(i32* %251, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %254)
  %256 = load i32*, i32** %13, align 8
  %257 = load i32, i32* @VLC_VAR_STRING, align 4
  %258 = load i32, i32* @VLC_VAR_DOINHERIT, align 4
  %259 = or i32 %257, %258
  %260 = call i32 @var_Create(i32* %256, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %259)
  %261 = load i32*, i32** %13, align 8
  %262 = call i32 @var_CreateGetBool(i32* %261, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %263 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %263, i32 0, i32 4
  store i32 %262, i32* %264, align 8
  %265 = load i32*, i32** %13, align 8
  %266 = load i32, i32* @VLC_VAR_FLOAT, align 4
  %267 = load i32, i32* @VLC_VAR_DOINHERIT, align 4
  %268 = or i32 %266, %267
  %269 = call i32 @var_Create(i32* %265, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %268)
  %270 = load i32*, i32** %13, align 8
  %271 = call i32 @var_Get(i32* %270, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_29__* %10)
  %272 = load i32*, i32** %13, align 8
  %273 = call i32 @var_Get(i32* %272, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_29__* %11)
  %274 = load i32*, i32** %13, align 8
  %275 = call i32 @var_Get(i32* %274, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_29__* %12)
  %276 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %11, i32 0, i32 0
  %277 = load i8*, i8** %276, align 8
  %278 = icmp eq i8* %277, null
  br i1 %278, label %285, label %279

279:                                              ; preds = %250
  %280 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %11, i32 0, i32 0
  %281 = load i8*, i8** %280, align 8
  %282 = load i8, i8* %281, align 1
  %283 = sext i8 %282 to i32
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %294

285:                                              ; preds = %279, %250
  %286 = load i32*, i32** %13, align 8
  %287 = call i32 @VLC_OBJECT(i32* %286)
  %288 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %289 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %10, i32 0, i32 0
  %290 = load i8*, i8** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %10, i32 0, i32 0
  %292 = load i8*, i8** %291, align 8
  %293 = call i32 @PresetCallback(i32 %287, i32* null, i8* %290, i8* %292, %struct.TYPE_31__* %288)
  br label %294

294:                                              ; preds = %285, %279
  %295 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %10, i32 0, i32 0
  %296 = load i8*, i8** %295, align 8
  %297 = bitcast i8* %296 to float*
  %298 = call i32 @free(float* %297)
  %299 = load i32*, i32** %13, align 8
  %300 = call i32 @VLC_OBJECT(i32* %299)
  %301 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %302 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %11, i32 0, i32 0
  %303 = load i8*, i8** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %11, i32 0, i32 0
  %305 = load i8*, i8** %304, align 8
  %306 = call i32 @BandsCallback(i32 %300, i32* null, i8* %303, i8* %305, %struct.TYPE_31__* %301)
  %307 = load i32*, i32** %13, align 8
  %308 = call i32 @VLC_OBJECT(i32* %307)
  %309 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %310 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %12, i32 0, i32 0
  %311 = load i8*, i8** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %12, i32 0, i32 0
  %313 = load i8*, i8** %312, align 8
  %314 = call i32 @PreampCallback(i32 %308, i32* null, i8* %311, i8* %313, %struct.TYPE_31__* %309)
  %315 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %11, i32 0, i32 0
  %316 = load i8*, i8** %315, align 8
  %317 = icmp ne i8* %316, null
  br i1 %317, label %318, label %323

318:                                              ; preds = %294
  %319 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %11, i32 0, i32 0
  %320 = load i8*, i8** %319, align 8
  %321 = load i8, i8* %320, align 1
  %322 = icmp ne i8 %321, 0
  br i1 %322, label %335, label %323

323:                                              ; preds = %318, %294
  %324 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %325 = call i32 @msg_Err(%struct.TYPE_30__* %324, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %326 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %11, i32 0, i32 0
  %327 = load i8*, i8** %326, align 8
  %328 = bitcast i8* %327 to float*
  %329 = call i32 @free(float* %328)
  %330 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %331 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %330, i32 0, i32 6
  %332 = load float*, float** %331, align 8
  %333 = call i32 @free(float* %332)
  %334 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %334, i32* %14, align 4
  br label %417

335:                                              ; preds = %318
  %336 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %11, i32 0, i32 0
  %337 = load i8*, i8** %336, align 8
  %338 = bitcast i8* %337 to float*
  %339 = call i32 @free(float* %338)
  %340 = load i32*, i32** %13, align 8
  %341 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %342 = call i32 @var_AddCallback(i32* %340, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 (i32, i32*, i8*, i8*, %struct.TYPE_31__*)* @PresetCallback, %struct.TYPE_31__* %341)
  %343 = load i32*, i32** %13, align 8
  %344 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %345 = call i32 @var_AddCallback(i32* %343, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 (i32, i32*, i8*, i8*, %struct.TYPE_31__*)* @BandsCallback, %struct.TYPE_31__* %344)
  %346 = load i32*, i32** %13, align 8
  %347 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %348 = call i32 @var_AddCallback(i32* %346, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 (i32, i32*, i8*, i8*, %struct.TYPE_31__*)* @PreampCallback, %struct.TYPE_31__* %347)
  %349 = load i32*, i32** %13, align 8
  %350 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %351 = call i32 @var_AddCallback(i32* %349, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 (i32, i32*, i8*, i8*, %struct.TYPE_31__*)* @TwoPassCallback, %struct.TYPE_31__* %350)
  %352 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %353 = load i32, i32* %5, align 4
  %354 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %355 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = sitofp i32 %356 to float
  %358 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %359 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %358, i32 0, i32 4
  %360 = load i32, i32* %359, align 8
  %361 = icmp ne i32 %360, 0
  %362 = zext i1 %361 to i64
  %363 = select i1 %361, i32 2, i32 1
  %364 = sitofp i32 %363 to float
  %365 = call i32 (%struct.TYPE_30__*, i8*, i32, float, float, ...) @msg_Dbg(%struct.TYPE_30__* %352, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %353, float %357, float %364)
  store i32 0, i32* %8, align 4
  br label %366

366:                                              ; preds = %412, %335
  %367 = load i32, i32* %8, align 4
  %368 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %369 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 8
  %371 = icmp slt i32 %367, %370
  br i1 %371, label %372, label %415

372:                                              ; preds = %366
  %373 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %374 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %7, i32 0, i32 1
  %375 = load %struct.TYPE_28__*, %struct.TYPE_28__** %374, align 8
  %376 = load i32, i32* %8, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %375, i64 %377
  %379 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %378, i32 0, i32 3
  %380 = load i32, i32* %379, align 4
  %381 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %382 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %381, i32 0, i32 6
  %383 = load float*, float** %382, align 8
  %384 = load i32, i32* %8, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds float, float* %383, i64 %385
  %387 = load float, float* %386, align 4
  %388 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %389 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %388, i32 0, i32 1
  %390 = load float*, float** %389, align 8
  %391 = load i32, i32* %8, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds float, float* %390, i64 %392
  %394 = load float, float* %393, align 4
  %395 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %396 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %395, i32 0, i32 2
  %397 = load float*, float** %396, align 8
  %398 = load i32, i32* %8, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds float, float* %397, i64 %399
  %401 = load float, float* %400, align 4
  %402 = fpext float %401 to double
  %403 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %404 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %403, i32 0, i32 3
  %405 = load float*, float** %404, align 8
  %406 = load i32, i32* %8, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds float, float* %405, i64 %407
  %409 = load float, float* %408, align 4
  %410 = fpext float %409 to double
  %411 = call i32 (%struct.TYPE_30__*, i8*, i32, float, float, ...) @msg_Dbg(%struct.TYPE_30__* %373, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i32 %380, float %387, float %394, double %402, double %410)
  br label %412

412:                                              ; preds = %372
  %413 = load i32, i32* %8, align 4
  %414 = add nsw i32 %413, 1
  store i32 %414, i32* %8, align 4
  br label %366

415:                                              ; preds = %366
  %416 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %416, i32* %3, align 4
  br label %431

417:                                              ; preds = %323, %133, %66
  %418 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %419 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %418, i32 0, i32 1
  %420 = load float*, float** %419, align 8
  %421 = call i32 @free(float* %420)
  %422 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %423 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %422, i32 0, i32 2
  %424 = load float*, float** %423, align 8
  %425 = call i32 @free(float* %424)
  %426 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %427 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %426, i32 0, i32 3
  %428 = load float*, float** %427, align 8
  %429 = call i32 @free(float* %428)
  %430 = load i32, i32* %14, align 4
  store i32 %430, i32* %3, align 4
  br label %431

431:                                              ; preds = %417, %415
  %432 = load i32, i32* %3, align 4
  ret i32 %432
}

declare dso_local i32* @vlc_object_parent(%struct.TYPE_30__*) #1

declare dso_local i32 @var_InheritBool(i32*, i8*) #1

declare dso_local i32 @EqzCoeffs(i32, float, i32, %struct.TYPE_32__*) #1

declare dso_local i8* @vlc_alloc(i32, i32) #1

declare dso_local i32 @var_Create(i32*, i8*, i32) #1

declare dso_local i32 @var_CreateGetBool(i32*, i8*) #1

declare dso_local i32 @var_Get(i32*, i8*, %struct.TYPE_29__*) #1

declare dso_local i32 @PresetCallback(i32, i32*, i8*, i8*, %struct.TYPE_31__*) #1

declare dso_local i32 @VLC_OBJECT(i32*) #1

declare dso_local i32 @free(float*) #1

declare dso_local i32 @BandsCallback(i32, i32*, i8*, i8*, %struct.TYPE_31__*) #1

declare dso_local i32 @PreampCallback(i32, i32*, i8*, i8*, %struct.TYPE_31__*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_30__*, i8*) #1

declare dso_local i32 @var_AddCallback(i32*, i8*, i32 (i32, i32*, i8*, i8*, %struct.TYPE_31__*)*, %struct.TYPE_31__*) #1

declare dso_local i32 @TwoPassCallback(i32, i32*, i8*, i8*, %struct.TYPE_31__*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_30__*, i8*, i32, float, float, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
