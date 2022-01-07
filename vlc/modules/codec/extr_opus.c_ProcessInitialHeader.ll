; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_opus.c_ProcessInitialHeader.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_opus.c_ProcessInitialHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__, %struct.TYPE_16__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32, i8*, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i64 }

@.str = private unnamed_addr constant [24 x i8] c"cannot read Opus header\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Opus audio with %d channels\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Unsupported channel mapping\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Unsupported ambisonic channel mapping\00", align 1
@pi_channels_maps = common dso_local global i32* null, align 8
@ProcessInitialHeader.pi_ch = internal global [6 x i32*] [i32* inttoptr (i64 133 to i32*), i32* inttoptr (i64 132 to i32*), i32* inttoptr (i64 131 to i32*), i32* inttoptr (i64 130 to i32*), i32* inttoptr (i64 129 to i32*), i32* inttoptr (i64 128 to i32*)], align 16
@AOUT_CHAN_MAX = common dso_local global i32 0, align 4
@AUDIO_CHANNEL_TYPE_AMBISONICS = common dso_local global i32 0, align 4
@OPUS_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"decoder initialization failed\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_14__*)* @ProcessInitialHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ProcessInitialHeader(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca [8 x i8], align 1
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  store %struct.TYPE_16__* %18, %struct.TYPE_16__** %9, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 2
  store %struct.TYPE_17__* %20, %struct.TYPE_17__** %10, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %29 = call i32 @opus_header_parse(i8* %24, i32 %27, %struct.TYPE_17__* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %2
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %33 = call i32 @msg_Err(%struct.TYPE_15__* %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %34, i32* %3, align 4
  br label %227

35:                                               ; preds = %2
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @msg_Dbg(%struct.TYPE_15__* %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp sgt i32 %43, 2
  br i1 %44, label %45, label %50

45:                                               ; preds = %35
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %75, label %50

50:                                               ; preds = %45, %35
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp sgt i32 %53, 8
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %75, label %60

60:                                               ; preds = %55, %50
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp sgt i32 %63, 18
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %75, label %70

70:                                               ; preds = %65, %60
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp sgt i32 %73, 2
  br i1 %74, label %75, label %79

75:                                               ; preds = %70, %65, %55, %45
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %77 = call i32 @msg_Err(%struct.TYPE_15__* %76, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %78 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %78, i32* %3, align 4
  br label %227

79:                                               ; preds = %70
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 2
  br i1 %83, label %84, label %107

84:                                               ; preds = %79
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @sqrt(i32 %87)
  %89 = call i32 @floor(i32 %88)
  store i32 %89, i32* %11, align 4
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  %95 = mul nsw i32 %93, %94
  %96 = sub nsw i32 %92, %95
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %84
  %100 = load i32, i32* %12, align 4
  %101 = icmp ne i32 %100, 2
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %104 = call i32 @msg_Err(%struct.TYPE_15__* %103, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %105 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %105, i32* %3, align 4
  br label %227

106:                                              ; preds = %99, %84
  br label %107

107:                                              ; preds = %106, %79
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  store i32 %110, i32* %114, align 8
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 1
  store i32 48000, i32* %118, align 4
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp sle i32 %121, 1
  br i1 %122, label %123, label %187

123:                                              ; preds = %107
  %124 = load i32*, i32** @pi_channels_maps, align 8
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %124, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 3
  store i32 %130, i32* %134, align 4
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp sgt i32 %137, 2
  br i1 %138, label %139, label %182

139:                                              ; preds = %123
  %140 = load i32, i32* @AOUT_CHAN_MAX, align 4
  %141 = zext i32 %140 to i64
  %142 = call i8* @llvm.stacksave()
  store i8* %142, i8** %13, align 8
  %143 = alloca i64, i64 %141, align 16
  store i64 %141, i64* %14, align 8
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = sub nsw i32 %146, 3
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [6 x i32*], [6 x i32*]* @ProcessInitialHeader.pi_ch, i64 0, i64 %148
  %150 = load i32*, i32** %149, align 8
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @aout_CheckChannelReorder(i32* %150, i32* null, i32 %155, i64* %143)
  store i32 0, i32* %15, align 4
  br label %157

157:                                              ; preds = %176, %139
  %158 = load i32, i32* %15, align 4
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp slt i32 %158, %161
  br i1 %162, label %163, label %179

163:                                              ; preds = %157
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 2
  %166 = load i8*, i8** %165, align 8
  %167 = load i32, i32* %15, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %166, i64 %168
  %170 = load i8, i8* %169, align 1
  %171 = load i32, i32* %15, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i64, i64* %143, i64 %172
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 %174
  store i8 %170, i8* %175, align 1
  br label %176

176:                                              ; preds = %163
  %177 = load i32, i32* %15, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %15, align 4
  br label %157

179:                                              ; preds = %157
  %180 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  store i8* %180, i8** %7, align 8
  %181 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %181)
  br label %186

182:                                              ; preds = %123
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 2
  %185 = load i8*, i8** %184, align 8
  store i8* %185, i8** %7, align 8
  br label %186

186:                                              ; preds = %182, %179
  br label %196

187:                                              ; preds = %107
  %188 = load i32, i32* @AUDIO_CHANNEL_TYPE_AMBISONICS, align 4
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 2
  store i32 %188, i32* %192, align 8
  %193 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i32 0, i32 2
  %195 = load i8*, i8** %194, align 8
  store i8* %195, i8** %7, align 8
  br label %196

196:                                              ; preds = %187, %186
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i32 0, i32 5
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 4
  %206 = load i8*, i8** %7, align 8
  %207 = call i32 @opus_multistream_decoder_create(i32 48000, i32 %199, i32 %202, i32 %205, i8* %206, i32* %6)
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 1
  store i32 %207, i32* %209, align 4
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %196
  %215 = load i32, i32* %6, align 4
  %216 = load i32, i32* @OPUS_OK, align 4
  %217 = icmp ne i32 %215, %216
  br i1 %217, label %218, label %222

218:                                              ; preds = %214, %196
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %220 = call i32 @msg_Err(%struct.TYPE_15__* %219, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %221 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %221, i32* %3, align 4
  br label %227

222:                                              ; preds = %214
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 0
  %225 = call i32 @date_Init(i32* %224, i32 48000, i32 1)
  %226 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %226, i32* %3, align 4
  br label %227

227:                                              ; preds = %222, %218, %102, %75, %31
  %228 = load i32, i32* %3, align 4
  ret i32 %228
}

declare dso_local i32 @opus_header_parse(i8*, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_15__*, i8*, i32) #1

declare dso_local i32 @floor(i32) #1

declare dso_local i32 @sqrt(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @aout_CheckChannelReorder(i32*, i32*, i32, i64*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @opus_multistream_decoder_create(i32, i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @date_Init(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
