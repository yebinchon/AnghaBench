; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_mp4.c_LoadChapter.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_mp4.c_LoadChapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_14__*, i32, i32, %struct.TYPE_15__*, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_13__, i64 }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_12__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [16 x i8] c"/moov/udta/chpl\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"/moov/udta/HMMT\00", align 1
@USEAS_CHAPTERS = common dso_local global i32 0, align 4
@SPU_ES = common dso_local global i64 0, align 8
@VLC_CODEC_TX3G = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*)* @LoadChapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LoadChapter(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  store %struct.TYPE_17__* %11, %struct.TYPE_17__** %3, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 8
  %15 = call i32* @MP4_BoxGet(i32 %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32* %15, i32** %4, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %1
  %18 = load i32*, i32** %4, align 8
  %19 = call %struct.TYPE_12__* @BOXDATA(i32* %18)
  %20 = icmp ne %struct.TYPE_12__* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = load i32*, i32** %4, align 8
  %23 = call %struct.TYPE_12__* @BOXDATA(i32* %22)
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @LoadChapterGpac(%struct.TYPE_16__* %28, i32* %29)
  br label %106

31:                                               ; preds = %21, %17, %1
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = call i32* @MP4_BoxGet(i32 %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32* %35, i32** %5, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %57

37:                                               ; preds = %31
  %38 = load i32*, i32** %5, align 8
  %39 = call %struct.TYPE_12__* @BOXDATA(i32* %38)
  %40 = icmp ne %struct.TYPE_12__* %39, null
  br i1 %40, label %41, label %57

41:                                               ; preds = %37
  %42 = load i32*, i32** %5, align 8
  %43 = call %struct.TYPE_12__* @BOXDATA(i32* %42)
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %41
  %48 = load i32*, i32** %5, align 8
  %49 = call %struct.TYPE_12__* @BOXDATA(i32* %48)
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @LoadChapterGoPro(%struct.TYPE_16__* %54, i32* %55)
  br label %105

57:                                               ; preds = %47, %41, %37, %31
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %101, %57
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ult i32 %59, %62
  br i1 %63, label %64, label %104

64:                                               ; preds = %58
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 5
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i64 %69
  store %struct.TYPE_15__* %70, %struct.TYPE_15__** %7, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %100

75:                                               ; preds = %64
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @USEAS_CHAPTERS, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %100

82:                                               ; preds = %75
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @SPU_ES, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %100

89:                                               ; preds = %82
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @VLC_CODEC_TX3G, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %89
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %99 = call i32 @LoadChapterApple(%struct.TYPE_16__* %97, %struct.TYPE_15__* %98)
  br label %104

100:                                              ; preds = %89, %82, %75, %64
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %6, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %6, align 4
  br label %58

104:                                              ; preds = %96, %58
  br label %105

105:                                              ; preds = %104, %53
  br label %106

106:                                              ; preds = %105, %27
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %108, align 8
  %110 = icmp ne %struct.TYPE_14__* %109, null
  br i1 %110, label %111, label %128

111:                                              ; preds = %106
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @__MAX(i32 %114, i32 %117)
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %8, align 4
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @MP4_rescale_mtime(i32 %119, i32 %122)
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 2
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 0
  store i32 %123, i32* %127, align 4
  br label %128

128:                                              ; preds = %111, %106
  ret void
}

declare dso_local i32* @MP4_BoxGet(i32, i8*) #1

declare dso_local %struct.TYPE_12__* @BOXDATA(i32*) #1

declare dso_local i32 @LoadChapterGpac(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @LoadChapterGoPro(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @LoadChapterApple(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i32 @__MAX(i32, i32) #1

declare dso_local i32 @MP4_rescale_mtime(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
