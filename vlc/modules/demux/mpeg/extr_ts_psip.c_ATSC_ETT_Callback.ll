; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_psip.c_ATSC_ETT_Callback.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_psip.c_ATSC_ETT_Callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_37__ = type { i32, i32 }
%struct.TYPE_50__ = type { i64, %struct.TYPE_46__ }
%struct.TYPE_46__ = type { %struct.TYPE_48__* }
%struct.TYPE_48__ = type { %struct.TYPE_49__*, %struct.TYPE_42__* }
%struct.TYPE_49__ = type { i32 }
%struct.TYPE_42__ = type { i64 }
%struct.TYPE_39__ = type { i32, %struct.TYPE_40__* }
%struct.TYPE_40__ = type { i32 }
%struct.TYPE_38__ = type { i32 }
%struct.TYPE_47__ = type { i32 }
%struct.TYPE_41__ = type { %struct.TYPE_45__ }
%struct.TYPE_45__ = type { %struct.TYPE_44__* }
%struct.TYPE_44__ = type { %struct.TYPE_43__* }
%struct.TYPE_43__ = type { i32* }

@TYPE_PSIP = common dso_local global i64 0, align 8
@ATSC_BASE_PID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Received EIT for unknown channel %d\00", align 1
@ES_OUT_SET_GROUP_EPG_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_37__*)* @ATSC_ETT_Callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ATSC_ETT_Callback(i8* %0, %struct.TYPE_37__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_37__*, align 8
  %5 = alloca %struct.TYPE_50__*, align 8
  %6 = alloca %struct.TYPE_39__*, align 8
  %7 = alloca %struct.TYPE_40__*, align 8
  %8 = alloca %struct.TYPE_50__*, align 8
  %9 = alloca %struct.TYPE_48__*, align 8
  %10 = alloca %struct.TYPE_49__*, align 8
  %11 = alloca %struct.TYPE_49__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_50__*, align 8
  %17 = alloca %struct.TYPE_38__*, align 8
  %18 = alloca %struct.TYPE_47__*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_37__* %1, %struct.TYPE_37__** %4, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_50__*
  store %struct.TYPE_50__* %20, %struct.TYPE_50__** %5, align 8
  %21 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TYPE_PSIP, align 8
  %25 = icmp ne i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %2
  %30 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TYPE_PSIP, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %38 = call i32 @dvbpsi_atsc_DeleteETT(%struct.TYPE_37__* %37)
  br label %174

39:                                               ; preds = %2
  %40 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_48__*, %struct.TYPE_48__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_42__*, %struct.TYPE_42__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to %struct.TYPE_39__*
  store %struct.TYPE_39__* %48, %struct.TYPE_39__** %6, align 8
  %49 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_40__*, %struct.TYPE_40__** %50, align 8
  store %struct.TYPE_40__* %51, %struct.TYPE_40__** %7, align 8
  %52 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %53 = load i32, i32* @ATSC_BASE_PID, align 4
  %54 = call %struct.TYPE_50__* @GetPID(%struct.TYPE_40__* %52, i32 %53)
  store %struct.TYPE_50__* %54, %struct.TYPE_50__** %8, align 8
  %55 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_48__*, %struct.TYPE_48__** %57, align 8
  store %struct.TYPE_48__* %58, %struct.TYPE_48__** %9, align 8
  %59 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_49__*, %struct.TYPE_49__** %60, align 8
  store %struct.TYPE_49__* %61, %struct.TYPE_49__** %10, align 8
  %62 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 2
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %171

67:                                               ; preds = %39
  %68 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_48__*, %struct.TYPE_48__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_49__*, %struct.TYPE_49__** %72, align 8
  store %struct.TYPE_49__* %73, %struct.TYPE_49__** %11, align 8
  %74 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @fromETMId(i32 %76, i64* %12, i64* %13)
  %78 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i64, i64* %12, align 8
  %82 = call i32 @ATSC_TranslateVChannelToProgram(i32 %80, i64 %81, i64* %14)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %67
  %85 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %86 = load i64, i64* %12, align 8
  %87 = call i32 @msg_Warn(%struct.TYPE_39__* %85, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %86)
  %88 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %89 = call i32 @dvbpsi_atsc_DeleteETT(%struct.TYPE_37__* %88)
  br label %174

90:                                               ; preds = %67
  %91 = load %struct.TYPE_49__*, %struct.TYPE_49__** %11, align 8
  %92 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32* @ATSC_ETTFindByETMId(%struct.TYPE_49__* %91, i32 %94, i32 %97)
  %99 = icmp eq i32* %98, null
  br i1 %99, label %100, label %170

100:                                              ; preds = %90
  %101 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %101, i32 0, i32 0
  %103 = load i32, i32* @ATSC_BASE_PID, align 4
  %104 = call %struct.TYPE_41__* @ts_pid_Get(i32* %102, i32 %103)
  %105 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_44__*, %struct.TYPE_44__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_43__*, %struct.TYPE_43__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  store i32* %111, i32** %15, align 8
  %112 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %112, i32 0, i32 0
  %114 = load i32*, i32** %15, align 8
  %115 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_48__*, %struct.TYPE_48__** %117, align 8
  %119 = call %struct.TYPE_50__* @ATSC_GetSiblingxTTPID(i32* %113, i32* %114, %struct.TYPE_48__* %118)
  store %struct.TYPE_50__* %119, %struct.TYPE_50__** %16, align 8
  %120 = load %struct.TYPE_50__*, %struct.TYPE_50__** %16, align 8
  %121 = icmp ne %struct.TYPE_50__* %120, null
  br i1 %121, label %122, label %169

122:                                              ; preds = %100
  %123 = load %struct.TYPE_50__*, %struct.TYPE_50__** %16, align 8
  %124 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_48__*, %struct.TYPE_48__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_49__*, %struct.TYPE_49__** %127, align 8
  %129 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call %struct.TYPE_38__* @ATSC_EventFindByETMId(%struct.TYPE_49__* %128, i32 %131, i32 %134)
  store %struct.TYPE_38__* %135, %struct.TYPE_38__** %17, align 8
  %136 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %137 = icmp ne %struct.TYPE_38__* %136, null
  br i1 %137, label %138, label %159

138:                                              ; preds = %122
  %139 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %140 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %141 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %142 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %143 = call %struct.TYPE_47__* @ATSC_CreateVLCEPGEvent(%struct.TYPE_39__* %139, %struct.TYPE_49__* %140, %struct.TYPE_38__* %141, %struct.TYPE_37__* %142)
  store %struct.TYPE_47__* %143, %struct.TYPE_47__** %18, align 8
  %144 = load %struct.TYPE_47__*, %struct.TYPE_47__** %18, align 8
  %145 = call i64 @likely(%struct.TYPE_47__* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %158

147:                                              ; preds = %138
  %148 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @ES_OUT_SET_GROUP_EPG_EVENT, align 4
  %152 = load i64, i64* %14, align 8
  %153 = trunc i64 %152 to i32
  %154 = load %struct.TYPE_47__*, %struct.TYPE_47__** %18, align 8
  %155 = call i32 @es_out_Control(i32 %150, i32 %151, i32 %153, %struct.TYPE_47__* %154)
  %156 = load %struct.TYPE_47__*, %struct.TYPE_47__** %18, align 8
  %157 = call i32 @vlc_epg_event_Delete(%struct.TYPE_47__* %156)
  br label %158

158:                                              ; preds = %147, %138
  br label %159

159:                                              ; preds = %158, %122
  %160 = load %struct.TYPE_49__*, %struct.TYPE_49__** %11, align 8
  %161 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %162 = call i32 @ATSC_InsertETTOrdered(%struct.TYPE_49__* %160, %struct.TYPE_37__* %161)
  %163 = load %struct.TYPE_49__*, %struct.TYPE_49__** %11, align 8
  %164 = load i64, i64* %12, align 8
  %165 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @ATSC_CleanETTByChannelVersion(%struct.TYPE_49__* %163, i64 %164, i32 %167)
  br label %174

169:                                              ; preds = %100
  br label %170

170:                                              ; preds = %169, %90
  br label %171

171:                                              ; preds = %170, %39
  %172 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %173 = call i32 @dvbpsi_atsc_DeleteETT(%struct.TYPE_37__* %172)
  br label %174

174:                                              ; preds = %171, %159, %84, %29
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @dvbpsi_atsc_DeleteETT(%struct.TYPE_37__*) #1

declare dso_local %struct.TYPE_50__* @GetPID(%struct.TYPE_40__*, i32) #1

declare dso_local i32 @fromETMId(i32, i64*, i64*) #1

declare dso_local i32 @ATSC_TranslateVChannelToProgram(i32, i64, i64*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_39__*, i8*, i64) #1

declare dso_local i32* @ATSC_ETTFindByETMId(%struct.TYPE_49__*, i32, i32) #1

declare dso_local %struct.TYPE_41__* @ts_pid_Get(i32*, i32) #1

declare dso_local %struct.TYPE_50__* @ATSC_GetSiblingxTTPID(i32*, i32*, %struct.TYPE_48__*) #1

declare dso_local %struct.TYPE_38__* @ATSC_EventFindByETMId(%struct.TYPE_49__*, i32, i32) #1

declare dso_local %struct.TYPE_47__* @ATSC_CreateVLCEPGEvent(%struct.TYPE_39__*, %struct.TYPE_49__*, %struct.TYPE_38__*, %struct.TYPE_37__*) #1

declare dso_local i64 @likely(%struct.TYPE_47__*) #1

declare dso_local i32 @es_out_Control(i32, i32, i32, %struct.TYPE_47__*) #1

declare dso_local i32 @vlc_epg_event_Delete(%struct.TYPE_47__*) #1

declare dso_local i32 @ATSC_InsertETTOrdered(%struct.TYPE_49__*, %struct.TYPE_37__*) #1

declare dso_local i32 @ATSC_CleanETTByChannelVersion(%struct.TYPE_49__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
