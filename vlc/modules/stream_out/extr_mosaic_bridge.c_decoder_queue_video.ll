; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/extr_mosaic_bridge.c_decoder_queue_video.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/extr_mosaic_bridge.c_decoder_queue_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_28__*, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32, i32, i32, i32, i32, i32 }
%struct.decoder_owner = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32, i32, i32, i32, %struct.TYPE_29__*, i64, i32, i64, %struct.TYPE_24__* }
%struct.TYPE_29__ = type { %struct.TYPE_28__** }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_25__ }

@VLC_CODEC_I420 = common dso_local global i64 0, align 8
@VOUT_ASPECT_FACTOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"image conversion failed\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"image allocation failed\00", align 1
@VLC_MOSAIC_MUTEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_28__*)* @decoder_queue_video to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decoder_queue_video(i32* %0, %struct.TYPE_28__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca %struct.decoder_owner*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca %struct.TYPE_25__, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_25__, align 4
  %13 = alloca %struct.TYPE_29__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %4, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call %struct.decoder_owner* @dec_get_owner(i32* %14)
  store %struct.decoder_owner* %15, %struct.decoder_owner** %5, align 8
  %16 = load %struct.decoder_owner*, %struct.decoder_owner** %5, align 8
  %17 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %16, i32 0, i32 0
  %18 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  store %struct.TYPE_26__* %18, %struct.TYPE_26__** %6, align 8
  %19 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_27__*, %struct.TYPE_27__** %20, align 8
  store %struct.TYPE_27__* %21, %struct.TYPE_27__** %7, align 8
  %22 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 8
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 0
  store %struct.TYPE_25__* %26, %struct.TYPE_25__** %9, align 8
  %27 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %2
  %32 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %152

36:                                               ; preds = %31, %2
  %37 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %37, i32 0, i32 7
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %42, i32 0, i32 7
  %44 = load i64, i64* %43, align 8
  br label %47

45:                                               ; preds = %36
  %46 = load i64, i64* @VLC_CODEC_I420, align 8
  br label %47

47:                                               ; preds = %45, %41
  %48 = phi i64 [ %44, %41 ], [ %46, %45 ]
  %49 = call i32 @video_format_Init(%struct.TYPE_25__* %10, i64 %48)
  %50 = load i32, i32* @VOUT_ASPECT_FACTOR, align 4
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = mul i32 %50, %53
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = mul i32 %54, %57
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = mul i32 %61, %64
  %66 = udiv i32 %58, %65
  store i32 %66, i32* %11, align 4
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %93, label %71

71:                                               ; preds = %47
  %72 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 1
  store i32 %74, i32* %75, align 4
  %76 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @VOUT_ASPECT_FACTOR, align 4
  %80 = mul i32 %78, %79
  %81 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = mul i32 %80, %83
  %85 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = udiv i32 %84, %87
  %89 = load i32, i32* %11, align 4
  %90 = udiv i32 %88, %89
  %91 = and i32 %90, -2
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 3
  store i32 %91, i32* %92, align 4
  br label %130

93:                                               ; preds = %47
  %94 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %120, label %98

98:                                               ; preds = %93
  %99 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 3
  store i32 %101, i32* %102, align 4
  %103 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %11, align 4
  %107 = mul i32 %105, %106
  %108 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = mul i32 %107, %110
  %112 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = udiv i32 %111, %114
  %116 = load i32, i32* @VOUT_ASPECT_FACTOR, align 4
  %117 = udiv i32 %115, %116
  %118 = and i32 %117, -2
  %119 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 1
  store i32 %118, i32* %119, align 4
  br label %129

120:                                              ; preds = %93
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 1
  store i32 %123, i32* %124, align 4
  %125 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 3
  store i32 %127, i32* %128, align 4
  br label %129

129:                                              ; preds = %120, %98
  br label %130

130:                                              ; preds = %129, %71
  %131 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 4
  store i32 %132, i32* %133, align 4
  %134 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 5
  store i32 %135, i32* %136, align 4
  %137 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %142 = call %struct.TYPE_28__* @image_Convert(i32 %139, %struct.TYPE_28__* %140, %struct.TYPE_25__* %141, %struct.TYPE_25__* %10)
  store %struct.TYPE_28__* %142, %struct.TYPE_28__** %8, align 8
  %143 = call i32 @video_format_Clean(%struct.TYPE_25__* %10)
  %144 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %145 = icmp eq %struct.TYPE_28__* %144, null
  br i1 %145, label %146, label %151

146:                                              ; preds = %130
  %147 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %148 = call i32 @msg_Err(%struct.TYPE_26__* %147, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %149 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %150 = call i32 @picture_Release(%struct.TYPE_28__* %149)
  br label %208

151:                                              ; preds = %130
  br label %177

152:                                              ; preds = %31
  %153 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %153, i32 0, i32 1
  %155 = bitcast %struct.TYPE_25__* %12 to i8*
  %156 = bitcast %struct.TYPE_25__* %154 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %155, i8* align 8 %156, i64 24, i1 false)
  %157 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %12, i32 0, i32 0
  store i32 %159, i32* %160, align 4
  %161 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %12, i32 0, i32 2
  store i32 %163, i32* %164, align 4
  %165 = call %struct.TYPE_28__* @picture_NewFromFormat(%struct.TYPE_25__* %12)
  store %struct.TYPE_28__* %165, %struct.TYPE_28__** %8, align 8
  %166 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %167 = icmp ne %struct.TYPE_28__* %166, null
  br i1 %167, label %173, label %168

168:                                              ; preds = %152
  %169 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %170 = call i32 @picture_Release(%struct.TYPE_28__* %169)
  %171 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %172 = call i32 @msg_Err(%struct.TYPE_26__* %171, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %208

173:                                              ; preds = %152
  %174 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %175 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %176 = call i32 @picture_Copy(%struct.TYPE_28__* %174, %struct.TYPE_28__* %175)
  br label %177

177:                                              ; preds = %173, %151
  %178 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %179 = call i32 @picture_Release(%struct.TYPE_28__* %178)
  %180 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %180, i32 0, i32 5
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %177
  %185 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %185, i32 0, i32 5
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %189 = call %struct.TYPE_28__* @filter_chain_VideoFilter(i64 %187, %struct.TYPE_28__* %188)
  store %struct.TYPE_28__* %189, %struct.TYPE_28__** %8, align 8
  br label %190

190:                                              ; preds = %184, %177
  %191 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %191, i32 0, i32 4
  %193 = load %struct.TYPE_29__*, %struct.TYPE_29__** %192, align 8
  store %struct.TYPE_29__* %193, %struct.TYPE_29__** %13, align 8
  %194 = load i32, i32* @VLC_MOSAIC_MUTEX, align 4
  %195 = call i32 @vlc_global_lock(i32 %194)
  %196 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %197 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %198 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %198, align 8
  store %struct.TYPE_28__* %196, %struct.TYPE_28__** %199, align 8
  %200 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %200, i32 0, i32 0
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %201, align 8
  %202 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %205 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %204, i32 0, i32 0
  store %struct.TYPE_28__** %203, %struct.TYPE_28__*** %205, align 8
  %206 = load i32, i32* @VLC_MOSAIC_MUTEX, align 4
  %207 = call i32 @vlc_global_unlock(i32 %206)
  br label %208

208:                                              ; preds = %190, %168, %146
  ret void
}

declare dso_local %struct.decoder_owner* @dec_get_owner(i32*) #1

declare dso_local i32 @video_format_Init(%struct.TYPE_25__*, i64) #1

declare dso_local %struct.TYPE_28__* @image_Convert(i32, %struct.TYPE_28__*, %struct.TYPE_25__*, %struct.TYPE_25__*) #1

declare dso_local i32 @video_format_Clean(%struct.TYPE_25__*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_26__*, i8*) #1

declare dso_local i32 @picture_Release(%struct.TYPE_28__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_28__* @picture_NewFromFormat(%struct.TYPE_25__*) #1

declare dso_local i32 @picture_Copy(%struct.TYPE_28__*, %struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_28__* @filter_chain_VideoFilter(i64, %struct.TYPE_28__*) #1

declare dso_local i32 @vlc_global_lock(i32) #1

declare dso_local i32 @vlc_global_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
