; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/asf/extr_asf.c_SeekIndex.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/asf/extr_asf.c_SeekIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { float, i64, i64, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_15__ = type { i64, i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }

@.str = private unnamed_addr constant [41 x i8] c"seek with index: %i seconds, position %f\00", align 1
@asf_object_simple_index_guid = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Incomplete index\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i64 0, align 8
@ES_OUT_SET_NEXT_DISPLAY_TIME = common dso_local global i32 0, align 4
@VLC_TICK_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, float, float)* @SeekIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SeekIndex(%struct.TYPE_13__* %0, float %1, float %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %8, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %16 = load float, float* %6, align 4
  %17 = fcmp oge float %16, 0.000000e+00
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load float, float* %6, align 4
  %20 = call i64 @SEC_FROM_VLC_TICK(float %19)
  %21 = trunc i64 %20 to i32
  br label %23

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %22, %18
  %24 = phi i32 [ %21, %18 ], [ -1, %22 ]
  %25 = load float, float* %7, align 4
  %26 = call i32 @msg_Dbg(%struct.TYPE_13__* %15, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %24, float %25)
  %27 = load float, float* %6, align 4
  %28 = fcmp olt float %27, 0.000000e+00
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load float, float* %31, align 8
  %33 = load float, float* %7, align 4
  %34 = fmul float %32, %33
  store float %34, float* %6, align 4
  br label %35

35:                                               ; preds = %29, %23
  %36 = load float, float* %6, align 4
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = sitofp i64 %41 to float
  %43 = fsub float %36, %42
  %44 = fptosi float %43 to i64
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %35
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %51, %35
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = call %struct.TYPE_15__* @ASF_FindObject(i32 %57, i32* @asf_object_simple_index_guid, i32 0)
  store %struct.TYPE_15__* %58, %struct.TYPE_15__** %9, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @MSFTIME_FROM_VLC_TICK(i64 %61)
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = udiv i64 %62, %65
  store i64 %66, i64* %10, align 8
  %67 = load i64, i64* %10, align 8
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp uge i64 %67, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %54
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %74 = call i32 @msg_Warn(%struct.TYPE_13__* %73, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %75 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %75, i32* %4, align 4
  br label %118

76:                                               ; preds = %54
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %78 = call i32 @WaitKeyframe(%struct.TYPE_13__* %77)
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 8
  %82 = load i64, i64* %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 3
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = mul i64 %85, %90
  store i64 %91, i64* %11, align 8
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i64, i64* %11, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = add i64 %95, %98
  %100 = call i64 @vlc_stream_Seek(i32 %94, i64 %99)
  %101 = load i64, i64* @VLC_SUCCESS, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %116

103:                                              ; preds = %76
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @ES_OUT_SET_NEXT_DISPLAY_TIME, align 4
  %108 = load i64, i64* @VLC_TICK_0, align 8
  %109 = sitofp i64 %108 to float
  %110 = load float, float* %6, align 4
  %111 = fadd float %109, %110
  %112 = fptosi float %111 to i64
  %113 = call i32 @es_out_Control(i32 %106, i32 %107, i64 %112)
  %114 = load i64, i64* @VLC_SUCCESS, align 8
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %4, align 4
  br label %118

116:                                              ; preds = %76
  %117 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %116, %103, %72
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @msg_Dbg(%struct.TYPE_13__*, i8*, i32, float) #1

declare dso_local i64 @SEC_FROM_VLC_TICK(float) #1

declare dso_local %struct.TYPE_15__* @ASF_FindObject(i32, i32*, i32) #1

declare dso_local i64 @MSFTIME_FROM_VLC_TICK(i64) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @WaitKeyframe(%struct.TYPE_13__*) #1

declare dso_local i64 @vlc_stream_Seek(i32, i64) #1

declare dso_local i32 @es_out_Control(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
