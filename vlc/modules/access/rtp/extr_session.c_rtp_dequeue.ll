; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/rtp/extr_session.c_rtp_dequeue.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/rtp/extr_session.c_rtp_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_13__** }
%struct.TYPE_13__ = type { i32, i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i32 }

@INT64_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtp_dequeue(i32* %0, %struct.TYPE_14__* %1, i64* noalias %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store i64* %2, i64** %6, align 8
  %15 = call i64 (...) @vlc_tick_now()
  store i64 %15, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %16 = load i64, i64* @INT64_MAX, align 8
  %17 = load i64*, i64** %6, align 8
  store i64 %16, i64* %17, align 8
  store i32 0, i32* %9, align 4
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %10, align 4
  br label %21

21:                                               ; preds = %99, %3
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %102

25:                                               ; preds = %21
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %28, i64 %30
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  store %struct.TYPE_13__* %32, %struct.TYPE_13__** %11, align 8
  br label %33

33:                                               ; preds = %84, %47, %25
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %35, align 8
  store %struct.TYPE_16__* %36, %struct.TYPE_16__** %12, align 8
  %37 = icmp ne %struct.TYPE_16__* %36, null
  br i1 %37, label %38, label %98

38:                                               ; preds = %33
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %40 = call i64 @rtp_seq(%struct.TYPE_16__* %39)
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  %45 = sub nsw i64 %40, %44
  %46 = icmp sle i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %38
  %48 = load i32*, i32** %4, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %51 = call i32 @rtp_decode(i32* %48, %struct.TYPE_14__* %49, %struct.TYPE_13__* %50)
  br label %33

52:                                               ; preds = %38
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %56 = call %struct.TYPE_15__* @rtp_find_ptype(%struct.TYPE_14__* %53, %struct.TYPE_13__* %54, %struct.TYPE_16__* %55, i32* null)
  store %struct.TYPE_15__* %56, %struct.TYPE_15__** %14, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %58 = icmp ne %struct.TYPE_15__* %57, null
  br i1 %58, label %59, label %68

59:                                               ; preds = %52
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = mul nsw i32 3, %62
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @vlc_tick_from_samples(i32 %63, i32 %66)
  store i64 %67, i64* %13, align 8
  br label %69

68:                                               ; preds = %52
  store i64 0, i64* %13, align 8
  br label %69

69:                                               ; preds = %68, %59
  %70 = load i64, i64* %13, align 8
  %71 = call i64 @VLC_TICK_FROM_MS(i32 25)
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = call i64 @VLC_TICK_FROM_MS(i32 25)
  store i64 %74, i64* %13, align 8
  br label %75

75:                                               ; preds = %73, %69
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %13, align 8
  %80 = add nsw i64 %79, %78
  store i64 %80, i64* %13, align 8
  %81 = load i64, i64* %7, align 8
  %82 = load i64, i64* %13, align 8
  %83 = icmp sge i64 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %75
  %85 = load i32*, i32** %4, align 8
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %88 = call i32 @rtp_decode(i32* %85, %struct.TYPE_14__* %86, %struct.TYPE_13__* %87)
  br label %33

89:                                               ; preds = %75
  %90 = load i64*, i64** %6, align 8
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %13, align 8
  %93 = icmp sgt i64 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load i64, i64* %13, align 8
  %96 = load i64*, i64** %6, align 8
  store i64 %95, i64* %96, align 8
  br label %97

97:                                               ; preds = %94, %89
  store i32 1, i32* %8, align 4
  br label %98

98:                                               ; preds = %97, %33
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %9, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %9, align 4
  br label %21

102:                                              ; preds = %21
  %103 = load i32, i32* %8, align 4
  ret i32 %103
}

declare dso_local i64 @vlc_tick_now(...) #1

declare dso_local i64 @rtp_seq(%struct.TYPE_16__*) #1

declare dso_local i32 @rtp_decode(i32*, %struct.TYPE_14__*, %struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_15__* @rtp_find_ptype(%struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_16__*, i32*) #1

declare dso_local i64 @vlc_tick_from_samples(i32, i32) #1

declare dso_local i64 @VLC_TICK_FROM_MS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
