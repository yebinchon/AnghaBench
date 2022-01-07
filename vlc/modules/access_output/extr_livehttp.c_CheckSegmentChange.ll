; ModuleID = '/home/carl/AnghaBench/vlc/modules/access_output/extr_livehttp.c_CheckSegmentChange.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access_output/extr_livehttp.c_CheckSegmentChange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i64, i32, i32 }
%struct.TYPE_14__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_14__*)* @CheckSegmentChange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckSegmentChange(%struct.TYPE_12__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @block_ChainProperties(i32 %15, i32* null, i32* null, i64* %8)
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @block_ChainProperties(i32 %19, i32* null, i32* null, i64* %9)
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %54

25:                                               ; preds = %2
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %8, align 8
  %30 = add nsw i64 %28, %29
  %31 = load i64, i64* %9, align 8
  %32 = add nsw i64 %30, %31
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp sge i64 %32, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %25
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %39 = call i64 @writeSegment(%struct.TYPE_12__* %38)
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %7, align 8
  %41 = icmp slt i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %47 = call i32 @block_ChainRelease(%struct.TYPE_14__* %46)
  store i32 -1, i32* %3, align 4
  br label %72

48:                                               ; preds = %37
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %51 = call i32 @closeCurrentSegment(%struct.TYPE_12__* %49, %struct.TYPE_13__* %50, i32 0)
  %52 = load i64, i64* %7, align 8
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %3, align 4
  br label %72

54:                                               ; preds = %25, %2
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp slt i64 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %54
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %65 = call i64 @openNextFile(%struct.TYPE_12__* %63, %struct.TYPE_13__* %64)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 -1, i32* %3, align 4
  br label %72

68:                                               ; preds = %62
  br label %69

69:                                               ; preds = %68, %54
  %70 = load i64, i64* %7, align 8
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %69, %67, %48, %45
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @block_ChainProperties(i32, i32*, i32*, i64*) #1

declare dso_local i64 @writeSegment(%struct.TYPE_12__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @block_ChainRelease(%struct.TYPE_14__*) #1

declare dso_local i32 @closeCurrentSegment(%struct.TYPE_12__*, %struct.TYPE_13__*, i32) #1

declare dso_local i64 @openNextFile(%struct.TYPE_12__*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
