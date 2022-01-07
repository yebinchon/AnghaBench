; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_filter/extr_audiobargraph_a.c_DoWork.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_filter/extr_audiobargraph_a.c_DoWork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i64, i32, i64, i64, float, i64, i64, i64, %struct.TYPE_17__*, %struct.TYPE_17__*, i64 }
%struct.TYPE_17__ = type { double, i64, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { i64, i64, i64 }

@AOUT_CHAN_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"audiobargraph_v-alarm\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_16__* (%struct.TYPE_14__*, %struct.TYPE_16__*)* @DoWork to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_16__* @DoWork(%struct.TYPE_14__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca %struct.TYPE_17__*, align 8
  %18 = alloca %struct.TYPE_17__*, align 8
  %19 = alloca float, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  store %struct.TYPE_15__* %23, %struct.TYPE_15__** %5, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to float*
  store float* %27, float** %6, align 8
  %28 = load i32, i32* @AOUT_CHAN_MAX, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %7, align 8
  %31 = alloca float, i64 %29, align 16
  store i64 %29, i64* %8, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = call i32 @aout_FormatNbChannels(i32* %34)
  store i32 %35, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %44, %2
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds float, float* %31, i64 %42
  store float 0.000000e+00, float* %43, align 4
  br label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %10, align 4
  br label %36

47:                                               ; preds = %36
  store i64 0, i64* %11, align 8
  br label %48

48:                                               ; preds = %79, %47
  %49 = load i64, i64* %11, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ult i64 %49, %52
  br i1 %53, label %54, label %82

54:                                               ; preds = %48
  store i32 0, i32* %12, align 4
  br label %55

55:                                               ; preds = %75, %54
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %78

59:                                               ; preds = %55
  %60 = load float*, float** %6, align 8
  %61 = getelementptr inbounds float, float* %60, i32 1
  store float* %61, float** %6, align 8
  %62 = load float, float* %60, align 4
  store float %62, float* %13, align 4
  %63 = load float, float* %13, align 4
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds float, float* %31, i64 %65
  %67 = load float, float* %66, align 4
  %68 = fcmp ogt float %63, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %59
  %70 = load float, float* %13, align 4
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds float, float* %31, i64 %72
  store float %70, float* %73, align 4
  br label %74

74:                                               ; preds = %69, %59
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %12, align 4
  br label %55

78:                                               ; preds = %55
  br label %79

79:                                               ; preds = %78
  %80 = load i64, i64* %11, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %11, align 8
  br label %48

82:                                               ; preds = %48
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 10
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %241

87:                                               ; preds = %82
  %88 = call %struct.TYPE_17__* @xmalloc(i32 24)
  store %struct.TYPE_17__* %88, %struct.TYPE_17__** %14, align 8
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  store double 0.000000e+00, double* %90, align 8
  store i32 0, i32* %15, align 4
  br label %91

91:                                               ; preds = %112, %87
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %115

95:                                               ; preds = %91
  %96 = load i32, i32* %15, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds float, float* %31, i64 %97
  %99 = load float, float* %98, align 4
  store float %99, float* %16, align 4
  %100 = load float, float* %16, align 4
  %101 = fpext float %100 to double
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 0
  %104 = load double, double* %103, align 8
  %105 = fcmp ogt double %101, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %95
  %107 = load float, float* %16, align 4
  %108 = fpext float %107 to double
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 0
  store double %108, double* %110, align 8
  br label %111

111:                                              ; preds = %106, %95
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %15, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %15, align 4
  br label %91

115:                                              ; preds = %91
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 0
  %118 = load double, double* %117, align 8
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 0
  %121 = load double, double* %120, align 8
  %122 = fmul double %121, %118
  store double %122, double* %120, align 8
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 1
  store i64 %125, i64* %127, align 8
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 2
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %129, align 8
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 9
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %131, align 8
  %133 = icmp ne %struct.TYPE_17__* %132, null
  br i1 %133, label %134, label %140

134:                                              ; preds = %115
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 9
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 2
  store %struct.TYPE_17__* %135, %struct.TYPE_17__** %139, align 8
  br label %140

140:                                              ; preds = %134, %115
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 9
  store %struct.TYPE_17__* %141, %struct.TYPE_17__** %143, align 8
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 8
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %145, align 8
  %147 = icmp eq %struct.TYPE_17__* %146, null
  br i1 %147, label %148, label %152

148:                                              ; preds = %140
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 8
  store %struct.TYPE_17__* %149, %struct.TYPE_17__** %151, align 8
  br label %152

152:                                              ; preds = %148, %140
  br label %153

153:                                              ; preds = %167, %152
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 8
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = sub nsw i64 %161, %164
  %166 = icmp slt i64 %158, %165
  br i1 %166, label %167, label %182

167:                                              ; preds = %153
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 1
  store i32 1, i32* %169, align 8
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 8
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %171, align 8
  store %struct.TYPE_17__* %172, %struct.TYPE_17__** %17, align 8
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 8
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 2
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %176, align 8
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 8
  store %struct.TYPE_17__* %177, %struct.TYPE_17__** %179, align 8
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %181 = call i32 @free(%struct.TYPE_17__* %180)
  br label %153

182:                                              ; preds = %153
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %240

187:                                              ; preds = %182
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 3
  %196 = load i64, i64* %195, align 8
  %197 = add nsw i64 %193, %196
  %198 = icmp sgt i64 %190, %197
  br i1 %198, label %199, label %240

199:                                              ; preds = %187
  %200 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 8
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %201, align 8
  store %struct.TYPE_17__* %202, %struct.TYPE_17__** %18, align 8
  store float 0.000000e+00, float* %19, align 4
  store i32 0, i32* %20, align 4
  br label %203

203:                                              ; preds = %206, %199
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %205 = icmp ne %struct.TYPE_17__* %204, null
  br i1 %205, label %206, label %219

206:                                              ; preds = %203
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 0
  %209 = load double, double* %208, align 8
  %210 = load float, float* %19, align 4
  %211 = fpext float %210 to double
  %212 = fadd double %211, %209
  %213 = fptrunc double %212 to float
  store float %213, float* %19, align 4
  %214 = load i32, i32* %20, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %20, align 4
  %216 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %217 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %216, i32 0, i32 2
  %218 = load %struct.TYPE_17__*, %struct.TYPE_17__** %217, align 8
  store %struct.TYPE_17__* %218, %struct.TYPE_17__** %18, align 8
  br label %203

219:                                              ; preds = %203
  %220 = load i32, i32* %20, align 4
  %221 = sitofp i32 %220 to float
  %222 = load float, float* %19, align 4
  %223 = fdiv float %222, %221
  store float %223, float* %19, align 4
  %224 = load float, float* %19, align 4
  %225 = call float @sqrtf(float %224) #1
  store float %225, float* %19, align 4
  %226 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %227 = call i32 @vlc_object_instance(%struct.TYPE_14__* %226)
  %228 = load float, float* %19, align 4
  %229 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %229, i32 0, i32 4
  %231 = load float, float* %230, align 8
  %232 = fcmp olt float %228, %231
  %233 = zext i1 %232 to i32
  %234 = call i32 @var_SetBool(i32 %227, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %233)
  %235 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 2
  store i64 %237, i64* %239, align 8
  br label %240

240:                                              ; preds = %219, %187, %182
  br label %241

241:                                              ; preds = %240, %82
  %242 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %242, i32 0, i32 7
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %264

246:                                              ; preds = %241
  %247 = load i32, i32* %9, align 4
  %248 = icmp sgt i32 %247, 0
  br i1 %248, label %249, label %264

249:                                              ; preds = %246
  %250 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %250, i32 0, i32 6
  %252 = load i64, i64* %251, align 8
  %253 = add nsw i64 %252, 1
  store i64 %253, i64* %251, align 8
  %254 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %254, i32 0, i32 5
  %256 = load i64, i64* %255, align 8
  %257 = icmp sgt i64 %252, %256
  br i1 %257, label %258, label %264

258:                                              ; preds = %249
  %259 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %260 = load i32, i32* %9, align 4
  %261 = call i32 @SendValues(%struct.TYPE_14__* %259, float* %31, i32 %260)
  %262 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %262, i32 0, i32 6
  store i64 0, i64* %263, align 8
  br label %264

264:                                              ; preds = %258, %249, %246, %241
  %265 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %266 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %266)
  ret %struct.TYPE_16__* %265
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @aout_FormatNbChannels(i32*) #2

declare dso_local %struct.TYPE_17__* @xmalloc(i32) #2

declare dso_local i32 @free(%struct.TYPE_17__*) #2

; Function Attrs: nounwind
declare dso_local float @sqrtf(float) #3

declare dso_local i32 @var_SetBool(i32, i8*, i32) #2

declare dso_local i32 @vlc_object_instance(%struct.TYPE_14__*) #2

declare dso_local i32 @SendValues(%struct.TYPE_14__*, float*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
