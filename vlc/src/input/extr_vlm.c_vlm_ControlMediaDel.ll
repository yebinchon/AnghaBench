; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_vlm.c_vlm_ControlMediaDel.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_vlm.c_vlm_ControlMediaDel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 (%struct.TYPE_17__*, i64)* }
%struct.TYPE_22__ = type { i64, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_23__, %struct.TYPE_18__** }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i64, i32 }
%struct.TYPE_23__ = type { i32, i32, i64 }
%struct.TYPE_18__ = type { i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLM_STOP_MEDIA_INSTANCE = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, i32)* @vlm_ControlMediaDel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlm_ControlMediaDel(%struct.TYPE_21__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.TYPE_22__* @vlm_ControlMediaGetById(%struct.TYPE_21__* %7, i32 %8)
  store %struct.TYPE_22__* %9, %struct.TYPE_22__** %6, align 8
  %10 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %11 = icmp ne %struct.TYPE_22__* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %13, i32* %3, align 4
  br label %97

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %20, %14
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %15
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %22 = load i32, i32* @VLM_STOP_MEDIA_INSTANCE, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 4
  %26 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %26, i64 0
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @vlm_ControlInternal(%struct.TYPE_21__* %21, i32 %22, i32 %23, i32 %30)
  br label %15

32:                                               ; preds = %15
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %44 = call i32 @vlm_OnMediaUpdate(%struct.TYPE_21__* %42, %struct.TYPE_22__* %43)
  br label %45

45:                                               ; preds = %38, %32
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @vlm_SendEventMediaRemoved(%struct.TYPE_21__* %46, i32 %47, i32 %51)
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 3
  %55 = call i32 @vlm_media_Clean(%struct.TYPE_23__* %54)
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @input_item_Release(i32 %59)
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %45
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = load i32 (%struct.TYPE_17__*, i64)*, i32 (%struct.TYPE_17__*, i64)** %70, align 8
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %73, align 8
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 %71(%struct.TYPE_17__* %74, i64 %78)
  br label %80

80:                                               ; preds = %66, %45
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %88 = call i32 @TAB_REMOVE(i32 %83, i32 %86, %struct.TYPE_22__* %87)
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @vlc_LogDestroy(i32 %92)
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %95 = call i32 @vlc_object_delete(%struct.TYPE_22__* %94)
  %96 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %80, %12
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.TYPE_22__* @vlm_ControlMediaGetById(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @vlm_ControlInternal(%struct.TYPE_21__*, i32, i32, i32) #1

declare dso_local i32 @vlm_OnMediaUpdate(%struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i32 @vlm_SendEventMediaRemoved(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @vlm_media_Clean(%struct.TYPE_23__*) #1

declare dso_local i32 @input_item_Release(i32) #1

declare dso_local i32 @TAB_REMOVE(i32, i32, %struct.TYPE_22__*) #1

declare dso_local i32 @vlc_LogDestroy(i32) #1

declare dso_local i32 @vlc_object_delete(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
