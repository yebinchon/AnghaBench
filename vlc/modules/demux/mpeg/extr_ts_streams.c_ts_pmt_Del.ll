; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_streams.c_ts_pmt_Del.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_streams.c_ts_pmt_Del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, i64, i64, i64, %struct.TYPE_12__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i64* }

@ES_OUT_DEL_GROUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ts_pmt_Del(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @dvbpsi_decoder_present(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @dvbpsi_pmt_detach(i32 %15)
  br label %17

17:                                               ; preds = %12, %2
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @dvbpsi_delete(i32 %20)
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %40, %17
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %23, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %22
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @PIDRelease(%struct.TYPE_11__* %30, i64 %38)
  br label %40

40:                                               ; preds = %29
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %22

43:                                               ; preds = %22
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 5
  %46 = bitcast %struct.TYPE_12__* %45 to { i32, i64* }*
  %47 = getelementptr inbounds { i32, i64* }, { i32, i64* }* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds { i32, i64* }, { i32, i64* }* %46, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = call i32 @ARRAY_RESET(i32 %48, i64* %50)
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %43
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @PIDRelease(%struct.TYPE_11__* %57, i64 %60)
  br label %62

62:                                               ; preds = %56, %43
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @PIDRelease(%struct.TYPE_11__* %68, i64 %71)
  br label %73

73:                                               ; preds = %67, %62
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @ODFree(i64 %81)
  br label %83

83:                                               ; preds = %78, %73
  store i32 0, i32* %6, align 4
  br label %84

84:                                               ; preds = %103, %83
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %85, %90
  br i1 %91, label %92, label %106

92:                                               ; preds = %84
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  %97 = load i64*, i64** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @ODFree(i64 %101)
  br label %103

103:                                              ; preds = %92
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  br label %84

106:                                              ; preds = %84
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = bitcast %struct.TYPE_12__* %109 to { i32, i64* }*
  %111 = getelementptr inbounds { i32, i64* }, { i32, i64* }* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = getelementptr inbounds { i32, i64* }, { i32, i64* }* %110, i32 0, i32 1
  %114 = load i64*, i64** %113, align 8
  %115 = call i32 @ARRAY_RESET(i32 %112, i64* %114)
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp sgt i32 %118, -1
  br i1 %119, label %120, label %129

120:                                              ; preds = %106
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @ES_OUT_DEL_GROUP, align 4
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @es_out_Control(i32 %123, i32 %124, i32 %127)
  br label %129

129:                                              ; preds = %120, %106
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %131 = call i32 @free(%struct.TYPE_10__* %130)
  ret void
}

declare dso_local i64 @dvbpsi_decoder_present(i32) #1

declare dso_local i32 @dvbpsi_pmt_detach(i32) #1

declare dso_local i32 @dvbpsi_delete(i32) #1

declare dso_local i32 @PIDRelease(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @ARRAY_RESET(i32, i64*) #1

declare dso_local i32 @ODFree(i64) #1

declare dso_local i32 @es_out_Control(i32, i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
