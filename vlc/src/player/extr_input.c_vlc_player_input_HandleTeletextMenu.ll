; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_input.c_vlc_player_input_HandleTeletextMenu.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_input.c_vlc_player_input_HandleTeletextMenu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_player_input = type { i32, %struct.TYPE_5__*, i32* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.vlc_input_event_es = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [68 x i8] c"Can't handle more than one teletext menu track. Using the last one.\00", align 1
@on_teletext_menu_changed = common dso_local global i32 0, align 4
@on_teletext_enabled_changed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vlc_player_input*, %struct.vlc_input_event_es*)* @vlc_player_input_HandleTeletextMenu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlc_player_input_HandleTeletextMenu(%struct.vlc_player_input* %0, %struct.vlc_input_event_es* %1) #0 {
  %3 = alloca %struct.vlc_player_input*, align 8
  %4 = alloca %struct.vlc_input_event_es*, align 8
  %5 = alloca i32*, align 8
  store %struct.vlc_player_input* %0, %struct.vlc_player_input** %3, align 8
  store %struct.vlc_input_event_es* %1, %struct.vlc_input_event_es** %4, align 8
  %6 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %7 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %6, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  store i32* %8, i32** %5, align 8
  %9 = load %struct.vlc_input_event_es*, %struct.vlc_input_event_es** %4, align 8
  %10 = getelementptr inbounds %struct.vlc_input_event_es, %struct.vlc_input_event_es* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %107 [
    i32 132, label %12
    i32 131, label %46
    i32 128, label %80
    i32 130, label %81
    i32 129, label %81
  ]

12:                                               ; preds = %2
  %13 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %14 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = icmp ne %struct.TYPE_5__* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @msg_Warn(i32* %18, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %21 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = call i32 @vlc_player_track_priv_Delete(%struct.TYPE_5__* %22)
  br label %24

24:                                               ; preds = %17, %12
  %25 = load %struct.vlc_input_event_es*, %struct.vlc_input_event_es** %4, align 8
  %26 = getelementptr inbounds %struct.vlc_input_event_es, %struct.vlc_input_event_es* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.vlc_input_event_es*, %struct.vlc_input_event_es** %4, align 8
  %29 = getelementptr inbounds %struct.vlc_input_event_es, %struct.vlc_input_event_es* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.vlc_input_event_es*, %struct.vlc_input_event_es** %4, align 8
  %32 = getelementptr inbounds %struct.vlc_input_event_es, %struct.vlc_input_event_es* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.TYPE_5__* @vlc_player_track_priv_New(i32 %27, i32 %30, i32 %33)
  %35 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %36 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %35, i32 0, i32 1
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** %36, align 8
  %37 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %38 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = icmp ne %struct.TYPE_5__* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %24
  br label %109

42:                                               ; preds = %24
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* @on_teletext_menu_changed, align 4
  %45 = call i32 @vlc_player_SendEvent(i32* %43, i32 %44, i32 1)
  br label %109

46:                                               ; preds = %2
  %47 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %48 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %47, i32 0, i32 1
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = icmp ne %struct.TYPE_5__* %49, null
  br i1 %50, label %51, label %79

51:                                               ; preds = %46
  %52 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %53 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %52, i32 0, i32 1
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.vlc_input_event_es*, %struct.vlc_input_event_es** %4, align 8
  %59 = getelementptr inbounds %struct.vlc_input_event_es, %struct.vlc_input_event_es* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %57, %60
  br i1 %61, label %62, label %79

62:                                               ; preds = %51
  %63 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %64 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %71 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %70, i32 0, i32 1
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = call i32 @vlc_player_track_priv_Delete(%struct.TYPE_5__* %72)
  %74 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %75 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %74, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %75, align 8
  %76 = load i32*, i32** %5, align 8
  %77 = load i32, i32* @on_teletext_menu_changed, align 4
  %78 = call i32 @vlc_player_SendEvent(i32* %76, i32 %77, i32 0)
  br label %79

79:                                               ; preds = %62, %51, %46
  br label %109

80:                                               ; preds = %2
  br label %109

81:                                               ; preds = %2, %2
  %82 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %83 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %82, i32 0, i32 1
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.vlc_input_event_es*, %struct.vlc_input_event_es** %4, align 8
  %89 = getelementptr inbounds %struct.vlc_input_event_es, %struct.vlc_input_event_es* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %87, %90
  br i1 %91, label %92, label %106

92:                                               ; preds = %81
  %93 = load %struct.vlc_input_event_es*, %struct.vlc_input_event_es** %4, align 8
  %94 = getelementptr inbounds %struct.vlc_input_event_es, %struct.vlc_input_event_es* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 130
  %97 = zext i1 %96 to i32
  %98 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %99 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load i32*, i32** %5, align 8
  %101 = load i32, i32* @on_teletext_enabled_changed, align 4
  %102 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %103 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @vlc_player_SendEvent(i32* %100, i32 %101, i32 %104)
  br label %106

106:                                              ; preds = %92, %81
  br label %109

107:                                              ; preds = %2
  %108 = call i32 (...) @vlc_assert_unreachable()
  br label %109

109:                                              ; preds = %41, %107, %106, %80, %79, %42
  ret void
}

declare dso_local i32 @msg_Warn(i32*, i8*) #1

declare dso_local i32 @vlc_player_track_priv_Delete(%struct.TYPE_5__*) #1

declare dso_local %struct.TYPE_5__* @vlc_player_track_priv_New(i32, i32, i32) #1

declare dso_local i32 @vlc_player_SendEvent(i32*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_assert_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
