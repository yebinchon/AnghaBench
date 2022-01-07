; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_ModuleThread_UpdateAudioFormat.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_ModuleThread_UpdateAudioFormat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i64, i64, %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.decoder_owner = type { i32, i32, %struct.TYPE_16__, i32, i32*, i32, i32 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_18__, i32 }

@.str = private unnamed_addr constant [23 x i8] c"audio-replay-gain-mode\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"force-dolby-surround\00", align 1
@AOUT_CHAN_LEFT = common dso_local global i32 0, align 4
@AOUT_CHAN_RIGHT = common dso_local global i32 0, align 4
@AOUT_CHANMODE_DOLBYSTEREO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to create audio output\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*)* @ModuleThread_UpdateAudioFormat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ModuleThread_UpdateAudioFormat(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.decoder_owner*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_18__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %10 = call %struct.decoder_owner* @dec_get_owner(%struct.TYPE_17__* %9)
  store %struct.decoder_owner* %10, %struct.decoder_owner** %4, align 8
  %11 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %12 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %11, i32 0, i32 4
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %64

15:                                               ; preds = %1
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 2
  %19 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %20 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 1
  %22 = call i32 @AOUT_FMTS_IDENTICAL(%struct.TYPE_18__* %18, %struct.TYPE_18__* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %15
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %28, %33
  br i1 %34, label %45, label %35

35:                                               ; preds = %24
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %41 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %39, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %35, %24, %15
  %46 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %47 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %46, i32 0, i32 4
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %5, align 8
  %49 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %50 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %49, i32 0, i32 3
  %51 = call i32 @vlc_mutex_lock(i32* %50)
  %52 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %53 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %52, i32 0, i32 4
  store i32* null, i32** %53, align 8
  %54 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %55 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %54, i32 0, i32 3
  %56 = call i32 @vlc_mutex_unlock(i32* %55)
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @aout_DecDelete(i32* %57)
  %59 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %60 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @input_resource_PutAout(i32 %61, i32* %62)
  br label %64

64:                                               ; preds = %45, %35, %1
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %69 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 2
  %71 = call i64 @aout_replaygain_changed(i32* %67, i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %98

73:                                               ; preds = %64
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 3
  store i32 %77, i32* %80, align 8
  %81 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %82 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %81, i32 0, i32 4
  %83 = load i32*, i32** %82, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %97

85:                                               ; preds = %73
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %91 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 2
  store i32 %89, i32* %92, align 8
  %93 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %94 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %93, i32 0, i32 4
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @var_TriggerCallback(i32* %95, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %97

97:                                               ; preds = %85, %73
  br label %98

98:                                               ; preds = %97, %64
  %99 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %100 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %99, i32 0, i32 4
  %101 = load i32*, i32** %100, align 8
  %102 = icmp eq i32* %101, null
  br i1 %102, label %103, label %222

103:                                              ; preds = %98
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 0
  store i64 %107, i64* %111, align 8
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 2
  %115 = bitcast %struct.TYPE_18__* %6 to i8*
  %116 = bitcast %struct.TYPE_18__* %114 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %115, i8* align 8 %116, i64 24, i1 false)
  %117 = call i32 @aout_FormatPrepare(%struct.TYPE_18__* %6)
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %119 = call i32 @var_InheritInteger(%struct.TYPE_17__* %118, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %144

122:                                              ; preds = %103
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @AOUT_CHAN_LEFT, align 4
  %126 = load i32, i32* @AOUT_CHAN_RIGHT, align 4
  %127 = or i32 %125, %126
  %128 = icmp eq i32 %124, %127
  br i1 %128, label %129, label %144

129:                                              ; preds = %122
  %130 = load i32, i32* %7, align 4
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %132, label %137

132:                                              ; preds = %129
  %133 = load i32, i32* @AOUT_CHANMODE_DOLBYSTEREO, align 4
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %133
  store i32 %136, i32* %134, align 4
  br label %143

137:                                              ; preds = %129
  %138 = load i32, i32* @AOUT_CHANMODE_DOLBYSTEREO, align 4
  %139 = xor i32 %138, -1
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = and i32 %141, %139
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %137, %132
  br label %144

144:                                              ; preds = %143, %122, %103
  %145 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %146 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 8
  %148 = call i32* @input_resource_GetAout(i32 %147)
  store i32* %148, i32** %8, align 8
  %149 = load i32*, i32** %8, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %151, label %172

151:                                              ; preds = %144
  %152 = load i32*, i32** %8, align 8
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %158 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %157, i32 0, i32 6
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 3
  %163 = call i64 @aout_DecNew(i32* %152, %struct.TYPE_18__* %6, i64 %156, i32 %159, i32* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %151
  %166 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %167 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 8
  %169 = load i32*, i32** %8, align 8
  %170 = call i32 @input_resource_PutAout(i32 %168, i32* %169)
  store i32* null, i32** %8, align 8
  br label %171

171:                                              ; preds = %165, %151
  br label %172

172:                                              ; preds = %171, %144
  %173 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %174 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %173, i32 0, i32 3
  %175 = call i32 @vlc_mutex_lock(i32* %174)
  %176 = load i32*, i32** %8, align 8
  %177 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %178 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %177, i32 0, i32 4
  store i32* %176, i32** %178, align 8
  %179 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %180 = call i32 @DecoderUpdateFormatLocked(%struct.decoder_owner* %179)
  %181 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %182 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 1
  %184 = call i32 @aout_FormatPrepare(%struct.TYPE_18__* %183)
  %185 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %186 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %185, i32 0, i32 3
  %187 = call i32 @vlc_mutex_unlock(i32* %186)
  %188 = load i32*, i32** %8, align 8
  %189 = icmp eq i32* %188, null
  br i1 %189, label %190, label %193

190:                                              ; preds = %172
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %192 = call i32 @msg_Err(%struct.TYPE_17__* %191, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %223

193:                                              ; preds = %172
  %194 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %195 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 3
  store i32 %198, i32* %202, align 8
  %203 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %204 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %210, i32 0, i32 2
  store i32 %207, i32* %211, align 4
  %212 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %213 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @vlc_fifo_Lock(i32 %214)
  %216 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %217 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %216, i32 0, i32 0
  store i32 1, i32* %217, align 8
  %218 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %219 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @vlc_fifo_Unlock(i32 %220)
  br label %222

222:                                              ; preds = %193, %98
  store i32 0, i32* %2, align 4
  br label %223

223:                                              ; preds = %222, %190
  %224 = load i32, i32* %2, align 4
  ret i32 %224
}

declare dso_local %struct.decoder_owner* @dec_get_owner(%struct.TYPE_17__*) #1

declare dso_local i32 @AOUT_FMTS_IDENTICAL(%struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @aout_DecDelete(i32*) #1

declare dso_local i32 @input_resource_PutAout(i32, i32*) #1

declare dso_local i64 @aout_replaygain_changed(i32*, i32*) #1

declare dso_local i32 @var_TriggerCallback(i32*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @aout_FormatPrepare(%struct.TYPE_18__*) #1

declare dso_local i32 @var_InheritInteger(%struct.TYPE_17__*, i8*) #1

declare dso_local i32* @input_resource_GetAout(i32) #1

declare dso_local i64 @aout_DecNew(i32*, %struct.TYPE_18__*, i64, i32, i32*) #1

declare dso_local i32 @DecoderUpdateFormatLocked(%struct.decoder_owner*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @vlc_fifo_Lock(i32) #1

declare dso_local i32 @vlc_fifo_Unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
