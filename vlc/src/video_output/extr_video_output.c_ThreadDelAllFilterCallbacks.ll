; ModuleID = '/home/carl/AnghaBench/vlc/src/video_output/extr_video_output.c_ThreadDelAllFilterCallbacks.c'
source_filename = "/home/carl/AnghaBench/vlc/src/video_output/extr_video_output.c_ThreadDelAllFilterCallbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }

@ThreadDelFilterCallbacks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @ThreadDelAllFilterCallbacks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ThreadDelAllFilterCallbacks(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %3 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* @ThreadDelFilterCallbacks, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %20 = call i32 @filter_chain_ForEach(i32* %17, i32 %18, %struct.TYPE_8__* %19)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @filter_chain_ForEach(i32*, i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
