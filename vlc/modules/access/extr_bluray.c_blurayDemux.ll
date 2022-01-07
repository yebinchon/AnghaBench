; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_bluray.c_blurayDemux.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_bluray.c_blurayDemux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i64, %struct.TYPE_17__, i32, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_20__ = type { i32, i32 }

@ES_OUT_GET_EMPTY = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i64 0, align 8
@ES_OUT_RESET_PCR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Draining...\00", align 1
@VLC_DEMUXER_SUCCESS = common dso_local global i32 0, align 4
@BD_READ_SIZE = common dso_local global i32 0, align 4
@VLC_DEMUXER_EGENERIC = common dso_local global i32 0, align 4
@BD_EVENT_NONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"bluray: stopping playback after fatal error\0A\00", align 1
@VLC_DEMUXER_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*)* @blurayDemux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blurayDemux(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_21__, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  store %struct.TYPE_19__* %12, %struct.TYPE_19__** %4, align 8
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %43

17:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ES_OUT_GET_EMPTY, align 4
  %22 = call i64 (i32, i32, ...) @es_out_Control(i32 %20, i32 %21, i32* %6)
  %23 = load i64, i64* @VLC_SUCCESS, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %28, label %25

25:                                               ; preds = %17
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %25, %17
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ES_OUT_RESET_PCR, align 4
  %33 = call i64 (i32, i32, ...) @es_out_Control(i32 %31, i32 %32)
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  br label %42

36:                                               ; preds = %25
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %38 = call i32 @msg_Dbg(%struct.TYPE_18__* %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %39 = call i32 @VLC_TICK_FROM_MS(i32 40)
  %40 = call i32 @vlc_tick_sleep(i32 %39)
  %41 = load i32, i32* @VLC_DEMUXER_SUCCESS, align 4
  store i32 %41, i32* %2, align 4
  br label %160

42:                                               ; preds = %28
  br label %43

43:                                               ; preds = %42, %1
  %44 = load i32, i32* @BD_READ_SIZE, align 4
  %45 = call %struct.TYPE_20__* @block_Alloc(i32 %44)
  store %struct.TYPE_20__* %45, %struct.TYPE_20__** %7, align 8
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %47 = icmp ne %struct.TYPE_20__* %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @VLC_DEMUXER_EGENERIC, align 4
  store i32 %49, i32* %2, align 4
  br label %160

50:                                               ; preds = %43
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %74

55:                                               ; preds = %50
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @BD_READ_SIZE, align 4
  %63 = call i32 @bd_read(i32 %58, i32 %61, i32 %62)
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %70, %55
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @bd_get_event(i32 %67, %struct.TYPE_21__* %5)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %72 = call i32 @blurayHandleEvent(%struct.TYPE_18__* %71, %struct.TYPE_21__* %5, i32 0)
  br label %64

73:                                               ; preds = %64
  br label %96

74:                                               ; preds = %50
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @BD_READ_SIZE, align 4
  %82 = call i32 @bd_read_ext(i32 %77, i32 %80, i32 %81, %struct.TYPE_21__* %5)
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %88, %74
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @BD_EVENT_NONE, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %83
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %90 = call i32 @blurayHandleEvent(%struct.TYPE_18__* %89, %struct.TYPE_21__* %5, i32 0)
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 8
  %94 = call i64 @bd_get_event(i32 %93, %struct.TYPE_21__* %5)
  br label %83

95:                                               ; preds = %83
  br label %96

96:                                               ; preds = %95, %73
  store i32 0, i32* %9, align 4
  br label %97

97:                                               ; preds = %114, %96
  %98 = load i32, i32* %9, align 4
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 5
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp slt i32 %98, %102
  br i1 %103, label %104, label %117

104:                                              ; preds = %97
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 5
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i64 %111
  %113 = call i32 @blurayHandleEvent(%struct.TYPE_18__* %105, %struct.TYPE_21__* %112, i32 1)
  br label %114

114:                                              ; preds = %104
  %115 = load i32, i32* %9, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %9, align 4
  br label %97

117:                                              ; preds = %97
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 5
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 0
  store i32 0, i32* %120, align 8
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %122 = call i32 @blurayHandleOverlays(%struct.TYPE_18__* %121)
  %123 = load i32, i32* %8, align 4
  %124 = icmp sle i32 %123, 0
  br i1 %124, label %125, label %148

125:                                              ; preds = %117
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %127 = call i32 @block_Release(%struct.TYPE_20__* %126)
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %125
  %133 = load i32, i32* %8, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %132, %125
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %137 = call i32 @msg_Err(%struct.TYPE_18__* %136, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %138 = load i32, i32* @VLC_DEMUXER_EGENERIC, align 4
  store i32 %138, i32* %2, align 4
  br label %160

139:                                              ; preds = %132
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %139
  %145 = load i32, i32* @VLC_DEMUXER_EOF, align 4
  store i32 %145, i32* %2, align 4
  br label %160

146:                                              ; preds = %139
  %147 = load i32, i32* @VLC_DEMUXER_SUCCESS, align 4
  store i32 %147, i32* %2, align 4
  br label %160

148:                                              ; preds = %117
  %149 = load i32, i32* %8, align 4
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 4
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %156 = call i32 @vlc_demux_chained_Send(i32 %154, %struct.TYPE_20__* %155)
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 2
  store i32 0, i32* %158, align 8
  %159 = load i32, i32* @VLC_DEMUXER_SUCCESS, align 4
  store i32 %159, i32* %2, align 4
  br label %160

160:                                              ; preds = %148, %146, %144, %135, %48, %36
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local i64 @es_out_Control(i32, i32, ...) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @vlc_tick_sleep(i32) #1

declare dso_local i32 @VLC_TICK_FROM_MS(i32) #1

declare dso_local %struct.TYPE_20__* @block_Alloc(i32) #1

declare dso_local i32 @bd_read(i32, i32, i32) #1

declare dso_local i64 @bd_get_event(i32, %struct.TYPE_21__*) #1

declare dso_local i32 @blurayHandleEvent(%struct.TYPE_18__*, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @bd_read_ext(i32, i32, i32, %struct.TYPE_21__*) #1

declare dso_local i32 @blurayHandleOverlays(%struct.TYPE_18__*) #1

declare dso_local i32 @block_Release(%struct.TYPE_20__*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @vlc_demux_chained_Send(i32, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
