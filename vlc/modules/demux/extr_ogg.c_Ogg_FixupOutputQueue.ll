; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_ogg.c_Ogg_FixupOutputQueue.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_ogg.c_Ogg_FixupOutputQueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_17__, i32, %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_17__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, i32, i32, %struct.TYPE_20__*, i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }

@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@BLOCK_FLAG_HEADER = common dso_local global i32 0, align 4
@VIDEO_ES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_19__*)* @Ogg_FixupOutputQueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @Ogg_FixupOutputQueue(i32* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_18__, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_20__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %4, align 8
  %11 = load i64, i64* @VLC_TICK_INVALID, align 8
  store i64 %11, i64* %5, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @VLC_UNUSED(i32* %12)
  store i32 0, i32* %6, align 4
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  store %struct.TYPE_20__* %17, %struct.TYPE_20__** %7, align 8
  br label %18

18:                                               ; preds = %87, %2
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %20 = icmp ne %struct.TYPE_20__* %19, null
  br i1 %20, label %21, label %91

21:                                               ; preds = %18
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @VLC_TICK_INVALID, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %5, align 8
  br label %91

31:                                               ; preds = %21
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @BLOCK_FLAG_HEADER, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %87

39:                                               ; preds = %31
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 1
  store i32 %42, i32* %43, align 4
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %70 [
    i32 129, label %52
    i32 130, label %66
  ]

52:                                               ; preds = %39
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %57, %62
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  br label %81

66:                                               ; preds = %39
  %67 = call i32 @Ogg_OpusPacketDuration(%struct.TYPE_18__* %8)
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  br label %81

70:                                               ; preds = %39
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @VIDEO_ES, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 2
  store i32 1, i32* %79, align 4
  br label %80

80:                                               ; preds = %77, %70
  br label %81

81:                                               ; preds = %80, %66, %52
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %6, align 4
  %86 = add i32 %85, %84
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %81, %38
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 3
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %89, align 8
  store %struct.TYPE_20__* %90, %struct.TYPE_20__** %7, align 8
  br label %18

91:                                               ; preds = %27, %18
  %92 = load i64, i64* %5, align 8
  %93 = load i64, i64* @VLC_TICK_INVALID, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %138

95:                                               ; preds = %91
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  store i32 %98, i32* %9, align 4
  %99 = load i64, i64* %5, align 8
  %100 = call i32 @date_Set(i32* %9, i64 %99)
  %101 = load i32, i32* %6, align 4
  %102 = call i64 @date_Decrement(i32* %9, i32 %101)
  store i64 %102, i64* %5, align 8
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %105, align 8
  store %struct.TYPE_20__* %106, %struct.TYPE_20__** %10, align 8
  br label %107

107:                                              ; preds = %133, %95
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %109 = icmp ne %struct.TYPE_20__* %108, null
  br i1 %109, label %110, label %137

110:                                              ; preds = %107
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @VLC_TICK_INVALID, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  br label %137

117:                                              ; preds = %110
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @BLOCK_FLAG_HEADER, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %117
  br label %133

125:                                              ; preds = %117
  %126 = call i64 @date_Get(i32* %9)
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 0
  store i64 %126, i64* %128, align 8
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @date_Increment(i32* %9, i32 %131)
  br label %133

133:                                              ; preds = %125, %124
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 3
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %135, align 8
  store %struct.TYPE_20__* %136, %struct.TYPE_20__** %10, align 8
  br label %107

137:                                              ; preds = %116, %107
  br label %138

138:                                              ; preds = %137, %91
  %139 = load i64, i64* %5, align 8
  ret i64 %139
}

declare dso_local i32 @VLC_UNUSED(i32*) #1

declare dso_local i32 @Ogg_OpusPacketDuration(%struct.TYPE_18__*) #1

declare dso_local i32 @date_Set(i32*, i64) #1

declare dso_local i64 @date_Decrement(i32*, i32) #1

declare dso_local i64 @date_Get(i32*) #1

declare dso_local i32 @date_Increment(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
