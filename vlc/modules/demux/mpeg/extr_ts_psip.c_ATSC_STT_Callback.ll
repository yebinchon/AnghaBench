; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_psip.c_ATSC_STT_Callback.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_psip.c_ATSC_STT_Callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_18__ = type { i64, i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_19__*, %struct.TYPE_17__* }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_17__ = type { %struct.TYPE_20__* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32 }

@TYPE_PSIP = common dso_local global i64 0, align 8
@ATSC_BASE_PID = common dso_local global i64 0, align 8
@MGT = common dso_local global i32 0, align 4
@ATSC_MGT_TABLE_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Can't attach MGT decoder to pid %d\00", align 1
@ES_OUT_SET_EPG_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_20__*)* @ATSC_STT_Callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ATSC_STT_Callback(i8* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %12, %struct.TYPE_18__** %5, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TYPE_PSIP, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ATSC_BASE_PID, align 8
  %23 = icmp ne i64 %21, %22
  br label %24

24:                                               ; preds = %18, %2
  %25 = phi i1 [ true, %2 ], [ %23, %18 ]
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %24
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TYPE_PSIP, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ATSC_BASE_PID, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %45 = call i32 @dvbpsi_atsc_DeleteSTT(%struct.TYPE_20__* %44)
  br label %129

46:                                               ; preds = %24
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %55, %struct.TYPE_21__** %6, align 8
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %57, align 8
  store %struct.TYPE_22__* %58, %struct.TYPE_22__** %7, align 8
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %63, align 8
  store %struct.TYPE_17__* %64, %struct.TYPE_17__** %8, align 8
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %69, align 8
  store %struct.TYPE_19__* %70, %struct.TYPE_19__** %9, align 8
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %72, align 8
  %74 = icmp ne %struct.TYPE_20__* %73, null
  br i1 %74, label %93, label %75

75:                                               ; preds = %46
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %77 = load i32, i32* @MGT, align 4
  %78 = load i32, i32* @ATSC_MGT_TABLE_ID, align 4
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %80 = call i32 @ATSC_ATTACH(%struct.TYPE_19__* %76, i32 %77, i32 %78, i32 0, %struct.TYPE_18__* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %92, label %82

82:                                               ; preds = %75
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %84 = load i64, i64* @ATSC_BASE_PID, align 8
  %85 = call i32 @msg_Err(%struct.TYPE_21__* %83, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %84)
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %87 = call i32 @ATSC_Detach_Dvbpsi_Decoders(%struct.TYPE_19__* %86)
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %89, align 8
  %91 = call i32 @dvbpsi_atsc_DeleteSTT(%struct.TYPE_20__* %90)
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %4, align 8
  br label %92

92:                                               ; preds = %82, %75
  br label %98

93:                                               ; preds = %46
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %95, align 8
  %97 = call i32 @dvbpsi_atsc_DeleteSTT(%struct.TYPE_20__* %96)
  br label %98

98:                                               ; preds = %93, %92
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %100 = icmp ne %struct.TYPE_20__* %99, null
  br i1 %100, label %101, label %125

101:                                              ; preds = %98
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @atsc_a65_GPSTimeToEpoch(i32 %104, i32 %107)
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @EIT_DEBUG_TIMESHIFT(i32 %109)
  %111 = load i32, i32* %10, align 4
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 4
  %114 = call i32 @time(i32* null)
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @ES_OUT_SET_EPG_TIME, align 4
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @es_out_Control(i32 %119, i32 %120, i32 %123)
  br label %125

125:                                              ; preds = %101, %98
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 0
  store %struct.TYPE_20__* %126, %struct.TYPE_20__** %128, align 8
  br label %129

129:                                              ; preds = %125, %29
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @dvbpsi_atsc_DeleteSTT(%struct.TYPE_20__*) #1

declare dso_local i32 @ATSC_ATTACH(%struct.TYPE_19__*, i32, i32, i32, %struct.TYPE_18__*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_21__*, i8*, i64) #1

declare dso_local i32 @ATSC_Detach_Dvbpsi_Decoders(%struct.TYPE_19__*) #1

declare dso_local i32 @atsc_a65_GPSTimeToEpoch(i32, i32) #1

declare dso_local i32 @EIT_DEBUG_TIMESHIFT(i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @es_out_Control(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
