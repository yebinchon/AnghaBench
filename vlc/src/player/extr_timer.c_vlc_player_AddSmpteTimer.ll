; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_timer.c_vlc_player_AddSmpteTimer.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_timer.c_vlc_player_AddSmpteTimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_player_timer_id = type { i32, i8*, %struct.vlc_player_timer_smpte_cbs*, i8*, i8* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.vlc_player_timer_smpte_cbs = type { i64 }

@VLC_TICK_INVALID = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vlc_player_timer_id* @vlc_player_AddSmpteTimer(%struct.TYPE_7__* %0, %struct.vlc_player_timer_smpte_cbs* %1, i8* %2) #0 {
  %4 = alloca %struct.vlc_player_timer_id*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.vlc_player_timer_smpte_cbs*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.vlc_player_timer_id*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.vlc_player_timer_smpte_cbs* %1, %struct.vlc_player_timer_smpte_cbs** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.vlc_player_timer_smpte_cbs*, %struct.vlc_player_timer_smpte_cbs** %6, align 8
  %10 = icmp ne %struct.vlc_player_timer_smpte_cbs* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load %struct.vlc_player_timer_smpte_cbs*, %struct.vlc_player_timer_smpte_cbs** %6, align 8
  %13 = getelementptr inbounds %struct.vlc_player_timer_smpte_cbs, %struct.vlc_player_timer_smpte_cbs* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br label %16

16:                                               ; preds = %11, %3
  %17 = phi i1 [ false, %3 ], [ %15, %11 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = call %struct.vlc_player_timer_id* @malloc(i32 40)
  store %struct.vlc_player_timer_id* %20, %struct.vlc_player_timer_id** %8, align 8
  %21 = load %struct.vlc_player_timer_id*, %struct.vlc_player_timer_id** %8, align 8
  %22 = icmp ne %struct.vlc_player_timer_id* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  store %struct.vlc_player_timer_id* null, %struct.vlc_player_timer_id** %4, align 8
  br label %53

24:                                               ; preds = %16
  %25 = load i8*, i8** @VLC_TICK_INVALID, align 8
  %26 = load %struct.vlc_player_timer_id*, %struct.vlc_player_timer_id** %8, align 8
  %27 = getelementptr inbounds %struct.vlc_player_timer_id, %struct.vlc_player_timer_id* %26, i32 0, i32 4
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** @VLC_TICK_INVALID, align 8
  %29 = load %struct.vlc_player_timer_id*, %struct.vlc_player_timer_id** %8, align 8
  %30 = getelementptr inbounds %struct.vlc_player_timer_id, %struct.vlc_player_timer_id* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = load %struct.vlc_player_timer_smpte_cbs*, %struct.vlc_player_timer_smpte_cbs** %6, align 8
  %32 = load %struct.vlc_player_timer_id*, %struct.vlc_player_timer_id** %8, align 8
  %33 = getelementptr inbounds %struct.vlc_player_timer_id, %struct.vlc_player_timer_id* %32, i32 0, i32 2
  store %struct.vlc_player_timer_smpte_cbs* %31, %struct.vlc_player_timer_smpte_cbs** %33, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load %struct.vlc_player_timer_id*, %struct.vlc_player_timer_id** %8, align 8
  %36 = getelementptr inbounds %struct.vlc_player_timer_id, %struct.vlc_player_timer_id* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = call i32 @vlc_mutex_lock(i32* %39)
  %41 = load %struct.vlc_player_timer_id*, %struct.vlc_player_timer_id** %8, align 8
  %42 = getelementptr inbounds %struct.vlc_player_timer_id, %struct.vlc_player_timer_id* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = call i32 @vlc_list_append(i32* %42, i32* %46)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = call i32 @vlc_mutex_unlock(i32* %50)
  %52 = load %struct.vlc_player_timer_id*, %struct.vlc_player_timer_id** %8, align 8
  store %struct.vlc_player_timer_id* %52, %struct.vlc_player_timer_id** %4, align 8
  br label %53

53:                                               ; preds = %24, %23
  %54 = load %struct.vlc_player_timer_id*, %struct.vlc_player_timer_id** %4, align 8
  ret %struct.vlc_player_timer_id* %54
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.vlc_player_timer_id* @malloc(i32) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_list_append(i32*, i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
