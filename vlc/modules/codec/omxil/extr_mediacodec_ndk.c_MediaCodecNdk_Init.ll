; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/omxil/extr_mediacodec_ndk.c_MediaCodecNdk_Init.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/omxil/extr_mediacodec_ndk.c_MediaCodecNdk_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MC_API_ERROR = common dso_local global i32 0, align 4
@Clean = common dso_local global i32 0, align 4
@Prepare = common dso_local global i32 0, align 4
@ConfigureDecoder = common dso_local global i32 0, align 4
@Start = common dso_local global i32 0, align 4
@Stop = common dso_local global i32 0, align 4
@Flush = common dso_local global i32 0, align 4
@DequeueInput = common dso_local global i32 0, align 4
@QueueInput = common dso_local global i32 0, align 4
@DequeueOutput = common dso_local global i32 0, align 4
@GetOutput = common dso_local global i32 0, align 4
@ReleaseOutput = common dso_local global i32 0, align 4
@ReleaseOutputAtTime = common dso_local global i32 0, align 4
@SetOutputSurface = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MediaCodecNdk_Init(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %5 = call i32 @InitSymbols(%struct.TYPE_4__* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @MC_API_ERROR, align 4
  store i32 %8, i32* %2, align 4
  br label %61

9:                                                ; preds = %1
  %10 = call i32 @calloc(i32 1, i32 4)
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 14
  store i32 %10, i32* %12, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 14
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %9
  %18 = load i32, i32* @MC_API_ERROR, align 4
  store i32 %18, i32* %2, align 4
  br label %61

19:                                               ; preds = %9
  %20 = load i32, i32* @Clean, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 13
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @Prepare, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 12
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @ConfigureDecoder, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 11
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @Start, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 10
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @Stop, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 9
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @Flush, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 8
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @DequeueInput, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 7
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @QueueInput, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 6
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @DequeueOutput, align 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @GetOutput, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @ReleaseOutput, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @ReleaseOutputAtTime, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @SetOutputSurface, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i32 1, i32* %60, align 4
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %19, %17, %7
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @InitSymbols(%struct.TYPE_4__*) #1

declare dso_local i32 @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
