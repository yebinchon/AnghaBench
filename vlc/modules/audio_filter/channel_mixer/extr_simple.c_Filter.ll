; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_filter/channel_mixer/extr_simple.c_Filter.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_filter/channel_mixer/extr_simple.c_Filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_16__, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"can't get output buffer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_19__* (%struct.TYPE_18__*, %struct.TYPE_19__*)* @Filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_19__* @Filter(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca void (%struct.TYPE_18__*, %struct.TYPE_19__*, %struct.TYPE_19__*)*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to void (%struct.TYPE_18__*, %struct.TYPE_19__*, %struct.TYPE_19__*)*
  store void (%struct.TYPE_18__*, %struct.TYPE_19__*, %struct.TYPE_19__*)* %15, void (%struct.TYPE_18__*, %struct.TYPE_19__*, %struct.TYPE_19__*)** %6, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %17 = icmp ne %struct.TYPE_19__* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %18, %2
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %25 = icmp ne %struct.TYPE_19__* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %28 = call i32 @block_Release(%struct.TYPE_19__* %27)
  br label %29

29:                                               ; preds = %26, %23
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %3, align 8
  br label %107

30:                                               ; preds = %18
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = mul nsw i32 %33, %38
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %39, %44
  %46 = sdiv i32 %45, 8
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %7, align 8
  %48 = load i64, i64* %7, align 8
  %49 = call %struct.TYPE_19__* @block_Alloc(i64 %48)
  store %struct.TYPE_19__* %49, %struct.TYPE_19__** %8, align 8
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %51 = icmp ne %struct.TYPE_19__* %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %30
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %54 = call i32 @msg_Warn(%struct.TYPE_18__* %53, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %56 = call i32 @block_Release(%struct.TYPE_19__* %55)
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %3, align 8
  br label %107

57:                                               ; preds = %30
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 4
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = call i32 @aout_FormatNbChannels(%struct.TYPE_15__* %80)
  store i32 %81, i32* %9, align 4
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  %85 = call i32 @aout_FormatNbChannels(%struct.TYPE_15__* %84)
  store i32 %85, i32* %10, align 4
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %10, align 4
  %95 = mul nsw i32 %93, %94
  %96 = load i32, i32* %9, align 4
  %97 = sdiv i32 %95, %96
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load void (%struct.TYPE_18__*, %struct.TYPE_19__*, %struct.TYPE_19__*)*, void (%struct.TYPE_18__*, %struct.TYPE_19__*, %struct.TYPE_19__*)** %6, align 8
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  call void %100(%struct.TYPE_18__* %101, %struct.TYPE_19__* %102, %struct.TYPE_19__* %103)
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %105 = call i32 @block_Release(%struct.TYPE_19__* %104)
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  store %struct.TYPE_19__* %106, %struct.TYPE_19__** %3, align 8
  br label %107

107:                                              ; preds = %57, %52, %29
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  ret %struct.TYPE_19__* %108
}

declare dso_local i32 @block_Release(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_19__* @block_Alloc(i64) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @aout_FormatNbChannels(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
