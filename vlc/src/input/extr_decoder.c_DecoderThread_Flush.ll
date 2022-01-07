; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_DecoderThread_Flush.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_DecoderThread_Flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decoder_owner = type { i64, i32, i32, i64, i64, i32*, %struct.TYPE_7__, i64, %struct.TYPE_9__*, %struct.TYPE_9__ }
%struct.TYPE_7__ = type { %struct.TYPE_9__**, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 (%struct.TYPE_9__*)* }
%struct.TYPE_8__ = type { i64 }

@MAX_CC_DECODERS = common dso_local global i32 0, align 4
@AUDIO_ES = common dso_local global i64 0, align 8
@VIDEO_ES = common dso_local global i64 0, align 8
@SPU_ES = common dso_local global i64 0, align 8
@VOUT_SPU_CHANNEL_INVALID = common dso_local global i64 0, align 8
@PREROLL_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.decoder_owner*)* @DecoderThread_Flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DecoderThread_Flush(%struct.decoder_owner* %0) #0 {
  %2 = alloca %struct.decoder_owner*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  store %struct.decoder_owner* %0, %struct.decoder_owner** %2, align 8
  %7 = load %struct.decoder_owner*, %struct.decoder_owner** %2, align 8
  %8 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %7, i32 0, i32 9
  store %struct.TYPE_9__* %8, %struct.TYPE_9__** %3, align 8
  %9 = load %struct.decoder_owner*, %struct.decoder_owner** %2, align 8
  %10 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %9, i32 0, i32 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %4, align 8
  %12 = load %struct.decoder_owner*, %struct.decoder_owner** %2, align 8
  %13 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %12, i32 0, i32 7
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %156

17:                                               ; preds = %1
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = icmp ne %struct.TYPE_9__* %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %17
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %22, align 8
  %24 = icmp ne i32 (%struct.TYPE_9__*)* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %27, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = call i32 %28(%struct.TYPE_9__* %29)
  br label %31

31:                                               ; preds = %25, %20, %17
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %33, align 8
  %35 = icmp ne i32 (%struct.TYPE_9__*)* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %38, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %41 = call i32 %39(%struct.TYPE_9__* %40)
  br label %42

42:                                               ; preds = %36, %31
  %43 = load %struct.decoder_owner*, %struct.decoder_owner** %2, align 8
  %44 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %43, i32 0, i32 6
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %80

48:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %76, %48
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @MAX_CC_DECODERS, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %79

53:                                               ; preds = %49
  %54 = load %struct.decoder_owner*, %struct.decoder_owner** %2, align 8
  %55 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %54, i32 0, i32 6
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %57, i64 %59
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  store %struct.TYPE_9__* %61, %struct.TYPE_9__** %6, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %63 = icmp ne %struct.TYPE_9__* %62, null
  br i1 %63, label %64, label %75

64:                                               ; preds = %53
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %66, align 8
  %68 = icmp ne i32 (%struct.TYPE_9__*)* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %71, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %74 = call i32 %72(%struct.TYPE_9__* %73)
  br label %75

75:                                               ; preds = %69, %64, %53
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %49

79:                                               ; preds = %49
  br label %80

80:                                               ; preds = %79, %42
  %81 = load %struct.decoder_owner*, %struct.decoder_owner** %2, align 8
  %82 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %81, i32 0, i32 1
  %83 = call i32 @vlc_mutex_lock(i32* %82)
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @AUDIO_ES, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %80
  %91 = load %struct.decoder_owner*, %struct.decoder_owner** %2, align 8
  %92 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load %struct.decoder_owner*, %struct.decoder_owner** %2, align 8
  %97 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @aout_DecFlush(i64 %98)
  br label %100

100:                                              ; preds = %95, %90
  br label %149

101:                                              ; preds = %80
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @VIDEO_ES, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %119

108:                                              ; preds = %101
  %109 = load %struct.decoder_owner*, %struct.decoder_owner** %2, align 8
  %110 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %108
  %114 = load %struct.decoder_owner*, %struct.decoder_owner** %2, align 8
  %115 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @vout_FlushAll(i64 %116)
  br label %118

118:                                              ; preds = %113, %108
  br label %148

119:                                              ; preds = %101
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @SPU_ES, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %147

126:                                              ; preds = %119
  %127 = load %struct.decoder_owner*, %struct.decoder_owner** %2, align 8
  %128 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %146

131:                                              ; preds = %126
  %132 = load %struct.decoder_owner*, %struct.decoder_owner** %2, align 8
  %133 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @VOUT_SPU_CHANNEL_INVALID, align 8
  %136 = icmp ne i64 %134, %135
  %137 = zext i1 %136 to i32
  %138 = call i32 @assert(i32 %137)
  %139 = load %struct.decoder_owner*, %struct.decoder_owner** %2, align 8
  %140 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.decoder_owner*, %struct.decoder_owner** %2, align 8
  %143 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @vout_FlushSubpictureChannel(i64 %141, i64 %144)
  br label %146

146:                                              ; preds = %131, %126
  br label %147

147:                                              ; preds = %146, %119
  br label %148

148:                                              ; preds = %147, %118
  br label %149

149:                                              ; preds = %148, %100
  %150 = load i32, i32* @PREROLL_NONE, align 4
  %151 = load %struct.decoder_owner*, %struct.decoder_owner** %2, align 8
  %152 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %151, i32 0, i32 2
  store i32 %150, i32* %152, align 4
  %153 = load %struct.decoder_owner*, %struct.decoder_owner** %2, align 8
  %154 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %153, i32 0, i32 1
  %155 = call i32 @vlc_mutex_unlock(i32* %154)
  br label %156

156:                                              ; preds = %149, %16
  ret void
}

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @aout_DecFlush(i64) #1

declare dso_local i32 @vout_FlushAll(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vout_FlushSubpictureChannel(i64, i64) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
