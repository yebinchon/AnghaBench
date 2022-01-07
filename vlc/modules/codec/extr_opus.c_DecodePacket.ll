; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_opus.c_DecodePacket.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_opus.c_DecodePacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i64, i64, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Oops: No new buffer was returned!\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Error: corrupted stream?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_18__* (%struct.TYPE_16__*, %struct.TYPE_15__*, i32, i64)* @DecodePacket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_18__* @DecodePacket(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca float*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  store %struct.TYPE_17__* %19, %struct.TYPE_17__** %10, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %4
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %5, align 8
  br label %222

25:                                               ; preds = %4
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @opus_packet_get_nb_frames(i32 %28, i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %25
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @opus_packet_get_samples_per_frame(i32 %38, i32 48000)
  %40 = load i32, i32* %11, align 4
  %41 = mul nsw i32 %40, %39
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %35, %25
  %43 = load i32, i32* %11, align 4
  %44 = icmp slt i32 %43, 120
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %11, align 4
  %47 = icmp sgt i32 %46, 5760
  br i1 %47, label %48, label %49

48:                                               ; preds = %45, %42
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %5, align 8
  br label %222

49:                                               ; preds = %45
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %52, %49
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %56 = call i64 @decoder_UpdateAudioFormat(%struct.TYPE_16__* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %5, align 8
  br label %222

59:                                               ; preds = %54
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call %struct.TYPE_18__* @decoder_NewAudioBuffer(%struct.TYPE_16__* %60, i32 %61)
  store %struct.TYPE_18__* %62, %struct.TYPE_18__** %12, align 8
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %64 = icmp ne %struct.TYPE_18__* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %59
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %67 = call i32 @msg_Err(%struct.TYPE_16__* %66, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %5, align 8
  br label %222

68:                                               ; preds = %59
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to float*
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @opus_multistream_decode_float(i32 %71, i32 %74, i32 %77, float* %81, i32 %82, i32 0)
  store i32 %83, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %84 = load i64, i64* %9, align 8
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %86, label %101

86:                                               ; preds = %68
  %87 = load i32, i32* %11, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %86
  %90 = load i64, i64* %9, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i64 @vlc_tick_from_samples(i32 %91, i32 48000)
  %93 = icmp slt i64 %90, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %89
  %95 = load i32, i32* %11, align 4
  %96 = load i64, i64* %9, align 8
  %97 = call i32 @samples_from_vlc_tick(i64 %96, i32 48000)
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @VLC_CLIP(i32 %97, i32 0, i32 %98)
  %100 = sub nsw i32 %95, %99
  store i32 %100, i32* %13, align 4
  br label %101

101:                                              ; preds = %94, %89, %86, %68
  %102 = load i32, i32* %11, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %111, label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %8, align 4
  %106 = icmp sle i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %104
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp sge i32 %108, %109
  br i1 %110, label %111, label %120

111:                                              ; preds = %107, %104, %101
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %113 = call i32 @block_Release(%struct.TYPE_18__* %112)
  %114 = load i32, i32* %11, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %118 = call i32 @msg_Err(%struct.TYPE_16__* %117, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %119

119:                                              ; preds = %116, %111
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %5, align 8
  br label %222

120:                                              ; preds = %107
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* %13, align 4
  %123 = sub nsw i32 %121, %122
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = mul nsw i32 %123, %127
  %129 = sext i32 %128 to i64
  %130 = mul i64 %129, 4
  %131 = trunc i64 %130 to i32
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* %8, align 4
  %136 = icmp sgt i32 %134, %135
  br i1 %136, label %137, label %159

137:                                              ; preds = %120
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 4
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* %8, align 4
  %146 = sub nsw i32 %144, %145
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = mul nsw i32 %146, %150
  %152 = sext i32 %151 to i64
  %153 = mul i64 %152, 4
  %154 = add i64 %143, %153
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @memmove(i64 %140, i64 %154, i32 %157)
  br label %159

159:                                              ; preds = %137, %120
  %160 = load i32, i32* %13, align 4
  %161 = load i32, i32* %8, align 4
  %162 = sub nsw i32 %161, %160
  store i32 %162, i32* %8, align 4
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %202

168:                                              ; preds = %159
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = sitofp i32 %172 to double
  %174 = fdiv double %173, 5.120000e+03
  %175 = fptosi double %174 to i32
  %176 = call float @pow(i32 10, i32 %175)
  store float %176, float* %14, align 4
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 4
  %179 = load i64, i64* %178, align 8
  %180 = inttoptr i64 %179 to float*
  store float* %180, float** %15, align 8
  store i32 0, i32* %16, align 4
  br label %181

181:                                              ; preds = %198, %168
  %182 = load i32, i32* %16, align 4
  %183 = load i32, i32* %8, align 4
  %184 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = mul nsw i32 %183, %187
  %189 = icmp slt i32 %182, %188
  br i1 %189, label %190, label %201

190:                                              ; preds = %181
  %191 = load float, float* %14, align 4
  %192 = load float*, float** %15, align 8
  %193 = load i32, i32* %16, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds float, float* %192, i64 %194
  %196 = load float, float* %195, align 4
  %197 = fmul float %196, %191
  store float %197, float* %195, align 4
  br label %198

198:                                              ; preds = %190
  %199 = load i32, i32* %16, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %16, align 4
  br label %181

201:                                              ; preds = %181
  br label %202

202:                                              ; preds = %201, %159
  %203 = load i32, i32* %8, align 4
  %204 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i32 0, i32 1
  store i32 %203, i32* %205, align 4
  %206 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %206, i32 0, i32 0
  %208 = call i64 @date_Get(i32* %207)
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i32 0, i32 2
  store i64 %208, i64* %210, align 8
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 0
  %213 = load i32, i32* %8, align 4
  %214 = call i64 @date_Increment(i32* %212, i32 %213)
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 2
  %217 = load i64, i64* %216, align 8
  %218 = sub nsw i64 %214, %217
  %219 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %220 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %219, i32 0, i32 3
  store i64 %218, i64* %220, align 8
  %221 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  store %struct.TYPE_18__* %221, %struct.TYPE_18__** %5, align 8
  br label %222

222:                                              ; preds = %202, %119, %65, %58, %48, %24
  %223 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  ret %struct.TYPE_18__* %223
}

declare dso_local i32 @opus_packet_get_nb_frames(i32, i32) #1

declare dso_local i32 @opus_packet_get_samples_per_frame(i32, i32) #1

declare dso_local i64 @decoder_UpdateAudioFormat(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_18__* @decoder_NewAudioBuffer(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @opus_multistream_decode_float(i32, i32, i32, float*, i32, i32) #1

declare dso_local i64 @vlc_tick_from_samples(i32, i32) #1

declare dso_local i32 @VLC_CLIP(i32, i32, i32) #1

declare dso_local i32 @samples_from_vlc_tick(i64, i32) #1

declare dso_local i32 @block_Release(%struct.TYPE_18__*) #1

declare dso_local i32 @memmove(i64, i64, i32) #1

declare dso_local float @pow(i32, i32) #1

declare dso_local i64 @date_Get(i32*) #1

declare dso_local i64 @date_Increment(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
