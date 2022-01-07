; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_mp4.c_FragGetMoofByTfraIndex.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_mp4.c_FragGetMoofByTfraIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i32, i32, i32, i64*, i64* }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"mfra/tfra\00", align 1
@ATOM_tfra = common dso_local global i64 0, align 8
@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32, i32, i64*, i32*)* @FragGetMoofByTfraIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FragGetMoofByTfraIndex(%struct.TYPE_13__* %0, i32 %1, i32 %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_12__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  store %struct.TYPE_14__* %23, %struct.TYPE_14__** %12, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.TYPE_15__* @MP4_BoxGet(i32 %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_15__* %27, %struct.TYPE_15__** %13, align 8
  br label %28

28:                                               ; preds = %137, %5
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %30 = icmp ne %struct.TYPE_15__* %29, null
  br i1 %30, label %31, label %141

31:                                               ; preds = %28
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ATOM_tfra, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %136

37:                                               ; preds = %31
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %39 = call %struct.TYPE_16__* @BOXDATA(%struct.TYPE_15__* %38)
  store %struct.TYPE_16__* %39, %struct.TYPE_16__** %14, align 8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %41 = icmp ne %struct.TYPE_16__* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42, %37
  br label %137

49:                                               ; preds = %42
  store i64 0, i64* %15, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call %struct.TYPE_12__* @MP4_GetTrackByTrackID(%struct.TYPE_13__* %50, i32 %53)
  store %struct.TYPE_12__* %54, %struct.TYPE_12__** %16, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %56 = icmp ne %struct.TYPE_12__* %55, null
  br i1 %56, label %57, label %135

57:                                               ; preds = %49
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @MP4_rescale_qtime(i32 %58, i32 %61)
  store i64 %62, i64* %17, align 8
  store i32 0, i32* %18, align 4
  br label %63

63:                                               ; preds = %125, %57
  %64 = load i32, i32* %18, align 4
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %134

69:                                               ; preds = %63
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %89

74:                                               ; preds = %69
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 3
  %77 = load i64*, i64** %76, align 8
  %78 = load i32, i32* %18, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %19, align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 4
  %84 = load i64*, i64** %83, align 8
  %85 = load i32, i32* %18, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %20, align 8
  br label %104

89:                                               ; preds = %69
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 3
  %92 = load i64*, i64** %91, align 8
  %93 = load i32, i32* %18, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %19, align 8
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 4
  %99 = load i64*, i64** %98, align 8
  %100 = load i32, i32* %18, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %20, align 8
  br label %104

104:                                              ; preds = %89, %74
  %105 = load i64, i64* %19, align 8
  %106 = load i64, i64* %17, align 8
  %107 = icmp sge i64 %105, %106
  br i1 %107, label %108, label %122

108:                                              ; preds = %104
  %109 = load i64, i64* %15, align 8
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  br label %134

112:                                              ; preds = %108
  %113 = load i64, i64* %15, align 8
  %114 = load i64*, i64** %10, align 8
  store i64 %113, i64* %114, align 8
  %115 = load i64, i64* %19, align 8
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @MP4_rescale_mtime(i64 %115, i32 %118)
  %120 = load i32*, i32** %11, align 8
  store i32 %119, i32* %120, align 4
  %121 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %121, i32* %6, align 4
  br label %143

122:                                              ; preds = %104
  %123 = load i64, i64* %20, align 8
  store i64 %123, i64* %15, align 8
  br label %124

124:                                              ; preds = %122
  br label %125

125:                                              ; preds = %124
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = icmp eq i32 %128, 1
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i32 2, i32 1
  %132 = load i32, i32* %18, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* %18, align 4
  br label %63

134:                                              ; preds = %111, %63
  br label %135

135:                                              ; preds = %134, %49
  br label %136

136:                                              ; preds = %135, %31
  br label %137

137:                                              ; preds = %136, %48
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %139, align 8
  store %struct.TYPE_15__* %140, %struct.TYPE_15__** %13, align 8
  br label %28

141:                                              ; preds = %28
  %142 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %142, i32* %6, align 4
  br label %143

143:                                              ; preds = %141, %112
  %144 = load i32, i32* %6, align 4
  ret i32 %144
}

declare dso_local %struct.TYPE_15__* @MP4_BoxGet(i32, i8*) #1

declare dso_local %struct.TYPE_16__* @BOXDATA(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_12__* @MP4_GetTrackByTrackID(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @MP4_rescale_qtime(i32, i32) #1

declare dso_local i32 @MP4_rescale_mtime(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
