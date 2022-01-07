; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_player.c_vlc_player_Delete.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_player.c_vlc_player_Delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i32, i64, i64, %struct.TYPE_10__, i32, i32, i32, i32, i64 }
%struct.TYPE_10__ = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"corks\00", align 1
@vlc_player_CorkCallback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlc_player_Delete(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %3 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 6
  %5 = call i32 @vlc_mutex_lock(i32* %4)
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 10
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 10
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @vlc_player_destructor_AddInput(%struct.TYPE_11__* %11, i64 %14)
  br label %16

16:                                               ; preds = %10, %1
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = call i32 @vlc_cond_signal(i32* %21)
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 9
  %25 = call i32 @vlc_list_is_empty(i32* %24)
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 8
  %29 = call i32 @vlc_list_is_empty(i32* %28)
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 7
  %33 = call i32 @vlc_list_is_empty(i32* %32)
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 6
  %37 = call i32 @vlc_mutex_unlock(i32* %36)
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 5
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @vlc_join(i32 %41, i32* null)
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %16
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @input_item_Release(i64 %50)
  br label %52

52:                                               ; preds = %47, %16
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @input_item_Release(i64 %60)
  br label %62

62:                                               ; preds = %57, %52
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %64 = call i32 @vlc_player_DestroyLocks(%struct.TYPE_11__* %63)
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %66 = call i32 @vlc_player_DestroyTimer(%struct.TYPE_11__* %65)
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %68 = call i32 @vlc_player_aout_DelCallbacks(%struct.TYPE_11__* %67)
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %70 = load i32, i32* @vlc_player_CorkCallback, align 4
  %71 = call i32 @var_DelCallback(%struct.TYPE_11__* %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %70, i32* null)
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @input_resource_Release(i32 %74)
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %62
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @vlc_renderer_item_release(i64 %83)
  br label %85

85:                                               ; preds = %80, %62
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %87 = call i32 @vlc_object_delete(%struct.TYPE_11__* %86)
  ret void
}

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_player_destructor_AddInput(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @vlc_cond_signal(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_list_is_empty(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @vlc_join(i32, i32*) #1

declare dso_local i32 @input_item_Release(i64) #1

declare dso_local i32 @vlc_player_DestroyLocks(%struct.TYPE_11__*) #1

declare dso_local i32 @vlc_player_DestroyTimer(%struct.TYPE_11__*) #1

declare dso_local i32 @vlc_player_aout_DelCallbacks(%struct.TYPE_11__*) #1

declare dso_local i32 @var_DelCallback(%struct.TYPE_11__*, i8*, i32, i32*) #1

declare dso_local i32 @input_resource_Release(i32) #1

declare dso_local i32 @vlc_renderer_item_release(i64) #1

declare dso_local i32 @vlc_object_delete(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
