; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_timer.c_vlc_player_UpdateSmpteTimerFPS.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_timer.c_vlc_player_UpdateSmpteTimerFPS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_player_timer_source = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.vlc_player_timer_source*, i32, i32)* @vlc_player_UpdateSmpteTimerFPS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlc_player_UpdateSmpteTimerFPS(i32* %0, %struct.vlc_player_timer_source* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.vlc_player_timer_source*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.vlc_player_timer_source* %1, %struct.vlc_player_timer_source** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.vlc_player_timer_source*, %struct.vlc_player_timer_source** %6, align 8
  %13 = getelementptr inbounds %struct.vlc_player_timer_source, %struct.vlc_player_timer_source* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.vlc_player_timer_source*, %struct.vlc_player_timer_source** %6, align 8
  %17 = getelementptr inbounds %struct.vlc_player_timer_source, %struct.vlc_player_timer_source* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store i32 %15, i32* %18, align 4
  %19 = load %struct.vlc_player_timer_source*, %struct.vlc_player_timer_source** %6, align 8
  %20 = getelementptr inbounds %struct.vlc_player_timer_source, %struct.vlc_player_timer_source* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 5
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = udiv i32 %22, %23
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp eq i32 %25, 29
  br i1 %26, label %27, label %43

27:                                               ; preds = %4
  %28 = load i32, i32* %7, align 4
  %29 = mul i32 100, %28
  %30 = load i32, i32* %8, align 4
  %31 = udiv i32 %29, %30
  %32 = icmp eq i32 %31, 2997
  br i1 %32, label %33, label %43

33:                                               ; preds = %27
  %34 = load %struct.vlc_player_timer_source*, %struct.vlc_player_timer_source** %6, align 8
  %35 = getelementptr inbounds %struct.vlc_player_timer_source, %struct.vlc_player_timer_source* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  store i32 2, i32* %36, align 8
  %37 = load %struct.vlc_player_timer_source*, %struct.vlc_player_timer_source** %6, align 8
  %38 = getelementptr inbounds %struct.vlc_player_timer_source, %struct.vlc_player_timer_source* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  store i32 30, i32* %39, align 4
  %40 = load %struct.vlc_player_timer_source*, %struct.vlc_player_timer_source** %6, align 8
  %41 = getelementptr inbounds %struct.vlc_player_timer_source, %struct.vlc_player_timer_source* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 4
  store i32 17982, i32* %42, align 8
  br label %67

43:                                               ; preds = %27, %4
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %44, 59
  br i1 %45, label %46, label %62

46:                                               ; preds = %43
  %47 = load i32, i32* %7, align 4
  %48 = mul i32 100, %47
  %49 = load i32, i32* %8, align 4
  %50 = udiv i32 %48, %49
  %51 = icmp eq i32 %50, 5994
  br i1 %51, label %52, label %62

52:                                               ; preds = %46
  %53 = load %struct.vlc_player_timer_source*, %struct.vlc_player_timer_source** %6, align 8
  %54 = getelementptr inbounds %struct.vlc_player_timer_source, %struct.vlc_player_timer_source* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  store i32 4, i32* %55, align 8
  %56 = load %struct.vlc_player_timer_source*, %struct.vlc_player_timer_source** %6, align 8
  %57 = getelementptr inbounds %struct.vlc_player_timer_source, %struct.vlc_player_timer_source* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 3
  store i32 60, i32* %58, align 4
  %59 = load %struct.vlc_player_timer_source*, %struct.vlc_player_timer_source** %6, align 8
  %60 = getelementptr inbounds %struct.vlc_player_timer_source, %struct.vlc_player_timer_source* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 4
  store i32 35964, i32* %61, align 8
  br label %66

62:                                               ; preds = %46, %43
  %63 = load %struct.vlc_player_timer_source*, %struct.vlc_player_timer_source** %6, align 8
  %64 = getelementptr inbounds %struct.vlc_player_timer_source, %struct.vlc_player_timer_source* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  store i32 0, i32* %65, align 8
  br label %66

66:                                               ; preds = %62, %52
  br label %67

67:                                               ; preds = %66, %33
  br label %68

68:                                               ; preds = %71, %67
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = load i32, i32* %9, align 4
  %73 = udiv i32 %72, 10
  store i32 %73, i32* %9, align 4
  %74 = load %struct.vlc_player_timer_source*, %struct.vlc_player_timer_source** %6, align 8
  %75 = getelementptr inbounds %struct.vlc_player_timer_source, %struct.vlc_player_timer_source* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* %76, align 8
  br label %68

79:                                               ; preds = %68
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
