; ModuleID = '/home/carl/AnghaBench/vlc/modules/services_discovery/extr_microdns.c_items_release.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/services_discovery/extr_microdns.c_items_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.discovery_sys = type { i32 }
%struct.item = type { %struct.item*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.discovery_sys*, %struct.item*)* @items_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @items_release(%struct.discovery_sys* %0, %struct.item* %1) #0 {
  %3 = alloca %struct.discovery_sys*, align 8
  %4 = alloca %struct.item*, align 8
  store %struct.discovery_sys* %0, %struct.discovery_sys** %3, align 8
  store %struct.item* %1, %struct.item** %4, align 8
  %5 = load %struct.discovery_sys*, %struct.discovery_sys** %3, align 8
  %6 = load %struct.item*, %struct.item** %4, align 8
  %7 = getelementptr inbounds %struct.item, %struct.item* %6, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.item*, %struct.item** %4, align 8
  %12 = getelementptr inbounds %struct.item, %struct.item* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @input_item_Release(i32* %13)
  br label %26

15:                                               ; preds = %2
  %16 = load %struct.item*, %struct.item** %4, align 8
  %17 = getelementptr inbounds %struct.item, %struct.item* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.item*, %struct.item** %4, align 8
  %23 = getelementptr inbounds %struct.item, %struct.item* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @vlc_renderer_item_release(i32* %24)
  br label %26

26:                                               ; preds = %15, %10
  %27 = load %struct.item*, %struct.item** %4, align 8
  %28 = getelementptr inbounds %struct.item, %struct.item* %27, i32 0, i32 0
  %29 = load %struct.item*, %struct.item** %28, align 8
  %30 = call i32 @free(%struct.item* %29)
  %31 = load %struct.item*, %struct.item** %4, align 8
  %32 = call i32 @free(%struct.item* %31)
  ret void
}

declare dso_local i32 @input_item_Release(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_renderer_item_release(i32*) #1

declare dso_local i32 @free(%struct.item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
