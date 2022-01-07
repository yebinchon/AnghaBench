; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts.c_PushPESBlock.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts.c_PushPESBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i64, %struct.TYPE_18__*, %struct.TYPE_18__** }
%struct.TYPE_18__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_17__*, %struct.TYPE_18__*, i32)* @PushPESBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PushPESBlock(i32* %0, %struct.TYPE_17__* %1, %struct.TYPE_18__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  store %struct.TYPE_16__* %16, %struct.TYPE_16__** %11, align 8
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %49

19:                                               ; preds = %4
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %24 = icmp ne %struct.TYPE_18__* %23, null
  br i1 %24, label %25, label %49

25:                                               ; preds = %19
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %28, align 8
  store %struct.TYPE_18__* %29, %struct.TYPE_18__** %12, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 2
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %32, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 3
  store %struct.TYPE_18__** %41, %struct.TYPE_18__*** %44, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %48 = call i32 @ParsePESDataChain(i32* %45, %struct.TYPE_17__* %46, %struct.TYPE_18__* %47)
  store i32 1, i32* %10, align 4
  br label %49

49:                                               ; preds = %25, %19, %4
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %51 = icmp eq %struct.TYPE_18__* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %5, align 4
  br label %107

54:                                               ; preds = %49
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %54
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %60, align 8
  %62 = icmp eq %struct.TYPE_18__* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %65 = call i32 @block_Release(%struct.TYPE_18__* %64)
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %5, align 4
  br label %107

67:                                               ; preds = %57, %54
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 3
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %72 = call i32 @block_ChainLastAppend(%struct.TYPE_18__*** %70, %struct.TYPE_18__* %71)
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, %75
  store i64 %80, i64* %78, align 8
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %86, label %105

86:                                               ; preds = %67
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp sge i64 %90, %94
  br i1 %95, label %96, label %105

96:                                               ; preds = %86
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %99, align 8
  %101 = call i32 @assert(%struct.TYPE_18__* %100)
  %102 = load i32*, i32** %6, align 8
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %104 = call i32 @PushPESBlock(i32* %102, %struct.TYPE_17__* %103, %struct.TYPE_18__* null, i32 1)
  store i32 %104, i32* %5, align 4
  br label %107

105:                                              ; preds = %86, %67
  %106 = load i32, i32* %10, align 4
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %105, %96, %63, %52
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i32 @ParsePESDataChain(i32*, %struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i32 @block_Release(%struct.TYPE_18__*) #1

declare dso_local i32 @block_ChainLastAppend(%struct.TYPE_18__***, %struct.TYPE_18__*) #1

declare dso_local i32 @assert(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
