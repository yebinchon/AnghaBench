; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_mpc.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_mpc.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_22__*, i32, i32, %struct.TYPE_17__, i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_23__, i32, %struct.TYPE_24__, i64 }
%struct.TYPE_23__ = type { i32, i64, i64, i32, i32, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_21__*, i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_19__, %struct.TYPE_18__ }
%struct.TYPE_19__ = type { i32*, float*, i32*, float* }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"MP+\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".mpc\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".mp+\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c".mpp\00", align 1
@VLC_ENOMEM = common dso_local global i32 0, align 4
@ReaderRead = common dso_local global i32 0, align 4
@ReaderSeek = common dso_local global i32 0, align 4
@ReaderTell = common dso_local global i32 0, align 4
@ReaderGetSize = common dso_local global i32 0, align 4
@ReaderCanSeek = common dso_local global i32 0, align 4
@ERROR_CODE_OK = common dso_local global i64 0, align 8
@Demux = common dso_local global i32 0, align 4
@Control = common dso_local global i32 0, align 4
@AUDIO_ES = common dso_local global i32 0, align 4
@VLC_CODEC_FL32 = common dso_local global i32 0, align 4
@AUDIO_REPLAY_GAIN_TRACK = common dso_local global i64 0, align 8
@AUDIO_REPLAY_GAIN_ALBUM = common dso_local global i64 0, align 8
@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_CODEC_S32B = common dso_local global i32 0, align 4
@VLC_CODEC_S32L = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_20__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = bitcast i32* %9 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %10, %struct.TYPE_21__** %4, align 8
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @vlc_stream_Peek(i32 %13, i32** %7, i32 4)
  %15 = icmp slt i32 %14, 4
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %17, i32* %2, align 4
  br label %256

18:                                               ; preds = %1
  %19 = load i32*, i32** %7, align 8
  %20 = call i64 @memcmp(i32* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %56

22:                                               ; preds = %18
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @GetDWLE(i32* %23)
  %25 = ashr i32 %24, 11
  %26 = and i32 %25, 1023
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 4
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* %8, align 4
  %31 = icmp sgt i32 %30, 6
  br i1 %31, label %32, label %34

32:                                               ; preds = %29, %22
  %33 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %33, i32* %2, align 4
  br label %256

34:                                               ; preds = %29
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %55, label %40

40:                                               ; preds = %34
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %42 = call i32 @demux_IsPathExtension(%struct.TYPE_21__* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %40
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %46 = call i32 @demux_IsPathExtension(%struct.TYPE_21__* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %44
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %50 = call i32 @demux_IsPathExtension(%struct.TYPE_21__* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %53, i32* %2, align 4
  br label %256

54:                                               ; preds = %48, %44, %40
  br label %55

55:                                               ; preds = %54, %34
  br label %56

56:                                               ; preds = %55, %18
  %57 = call %struct.TYPE_22__* @calloc(i32 1, i32 96)
  store %struct.TYPE_22__* %57, %struct.TYPE_22__** %5, align 8
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %59 = icmp ne %struct.TYPE_22__* %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %61, i32* %2, align 4
  br label %256

62:                                               ; preds = %56
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 4
  store i64 0, i64* %64, align 8
  %65 = load i32, i32* @ReaderRead, align 4
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 5
  store i32 %65, i32* %68, align 8
  %69 = load i32, i32* @ReaderSeek, align 4
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %71, i32 0, i32 4
  store i32 %69, i32* %72, align 4
  %73 = load i32, i32* @ReaderTell, align 4
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i32 0, i32 3
  store i32 %73, i32* %76, align 8
  %77 = load i32, i32* @ReaderGetSize, align 4
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i32 0, i32 2
  store i32 %77, i32* %80, align 4
  %81 = load i32, i32* @ReaderCanSeek, align 4
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %83, i32 0, i32 1
  store i32 %81, i32* %84, align 8
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %87, i32 0, i32 0
  store %struct.TYPE_21__* %85, %struct.TYPE_21__** %88, align 8
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 1
  %91 = call i32 @mpc_streaminfo_init(%struct.TYPE_23__* %90)
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 3
  %96 = call i64 @mpc_streaminfo_read(%struct.TYPE_23__* %93, %struct.TYPE_24__* %95)
  %97 = load i64, i64* @ERROR_CODE_OK, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %62
  br label %252

100:                                              ; preds = %62
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 2
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 3
  %105 = call i32 @mpc_decoder_setup(i32* %102, %struct.TYPE_24__* %104)
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 1
  %110 = call i32 @mpc_decoder_initialize(i32* %107, %struct.TYPE_23__* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %100
  br label %252

113:                                              ; preds = %100
  %114 = load i32, i32* @Demux, align 4
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* @Control, align 4
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 8
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 1
  store %struct.TYPE_22__* %120, %struct.TYPE_22__** %122, align 8
  %123 = load i32, i32* @AUDIO_ES, align 4
  %124 = load i32, i32* @VLC_CODEC_FL32, align 4
  %125 = call i32 @es_format_Init(%struct.TYPE_20__* %6, i32 %123, i32 %124)
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 3
  store i32 %135, i32* %137, align 4
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = mul nsw i32 4, %140
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 4
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 2
  store i32 32, i32* %145, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = mul nsw i32 %147, %150
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = mul nsw i32 %151, %154
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  store i32 %155, i32* %156, align 8
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = icmp sgt i64 %160, 0
  br i1 %161, label %162, label %197

162:                                              ; preds = %113
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = load i64, i64* @AUDIO_REPLAY_GAIN_TRACK, align 8
  %167 = getelementptr inbounds i32, i32* %165, i64 %166
  store i32 1, i32* %167, align 4
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = sitofp i64 %171 to double
  %173 = fdiv double %172, 3.276700e+04
  %174 = fptrunc double %173 to float
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 1
  %177 = load float*, float** %176, align 8
  %178 = load i64, i64* @AUDIO_REPLAY_GAIN_TRACK, align 8
  %179 = getelementptr inbounds float, float* %177, i64 %178
  store float %174, float* %179, align 4
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 2
  %182 = load i32*, i32** %181, align 8
  %183 = load i64, i64* @AUDIO_REPLAY_GAIN_TRACK, align 8
  %184 = getelementptr inbounds i32, i32* %182, i64 %183
  store i32 1, i32* %184, align 4
  %185 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 4
  %189 = sitofp i32 %188 to double
  %190 = fdiv double %189, 1.000000e+02
  %191 = fptrunc double %190 to float
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i32 0, i32 3
  %194 = load float*, float** %193, align 8
  %195 = load i64, i64* @AUDIO_REPLAY_GAIN_TRACK, align 8
  %196 = getelementptr inbounds float, float* %194, i64 %195
  store float %191, float* %196, align 4
  br label %197

197:                                              ; preds = %162, %113
  %198 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = icmp sgt i64 %201, 0
  br i1 %202, label %203, label %238

203:                                              ; preds = %197
  %204 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = load i64, i64* @AUDIO_REPLAY_GAIN_ALBUM, align 8
  %208 = getelementptr inbounds i32, i32* %206, i64 %207
  store i32 1, i32* %208, align 4
  %209 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %210, i32 0, i32 2
  %212 = load i64, i64* %211, align 8
  %213 = sitofp i64 %212 to double
  %214 = fdiv double %213, 3.276700e+04
  %215 = fptrunc double %214 to float
  %216 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %216, i32 0, i32 1
  %218 = load float*, float** %217, align 8
  %219 = load i64, i64* @AUDIO_REPLAY_GAIN_ALBUM, align 8
  %220 = getelementptr inbounds float, float* %218, i64 %219
  store float %215, float* %220, align 4
  %221 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %221, i32 0, i32 2
  %223 = load i32*, i32** %222, align 8
  %224 = load i64, i64* @AUDIO_REPLAY_GAIN_ALBUM, align 8
  %225 = getelementptr inbounds i32, i32* %223, i64 %224
  store i32 1, i32* %225, align 4
  %226 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 8
  %230 = sitofp i32 %229 to double
  %231 = fdiv double %230, 1.000000e+02
  %232 = fptrunc double %231 to float
  %233 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %233, i32 0, i32 3
  %235 = load float*, float** %234, align 8
  %236 = load i64, i64* @AUDIO_REPLAY_GAIN_ALBUM, align 8
  %237 = getelementptr inbounds float, float* %235, i64 %236
  store float %232, float* %237, align 4
  br label %238

238:                                              ; preds = %203, %197
  %239 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = call i32 @es_out_Add(i32 %241, %struct.TYPE_20__* %6)
  %243 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %243, i32 0, i32 0
  store i32 %242, i32* %244, align 8
  %245 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %250, label %249

249:                                              ; preds = %238
  br label %252

250:                                              ; preds = %238
  %251 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %251, i32* %2, align 4
  br label %256

252:                                              ; preds = %249, %112, %99
  %253 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %254 = call i32 @free(%struct.TYPE_22__* %253)
  %255 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %255, i32* %2, align 4
  br label %256

256:                                              ; preds = %252, %250, %60, %52, %32, %16
  %257 = load i32, i32* %2, align 4
  ret i32 %257
}

declare dso_local i32 @vlc_stream_Peek(i32, i32**, i32) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @GetDWLE(i32*) #1

declare dso_local i32 @demux_IsPathExtension(%struct.TYPE_21__*, i8*) #1

declare dso_local %struct.TYPE_22__* @calloc(i32, i32) #1

declare dso_local i32 @mpc_streaminfo_init(%struct.TYPE_23__*) #1

declare dso_local i64 @mpc_streaminfo_read(%struct.TYPE_23__*, %struct.TYPE_24__*) #1

declare dso_local i32 @mpc_decoder_setup(i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @mpc_decoder_initialize(i32*, %struct.TYPE_23__*) #1

declare dso_local i32 @es_format_Init(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @es_out_Add(i32, %struct.TYPE_20__*) #1

declare dso_local i32 @free(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
