; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_mp4.c_TrackCreateES.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_mp4.c_TrackCreateES.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_35__ = type { i32, %struct.TYPE_36__* }
%struct.TYPE_36__ = type { float, i32, i64 }
%struct.TYPE_34__ = type { i64, i8*, %struct.TYPE_33__, %struct.TYPE_28__*, i32, %struct.TYPE_29__* }
%struct.TYPE_33__ = type { i32, %struct.TYPE_37__, %struct.TYPE_32__ }
%struct.TYPE_37__ = type { double*, i32*, double*, i32* }
%struct.TYPE_32__ = type { i64, i64 }
%struct.TYPE_28__ = type { i32, %struct.TYPE_31__, i64 }
%struct.TYPE_31__ = type { %struct.TYPE_30__*, i32 }
%struct.TYPE_30__ = type { i64 }
%struct.TYPE_29__ = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"invalid SampleEntry index (track[Id 0x%x])\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"[%d]\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"cannot find SampleEntry (track[Id 0x%x])\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"sinf/frma\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Original Format Box: %4.4s\00", align 1
@ATOM_vide = common dso_local global i32 0, align 4
@ATOM_soun = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"replaygain_track_gain\00", align 1
@AUDIO_REPLAY_GAIN_TRACK = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [22 x i8] c"replaygain_track_peak\00", align 1
@ATOM_text = common dso_local global i32 0, align 4
@ATOM_subt = common dso_local global i32 0, align 4
@ATOM_sbtl = common dso_local global i32 0, align 4
@ATOM_clcp = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_35__*, %struct.TYPE_34__*, i32, i32**)* @TrackCreateES to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TrackCreateES(%struct.TYPE_35__* %0, %struct.TYPE_34__* %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_35__*, align 8
  %7 = alloca %struct.TYPE_34__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca %struct.TYPE_36__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_28__*, align 8
  %13 = alloca %struct.TYPE_28__*, align 8
  %14 = alloca %struct.TYPE_37__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  store %struct.TYPE_35__* %0, %struct.TYPE_35__** %6, align 8
  store %struct.TYPE_34__* %1, %struct.TYPE_34__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  %18 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_36__*, %struct.TYPE_36__** %19, align 8
  store %struct.TYPE_36__* %20, %struct.TYPE_36__** %10, align 8
  %21 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %4
  %26 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %4
  store i32 1, i32* %11, align 4
  br label %40

31:                                               ; preds = %25
  %32 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %32, i32 0, i32 5
  %34 = load %struct.TYPE_29__*, %struct.TYPE_29__** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %11, align 4
  br label %40

40:                                               ; preds = %31, %30
  %41 = load i32**, i32*** %9, align 8
  %42 = icmp ne i32** %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32**, i32*** %9, align 8
  store i32* null, i32** %44, align 8
  br label %45

45:                                               ; preds = %43, %40
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %45
  %49 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %50 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @msg_Warn(%struct.TYPE_35__* %49, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %52)
  %54 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %54, i32* %5, align 4
  br label %294

55:                                               ; preds = %45
  %56 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to %struct.TYPE_28__*
  %61 = load i32, i32* %11, align 4
  %62 = sub i32 %61, 1
  %63 = call %struct.TYPE_28__* (%struct.TYPE_28__*, i8*, ...) @MP4_BoxGet(%struct.TYPE_28__* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  store %struct.TYPE_28__* %63, %struct.TYPE_28__** %12, align 8
  %64 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %65 = icmp ne %struct.TYPE_28__* %64, null
  br i1 %65, label %66, label %78

66:                                               ; preds = %55
  %67 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %85, label %72

72:                                               ; preds = %66
  %73 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 129
  br i1 %77, label %78, label %85

78:                                               ; preds = %72, %55
  %79 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %80 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @msg_Warn(%struct.TYPE_35__* %79, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %82)
  %84 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %84, i32* %5, align 4
  br label %294

85:                                               ; preds = %72, %66
  %86 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %87 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %87, i32 0, i32 3
  store %struct.TYPE_28__* %86, %struct.TYPE_28__** %88, align 8
  %89 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_28__*, %struct.TYPE_28__** %90, align 8
  %92 = call %struct.TYPE_28__* (%struct.TYPE_28__*, i8*, ...) @MP4_BoxGet(%struct.TYPE_28__* %91, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_28__* %92, %struct.TYPE_28__** %13, align 8
  %93 = icmp ne %struct.TYPE_28__* %92, null
  br i1 %93, label %94, label %117

94:                                               ; preds = %85
  %95 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_30__*, %struct.TYPE_30__** %97, align 8
  %99 = icmp ne %struct.TYPE_30__* %98, null
  br i1 %99, label %100, label %117

100:                                              ; preds = %94
  %101 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %102 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_30__*, %struct.TYPE_30__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %105, i32 0, i32 0
  %107 = bitcast i64* %106 to i8*
  %108 = call i32 @msg_Warn(%struct.TYPE_35__* %101, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %107)
  %109 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_30__*, %struct.TYPE_30__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %115, i32 0, i32 2
  store i64 %114, i64* %116, align 8
  br label %117

117:                                              ; preds = %100, %94, %85
  %118 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  switch i32 %121, label %270 [
    i32 128, label %122
    i32 130, label %165
    i32 129, label %237
  ]

122:                                              ; preds = %117
  %123 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @ATOM_vide, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %134, label %128

128:                                              ; preds = %122
  %129 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %130 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %131 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %132 = call i32 @SetupVideoES(%struct.TYPE_35__* %129, %struct.TYPE_34__* %130, %struct.TYPE_28__* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %128, %122
  %135 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %135, i32* %5, align 4
  br label %294

136:                                              ; preds = %128
  %137 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %138 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* %8, align 4
  %149 = call i32 @TrackGetESSampleRate(%struct.TYPE_35__* %137, i64* %141, i64* %145, %struct.TYPE_34__* %146, i32 %147, i32 %148)
  %150 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = sitofp i64 %154 to float
  %156 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = sitofp i64 %160 to float
  %162 = fdiv float %155, %161
  %163 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %163, i32 0, i32 0
  store float %162, float* %164, align 8
  br label %271

165:                                              ; preds = %117
  %166 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %167 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @ATOM_soun, align 4
  %170 = icmp ne i32 %168, %169
  br i1 %170, label %177, label %171

171:                                              ; preds = %165
  %172 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %173 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %174 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %175 = call i32 @SetupAudioES(%struct.TYPE_35__* %172, %struct.TYPE_34__* %173, %struct.TYPE_28__* %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %179, label %177

177:                                              ; preds = %171, %165
  %178 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %178, i32* %5, align 4
  br label %294

179:                                              ; preds = %171
  %180 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %236

184:                                              ; preds = %179
  %185 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %186, i32 0, i32 1
  store %struct.TYPE_37__* %187, %struct.TYPE_37__** %14, align 8
  %188 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = call i8* @vlc_meta_GetExtra(i32 %190, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  store i8* %191, i8** %15, align 8
  %192 = load i8*, i8** %15, align 8
  %193 = icmp ne i8* %192, null
  br i1 %193, label %194, label %211

194:                                              ; preds = %184
  %195 = load i8*, i8** %15, align 8
  %196 = call double @us_atof(i8* %195)
  store double %196, double* %16, align 8
  %197 = load double, double* %16, align 8
  %198 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %199 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %198, i32 0, i32 0
  %200 = load double*, double** %199, align 8
  %201 = load i64, i64* @AUDIO_REPLAY_GAIN_TRACK, align 8
  %202 = getelementptr inbounds double, double* %200, i64 %201
  store double %197, double* %202, align 8
  %203 = load double, double* %16, align 8
  %204 = fcmp une double %203, 0.000000e+00
  %205 = zext i1 %204 to i32
  %206 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %207 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %206, i32 0, i32 1
  %208 = load i32*, i32** %207, align 8
  %209 = load i64, i64* @AUDIO_REPLAY_GAIN_TRACK, align 8
  %210 = getelementptr inbounds i32, i32* %208, i64 %209
  store i32 %205, i32* %210, align 4
  br label %211

211:                                              ; preds = %194, %184
  %212 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %213 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = call i8* @vlc_meta_GetExtra(i32 %214, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  store i8* %215, i8** %15, align 8
  %216 = load i8*, i8** %15, align 8
  %217 = icmp ne i8* %216, null
  br i1 %217, label %218, label %235

218:                                              ; preds = %211
  %219 = load i8*, i8** %15, align 8
  %220 = call double @us_atof(i8* %219)
  store double %220, double* %17, align 8
  %221 = load double, double* %17, align 8
  %222 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %223 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %222, i32 0, i32 2
  %224 = load double*, double** %223, align 8
  %225 = load i64, i64* @AUDIO_REPLAY_GAIN_TRACK, align 8
  %226 = getelementptr inbounds double, double* %224, i64 %225
  store double %221, double* %226, align 8
  %227 = load double, double* %17, align 8
  %228 = fcmp ogt double %227, 0.000000e+00
  %229 = zext i1 %228 to i32
  %230 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %231 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %230, i32 0, i32 3
  %232 = load i32*, i32** %231, align 8
  %233 = load i64, i64* @AUDIO_REPLAY_GAIN_TRACK, align 8
  %234 = getelementptr inbounds i32, i32* %232, i64 %233
  store i32 %229, i32* %234, align 4
  br label %235

235:                                              ; preds = %218, %211
  br label %236

236:                                              ; preds = %235, %179
  br label %271

237:                                              ; preds = %117
  %238 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %239 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @ATOM_text, align 4
  %242 = icmp ne i32 %240, %241
  br i1 %242, label %243, label %261

243:                                              ; preds = %237
  %244 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %245 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* @ATOM_subt, align 4
  %248 = icmp ne i32 %246, %247
  br i1 %248, label %249, label %261

249:                                              ; preds = %243
  %250 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %251 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* @ATOM_sbtl, align 4
  %254 = icmp ne i32 %252, %253
  br i1 %254, label %255, label %261

255:                                              ; preds = %249
  %256 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %257 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* @ATOM_clcp, align 4
  %260 = icmp ne i32 %258, %259
  br i1 %260, label %267, label %261

261:                                              ; preds = %255, %249, %243, %237
  %262 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %263 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %264 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %265 = call i32 @SetupSpuES(%struct.TYPE_35__* %262, %struct.TYPE_34__* %263, %struct.TYPE_28__* %264)
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %269, label %267

267:                                              ; preds = %261, %255
  %268 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %268, i32* %5, align 4
  br label %294

269:                                              ; preds = %261
  br label %271

270:                                              ; preds = %117
  br label %271

271:                                              ; preds = %270, %269, %236, %136
  %272 = load i32**, i32*** %9, align 8
  %273 = icmp ne i32** %272, null
  br i1 %273, label %274, label %281

274:                                              ; preds = %271
  %275 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %276 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %279 = call i32* @MP4_AddTrackES(i32 %277, %struct.TYPE_34__* %278)
  %280 = load i32**, i32*** %9, align 8
  store i32* %279, i32** %280, align 8
  br label %281

281:                                              ; preds = %274, %271
  %282 = load i32**, i32*** %9, align 8
  %283 = icmp ne i32** %282, null
  br i1 %283, label %284, label %288

284:                                              ; preds = %281
  %285 = load i32**, i32*** %9, align 8
  %286 = load i32*, i32** %285, align 8
  %287 = icmp ne i32* %286, null
  br i1 %287, label %288, label %290

288:                                              ; preds = %284, %281
  %289 = load i32, i32* @VLC_SUCCESS, align 4
  br label %292

290:                                              ; preds = %284
  %291 = load i32, i32* @VLC_EGENERIC, align 4
  br label %292

292:                                              ; preds = %290, %288
  %293 = phi i32 [ %289, %288 ], [ %291, %290 ]
  store i32 %293, i32* %5, align 4
  br label %294

294:                                              ; preds = %292, %267, %177, %134, %78, %48
  %295 = load i32, i32* %5, align 4
  ret i32 %295
}

declare dso_local i32 @msg_Warn(%struct.TYPE_35__*, i8*, i8*) #1

declare dso_local %struct.TYPE_28__* @MP4_BoxGet(%struct.TYPE_28__*, i8*, ...) #1

declare dso_local i32 @SetupVideoES(%struct.TYPE_35__*, %struct.TYPE_34__*, %struct.TYPE_28__*) #1

declare dso_local i32 @TrackGetESSampleRate(%struct.TYPE_35__*, i64*, i64*, %struct.TYPE_34__*, i32, i32) #1

declare dso_local i32 @SetupAudioES(%struct.TYPE_35__*, %struct.TYPE_34__*, %struct.TYPE_28__*) #1

declare dso_local i8* @vlc_meta_GetExtra(i32, i8*) #1

declare dso_local double @us_atof(i8*) #1

declare dso_local i32 @SetupSpuES(%struct.TYPE_35__*, %struct.TYPE_34__*, %struct.TYPE_28__*) #1

declare dso_local i32* @MP4_AddTrackES(i32, %struct.TYPE_34__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
