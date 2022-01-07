; ModuleID = '/home/carl/AnghaBench/vlc/lib/extr_media_discoverer.c_services_discovery_item_removed.c'
source_filename = "/home/carl/AnghaBench/vlc/lib/extr_media_discoverer.c_services_discovery_item_removed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32*)* @services_discovery_item_removed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @services_discovery_item_removed(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %6, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @libvlc_media_list_count(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @libvlc_media_list_lock(i32 %19)
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %51, %2
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %54

25:                                               ; preds = %21
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call %struct.TYPE_10__* @libvlc_media_list_item_at_index(i32 %28, i32 %29)
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %5, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %32 = icmp ne %struct.TYPE_10__* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = icmp eq i32* %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %25
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @libvlc_media_list_internal_remove_index(i32 %43, i32 %44)
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %47 = call i32 @libvlc_media_release(%struct.TYPE_10__* %46)
  br label %54

48:                                               ; preds = %25
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %50 = call i32 @libvlc_media_release(%struct.TYPE_10__* %49)
  br label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %21

54:                                               ; preds = %40, %21
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @libvlc_media_list_unlock(i32 %57)
  ret void
}

declare dso_local i32 @libvlc_media_list_count(i32) #1

declare dso_local i32 @libvlc_media_list_lock(i32) #1

declare dso_local %struct.TYPE_10__* @libvlc_media_list_item_at_index(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @libvlc_media_list_internal_remove_index(i32, i32) #1

declare dso_local i32 @libvlc_media_release(%struct.TYPE_10__*) #1

declare dso_local i32 @libvlc_media_list_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
