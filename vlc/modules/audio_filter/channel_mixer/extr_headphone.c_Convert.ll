; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_filter/channel_mixer/extr_headphone.c_Convert.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_filter/channel_mixer/extr_headphone.c_Convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { i64, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [24 x i8] c"can't get output buffer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_17__* (%struct.TYPE_16__*, %struct.TYPE_17__*)* @Convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_17__* @Convert(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %9 = icmp ne %struct.TYPE_17__* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %10, %2
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %17 = icmp ne %struct.TYPE_17__* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %20 = call i32 @block_Release(%struct.TYPE_17__* %19)
  br label %21

21:                                               ; preds = %18, %15
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %3, align 8
  br label %73

22:                                               ; preds = %10
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = call i64 @aout_FormatNbChannels(i32* %28)
  %30 = mul i64 %25, %29
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = call i64 @aout_FormatNbChannels(i32* %33)
  %35 = udiv i64 %30, %34
  store i64 %35, i64* %6, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call %struct.TYPE_17__* @block_Alloc(i64 %36)
  store %struct.TYPE_17__* %37, %struct.TYPE_17__** %7, align 8
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %39 = icmp ne %struct.TYPE_17__* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %22
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %42 = call i32 @msg_Warn(%struct.TYPE_16__* %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %44 = call i32 @block_Release(%struct.TYPE_17__* %43)
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %3, align 8
  br label %73

45:                                               ; preds = %22
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 4
  store i64 %48, i64* %50, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %69 = call i32 @DoWork(%struct.TYPE_16__* %66, %struct.TYPE_17__* %67, %struct.TYPE_17__* %68)
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %71 = call i32 @block_Release(%struct.TYPE_17__* %70)
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_17__* %72, %struct.TYPE_17__** %3, align 8
  br label %73

73:                                               ; preds = %45, %40, %21
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  ret %struct.TYPE_17__* %74
}

declare dso_local i32 @block_Release(%struct.TYPE_17__*) #1

declare dso_local i64 @aout_FormatNbChannels(i32*) #1

declare dso_local %struct.TYPE_17__* @block_Alloc(i64) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @DoWork(%struct.TYPE_16__*, %struct.TYPE_17__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
