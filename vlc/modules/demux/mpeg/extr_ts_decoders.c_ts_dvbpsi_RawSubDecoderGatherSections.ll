; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_decoders.c_ts_dvbpsi_RawSubDecoderGatherSections.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_decoders.c_ts_dvbpsi_RawSubDecoderGatherSections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.TYPE_17__ = type { i64, i32 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 (%struct.TYPE_14__*, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_17__*, %struct.TYPE_15__*)* @ts_dvbpsi_RawSubDecoderGatherSections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ts_dvbpsi_RawSubDecoderGatherSections(%struct.TYPE_14__* %0, %struct.TYPE_17__* %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %6, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %12, %struct.TYPE_16__** %7, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %14 = bitcast %struct.TYPE_17__* %13 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %8, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %16 = icmp ne %struct.TYPE_13__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %19 = call i32 @dvbpsi_DeletePSISections(%struct.TYPE_15__* %18)
  br label %77

20:                                               ; preds = %3
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %27 = call i32 @DVBPSI_DECODER(%struct.TYPE_17__* %26)
  %28 = call i32 @dvbpsi_decoder_reset(i32 %27, i32 1)
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  store i32 0, i32* %32, align 4
  br label %46

33:                                               ; preds = %20
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %43 = call i32 @DVBPSI_DECODER(%struct.TYPE_17__* %42)
  %44 = call i32 @dvbpsi_decoder_reset(i32 %43, i32 1)
  br label %45

45:                                               ; preds = %41, %33
  br label %46

46:                                               ; preds = %45, %25
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %48 = call i32 @DVBPSI_DECODER(%struct.TYPE_17__* %47)
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %50 = call i32 @dvbpsi_decoder_psi_section_add(i32 %48, %struct.TYPE_15__* %49)
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %57 = call i32 @DVBPSI_DECODER(%struct.TYPE_17__* %56)
  %58 = call i64 @dvbpsi_decoder_psi_sections_completed(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %77

60:                                               ; preds = %46
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  store i32 1, i32* %62, align 4
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 3
  %65 = load i32 (%struct.TYPE_14__*, i32, i32)*, i32 (%struct.TYPE_14__*, i32, i32)** %64, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 %65(%struct.TYPE_14__* %66, i32 %69, i32 %72)
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %75 = call i32 @DVBPSI_DECODER(%struct.TYPE_17__* %74)
  %76 = call i32 @dvbpsi_decoder_reset(i32 %75, i32 0)
  br label %77

77:                                               ; preds = %17, %60, %46
  ret void
}

declare dso_local i32 @dvbpsi_DeletePSISections(%struct.TYPE_15__*) #1

declare dso_local i32 @dvbpsi_decoder_reset(i32, i32) #1

declare dso_local i32 @DVBPSI_DECODER(%struct.TYPE_17__*) #1

declare dso_local i32 @dvbpsi_decoder_psi_section_add(i32, %struct.TYPE_15__*) #1

declare dso_local i64 @dvbpsi_decoder_psi_sections_completed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
