; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/vaapi/extr_filters.c_vlc_vaapi_FilterHoldInstance.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/vaapi/extr_filters.c_vlc_vaapi_FilterHoldInstance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_12__*, i32* }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@holder = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@VLC_DECODER_DEVICE_VAAPI = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @vlc_vaapi_FilterHoldInstance(i32* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call %struct.TYPE_13__* @filter_NewPicture(i32* %8)
  store %struct.TYPE_13__* %9, %struct.TYPE_13__** %6, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %11 = icmp ne %struct.TYPE_13__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %66

13:                                               ; preds = %2
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @vlc_vaapi_IsChromaOpaque(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %13
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %22 = call i32 @picture_Release(%struct.TYPE_13__* %21)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %66

23:                                               ; preds = %13
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %7, align 8
  %24 = call i32 @vlc_mutex_lock(i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @holder, i32 0, i32 0))
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @holder, i32 0, i32 1), align 8
  %26 = icmp ne %struct.TYPE_12__* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @holder, i32 0, i32 1), align 8
  %29 = call %struct.TYPE_12__* @vlc_decoder_device_Hold(%struct.TYPE_12__* %28)
  store %struct.TYPE_12__* %29, %struct.TYPE_12__** %7, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32*, i32** %5, align 8
  store i32 %32, i32* %33, align 4
  br label %61

34:                                               ; preds = %23
  %35 = load i32*, i32** %4, align 8
  store i32* %35, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @holder, i32 0, i32 2), align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = call %struct.TYPE_12__* @vlc_vaapi_PicSysHoldInstance(i64 %43, i32* %44)
  br label %47

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46, %40
  %48 = phi %struct.TYPE_12__* [ %45, %40 ], [ null, %46 ]
  store %struct.TYPE_12__* %48, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_12__* %48, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @holder, i32 0, i32 1), align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %50 = icmp eq %struct.TYPE_12__* %49, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %47
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @VLC_DECODER_DEVICE_VAAPI, align 8
  %56 = icmp eq i64 %54, %55
  br label %57

57:                                               ; preds = %51, %47
  %58 = phi i1 [ true, %47 ], [ %56, %51 ]
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  br label %61

61:                                               ; preds = %57, %27
  %62 = call i32 @vlc_mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @holder, i32 0, i32 0))
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %64 = call i32 @picture_Release(%struct.TYPE_13__* %63)
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_12__* %65, %struct.TYPE_12__** %3, align 8
  br label %66

66:                                               ; preds = %61, %20, %12
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  ret %struct.TYPE_12__* %67
}

declare dso_local %struct.TYPE_13__* @filter_NewPicture(i32*) #1

declare dso_local i32 @vlc_vaapi_IsChromaOpaque(i32) #1

declare dso_local i32 @picture_Release(%struct.TYPE_13__*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local %struct.TYPE_12__* @vlc_decoder_device_Hold(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @vlc_vaapi_PicSysHoldInstance(i64, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
