; ModuleID = '/home/carl/AnghaBench/vlc/modules/misc/inhibit/extr_wl-idle-inhibit.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/misc/inhibit/extr_wl-idle-inhibit.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32*, i32*, i32* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.wl_display* }
%struct.wl_display = type { i32 }
%struct.wl_registry = type { i32 }
%struct.wl_proxy = type { i32 }

@VOUT_WINDOW_TYPE_WAYLAND = common dso_local global i64 0, align 8
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@registry_cbs = common dso_local global i32 0, align 4
@Inhibit = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.wl_display*, align 8
  %8 = alloca %struct.wl_registry*, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = bitcast i32* %9 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %4, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %12 = call %struct.TYPE_10__* @vlc_inhibit_GetWindow(%struct.TYPE_11__* %11)
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %5, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @VOUT_WINDOW_TYPE_WAYLAND, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %19, i32* %2, align 4
  br label %97

20:                                               ; preds = %1
  %21 = load i32*, i32** %3, align 8
  %22 = call %struct.TYPE_12__* @vlc_obj_malloc(i32* %21, i32 24)
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %6, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %24 = icmp eq %struct.TYPE_12__* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %29, i32* %2, align 4
  br label %97

30:                                               ; preds = %20
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  store i32* null, i32** %32, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 2
  store i32* null, i32** %34, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  store %struct.TYPE_12__* %35, %struct.TYPE_12__** %37, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load %struct.wl_display*, %struct.wl_display** %40, align 8
  store %struct.wl_display* %41, %struct.wl_display** %7, align 8
  %42 = load %struct.wl_display*, %struct.wl_display** %7, align 8
  %43 = call i32* @wl_display_create_queue(%struct.wl_display* %42)
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  store i32* %43, i32** %45, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %30
  %51 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %51, i32* %2, align 4
  br label %97

52:                                               ; preds = %30
  %53 = load %struct.wl_display*, %struct.wl_display** %7, align 8
  %54 = call %struct.wl_registry* @wl_display_get_registry(%struct.wl_display* %53)
  store %struct.wl_registry* %54, %struct.wl_registry** %8, align 8
  %55 = load %struct.wl_registry*, %struct.wl_registry** %8, align 8
  %56 = icmp eq %struct.wl_registry* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %85

58:                                               ; preds = %52
  %59 = load %struct.wl_registry*, %struct.wl_registry** %8, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %61 = call i32 @wl_registry_add_listener(%struct.wl_registry* %59, i32* @registry_cbs, %struct.TYPE_11__* %60)
  %62 = load %struct.wl_registry*, %struct.wl_registry** %8, align 8
  %63 = bitcast %struct.wl_registry* %62 to %struct.wl_proxy*
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @wl_proxy_set_queue(%struct.wl_proxy* %63, i32* %66)
  %68 = load %struct.wl_display*, %struct.wl_display** %7, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @wl_display_roundtrip_queue(%struct.wl_display* %68, i32* %71)
  %73 = load %struct.wl_registry*, %struct.wl_registry** %8, align 8
  %74 = call i32 @wl_registry_destroy(%struct.wl_registry* %73)
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %58
  br label %85

80:                                               ; preds = %58
  %81 = load i32, i32* @Inhibit, align 4
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %84, i32* %2, align 4
  br label %97

85:                                               ; preds = %79, %57
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @wl_event_queue_destroy(i32* %93)
  br label %95

95:                                               ; preds = %90, %85
  %96 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %95, %80, %50, %28, %18
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.TYPE_10__* @vlc_inhibit_GetWindow(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_12__* @vlc_obj_malloc(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @wl_display_create_queue(%struct.wl_display*) #1

declare dso_local %struct.wl_registry* @wl_display_get_registry(%struct.wl_display*) #1

declare dso_local i32 @wl_registry_add_listener(%struct.wl_registry*, i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @wl_proxy_set_queue(%struct.wl_proxy*, i32*) #1

declare dso_local i32 @wl_display_roundtrip_queue(%struct.wl_display*, i32*) #1

declare dso_local i32 @wl_registry_destroy(%struct.wl_registry*) #1

declare dso_local i32 @wl_event_queue_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
