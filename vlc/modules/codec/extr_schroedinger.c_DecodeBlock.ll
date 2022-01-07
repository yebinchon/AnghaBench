; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_schroedinger.c_DecodeBlock.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_schroedinger.c_DecodeBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i64, i64, i32 }
%struct.TYPE_28__ = type { i32, i64, i32, i32 }
%struct.TYPE_31__ = type { i32, %struct.TYPE_28__*, i32 }
%struct.TYPE_30__ = type { i32* }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_29__ = type { i64 }
%struct.picture_free_t = type { %struct.TYPE_25__* }

@VLCDEC_SUCCESS = common dso_local global i32 0, align 4
@BLOCK_FLAG_CORRUPTED = common dso_local global i32 0, align 4
@BLOCK_FLAG_DISCONTINUITY = common dso_local global i32 0, align 4
@SchroBufferFree = common dso_local global i32 0, align 4
@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@free = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Could not allocate picture for decoder\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"SCHRO_DECODER_ERROR\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*, %struct.TYPE_28__*)* @DecodeBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DecodeBlock(%struct.TYPE_26__* %0, %struct.TYPE_28__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_31__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.TYPE_30__*, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_29__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %4, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %5, align 8
  %13 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  store %struct.TYPE_27__* %15, %struct.TYPE_27__** %6, align 8
  %16 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %17 = icmp ne %struct.TYPE_28__* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %19, i32* %3, align 4
  br label %195

20:                                               ; preds = %2
  %21 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %25 = load i32, i32* @BLOCK_FLAG_DISCONTINUITY, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %23, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %20
  %30 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %31 = call i32 @Flush(%struct.TYPE_26__* %30)
  %32 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %29
  %39 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %40 = call i32 @block_Release(%struct.TYPE_28__* %39)
  %41 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %41, i32* %3, align 4
  br label %195

42:                                               ; preds = %29
  br label %43

43:                                               ; preds = %42, %20
  %44 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call %struct.TYPE_31__* @schro_buffer_new_with_data(i32 %46, i32 %49)
  store %struct.TYPE_31__* %50, %struct.TYPE_31__** %7, align 8
  %51 = load i32, i32* @SchroBufferFree, align 4
  %52 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %55 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %55, i32 0, i32 1
  store %struct.TYPE_28__* %54, %struct.TYPE_28__** %56, align 8
  %57 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @VLC_TICK_INVALID, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %43
  %63 = call i64* @malloc(i32 8)
  store i64* %63, i64** %8, align 8
  %64 = load i64*, i64** %8, align 8
  %65 = icmp ne i64* %64, null
  br i1 %65, label %66, label %76

66:                                               ; preds = %62
  %67 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64*, i64** %8, align 8
  store i64 %69, i64* %70, align 8
  %71 = load i64*, i64** %8, align 8
  %72 = load i32, i32* @free, align 4
  %73 = call i32 @schro_tag_new(i64* %71, i32 %72)
  %74 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  br label %76

76:                                               ; preds = %66, %62
  br label %77

77:                                               ; preds = %76, %43
  %78 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %82 = call i32 @schro_decoder_autoparse_push(i32 %80, %struct.TYPE_31__* %81)
  br label %83

83:                                               ; preds = %77
  br label %84

84:                                               ; preds = %83, %194
  %85 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @schro_decoder_autoparse_wait(i32 %87)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  switch i32 %89, label %194 [
    i32 131, label %90
    i32 130, label %93
    i32 129, label %95
    i32 128, label %110
    i32 133, label %189
    i32 132, label %190
  ]

90:                                               ; preds = %84
  %91 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %92 = call i32 @SetVideoFormat(%struct.TYPE_26__* %91)
  br label %194

93:                                               ; preds = %84
  %94 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %94, i32* %3, align 4
  br label %195

95:                                               ; preds = %84
  %96 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %97 = call %struct.TYPE_30__* @CreateSchroFrameFromPic(%struct.TYPE_26__* %96)
  store %struct.TYPE_30__* %97, %struct.TYPE_30__** %9, align 8
  %98 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %99 = icmp ne %struct.TYPE_30__* %98, null
  br i1 %99, label %104, label %100

100:                                              ; preds = %95
  %101 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %102 = call i32 @msg_Err(%struct.TYPE_26__* %101, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %103 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %103, i32* %3, align 4
  br label %195

104:                                              ; preds = %95
  %105 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %109 = call i32 @schro_decoder_add_output_picture(i32 %107, %struct.TYPE_30__* %108)
  br label %194

110:                                              ; preds = %84
  %111 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call %struct.TYPE_29__* @schro_decoder_get_picture_tag(i32 %113)
  store %struct.TYPE_29__* %114, %struct.TYPE_29__** %12, align 8
  %115 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call %struct.TYPE_30__* @schro_decoder_pull(i32 %117)
  store %struct.TYPE_30__* %118, %struct.TYPE_30__** %9, align 8
  %119 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %120 = icmp ne %struct.TYPE_30__* %119, null
  br i1 %120, label %121, label %126

121:                                              ; preds = %110
  %122 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %139, label %126

126:                                              ; preds = %121, %110
  %127 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %128 = icmp ne %struct.TYPE_29__* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %131 = call i32 @schro_tag_free(%struct.TYPE_29__* %130)
  br label %132

132:                                              ; preds = %129, %126
  %133 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %134 = icmp ne %struct.TYPE_30__* %133, null
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %137 = call i32 @schro_frame_unref(%struct.TYPE_30__* %136)
  br label %138

138:                                              ; preds = %135, %132
  br label %194

139:                                              ; preds = %121
  %140 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = bitcast i32* %142 to %struct.picture_free_t*
  %144 = getelementptr inbounds %struct.picture_free_t, %struct.picture_free_t* %143, i32 0, i32 0
  %145 = load %struct.TYPE_25__*, %struct.TYPE_25__** %144, align 8
  store %struct.TYPE_25__* %145, %struct.TYPE_25__** %10, align 8
  %146 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %146, i32 0, i32 0
  store i32* null, i32** %147, align 8
  %148 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %149 = icmp ne %struct.TYPE_29__* %148, null
  br i1 %149, label %150, label %160

150:                                              ; preds = %139
  %151 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = inttoptr i64 %153 to i64*
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %156, i32 0, i32 0
  store i64 %155, i64* %157, align 8
  %158 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %159 = call i32 @schro_tag_free(%struct.TYPE_29__* %158)
  br label %177

160:                                              ; preds = %139
  %161 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @VLC_TICK_INVALID, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %176

166:                                              ; preds = %160
  %167 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = add nsw i64 %169, %172
  %174 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %175 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %174, i32 0, i32 0
  store i64 %173, i64* %175, align 8
  br label %176

176:                                              ; preds = %166, %160
  br label %177

177:                                              ; preds = %176, %150
  %178 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %181, i32 0, i32 0
  store i64 %180, i64* %182, align 8
  %183 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %184 = call i32 @schro_frame_unref(%struct.TYPE_30__* %183)
  %185 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %186 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %187 = call i32 @decoder_QueueVideo(%struct.TYPE_26__* %185, %struct.TYPE_25__* %186)
  %188 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %188, i32* %3, align 4
  br label %195

189:                                              ; preds = %84
  br label %194

190:                                              ; preds = %84
  %191 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %192 = call i32 @msg_Err(%struct.TYPE_26__* %191, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %193 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %193, i32* %3, align 4
  br label %195

194:                                              ; preds = %84, %189, %138, %104, %90
  br label %84

195:                                              ; preds = %190, %177, %100, %93, %38, %18
  %196 = load i32, i32* %3, align 4
  ret i32 %196
}

declare dso_local i32 @Flush(%struct.TYPE_26__*) #1

declare dso_local i32 @block_Release(%struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_31__* @schro_buffer_new_with_data(i32, i32) #1

declare dso_local i64* @malloc(i32) #1

declare dso_local i32 @schro_tag_new(i64*, i32) #1

declare dso_local i32 @schro_decoder_autoparse_push(i32, %struct.TYPE_31__*) #1

declare dso_local i32 @schro_decoder_autoparse_wait(i32) #1

declare dso_local i32 @SetVideoFormat(%struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_30__* @CreateSchroFrameFromPic(%struct.TYPE_26__*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_26__*, i8*) #1

declare dso_local i32 @schro_decoder_add_output_picture(i32, %struct.TYPE_30__*) #1

declare dso_local %struct.TYPE_29__* @schro_decoder_get_picture_tag(i32) #1

declare dso_local %struct.TYPE_30__* @schro_decoder_pull(i32) #1

declare dso_local i32 @schro_tag_free(%struct.TYPE_29__*) #1

declare dso_local i32 @schro_frame_unref(%struct.TYPE_30__*) #1

declare dso_local i32 @decoder_QueueVideo(%struct.TYPE_26__*, %struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
