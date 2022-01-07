; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_araw.c_DecodeBlock.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_araw.c_DecodeBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_18__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32 (i32, i32, i32)* }
%struct.TYPE_19__ = type { i32, i64, i32, i32, i64, i32 }

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
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  store %struct.TYPE_18__* %11, %struct.TYPE_18__** %6, align 8
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %13 = icmp eq %struct.TYPE_19__* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %15, i32* %3, align 4
  br label %156

16:                                               ; preds = %2
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %21 = load i32, i32* @BLOCK_FLAG_DISCONTINUITY, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %16
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %27 = call i32 @Flush(%struct.TYPE_17__* %26)
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %152

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %35, %16
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @VLC_TICK_INVALID, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %36
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 1
  %48 = call i64 @date_Get(i32* %47)
  %49 = icmp ne i64 %45, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %42
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @date_Set(i32* %52, i64 %55)
  br label %65

57:                                               ; preds = %42, %36
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 1
  %60 = call i64 @date_Get(i32* %59)
  %61 = load i64, i64* @VLC_TICK_INVALID, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %152

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64, %50
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = mul nsw i32 8, %68
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sdiv i32 %69, %72
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %65
  br label %152

77:                                               ; preds = %65
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 2
  %80 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %79, align 8
  %81 = icmp ne i32 (i32, i32, i32)* %80, null
  br i1 %81, label %82, label %115

82:                                               ; preds = %77
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %84 = call i64 @decoder_UpdateAudioFormat(%struct.TYPE_17__* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  br label %152

87:                                               ; preds = %82
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %89 = load i32, i32* %7, align 4
  %90 = call %struct.TYPE_19__* @decoder_NewAudioBuffer(%struct.TYPE_17__* %88, i32 %89)
  store %struct.TYPE_19__* %90, %struct.TYPE_19__** %8, align 8
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %92 = icmp eq %struct.TYPE_19__* %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %152

94:                                               ; preds = %87
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 2
  %97 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %96, align 8
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = mul i32 %104, %109
  %111 = call i32 %97(i32 %100, i32 %103, i32 %110)
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %113 = call i32 @block_Release(%struct.TYPE_19__* %112)
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  store %struct.TYPE_19__* %114, %struct.TYPE_19__** %5, align 8
  br label %132

115:                                              ; preds = %77
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %117 = call i64 @decoder_UpdateAudioFormat(%struct.TYPE_17__* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  br label %152

120:                                              ; preds = %115
  %121 = load i32, i32* %7, align 4
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 3
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* %7, align 4
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = sdiv i32 %127, 8
  %129 = mul i32 %124, %128
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 8
  br label %132

132:                                              ; preds = %120, %94
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 1
  %135 = call i64 @date_Get(i32* %134)
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 1
  store i64 %135, i64* %137, align 8
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 1
  %140 = load i32, i32* %7, align 4
  %141 = call i64 @date_Increment(i32* %139, i32 %140)
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = sub nsw i64 %141, %144
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 4
  store i64 %145, i64* %147, align 8
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %150 = call i32 @decoder_QueueAudio(%struct.TYPE_17__* %148, %struct.TYPE_19__* %149)
  %151 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %151, i32* %3, align 4
  br label %156

152:                                              ; preds = %119, %93, %86, %76, %63, %34
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %154 = call i32 @block_Release(%struct.TYPE_19__* %153)
  %155 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %155, i32* %3, align 4
  br label %156

156:                                              ; preds = %152, %132, %14
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local i32 @Flush(%struct.TYPE_17__*) #1

declare dso_local i64 @date_Get(i32*) #1

declare dso_local i32 @date_Set(i32*, i64) #1

declare dso_local i64 @decoder_UpdateAudioFormat(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_19__* @decoder_NewAudioBuffer(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @block_Release(%struct.TYPE_19__*) #1

declare dso_local i64 @date_Increment(i32*, i32) #1

declare dso_local i32 @decoder_QueueAudio(%struct.TYPE_17__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
