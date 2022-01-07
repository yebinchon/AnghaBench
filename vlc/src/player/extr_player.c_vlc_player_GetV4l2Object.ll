; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_player.c_vlc_player_GetV4l2Object.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_player.c_vlc_player_GetV4l2Object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_player_input = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"controls\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @vlc_player_GetV4l2Object(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.vlc_player_input*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call %struct.vlc_player_input* @vlc_player_get_input_locked(i32* %4)
  store %struct.vlc_player_input* %5, %struct.vlc_player_input** %3, align 8
  %6 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %7 = icmp ne %struct.vlc_player_input* %6, null
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %10 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i64 @var_Type(i64 %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %16 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i32*
  br label %20

19:                                               ; preds = %8, %1
  br label %20

20:                                               ; preds = %19, %14
  %21 = phi i32* [ %18, %14 ], [ null, %19 ]
  ret i32* %21
}

declare dso_local %struct.vlc_player_input* @vlc_player_get_input_locked(i32*) #1

declare dso_local i64 @var_Type(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
