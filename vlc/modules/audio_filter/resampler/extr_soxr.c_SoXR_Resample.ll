; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_filter/resampler/extr_soxr.c_SoXR_Resample.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_filter/resampler/extr_soxr.c_SoXR_Resample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_15__ = type { i64, i32* }
%struct.TYPE_16__ = type { i64, i64, i32, i32* }

@.str = private unnamed_addr constant [24 x i8] c"soxr_process failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"lost %zd of %zd input frames\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_16__* (%struct.TYPE_14__*, i32*, %struct.TYPE_16__*, i64)* @SoXR_Resample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_16__* @SoXR_Resample(%struct.TYPE_14__* %0, i32* %1, %struct.TYPE_16__* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %7, align 8
  store i64 %3, i64* %8, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  store %struct.TYPE_15__* %18, %struct.TYPE_15__** %9, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %12, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %25 = icmp ne %struct.TYPE_16__* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %4
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  br label %31

30:                                               ; preds = %4
  br label %31

31:                                               ; preds = %30, %26
  %32 = phi i64 [ %29, %26 ], [ 0, %30 ]
  store i64 %32, i64* %13, align 8
  %33 = load i64, i64* %13, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp uge i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i64, i64* %13, align 8
  store i64 %37, i64* %8, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_16__* %38, %struct.TYPE_16__** %14, align 8
  br label %44

39:                                               ; preds = %31
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %12, align 8
  %42 = mul i64 %40, %41
  %43 = call %struct.TYPE_16__* @block_Alloc(i64 %42)
  store %struct.TYPE_16__* %43, %struct.TYPE_16__** %14, align 8
  br label %44

44:                                               ; preds = %39, %36
  %45 = load i32*, i32** %6, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %47 = icmp ne %struct.TYPE_16__* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  br label %53

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52, %48
  %54 = phi i32* [ %51, %48 ], [ null, %52 ]
  %55 = load i64, i64* %13, align 8
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* %8, align 8
  %60 = call i64 @soxr_process(i32* %45, i32* %54, i64 %55, i64* %10, i32* %58, i64 %59, i64* %11)
  store i64 %60, i64* %15, align 8
  %61 = load i64, i64* %15, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %53
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %65 = load i64, i64* %15, align 8
  %66 = call i32 @soxr_strerror(i64 %65)
  %67 = sext i32 %66 to i64
  %68 = call i32 (%struct.TYPE_14__*, i8*, i64, ...) @msg_Err(%struct.TYPE_14__* %64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %67)
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %70 = call i32 @block_Release(%struct.TYPE_16__* %69)
  br label %120

71:                                               ; preds = %53
  %72 = load i64, i64* %10, align 8
  %73 = load i64, i64* %13, align 8
  %74 = icmp ult i64 %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %71
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %80 = load i64, i64* %13, align 8
  %81 = load i64, i64* %10, align 8
  %82 = sub i64 %80, %81
  %83 = load i64, i64* %10, align 8
  %84 = call i32 (%struct.TYPE_14__*, i8*, i64, ...) @msg_Err(%struct.TYPE_14__* %79, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %82, i64 %83)
  br label %85

85:                                               ; preds = %78, %71
  %86 = load i64, i64* %11, align 8
  %87 = load i64, i64* %12, align 8
  %88 = mul i64 %86, %87
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 1
  store i64 %88, i64* %90, align 8
  %91 = load i64, i64* %11, align 8
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  %94 = load i64, i64* %11, align 8
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @vlc_tick_from_samples(i64 %94, i32 %99)
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %104 = icmp ne %struct.TYPE_16__* %103, null
  br i1 %104, label %105, label %112

105:                                              ; preds = %85
  %106 = load i64, i64* %8, align 8
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  store i64 %106, i64* %108, align 8
  %109 = load i32*, i32** %6, align 8
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 1
  store i32* %109, i32** %111, align 8
  br label %119

112:                                              ; preds = %85
  %113 = load i32*, i32** %6, align 8
  %114 = call i32 @soxr_clear(i32* %113)
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  store i64 0, i64* %116, align 8
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 1
  store i32* null, i32** %118, align 8
  br label %119

119:                                              ; preds = %112, %105
  br label %120

120:                                              ; preds = %119, %63
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %122 = icmp ne %struct.TYPE_16__* %121, null
  br i1 %122, label %123, label %130

123:                                              ; preds = %120
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %126 = icmp ne %struct.TYPE_16__* %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %129 = call i32 @block_Release(%struct.TYPE_16__* %128)
  br label %130

130:                                              ; preds = %127, %123, %120
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  ret %struct.TYPE_16__* %131
}

declare dso_local %struct.TYPE_16__* @block_Alloc(i64) #1

declare dso_local i64 @soxr_process(i32*, i32*, i64, i64*, i32*, i64, i64*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_14__*, i8*, i64, ...) #1

declare dso_local i32 @soxr_strerror(i64) #1

declare dso_local i32 @block_Release(%struct.TYPE_16__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vlc_tick_from_samples(i64, i32) #1

declare dso_local i32 @soxr_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
