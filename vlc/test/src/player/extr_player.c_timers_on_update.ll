; ModuleID = '/home/carl/AnghaBench/vlc/test/src/player/extr_player.c_timers_on_update.c'
source_filename = "/home/carl/AnghaBench/vlc/test/src/player/extr_player.c_timers_on_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_player_timer_point = type { i32 }
%struct.timer_state = type { i32 }
%struct.report_timer = type { %struct.vlc_player_timer_point, i32 }

@REPORT_TIMER_POINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vlc_player_timer_point*, i8*)* @timers_on_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timers_on_update(%struct.vlc_player_timer_point* %0, i8* %1) #0 {
  %3 = alloca %struct.vlc_player_timer_point*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.timer_state*, align 8
  %6 = alloca %struct.report_timer, align 4
  %7 = alloca i32, align 4
  store %struct.vlc_player_timer_point* %0, %struct.vlc_player_timer_point** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.timer_state*
  store %struct.timer_state* %9, %struct.timer_state** %5, align 8
  %10 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %6, i32 0, i32 0
  %11 = load %struct.vlc_player_timer_point*, %struct.vlc_player_timer_point** %3, align 8
  %12 = bitcast %struct.vlc_player_timer_point* %10 to i8*
  %13 = bitcast %struct.vlc_player_timer_point* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 4, i1 false)
  %14 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %6, i32 0, i32 1
  %15 = load i32, i32* @REPORT_TIMER_POINT, align 4
  store i32 %15, i32* %14, align 4
  %16 = load %struct.timer_state*, %struct.timer_state** %5, align 8
  %17 = getelementptr inbounds %struct.timer_state, %struct.timer_state* %16, i32 0, i32 0
  %18 = bitcast %struct.report_timer* %6 to i64*
  %19 = load i64, i64* %18, align 4
  %20 = call i32 @vlc_vector_push(i32* %17, i64 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @assert(i32 %21)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @vlc_vector_push(i32*, i64) #2

declare dso_local i32 @assert(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
