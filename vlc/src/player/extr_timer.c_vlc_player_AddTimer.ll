; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_timer.c_vlc_player_AddTimer.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_timer.c_vlc_player_AddTimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_player_timer_id = type { i32, i8*, %struct.vlc_player_timer_cbs*, i64, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.vlc_player_timer_cbs = type { i64 }

@VLC_TICK_0 = common dso_local global i64 0, align 8
@VLC_TICK_INVALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vlc_player_timer_id* @vlc_player_AddTimer(%struct.TYPE_7__* %0, i64 %1, %struct.vlc_player_timer_cbs* %2, i8* %3) #0 {
  %5 = alloca %struct.vlc_player_timer_id*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.vlc_player_timer_cbs*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.vlc_player_timer_id*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.vlc_player_timer_cbs* %2, %struct.vlc_player_timer_cbs** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* @VLC_TICK_0, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %4
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @VLC_TICK_INVALID, align 8
  %17 = icmp eq i64 %15, %16
  br label %18

18:                                               ; preds = %14, %4
  %19 = phi i1 [ true, %4 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.vlc_player_timer_cbs*, %struct.vlc_player_timer_cbs** %8, align 8
  %23 = icmp ne %struct.vlc_player_timer_cbs* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load %struct.vlc_player_timer_cbs*, %struct.vlc_player_timer_cbs** %8, align 8
  %26 = getelementptr inbounds %struct.vlc_player_timer_cbs, %struct.vlc_player_timer_cbs* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %24, %18
  %30 = phi i1 [ false, %18 ], [ %28, %24 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = call %struct.vlc_player_timer_id* @malloc(i32 40)
  store %struct.vlc_player_timer_id* %33, %struct.vlc_player_timer_id** %10, align 8
  %34 = load %struct.vlc_player_timer_id*, %struct.vlc_player_timer_id** %10, align 8
  %35 = icmp ne %struct.vlc_player_timer_id* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  store %struct.vlc_player_timer_id* null, %struct.vlc_player_timer_id** %5, align 8
  br label %66

37:                                               ; preds = %29
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.vlc_player_timer_id*, %struct.vlc_player_timer_id** %10, align 8
  %40 = getelementptr inbounds %struct.vlc_player_timer_id, %struct.vlc_player_timer_id* %39, i32 0, i32 4
  store i64 %38, i64* %40, align 8
  %41 = load i64, i64* @VLC_TICK_INVALID, align 8
  %42 = load %struct.vlc_player_timer_id*, %struct.vlc_player_timer_id** %10, align 8
  %43 = getelementptr inbounds %struct.vlc_player_timer_id, %struct.vlc_player_timer_id* %42, i32 0, i32 3
  store i64 %41, i64* %43, align 8
  %44 = load %struct.vlc_player_timer_cbs*, %struct.vlc_player_timer_cbs** %8, align 8
  %45 = load %struct.vlc_player_timer_id*, %struct.vlc_player_timer_id** %10, align 8
  %46 = getelementptr inbounds %struct.vlc_player_timer_id, %struct.vlc_player_timer_id* %45, i32 0, i32 2
  store %struct.vlc_player_timer_cbs* %44, %struct.vlc_player_timer_cbs** %46, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = load %struct.vlc_player_timer_id*, %struct.vlc_player_timer_id** %10, align 8
  %49 = getelementptr inbounds %struct.vlc_player_timer_id, %struct.vlc_player_timer_id* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = call i32 @vlc_mutex_lock(i32* %52)
  %54 = load %struct.vlc_player_timer_id*, %struct.vlc_player_timer_id** %10, align 8
  %55 = getelementptr inbounds %struct.vlc_player_timer_id, %struct.vlc_player_timer_id* %54, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = call i32 @vlc_list_append(i32* %55, i32* %59)
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = call i32 @vlc_mutex_unlock(i32* %63)
  %65 = load %struct.vlc_player_timer_id*, %struct.vlc_player_timer_id** %10, align 8
  store %struct.vlc_player_timer_id* %65, %struct.vlc_player_timer_id** %5, align 8
  br label %66

66:                                               ; preds = %37, %36
  %67 = load %struct.vlc_player_timer_id*, %struct.vlc_player_timer_id** %5, align 8
  ret %struct.vlc_player_timer_id* %67
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
