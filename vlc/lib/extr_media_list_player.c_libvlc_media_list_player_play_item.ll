; ModuleID = '/home/carl/AnghaBench/vlc/lib/extr_media_list_player.c_libvlc_media_list_player_play_item.c'
source_filename = "/home/carl/AnghaBench/vlc/lib/extr_media_list_player.c_libvlc_media_list_player_play_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Item not found in media list\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libvlc_media_list_player_play_item(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = call i32 @lock(%struct.TYPE_6__* %7)
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @libvlc_media_list_path_of_item(i32 %11, i32* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = call i32 @libvlc_printerr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = call i32 @unlock(%struct.TYPE_6__* %18)
  store i32 -1, i32* %3, align 4
  br label %30

20:                                               ; preds = %2
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @set_current_playing_item(%struct.TYPE_6__* %21, i32 %22)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @libvlc_media_player_play(i32 %26)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = call i32 @unlock(%struct.TYPE_6__* %28)
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %20, %16
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @lock(%struct.TYPE_6__*) #1

declare dso_local i32 @libvlc_media_list_path_of_item(i32, i32*) #1

declare dso_local i32 @libvlc_printerr(i8*) #1

declare dso_local i32 @unlock(%struct.TYPE_6__*) #1

declare dso_local i32 @set_current_playing_item(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @libvlc_media_player_play(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
