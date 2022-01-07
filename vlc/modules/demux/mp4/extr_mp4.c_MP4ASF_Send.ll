; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_mp4.c_MP4ASF_Send.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_mp4.c_MP4ASF_Send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, i32, %struct.TYPE_15__**)* @MP4ASF_Send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MP4ASF_Send(%struct.TYPE_16__* %0, i32 %1, %struct.TYPE_15__** %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__**, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_15__** %2, %struct.TYPE_15__*** %6, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.TYPE_14__* @MP4ASF_GetTrack(%struct.TYPE_16__* %9, i32 %10)
  store %struct.TYPE_14__* %11, %struct.TYPE_14__** %7, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %13 = icmp ne %struct.TYPE_14__* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %6, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %17 = call i32 @block_Release(%struct.TYPE_15__* %16)
  br label %42

18:                                               ; preds = %3
  %19 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %6, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %21 = call %struct.TYPE_15__* @block_ChainGather(%struct.TYPE_15__* %20)
  store %struct.TYPE_15__* %21, %struct.TYPE_15__** %8, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %41 = call i32 @es_out_Send(i32 %36, i32 %39, %struct.TYPE_15__* %40)
  br label %42

42:                                               ; preds = %18, %14
  %43 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %6, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %43, align 8
  ret void
}

declare dso_local %struct.TYPE_14__* @MP4ASF_GetTrack(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @block_Release(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_15__* @block_ChainGather(%struct.TYPE_15__*) #1

declare dso_local i32 @es_out_Send(i32, i32, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
