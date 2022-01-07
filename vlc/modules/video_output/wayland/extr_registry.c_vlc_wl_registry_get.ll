; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/wayland/extr_registry.c_vlc_wl_registry_get.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/wayland/extr_registry.c_vlc_wl_registry_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_wl_registry = type { i32*, i32*, i32* }
%struct.wl_display = type { i32 }
%struct.wl_event_queue = type { i32 }
%struct.wl_proxy = type { i32 }

@registry_cbs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vlc_wl_registry* @vlc_wl_registry_get(%struct.wl_display* %0, %struct.wl_event_queue* %1) #0 {
  %3 = alloca %struct.vlc_wl_registry*, align 8
  %4 = alloca %struct.wl_display*, align 8
  %5 = alloca %struct.wl_event_queue*, align 8
  %6 = alloca %struct.vlc_wl_registry*, align 8
  %7 = alloca %struct.wl_display*, align 8
  store %struct.wl_display* %0, %struct.wl_display** %4, align 8
  store %struct.wl_event_queue* %1, %struct.wl_event_queue** %5, align 8
  %8 = call %struct.vlc_wl_registry* @malloc(i32 24)
  store %struct.vlc_wl_registry* %8, %struct.vlc_wl_registry** %6, align 8
  %9 = load %struct.vlc_wl_registry*, %struct.vlc_wl_registry** %6, align 8
  %10 = icmp eq %struct.vlc_wl_registry* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store %struct.vlc_wl_registry* null, %struct.vlc_wl_registry** %3, align 8
  br label %66

15:                                               ; preds = %2
  %16 = load %struct.wl_display*, %struct.wl_display** %4, align 8
  %17 = call %struct.wl_display* @wl_proxy_create_wrapper(%struct.wl_display* %16)
  store %struct.wl_display* %17, %struct.wl_display** %7, align 8
  %18 = load %struct.wl_display*, %struct.wl_display** %7, align 8
  %19 = icmp eq %struct.wl_display* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %62

24:                                               ; preds = %15
  %25 = load %struct.wl_display*, %struct.wl_display** %7, align 8
  %26 = bitcast %struct.wl_display* %25 to %struct.wl_proxy*
  %27 = load %struct.wl_event_queue*, %struct.wl_event_queue** %5, align 8
  %28 = call i32 @wl_proxy_set_queue(%struct.wl_proxy* %26, %struct.wl_event_queue* %27)
  %29 = load %struct.wl_display*, %struct.wl_display** %7, align 8
  %30 = call i32* @wl_display_get_registry(%struct.wl_display* %29)
  %31 = load %struct.vlc_wl_registry*, %struct.vlc_wl_registry** %6, align 8
  %32 = getelementptr inbounds %struct.vlc_wl_registry, %struct.vlc_wl_registry* %31, i32 0, i32 0
  store i32* %30, i32** %32, align 8
  %33 = load %struct.wl_display*, %struct.wl_display** %7, align 8
  %34 = call i32 @wl_proxy_wrapper_destroy(%struct.wl_display* %33)
  %35 = load %struct.vlc_wl_registry*, %struct.vlc_wl_registry** %6, align 8
  %36 = getelementptr inbounds %struct.vlc_wl_registry, %struct.vlc_wl_registry* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %24
  br label %62

43:                                               ; preds = %24
  %44 = load %struct.vlc_wl_registry*, %struct.vlc_wl_registry** %6, align 8
  %45 = getelementptr inbounds %struct.vlc_wl_registry, %struct.vlc_wl_registry* %44, i32 0, i32 2
  store i32* null, i32** %45, align 8
  %46 = load %struct.vlc_wl_registry*, %struct.vlc_wl_registry** %6, align 8
  %47 = getelementptr inbounds %struct.vlc_wl_registry, %struct.vlc_wl_registry* %46, i32 0, i32 1
  store i32* null, i32** %47, align 8
  %48 = load %struct.vlc_wl_registry*, %struct.vlc_wl_registry** %6, align 8
  %49 = getelementptr inbounds %struct.vlc_wl_registry, %struct.vlc_wl_registry* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.vlc_wl_registry*, %struct.vlc_wl_registry** %6, align 8
  %52 = call i32 @wl_registry_add_listener(i32* %50, i32* @registry_cbs, %struct.vlc_wl_registry* %51)
  %53 = load %struct.wl_display*, %struct.wl_display** %4, align 8
  %54 = load %struct.wl_event_queue*, %struct.wl_event_queue** %5, align 8
  %55 = call i64 @wl_display_roundtrip_queue(%struct.wl_display* %53, %struct.wl_event_queue* %54)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %43
  %58 = load %struct.vlc_wl_registry*, %struct.vlc_wl_registry** %6, align 8
  %59 = call i32 @vlc_wl_registry_destroy(%struct.vlc_wl_registry* %58)
  store %struct.vlc_wl_registry* null, %struct.vlc_wl_registry** %6, align 8
  br label %60

60:                                               ; preds = %57, %43
  %61 = load %struct.vlc_wl_registry*, %struct.vlc_wl_registry** %6, align 8
  store %struct.vlc_wl_registry* %61, %struct.vlc_wl_registry** %3, align 8
  br label %66

62:                                               ; preds = %42, %23
  %63 = load %struct.vlc_wl_registry*, %struct.vlc_wl_registry** %6, align 8
  %64 = call i32 @free(%struct.vlc_wl_registry* %63)
  %65 = load %struct.vlc_wl_registry*, %struct.vlc_wl_registry** %6, align 8
  store %struct.vlc_wl_registry* %65, %struct.vlc_wl_registry** %3, align 8
  br label %66

66:                                               ; preds = %62, %60, %14
  %67 = load %struct.vlc_wl_registry*, %struct.vlc_wl_registry** %3, align 8
  ret %struct.vlc_wl_registry* %67
}

declare dso_local %struct.vlc_wl_registry* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.wl_display* @wl_proxy_create_wrapper(%struct.wl_display*) #1

declare dso_local i32 @wl_proxy_set_queue(%struct.wl_proxy*, %struct.wl_event_queue*) #1

declare dso_local i32* @wl_display_get_registry(%struct.wl_display*) #1

declare dso_local i32 @wl_proxy_wrapper_destroy(%struct.wl_display*) #1

declare dso_local i32 @wl_registry_add_listener(i32*, i32*, %struct.vlc_wl_registry*) #1

declare dso_local i64 @wl_display_roundtrip_queue(%struct.wl_display*, %struct.wl_event_queue*) #1

declare dso_local i32 @vlc_wl_registry_destroy(%struct.vlc_wl_registry*) #1

declare dso_local i32 @free(%struct.vlc_wl_registry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
