; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_timer.c_vlc_player_UpdateTimerSource.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_timer.c_vlc_player_UpdateTimerSource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i64 }
%struct.vlc_player_timer_source = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { double, i64, i64, i64, i64 }

@VLC_TICK_0 = common dso_local global i64 0, align 8
@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@INT64_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.vlc_player_timer_source*, double, i64, i64)* @vlc_player_UpdateTimerSource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlc_player_UpdateTimerSource(%struct.TYPE_7__* %0, %struct.vlc_player_timer_source* %1, double %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.vlc_player_timer_source*, align 8
  %8 = alloca double, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store %struct.vlc_player_timer_source* %1, %struct.vlc_player_timer_source** %7, align 8
  store double %2, double* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load i64, i64* %9, align 8
  %12 = load i64, i64* @VLC_TICK_0, align 8
  %13 = icmp sge i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @VLC_TICK_0, align 8
  %21 = icmp sge i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load double, double* %8, align 8
  %25 = load %struct.vlc_player_timer_source*, %struct.vlc_player_timer_source** %7, align 8
  %26 = getelementptr inbounds %struct.vlc_player_timer_source, %struct.vlc_player_timer_source* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store double %24, double* %27, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %28, %32
  %34 = load i64, i64* @VLC_TICK_0, align 8
  %35 = add nsw i64 %33, %34
  %36 = load %struct.vlc_player_timer_source*, %struct.vlc_player_timer_source** %7, align 8
  %37 = getelementptr inbounds %struct.vlc_player_timer_source, %struct.vlc_player_timer_source* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 4
  store i64 %35, i64* %38, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.vlc_player_timer_source*, %struct.vlc_player_timer_source** %7, align 8
  %44 = getelementptr inbounds %struct.vlc_player_timer_source, %struct.vlc_player_timer_source* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  store i64 %42, i64* %45, align 8
  %46 = load %struct.vlc_player_timer_source*, %struct.vlc_player_timer_source** %7, align 8
  %47 = getelementptr inbounds %struct.vlc_player_timer_source, %struct.vlc_player_timer_source* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @VLC_TICK_INVALID, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %5
  %53 = load i64, i64* @INT64_MAX, align 8
  %54 = load %struct.vlc_player_timer_source*, %struct.vlc_player_timer_source** %7, align 8
  %55 = getelementptr inbounds %struct.vlc_player_timer_source, %struct.vlc_player_timer_source* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  store i64 %53, i64* %56, align 8
  br label %62

57:                                               ; preds = %5
  %58 = load i64, i64* %10, align 8
  %59 = load %struct.vlc_player_timer_source*, %struct.vlc_player_timer_source** %7, align 8
  %60 = getelementptr inbounds %struct.vlc_player_timer_source, %struct.vlc_player_timer_source* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  store i64 %58, i64* %61, align 8
  br label %62

62:                                               ; preds = %57, %52
  %63 = load %struct.vlc_player_timer_source*, %struct.vlc_player_timer_source** %7, align 8
  %64 = getelementptr inbounds %struct.vlc_player_timer_source, %struct.vlc_player_timer_source* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @VLC_TICK_INVALID, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %87

69:                                               ; preds = %62
  %70 = load i64, i64* %9, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = sub nsw i64 %70, %74
  %76 = sitofp i64 %75 to double
  %77 = load %struct.vlc_player_timer_source*, %struct.vlc_player_timer_source** %7, align 8
  %78 = getelementptr inbounds %struct.vlc_player_timer_source, %struct.vlc_player_timer_source* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = sitofp i64 %80 to double
  %82 = fdiv double %76, %81
  %83 = fptosi double %82 to i64
  %84 = load %struct.vlc_player_timer_source*, %struct.vlc_player_timer_source** %7, align 8
  %85 = getelementptr inbounds %struct.vlc_player_timer_source, %struct.vlc_player_timer_source* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 3
  store i64 %83, i64* %86, align 8
  br label %95

87:                                               ; preds = %62
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.vlc_player_timer_source*, %struct.vlc_player_timer_source** %7, align 8
  %93 = getelementptr inbounds %struct.vlc_player_timer_source, %struct.vlc_player_timer_source* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 3
  store i64 %91, i64* %94, align 8
  br label %95

95:                                               ; preds = %87, %69
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
