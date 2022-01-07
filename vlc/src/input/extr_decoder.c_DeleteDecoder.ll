; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_DeleteDecoder.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_DeleteDecoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.decoder_owner = type { i32, i32, i32, i32, i32, i32, i32, i32*, i64, i32, i32*, i32, i32, i32*, i32, %struct.TYPE_9__, i64, i32, i64 }
%struct.TYPE_9__ = type { i64 }

@.str = private unnamed_addr constant [31 x i8] c"killing decoder fourcc `%4.4s'\00", align 1
@on_vout_stopped = common dso_local global i32 0, align 4
@VOUT_SPU_CHANNEL_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @DeleteDecoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DeleteDecoder(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.decoder_owner*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %7 = call %struct.decoder_owner* @dec_get_owner(%struct.TYPE_10__* %6)
  store %struct.decoder_owner* %7, %struct.decoder_owner** %3, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = bitcast i32* %11 to i8*
  %13 = call i32 @msg_Dbg(%struct.TYPE_10__* %8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %4, align 4
  %18 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %19 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %18, i32 0, i32 13
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %24 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %23, i32 0, i32 13
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @picture_pool_Release(i32* %25)
  %27 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %28 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %27, i32 0, i32 13
  store i32* null, i32** %28, align 8
  br label %29

29:                                               ; preds = %22, %1
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %31 = call i32 @decoder_Clean(%struct.TYPE_10__* %30)
  %32 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %33 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %32, i32 0, i32 18
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %38 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %37, i32 0, i32 18
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @vlc_video_context_Release(i64 %39)
  br label %41

41:                                               ; preds = %36, %29
  %42 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %43 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %42, i32 0, i32 17
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @block_FifoRelease(i32 %44)
  %46 = load i32, i32* %4, align 4
  switch i32 %46, label %135 [
    i32 132, label %47
    i32 128, label %65
    i32 130, label %101
    i32 131, label %134
    i32 129, label %134
  ]

47:                                               ; preds = %41
  %48 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %49 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %48, i32 0, i32 14
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %47
  %53 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %54 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %53, i32 0, i32 14
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @aout_DecDelete(i32 %55)
  %57 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %58 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %57, i32 0, i32 12
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %61 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %60, i32 0, i32 14
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @input_resource_PutAout(i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %52, %47
  br label %137

65:                                               ; preds = %41
  %66 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %67 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %66, i32 0, i32 10
  %68 = load i32*, i32** %67, align 8
  store i32* %68, i32** %5, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %100

71:                                               ; preds = %65
  %72 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %73 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %100

76:                                               ; preds = %71
  %77 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %78 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %77, i32 0, i32 13
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %83 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %82, i32 0, i32 13
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @picture_pool_Cancel(i32* %84, i32 0)
  br label %86

86:                                               ; preds = %81, %76
  %87 = load i32*, i32** %5, align 8
  %88 = call i32 @vout_StopDisplay(i32* %87)
  %89 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %90 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %89, i32 0, i32 0
  store i32 0, i32* %90, align 8
  %91 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %92 = load i32, i32* @on_vout_stopped, align 4
  %93 = load i32*, i32** %5, align 8
  %94 = call i32 @decoder_Notify(%struct.decoder_owner* %91, i32 %92, i32* %93)
  %95 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %96 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %95, i32 0, i32 12
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %5, align 8
  %99 = call i32 @input_resource_PutVout(i32 %97, i32* %98)
  br label %100

100:                                              ; preds = %86, %71, %65
  br label %137

101:                                              ; preds = %41
  %102 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %103 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %102, i32 0, i32 10
  %104 = load i32*, i32** %103, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %133

106:                                              ; preds = %101
  %107 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %108 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %107, i32 0, i32 11
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @VOUT_SPU_CHANNEL_INVALID, align 4
  %111 = icmp ne i32 %109, %110
  %112 = zext i1 %111 to i32
  %113 = call i32 @assert(i32 %112)
  %114 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %115 = load i32, i32* @on_vout_stopped, align 4
  %116 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %117 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %116, i32 0, i32 10
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 @decoder_Notify(%struct.decoder_owner* %114, i32 %115, i32* %118)
  %120 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %121 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %120, i32 0, i32 10
  %122 = load i32*, i32** %121, align 8
  %123 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %124 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %123, i32 0, i32 11
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @vout_UnregisterSubpictureChannel(i32* %122, i32 %125)
  %127 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %128 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %127, i32 0, i32 10
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @vout_Release(i32* %129)
  %131 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %132 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %131, i32 0, i32 0
  store i32 0, i32* %132, align 8
  br label %133

133:                                              ; preds = %106, %101
  br label %137

134:                                              ; preds = %41, %41
  br label %137

135:                                              ; preds = %41
  %136 = call i32 (...) @vlc_assert_unreachable()
  br label %137

137:                                              ; preds = %135, %134, %133, %100, %64
  %138 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %139 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %138, i32 0, i32 9
  %140 = call i32 @es_format_Clean(i32* %139)
  %141 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %142 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %141, i32 0, i32 8
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %137
  %146 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %147 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %146, i32 0, i32 8
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @vlc_meta_Delete(i64 %148)
  br label %150

150:                                              ; preds = %145, %137
  %151 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %152 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %151, i32 0, i32 7
  %153 = load i32*, i32** %152, align 8
  %154 = call i32 @decoder_Destroy(i32* %153)
  %155 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %156 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %155, i32 0, i32 6
  %157 = call i32 @vlc_cond_destroy(i32* %156)
  %158 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %159 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %158, i32 0, i32 5
  %160 = call i32 @vlc_cond_destroy(i32* %159)
  %161 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %162 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %161, i32 0, i32 4
  %163 = call i32 @vlc_cond_destroy(i32* %162)
  %164 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %165 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %164, i32 0, i32 3
  %166 = call i32 @vlc_mutex_destroy(i32* %165)
  %167 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %168 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %167, i32 0, i32 2
  %169 = call i32 @vlc_mutex_destroy(i32* %168)
  %170 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %171 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %170, i32 0, i32 1
  %172 = call i32 @decoder_Destroy(i32* %171)
  ret void
}

declare dso_local %struct.decoder_owner* @dec_get_owner(%struct.TYPE_10__*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_10__*, i8*, i8*) #1

declare dso_local i32 @picture_pool_Release(i32*) #1

declare dso_local i32 @decoder_Clean(%struct.TYPE_10__*) #1

declare dso_local i32 @vlc_video_context_Release(i64) #1

declare dso_local i32 @block_FifoRelease(i32) #1

declare dso_local i32 @aout_DecDelete(i32) #1

declare dso_local i32 @input_resource_PutAout(i32, i32) #1

declare dso_local i32 @picture_pool_Cancel(i32*, i32) #1

declare dso_local i32 @vout_StopDisplay(i32*) #1

declare dso_local i32 @decoder_Notify(%struct.decoder_owner*, i32, i32*) #1

declare dso_local i32 @input_resource_PutVout(i32, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vout_UnregisterSubpictureChannel(i32*, i32) #1

declare dso_local i32 @vout_Release(i32*) #1

declare dso_local i32 @vlc_assert_unreachable(...) #1

declare dso_local i32 @es_format_Clean(i32*) #1

declare dso_local i32 @vlc_meta_Delete(i64) #1

declare dso_local i32 @decoder_Destroy(i32*) #1

declare dso_local i32 @vlc_cond_destroy(i32*) #1

declare dso_local i32 @vlc_mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
