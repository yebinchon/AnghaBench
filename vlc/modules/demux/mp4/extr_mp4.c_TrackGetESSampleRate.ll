; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_mp4.c_TrackGetESSampleRate.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_mp4.c_TrackGetESSampleRate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_8__ = type { i32, i64, i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32, i32, i64 }
%struct.TYPE_12__ = type { i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c"/moov\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"mdia/mdhd\00", align 1
@UINT16_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32*, i32*, %struct.TYPE_8__*, i32, i32)* @TrackGetESSampleRate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TrackGetESSampleRate(%struct.TYPE_10__* %0, i32* %1, i32* %2, %struct.TYPE_8__* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_9__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %13, align 8
  %22 = load i32*, i32** %8, align 8
  store i32 0, i32* %22, align 4
  %23 = load i32*, i32** %9, align 8
  store i32 0, i32* %23, align 4
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32* @MP4_BoxGet(i32* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = call i32* @MP4_GetTrakByTrackID(i32* %27, i32 %30)
  store i32* %31, i32** %14, align 8
  %32 = load i32*, i32** %14, align 8
  %33 = call i32* @MP4_BoxGet(i32* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32* %33, i32** %15, align 8
  %34 = load i32*, i32** %15, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %59

36:                                               ; preds = %6
  %37 = load i32*, i32** %15, align 8
  %38 = call %struct.TYPE_12__* @BOXDATA(i32* %37)
  %39 = icmp ne %struct.TYPE_12__* %38, null
  br i1 %39, label %40, label %59

40:                                               ; preds = %36
  %41 = load i32*, i32** %8, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = load i32*, i32** %15, align 8
  %44 = call %struct.TYPE_12__* @BOXDATA(i32* %43)
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = mul nsw i32 %47, %50
  %52 = load i32*, i32** %15, align 8
  %53 = call %struct.TYPE_12__* @BOXDATA(i32* %52)
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = load i32, i32* @UINT16_MAX, align 4
  %58 = call i32 @vlc_ureduce(i32* %41, i32* %42, i32 %51, i32 %56, i32 %57)
  br label %142

59:                                               ; preds = %36, %6
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %142

65:                                               ; preds = %59
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 3
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = load i32, i32* %12, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i64 %70
  store %struct.TYPE_9__* %71, %struct.TYPE_9__** %16, align 8
  br label %72

72:                                               ; preds = %88, %65
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 3
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i64 0
  %78 = icmp ugt %struct.TYPE_9__* %73, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %72
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i64 -1
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %11, align 4
  %85 = icmp eq i32 %83, %84
  br label %86

86:                                               ; preds = %79, %72
  %87 = phi i1 [ false, %72 ], [ %85, %79 ]
  br i1 %87, label %88, label %91

88:                                               ; preds = %86
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 -1
  store %struct.TYPE_9__* %90, %struct.TYPE_9__** %16, align 8
  br label %72

91:                                               ; preds = %86
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %92

92:                                               ; preds = %123, %91
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* %17, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %97, %95
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %17, align 4
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %18, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %18, align 4
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 1
  store %struct.TYPE_9__* %106, %struct.TYPE_9__** %16, align 8
  br label %107

107:                                              ; preds = %92
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 3
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %110, align 8
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i64 %114
  %116 = icmp ult %struct.TYPE_9__* %108, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %107
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %11, align 4
  %122 = icmp eq i32 %120, %121
  br label %123

123:                                              ; preds = %117, %107
  %124 = phi i1 [ false, %107 ], [ %122, %117 ]
  br i1 %124, label %92, label %125

125:                                              ; preds = %123
  %126 = load i32, i32* %17, align 4
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %142

128:                                              ; preds = %125
  %129 = load i32, i32* %18, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %142

131:                                              ; preds = %128
  %132 = load i32*, i32** %8, align 8
  %133 = load i32*, i32** %9, align 8
  %134 = load i32, i32* %17, align 4
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = mul nsw i32 %134, %137
  %139 = load i32, i32* %18, align 4
  %140 = load i32, i32* @UINT16_MAX, align 4
  %141 = call i32 @vlc_ureduce(i32* %132, i32* %133, i32 %138, i32 %139, i32 %140)
  br label %142

142:                                              ; preds = %40, %64, %131, %128, %125
  ret void
}

declare dso_local i32* @MP4_GetTrakByTrackID(i32*, i32) #1

declare dso_local i32* @MP4_BoxGet(i32*, i8*) #1

declare dso_local %struct.TYPE_12__* @BOXDATA(i32*) #1

declare dso_local i32 @vlc_ureduce(i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
