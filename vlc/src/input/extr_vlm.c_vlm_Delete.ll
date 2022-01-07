; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_vlm.c_vlm_Delete.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_vlm.c_vlm_Delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, i32, i32, %struct.TYPE_8__*, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }

@vlm_mutex = common dso_local global i32 0, align 4
@VLM_CLEAR_MEDIAS = common dso_local global i32 0, align 4
@VLM_CLEAR_SCHEDULES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlm_Delete(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %3 = call i32 @vlc_mutex_lock(i32* @vlm_mutex)
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp sgt i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, -1
  store i64 %13, i64* %11, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %17 = call i32 @vlc_object_instance(%struct.TYPE_8__* %16)
  %18 = call %struct.TYPE_9__* @libvlc_priv(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %22 = icmp eq %struct.TYPE_8__* %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  br label %26

25:                                               ; preds = %1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %26

26:                                               ; preds = %25, %15
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %28 = icmp eq %struct.TYPE_8__* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32 @vlc_mutex_unlock(i32* @vlm_mutex)
  br label %101

31:                                               ; preds = %26
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  %34 = call i32 @vlc_mutex_lock(i32* %33)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %36 = load i32, i32* @VLM_CLEAR_MEDIAS, align 4
  %37 = call i32 @vlm_ControlInternal(%struct.TYPE_8__* %35, i32 %36)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 10
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 9
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @TAB_CLEAN(i32 %40, i32 %43)
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %46 = load i32, i32* @VLM_CLEAR_SCHEDULES, align 4
  %47 = call i32 @vlm_ControlInternal(%struct.TYPE_8__* %45, i32 %46)
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 8
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @TAB_CLEAN(i32 %50, i32 %53)
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  %57 = call i32 @vlc_mutex_unlock(i32* %56)
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @vlc_cancel(i32 %60)
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 5
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = icmp ne %struct.TYPE_8__* %64, null
  br i1 %65, label %66, label %80

66:                                               ; preds = %31
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 5
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 5
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @module_unneed(%struct.TYPE_8__* %69, i32 %74)
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 5
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = call i32 @vlc_object_delete(%struct.TYPE_8__* %78)
  br label %80

80:                                               ; preds = %66, %31
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %82 = call i32 @vlc_object_instance(%struct.TYPE_8__* %81)
  %83 = call %struct.TYPE_9__* @libvlc_priv(i32 %82)
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %84, align 8
  %85 = call i32 @vlc_mutex_unlock(i32* @vlm_mutex)
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @vlc_join(i32 %88, i32* null)
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 3
  %92 = call i32 @vlc_cond_destroy(i32* %91)
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 2
  %95 = call i32 @vlc_mutex_destroy(i32* %94)
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = call i32 @vlc_mutex_destroy(i32* %97)
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %100 = call i32 @vlc_object_delete(%struct.TYPE_8__* %99)
  br label %101

101:                                              ; preds = %80, %29
  ret void
}

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_9__* @libvlc_priv(i32) #1

declare dso_local i32 @vlc_object_instance(%struct.TYPE_8__*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @vlm_ControlInternal(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @TAB_CLEAN(i32, i32) #1

declare dso_local i32 @vlc_cancel(i32) #1

declare dso_local i32 @module_unneed(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @vlc_object_delete(%struct.TYPE_8__*) #1

declare dso_local i32 @vlc_join(i32, i32*) #1

declare dso_local i32 @vlc_cond_destroy(i32*) #1

declare dso_local i32 @vlc_mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
