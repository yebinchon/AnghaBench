; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_cc.c_Decode.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_cc.c_Decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_17__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_17__ = type { i64, i32, i32, i64 }
%struct.TYPE_18__ = type { i32, i32 }

@BLOCK_FLAG_DISCONTINUITY = common dso_local global i32 0, align 4
@BLOCK_FLAG_CORRUPTED = common dso_local global i32 0, align 4
@VLCDEC_SUCCESS = common dso_local global i32 0, align 4
@BLOCK_FLAG_TYPE_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_18__*)* @Decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Decode(%struct.TYPE_16__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  store %struct.TYPE_17__* %10, %struct.TYPE_17__** %6, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %12 = icmp ne %struct.TYPE_18__* %11, null
  br i1 %12, label %13, label %88

13:                                               ; preds = %2
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @BLOCK_FLAG_DISCONTINUITY, align 4
  %18 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %64

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %27, %22
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %25 = call i64 @DoDecode(%struct.TYPE_16__* %24, i32 1)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %23

28:                                               ; preds = %23
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @Eia608Init(i64 %36)
  br label %47

38:                                               ; preds = %28
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @CEA708_DTVCC_Demuxer_Flush(i32 %41)
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @CEA708_Decoder_Flush(i32 %45)
  br label %47

47:                                               ; preds = %38, %33
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %47
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %57, 1
  br i1 %58, label %59, label %63

59:                                               ; preds = %54, %47
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %61 = call i32 @block_Release(%struct.TYPE_18__* %60)
  %62 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %62, i32* %3, align 4
  br label %112

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63, %13
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %64
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @BLOCK_FLAG_TYPE_B, align 4
  %74 = and i32 %72, %73
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %81, %76
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %79 = call i64 @DoDecode(%struct.TYPE_16__* %78, i32 1)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %77

82:                                               ; preds = %77
  br label %83

83:                                               ; preds = %82, %69
  br label %84

84:                                               ; preds = %83, %64
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %87 = call i32 @Push(%struct.TYPE_16__* %85, %struct.TYPE_18__* %86)
  br label %88

88:                                               ; preds = %84, %2
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp slt i64 %94, 0
  %96 = zext i1 %95 to i32
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %109, %88
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %100 = icmp eq %struct.TYPE_18__* %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %97
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br label %104

104:                                              ; preds = %101, %97
  %105 = phi i1 [ true, %97 ], [ %103, %101 ]
  %106 = zext i1 %105 to i32
  %107 = call i64 @DoDecode(%struct.TYPE_16__* %98, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %97

110:                                              ; preds = %104
  %111 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %110, %59
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i64 @DoDecode(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @Eia608Init(i64) #1

declare dso_local i32 @CEA708_DTVCC_Demuxer_Flush(i32) #1

declare dso_local i32 @CEA708_Decoder_Flush(i32) #1

declare dso_local i32 @block_Release(%struct.TYPE_18__*) #1

declare dso_local i32 @Push(%struct.TYPE_16__*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
