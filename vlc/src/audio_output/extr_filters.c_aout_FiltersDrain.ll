; ModuleID = '/home/carl/AnghaBench/vlc/src/audio_output/extr_filters.c_aout_FiltersDrain.c'
source_filename = "/home/carl/AnghaBench/vlc/src/audio_output/extr_filters.c_aout_FiltersDrain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, %struct.TYPE_10__*, %struct.TYPE_10__** }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @aout_FiltersDrain(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 3
  %8 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32* @aout_FiltersPipelineDrain(%struct.TYPE_10__** %8, i32 %11)
  store i32* %12, i32** %4, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = icmp ne %struct.TYPE_10__* %15, null
  br i1 %16, label %17, label %75

17:                                               ; preds = %1
  store i32* null, i32** %5, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %20
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %26, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %17
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 2
  %36 = load i32*, i32** %4, align 8
  %37 = call i32* @aout_FiltersPipelinePlay(%struct.TYPE_10__** %35, i32 1, i32* %36)
  store i32* %37, i32** %4, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @block_ChainAppend(i32** %5, i32* %41)
  br label %43

43:                                               ; preds = %40, %33
  br label %44

44:                                               ; preds = %43, %17
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  %47 = call i32* @aout_FiltersPipelineDrain(%struct.TYPE_10__** %46, i32 1)
  store i32* %47, i32** %4, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @block_ChainAppend(i32** %5, i32* %51)
  br label %53

53:                                               ; preds = %50, %44
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = sub nsw i64 %64, %56
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %62, align 4
  %67 = load i32*, i32** %5, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %53
  %70 = load i32*, i32** %5, align 8
  %71 = call i32* @block_ChainGather(i32* %70)
  br label %73

72:                                               ; preds = %53
  br label %73

73:                                               ; preds = %72, %69
  %74 = phi i32* [ %71, %69 ], [ null, %72 ]
  store i32* %74, i32** %2, align 8
  br label %77

75:                                               ; preds = %1
  %76 = load i32*, i32** %4, align 8
  store i32* %76, i32** %2, align 8
  br label %77

77:                                               ; preds = %75, %73
  %78 = load i32*, i32** %2, align 8
  ret i32* %78
}

declare dso_local i32* @aout_FiltersPipelineDrain(%struct.TYPE_10__**, i32) #1

declare dso_local i32* @aout_FiltersPipelinePlay(%struct.TYPE_10__**, i32, i32*) #1

declare dso_local i32 @block_ChainAppend(i32**, i32*) #1

declare dso_local i32* @block_ChainGather(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
