; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/mp4/extr_mp4.c_BlockDequeue.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/mp4/extr_mp4.c_BlockDequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32, i64 }
%struct.TYPE_18__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_17__* (%struct.TYPE_15__*, %struct.TYPE_16__*)* @BlockDequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_17__* @BlockDequeue(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.TYPE_17__* @block_FifoGet(i32 %11)
  store %struct.TYPE_17__* %12, %struct.TYPE_17__** %6, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %14 = icmp ne %struct.TYPE_17__* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %3, align 8
  br label %75

20:                                               ; preds = %2
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %56

25:                                               ; preds = %20
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @mp4mux_track_HasSamplePriv(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %56, label %31

31:                                               ; preds = %25
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @mux_extradata_builder_Feed(i64 %34, i32 %37, i32 %40)
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @mux_extradata_builder_Get(i64 %44, i32** %7)
  store i64 %45, i64* %8, align 8
  %46 = load i64, i64* %8, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %31
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @mp4mux_track_SetSamplePriv(i32 %51, i32* %52, i64 %53)
  br label %55

55:                                               ; preds = %48, %31
  br label %56

56:                                               ; preds = %55, %25, %20
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call %struct.TYPE_18__* @mp4mux_track_GetFmt(i32 %59)
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %72 [
    i32 131, label %63
    i32 130, label %66
    i32 129, label %66
    i32 128, label %69
  ]

63:                                               ; preds = %56
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %65 = call %struct.TYPE_17__* @AV1_Pack_Sample(%struct.TYPE_17__* %64)
  store %struct.TYPE_17__* %65, %struct.TYPE_17__** %6, align 8
  br label %73

66:                                               ; preds = %56, %56
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %68 = call %struct.TYPE_17__* @hxxx_AnnexB_to_xVC(%struct.TYPE_17__* %67, i32 4)
  store %struct.TYPE_17__* %68, %struct.TYPE_17__** %6, align 8
  br label %73

69:                                               ; preds = %56
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %71 = call %struct.TYPE_17__* @ConvertSUBT(%struct.TYPE_17__* %70)
  store %struct.TYPE_17__* %71, %struct.TYPE_17__** %6, align 8
  br label %73

72:                                               ; preds = %56
  br label %73

73:                                               ; preds = %72, %69, %66, %63
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_17__* %74, %struct.TYPE_17__** %3, align 8
  br label %75

75:                                               ; preds = %73, %19
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  ret %struct.TYPE_17__* %76
}

declare dso_local %struct.TYPE_17__* @block_FifoGet(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mp4mux_track_HasSamplePriv(i32) #1

declare dso_local i32 @mux_extradata_builder_Feed(i64, i32, i32) #1

declare dso_local i64 @mux_extradata_builder_Get(i64, i32**) #1

declare dso_local i32 @mp4mux_track_SetSamplePriv(i32, i32*, i64) #1

declare dso_local %struct.TYPE_18__* @mp4mux_track_GetFmt(i32) #1

declare dso_local %struct.TYPE_17__* @AV1_Pack_Sample(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @hxxx_AnnexB_to_xVC(%struct.TYPE_17__*, i32) #1

declare dso_local %struct.TYPE_17__* @ConvertSUBT(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
