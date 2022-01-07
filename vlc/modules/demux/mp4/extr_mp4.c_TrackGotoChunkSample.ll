; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_mp4.c_TrackGotoChunkSample.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_mp4.c_TrackGotoChunkSample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i64, i64, i32, i32, i32, %struct.TYPE_10__*, i32*, i32 }
%struct.TYPE_10__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [31 x i8] c"recreate ES for track[Id 0x%x]\00", align 1
@ES_OUT_GET_ES_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"cannot create es for track[Id 0x%x]\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@ES_OUT_SET_ES = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, i32, i32)* @TrackGotoChunkSample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TrackGotoChunkSample(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp uge i64 %13, %16
  br i1 %17, label %37, label %18

18:                                               ; preds = %4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 5
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 5
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %27, %35
  br i1 %36, label %37, label %79

37:                                               ; preds = %18, %4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @msg_Warn(%struct.TYPE_12__* %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ES_OUT_GET_ES_STATE, align 4
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 6
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 (i32, i32, i32*, ...) @es_out_Control(i32 %45, i32 %46, i32* %49, i32* %10)
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 6
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @es_out_Del(i32 %53, i32* %56)
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 6
  store i32* null, i32** %59, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 6
  %65 = call i64 @TrackCreateES(%struct.TYPE_12__* %60, %struct.TYPE_11__* %61, i32 %62, i32** %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %37
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @msg_Err(%struct.TYPE_12__* %68, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 2
  store i32 0, i32* %74, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 3
  store i32 0, i32* %76, align 4
  %77 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %77, i32* %5, align 4
  br label %127

78:                                               ; preds = %37
  br label %79

79:                                               ; preds = %78, %18
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %79
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @ES_OUT_SET_ES, align 4
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 6
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 (i32, i32, i32*, ...) @es_out_Control(i32 %85, i32 %86, i32* %89)
  br label %91

91:                                               ; preds = %82, %79
  %92 = load i32, i32* %8, align 4
  %93 = zext i32 %92 to i64
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  %96 = load i32, i32* %9, align 4
  %97 = zext i32 %96 to i64
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 5
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = sub nsw i64 %97, %105
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 5
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %108, align 8
  %110 = load i32, i32* %8, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 2
  store i64 %106, i64* %113, align 8
  %114 = load i32, i32* %9, align 4
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 4
  store i32 %114, i32* %116, align 8
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %91
  %122 = load i32, i32* @VLC_SUCCESS, align 4
  br label %125

123:                                              ; preds = %91
  %124 = load i32, i32* @VLC_EGENERIC, align 4
  br label %125

125:                                              ; preds = %123, %121
  %126 = phi i32 [ %122, %121 ], [ %124, %123 ]
  store i32 %126, i32* %5, align 4
  br label %127

127:                                              ; preds = %125, %67
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local i32 @msg_Warn(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local i32 @es_out_Control(i32, i32, i32*, ...) #1

declare dso_local i32 @es_out_Del(i32, i32*) #1

declare dso_local i64 @TrackCreateES(%struct.TYPE_12__*, %struct.TYPE_11__*, i32, i32**) #1

declare dso_local i32 @msg_Err(%struct.TYPE_12__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
