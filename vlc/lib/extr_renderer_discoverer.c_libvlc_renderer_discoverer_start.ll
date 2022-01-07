; ModuleID = '/home/carl/AnghaBench/vlc/lib/extr_renderer_discoverer.c_libvlc_renderer_discoverer_start.c'
source_filename = "/home/carl/AnghaBench/vlc/lib/extr_renderer_discoverer.c_libvlc_renderer_discoverer_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i32 }
%struct.vlc_renderer_discovery_owner = type { i32, i32, %struct.TYPE_3__* }

@renderer_discovery_item_added = common dso_local global i32 0, align 4
@renderer_discovery_item_removed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libvlc_renderer_discoverer_start(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.vlc_renderer_discovery_owner, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = icmp eq i32* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = getelementptr inbounds %struct.vlc_renderer_discovery_owner, %struct.vlc_renderer_discovery_owner* %3, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %12 = ptrtoint %struct.TYPE_3__* %11 to i32
  store i32 %12, i32* %10, align 8
  %13 = getelementptr inbounds %struct.vlc_renderer_discovery_owner, %struct.vlc_renderer_discovery_owner* %3, i32 0, i32 1
  %14 = load i32, i32* @renderer_discovery_item_added, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.vlc_renderer_discovery_owner, %struct.vlc_renderer_discovery_owner* %3, i32 0, i32 2
  %16 = load i32, i32* @renderer_discovery_item_removed, align 4
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %15, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32* @vlc_rd_new(i32 %21, i32 %24, %struct.vlc_renderer_discovery_owner* %3)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32* %25, i32** %27, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 0, i32 -1
  ret i32 %33
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @vlc_rd_new(i32, i32, %struct.vlc_renderer_discovery_owner*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
