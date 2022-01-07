; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_speex.c_DecodeRtpSpeexPacket.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_speex.c_DecodeRtpSpeexPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_22__, %struct.TYPE_24__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64, i32, i32, i32 }
%struct.TYPE_24__ = type { i32, i32, %struct.TYPE_26__*, i32, %struct.TYPE_27__, i32 }
%struct.TYPE_26__ = type { i32, i32, i64, i32, i32 }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_25__ = type { i64, i64, i64, i64, i32 }

@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@VLCDEC_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Could not allocate a Speex header.\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Could not allocate a Speex decoder.\00", align 1
@vlc_chan_maps = common dso_local global i32* null, align 8
@speex_nb_mode = common dso_local global i32 0, align 4
@SPEEX_MODE_FRAME_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Could not determine the frame size.\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"There is no valid Speex header found.\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Oops: No new buffer was returned!\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"Decoding failed. Perhaps we have a bad stream?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, %struct.TYPE_25__*)* @DecodeRtpSpeexPacket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DecodeRtpSpeexPacket(%struct.TYPE_23__* %0, %struct.TYPE_25__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %5, align 8
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  store %struct.TYPE_24__* %13, %struct.TYPE_24__** %6, align 8
  %14 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %15 = icmp ne %struct.TYPE_25__* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @VLC_TICK_INVALID, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %16, %2
  %23 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %23, i32* %3, align 4
  br label %248

24:                                               ; preds = %16
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %144

30:                                               ; preds = %24
  %31 = call %struct.TYPE_26__* @malloc(i32 4)
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 2
  store %struct.TYPE_26__* %31, %struct.TYPE_26__** %33, align 8
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_26__*, %struct.TYPE_26__** %35, align 8
  %37 = icmp ne %struct.TYPE_26__* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %30
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %40 = call i32 @msg_Err(%struct.TYPE_23__* %39, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %41, i32* %3, align 4
  br label %248

42:                                               ; preds = %30
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sdiv i32 %45, 8000
  %47 = ashr i32 %46, 1
  %48 = call i32* @speex_lib_get_mode(i32 %47)
  store i32* %48, i32** %10, align 8
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_26__*, %struct.TYPE_26__** %50, align 8
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = call i32 @speex_init_header(%struct.TYPE_26__* %51, i32 %54, i32 1, i32* %55)
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %57, i32 0, i32 4
  %59 = call i32 @speex_bits_init(%struct.TYPE_27__* %58)
  %60 = load i32*, i32** %10, align 8
  %61 = call i32 @speex_decoder_init(i32* %60)
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 8
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %42
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %70 = call i32 @msg_Err(%struct.TYPE_23__* %69, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %72, align 8
  %74 = call i32 @free(%struct.TYPE_26__* %73)
  %75 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %75, i32* %3, align 4
  br label %248

76:                                               ; preds = %42
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_26__*, %struct.TYPE_26__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %83, i32 0, i32 1
  store i32 1, i32* %84, align 4
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_26__*, %struct.TYPE_26__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 0
  store i64 %89, i64* %93, align 8
  %94 = load i32*, i32** @vlc_chan_maps, align 8
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_26__*, %struct.TYPE_26__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds i32, i32* %94, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 3
  store i32 %101, i32* %105, align 8
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_26__*, %struct.TYPE_26__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 2
  store i32 %110, i32* %114, align 4
  %115 = load i32, i32* @SPEEX_MODE_FRAME_SIZE, align 4
  %116 = call i64 @speex_mode_query(i32* @speex_nb_mode, i32 %115, i32* %9)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %130

118:                                              ; preds = %76
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %120 = call i32 @msg_Err(%struct.TYPE_23__* %119, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @speex_decoder_destroy(i32 %123)
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %125, i32 0, i32 2
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %126, align 8
  %128 = call i32 @free(%struct.TYPE_26__* %127)
  %129 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %129, i32* %3, align 4
  br label %248

130:                                              ; preds = %76
  %131 = load i32, i32* %9, align 4
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 1
  store i32 %131, i32* %135, align 8
  %136 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %136, i32 0, i32 3
  %138 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %138, i32 0, i32 2
  %140 = load %struct.TYPE_26__*, %struct.TYPE_26__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @date_Init(i32* %137, i32 %142, i32 1)
  br label %144

144:                                              ; preds = %130, %24
  %145 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %145, i32 0, i32 2
  %147 = load %struct.TYPE_26__*, %struct.TYPE_26__** %146, align 8
  %148 = icmp ne %struct.TYPE_26__* %147, null
  br i1 %148, label %153, label %149

149:                                              ; preds = %144
  %150 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %151 = call i32 @msg_Err(%struct.TYPE_23__* %150, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %152 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %152, i32* %3, align 4
  br label %248

153:                                              ; preds = %144
  %154 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %154, i32 0, i32 3
  %156 = call i64 @date_Get(i32* %155)
  %157 = load i64, i64* @VLC_TICK_INVALID, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %166

159:                                              ; preds = %153
  %160 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %160, i32 0, i32 3
  %162 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @date_Set(i32* %161, i32 %164)
  br label %166

166:                                              ; preds = %159, %153
  %167 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %168 = call i64 @decoder_UpdateAudioFormat(%struct.TYPE_23__* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %166
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %7, align 8
  br label %179

171:                                              ; preds = %166
  %172 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %173 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %173, i32 0, i32 2
  %175 = load %struct.TYPE_26__*, %struct.TYPE_26__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 8
  %178 = call %struct.TYPE_25__* @decoder_NewAudioBuffer(%struct.TYPE_23__* %172, i32 %177)
  store %struct.TYPE_25__* %178, %struct.TYPE_25__** %7, align 8
  br label %179

179:                                              ; preds = %171, %170
  %180 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %181 = icmp ne %struct.TYPE_25__* %180, null
  br i1 %181, label %182, label %187

182:                                              ; preds = %179
  %183 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %182, %179
  %188 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %189 = call i32 @msg_Err(%struct.TYPE_23__* %188, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %190 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %190, i32* %3, align 4
  br label %248

191:                                              ; preds = %182
  %192 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %192, i32 0, i32 4
  %194 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %194, i32 0, i32 3
  %196 = load i64, i64* %195, align 8
  %197 = inttoptr i64 %196 to i8*
  %198 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = call i32 @speex_bits_read_from(%struct.TYPE_27__* %193, i8* %197, i64 %200)
  %202 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %202, i32 0, i32 5
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %205, i32 0, i32 4
  %207 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %207, i32 0, i32 3
  %209 = load i64, i64* %208, align 8
  %210 = inttoptr i64 %209 to i32*
  %211 = call i32 @speex_decode_int(i32 %204, %struct.TYPE_27__* %206, i32* %210)
  store i32 %211, i32* %8, align 4
  %212 = load i32, i32* %8, align 4
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %191
  %215 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %216 = call i32 @msg_Err(%struct.TYPE_23__* %215, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  %217 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %217, i32* %3, align 4
  br label %248

218:                                              ; preds = %191
  %219 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %219, i32 0, i32 3
  %221 = call i64 @date_Get(i32* %220)
  %222 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %222, i32 0, i32 0
  store i64 %221, i64* %223, align 8
  %224 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %224, i32 0, i32 3
  %226 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %226, i32 0, i32 2
  %228 = load %struct.TYPE_26__*, %struct.TYPE_26__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 8
  %231 = call i64 @date_Increment(i32* %225, i32 %230)
  %232 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %233 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = sub nsw i64 %231, %234
  %236 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %236, i32 0, i32 2
  store i64 %235, i64* %237, align 8
  %238 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %239, align 4
  %242 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %243 = call i32 @block_Release(%struct.TYPE_25__* %242)
  %244 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %245 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %246 = call i32 @decoder_QueueAudio(%struct.TYPE_23__* %244, %struct.TYPE_25__* %245)
  %247 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %247, i32* %3, align 4
  br label %248

248:                                              ; preds = %218, %214, %187, %149, %118, %68, %38, %22
  %249 = load i32, i32* %3, align 4
  ret i32 %249
}

declare dso_local %struct.TYPE_26__* @malloc(i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_23__*, i8*) #1

declare dso_local i32* @speex_lib_get_mode(i32) #1

declare dso_local i32 @speex_init_header(%struct.TYPE_26__*, i32, i32, i32*) #1

declare dso_local i32 @speex_bits_init(%struct.TYPE_27__*) #1

declare dso_local i32 @speex_decoder_init(i32*) #1

declare dso_local i32 @free(%struct.TYPE_26__*) #1

declare dso_local i64 @speex_mode_query(i32*, i32, i32*) #1

declare dso_local i32 @speex_decoder_destroy(i32) #1

declare dso_local i32 @date_Init(i32*, i32, i32) #1

declare dso_local i64 @date_Get(i32*) #1

declare dso_local i32 @date_Set(i32*, i32) #1

declare dso_local i64 @decoder_UpdateAudioFormat(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_25__* @decoder_NewAudioBuffer(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @speex_bits_read_from(%struct.TYPE_27__*, i8*, i64) #1

declare dso_local i32 @speex_decode_int(i32, %struct.TYPE_27__*, i32*) #1

declare dso_local i64 @date_Increment(i32*, i32) #1

declare dso_local i32 @block_Release(%struct.TYPE_25__*) #1

declare dso_local i32 @decoder_QueueAudio(%struct.TYPE_23__*, %struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
