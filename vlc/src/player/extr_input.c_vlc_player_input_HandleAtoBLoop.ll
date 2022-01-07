; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_input.c_vlc_player_input_HandleAtoBLoop.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_input.c_vlc_player_input_HandleAtoBLoop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_player_input = type { %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i64, float, i64 }
%struct.TYPE_6__ = type { %struct.vlc_player_input* }

@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vlc_player_input*, i64, float)* @vlc_player_input_HandleAtoBLoop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlc_player_input_HandleAtoBLoop(%struct.vlc_player_input* %0, i64 %1, float %2) #0 {
  %4 = alloca %struct.vlc_player_input*, align 8
  %5 = alloca i64, align 8
  %6 = alloca float, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  store %struct.vlc_player_input* %0, %struct.vlc_player_input** %4, align 8
  store i64 %1, i64* %5, align 8
  store float %2, float* %6, align 4
  %8 = load %struct.vlc_player_input*, %struct.vlc_player_input** %4, align 8
  %9 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %8, i32 0, i32 1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %7, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.vlc_player_input*, %struct.vlc_player_input** %12, align 8
  %14 = load %struct.vlc_player_input*, %struct.vlc_player_input** %4, align 8
  %15 = icmp ne %struct.vlc_player_input* %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %96

17:                                               ; preds = %3
  %18 = load %struct.vlc_player_input*, %struct.vlc_player_input** %4, align 8
  %19 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %17
  %26 = load %struct.vlc_player_input*, %struct.vlc_player_input** %4, align 8
  %27 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %25, %17
  %34 = phi i1 [ false, %17 ], [ %32, %25 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @VLC_TICK_INVALID, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %77

40:                                               ; preds = %33
  %41 = load %struct.vlc_player_input*, %struct.vlc_player_input** %4, align 8
  %42 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @VLC_TICK_INVALID, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %77

49:                                               ; preds = %40
  %50 = load %struct.vlc_player_input*, %struct.vlc_player_input** %4, align 8
  %51 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i64 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @VLC_TICK_INVALID, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %77

58:                                               ; preds = %49
  %59 = load i64, i64* %5, align 8
  %60 = load %struct.vlc_player_input*, %struct.vlc_player_input** %4, align 8
  %61 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %60, i32 0, i32 0
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i64 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sge i64 %59, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %58
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %69 = load %struct.vlc_player_input*, %struct.vlc_player_input** %4, align 8
  %70 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %69, i32 0, i32 0
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @vlc_player_SetTime(%struct.TYPE_6__* %68, i64 %74)
  br label %76

76:                                               ; preds = %67, %58
  br label %96

77:                                               ; preds = %49, %40, %33
  %78 = load float, float* %6, align 4
  %79 = load %struct.vlc_player_input*, %struct.vlc_player_input** %4, align 8
  %80 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %79, i32 0, i32 0
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i64 1
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load float, float* %83, align 8
  %85 = fcmp oge float %78, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %77
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %88 = load %struct.vlc_player_input*, %struct.vlc_player_input** %4, align 8
  %89 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %88, i32 0, i32 0
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i64 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load float, float* %92, align 8
  %94 = call i32 @vlc_player_SetPosition(%struct.TYPE_6__* %87, float %93)
  br label %95

95:                                               ; preds = %86, %77
  br label %96

96:                                               ; preds = %16, %95, %76
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_player_SetTime(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @vlc_player_SetPosition(%struct.TYPE_6__*, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
