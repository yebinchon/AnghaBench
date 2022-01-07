; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_g711.c_DecodeBlock.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_g711.c_DecodeBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_18__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_18__ = type { i32*, i32 }
%struct.TYPE_19__ = type { i32, i64, i32, i32, i64, i32* }

@VLCDEC_SUCCESS = common dso_local global i32 0, align 4
@BLOCK_FLAG_CORRUPTED = common dso_local global i32 0, align 4
@BLOCK_FLAG_DISCONTINUITY = common dso_local global i32 0, align 4
@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_19__*)* @DecodeBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DecodeBlock(%struct.TYPE_17__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  store %struct.TYPE_18__* %14, %struct.TYPE_18__** %6, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %16 = icmp eq %struct.TYPE_19__* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %18, i32* %3, align 4
  br label %187

19:                                               ; preds = %2
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %24 = load i32, i32* @BLOCK_FLAG_DISCONTINUITY, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %19
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %30 = call i32 @Flush(%struct.TYPE_17__* %29)
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %28
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %39 = call i32 @block_Release(%struct.TYPE_19__* %38)
  %40 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %40, i32* %3, align 4
  br label %187

41:                                               ; preds = %28
  br label %42

42:                                               ; preds = %41, %19
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @VLC_TICK_INVALID, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %42
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 1
  %54 = call i64 @date_Get(i32* %53)
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %48
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @date_Set(i32* %58, i64 %61)
  br label %74

63:                                               ; preds = %48, %42
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 1
  %66 = call i64 @date_Get(i32* %65)
  %67 = load i64, i64* @VLC_TICK_INVALID, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %71 = call i32 @block_Release(%struct.TYPE_19__* %70)
  %72 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %72, i32* %3, align 4
  br label %187

73:                                               ; preds = %63
  br label %74

74:                                               ; preds = %73, %56
  %75 = load i64, i64* @VLC_TICK_INVALID, align 8
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 1
  store i64 %75, i64* %77, align 8
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = udiv i32 %80, %85
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %74
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %91 = call i32 @block_Release(%struct.TYPE_19__* %90)
  %92 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %92, i32* %3, align 4
  br label %187

93:                                               ; preds = %74
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %95 = call i64 @decoder_UpdateAudioFormat(%struct.TYPE_17__* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %99 = call i32 @block_Release(%struct.TYPE_19__* %98)
  %100 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %100, i32* %3, align 4
  br label %187

101:                                              ; preds = %93
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %103 = load i32, i32* %7, align 4
  %104 = call %struct.TYPE_19__* @decoder_NewAudioBuffer(%struct.TYPE_17__* %102, i32 %103)
  store %struct.TYPE_19__* %104, %struct.TYPE_19__** %8, align 8
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %106 = icmp eq %struct.TYPE_19__* %105, null
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %109 = call i32 @block_Release(%struct.TYPE_19__* %108)
  %110 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %110, i32* %3, align 4
  br label %187

111:                                              ; preds = %101
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %7, align 4
  %116 = icmp eq i32 %114, %115
  %117 = zext i1 %116 to i32
  %118 = call i32 @assert(i32 %117)
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %7, align 4
  %123 = mul i32 %122, 2
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = mul i32 %123, %128
  %130 = icmp eq i32 %121, %129
  %131 = zext i1 %130 to i32
  %132 = call i32 @assert(i32 %131)
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 1
  %135 = call i64 @date_Get(i32* %134)
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 1
  store i64 %135, i64* %137, align 8
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 1
  %140 = load i32, i32* %7, align 4
  %141 = call i64 @date_Increment(i32* %139, i32 %140)
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = sub nsw i64 %141, %144
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 4
  store i64 %145, i64* %147, align 8
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 5
  %150 = load i32*, i32** %149, align 8
  store i32* %150, i32** %9, align 8
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 5
  %153 = load i32*, i32** %152, align 8
  store i32* %153, i32** %10, align 8
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* %7, align 4
  %160 = mul i32 %159, %158
  store i32 %160, i32* %7, align 4
  store i32 0, i32* %11, align 4
  br label %161

161:                                              ; preds = %177, %111
  %162 = load i32, i32* %11, align 4
  %163 = load i32, i32* %7, align 4
  %164 = icmp ult i32 %162, %163
  br i1 %164, label %165, label %180

165:                                              ; preds = %161
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = load i32*, i32** %9, align 8
  %170 = getelementptr inbounds i32, i32* %169, i32 1
  store i32* %170, i32** %9, align 8
  %171 = load i32, i32* %169, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %168, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = load i32*, i32** %10, align 8
  %176 = getelementptr inbounds i32, i32* %175, i32 1
  store i32* %176, i32** %10, align 8
  store i32 %174, i32* %175, align 4
  br label %177

177:                                              ; preds = %165
  %178 = load i32, i32* %11, align 4
  %179 = add i32 %178, 1
  store i32 %179, i32* %11, align 4
  br label %161

180:                                              ; preds = %161
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %182 = call i32 @block_Release(%struct.TYPE_19__* %181)
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %185 = call i32 @decoder_QueueAudio(%struct.TYPE_17__* %183, %struct.TYPE_19__* %184)
  %186 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %186, i32* %3, align 4
  br label %187

187:                                              ; preds = %180, %107, %97, %89, %69, %37, %17
  %188 = load i32, i32* %3, align 4
  ret i32 %188
}

declare dso_local i32 @Flush(%struct.TYPE_17__*) #1

declare dso_local i32 @block_Release(%struct.TYPE_19__*) #1

declare dso_local i64 @date_Get(i32*) #1

declare dso_local i32 @date_Set(i32*, i64) #1

declare dso_local i64 @decoder_UpdateAudioFormat(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_19__* @decoder_NewAudioBuffer(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @date_Increment(i32*, i32) #1

declare dso_local i32 @decoder_QueueAudio(%struct.TYPE_17__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
