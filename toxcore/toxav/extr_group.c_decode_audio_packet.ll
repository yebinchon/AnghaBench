; ModuleID = '/home/carl/AnghaBench/toxcore/toxav/extr_group.c_decode_audio_packet.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxav/extr_group.c_decode_audio_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_13__*, i32 (i32, i32, i32, %struct.TYPE_14__*, i32, i32, i32, i32)* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32* }
%struct.TYPE_15__ = type { i32, i32, i32*, i32 }

@OPUS_INVALID_PACKET = common dso_local global i32 0, align 4
@OPUS_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Error while starting audio decoder: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_15__*, i32, i32)* @decode_audio_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_audio_packet(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %19 = icmp ne %struct.TYPE_16__* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %22 = icmp ne %struct.TYPE_15__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20, %4
  store i32 -1, i32* %5, align 4
  br label %214

24:                                               ; preds = %20
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.TYPE_14__* @dequeue(i32 %27, i32* %10)
  store %struct.TYPE_14__* %28, %struct.TYPE_14__** %11, align 8
  %29 = load i32, i32* %10, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 -1, i32* %5, align 4
  br label %214

32:                                               ; preds = %24
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 48000, i32* %14, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %139

35:                                               ; preds = %32
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @opus_packet_get_nb_channels(i32* %38)
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* @OPUS_INVALID_PACKET, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %45 = call i32 @free(%struct.TYPE_14__* %44)
  store i32 -1, i32* %5, align 4
  br label %214

46:                                               ; preds = %35
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 1
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load i32, i32* %15, align 4
  %51 = icmp ne i32 %50, 2
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %54 = call i32 @free(%struct.TYPE_14__* %53)
  store i32 -1, i32* %5, align 4
  br label %214

55:                                               ; preds = %49, %46
  %56 = load i32, i32* %15, align 4
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %56, %59
  br i1 %60, label %61, label %92

61:                                               ; preds = %55
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @opus_decoder_destroy(i32* %69)
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 2
  store i32* null, i32** %72, align 8
  br label %73

73:                                               ; preds = %66, %61
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %15, align 4
  %76 = call i32* @opus_decoder_create(i32 %74, i32 %75, i32* %16)
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 2
  store i32* %76, i32** %78, align 8
  %79 = load i32, i32* %16, align 4
  %80 = load i32, i32* @OPUS_OK, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %73
  %83 = load i32, i32* %16, align 4
  %84 = call i32 @opus_strerror(i32 %83)
  %85 = call i32 @LOGGER_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %84)
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %87 = call i32 @free(%struct.TYPE_14__* %86)
  store i32 -1, i32* %5, align 4
  br label %214

88:                                               ; preds = %73
  %89 = load i32, i32* %15, align 4
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  br label %92

92:                                               ; preds = %88, %55
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @opus_decoder_get_nb_samples(i32* %95, i32* %98, i32 %101)
  store i32 %102, i32* %17, align 4
  %103 = load i32, i32* %17, align 4
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = mul nsw i32 %103, %106
  %108 = sext i32 %107 to i64
  %109 = mul i64 %108, 16
  %110 = trunc i64 %109 to i32
  %111 = call %struct.TYPE_14__* @malloc(i32 %110)
  store %struct.TYPE_14__* %111, %struct.TYPE_14__** %12, align 8
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %113 = icmp ne %struct.TYPE_14__* %112, null
  br i1 %113, label %117, label %114

114:                                              ; preds = %92
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %116 = call i32 @free(%struct.TYPE_14__* %115)
  store i32 -1, i32* %5, align 4
  br label %214

117:                                              ; preds = %92
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %128 = load i32, i32* %17, align 4
  %129 = call i32 @opus_decode(i32* %120, i32* %123, i32 %126, %struct.TYPE_14__* %127, i32 %128, i32 0)
  store i32 %129, i32* %13, align 4
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %131 = call i32 @free(%struct.TYPE_14__* %130)
  %132 = load i32, i32* %13, align 4
  %133 = icmp sle i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %117
  store i32 -1, i32* %5, align 4
  br label %214

135:                                              ; preds = %117
  %136 = load i32, i32* %13, align 4
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  br label %181

139:                                              ; preds = %32
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 2
  %142 = load i32*, i32** %141, align 8
  %143 = icmp ne i32* %142, null
  br i1 %143, label %145, label %144

144:                                              ; preds = %139
  store i32 -1, i32* %5, align 4
  br label %214

145:                                              ; preds = %139
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %145
  store i32 -1, i32* %5, align 4
  br label %214

151:                                              ; preds = %145
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = mul nsw i32 %154, %157
  %159 = sext i32 %158 to i64
  %160 = mul i64 %159, 16
  %161 = trunc i64 %160 to i32
  %162 = call %struct.TYPE_14__* @malloc(i32 %161)
  store %struct.TYPE_14__* %162, %struct.TYPE_14__** %12, align 8
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %164 = icmp ne %struct.TYPE_14__* %163, null
  br i1 %164, label %168, label %165

165:                                              ; preds = %151
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %167 = call i32 @free(%struct.TYPE_14__* %166)
  store i32 -1, i32* %5, align 4
  br label %214

168:                                              ; preds = %151
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 2
  %171 = load i32*, i32** %170, align 8
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @opus_decode(i32* %171, i32* null, i32 0, %struct.TYPE_14__* %172, i32 %175, i32 1)
  store i32 %176, i32* %13, align 4
  %177 = load i32, i32* %13, align 4
  %178 = icmp sle i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %168
  store i32 -1, i32* %5, align 4
  br label %214

180:                                              ; preds = %168
  br label %181

181:                                              ; preds = %180, %135
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %183 = icmp ne %struct.TYPE_14__* %182, null
  br i1 %183, label %184, label %213

184:                                              ; preds = %181
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 2
  %187 = load i32 (i32, i32, i32, %struct.TYPE_14__*, i32, i32, i32, i32)*, i32 (i32, i32, i32, %struct.TYPE_14__*, i32, i32, i32, i32)** %186, align 8
  %188 = icmp ne i32 (i32, i32, i32, %struct.TYPE_14__*, i32, i32, i32, i32)* %187, null
  br i1 %188, label %189, label %210

189:                                              ; preds = %184
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 2
  %192 = load i32 (i32, i32, i32, %struct.TYPE_14__*, i32, i32, i32, i32)*, i32 (i32, i32, i32, %struct.TYPE_14__*, i32, i32, i32, i32)** %191, align 8
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* %8, align 4
  %199 = load i32, i32* %9, align 4
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %201 = load i32, i32* %13, align 4
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* %14, align 4
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = call i32 %192(i32 %197, i32 %198, i32 %199, %struct.TYPE_14__* %200, i32 %201, i32 %204, i32 %205, i32 %208)
  br label %210

210:                                              ; preds = %189, %184
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %212 = call i32 @free(%struct.TYPE_14__* %211)
  store i32 0, i32* %5, align 4
  br label %214

213:                                              ; preds = %181
  store i32 -1, i32* %5, align 4
  br label %214

214:                                              ; preds = %213, %210, %179, %165, %150, %144, %134, %114, %82, %52, %43, %31, %23
  %215 = load i32, i32* %5, align 4
  ret i32 %215
}

declare dso_local %struct.TYPE_14__* @dequeue(i32, i32*) #1

declare dso_local i32 @opus_packet_get_nb_channels(i32*) #1

declare dso_local i32 @free(%struct.TYPE_14__*) #1

declare dso_local i32 @opus_decoder_destroy(i32*) #1

declare dso_local i32* @opus_decoder_create(i32, i32, i32*) #1

declare dso_local i32 @LOGGER_ERROR(i8*, i32) #1

declare dso_local i32 @opus_strerror(i32) #1

declare dso_local i32 @opus_decoder_get_nb_samples(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_14__* @malloc(i32) #1

declare dso_local i32 @opus_decode(i32*, i32*, i32, %struct.TYPE_14__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
