; ModuleID = '/home/carl/AnghaBench/vlc/lib/extr_video.c_libvlc_video_set_teletext.c'
source_filename = "/home/carl/AnghaBench/vlc/lib/extr_video.c_libvlc_video_set_teletext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@libvlc_teletext_key_red = common dso_local global i32 0, align 4
@libvlc_teletext_key_green = common dso_local global i32 0, align 4
@libvlc_teletext_key_yellow = common dso_local global i32 0, align 4
@libvlc_teletext_key_blue = common dso_local global i32 0, align 4
@libvlc_teletext_key_index = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Invalid key action\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Invalid page number\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @libvlc_video_set_teletext(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @vlc_player_Lock(i32* %10)
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @vlc_player_SetTeletextEnabled(i32* %15, i32 0)
  br label %60

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %57

20:                                               ; preds = %17
  %21 = load i32, i32* %4, align 4
  %22 = icmp sge i32 %21, 1000
  br i1 %22, label %23, label %51

23:                                               ; preds = %20
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @libvlc_teletext_key_red, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %43, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @libvlc_teletext_key_green, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %43, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @libvlc_teletext_key_yellow, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %43, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @libvlc_teletext_key_blue, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @libvlc_teletext_key_index, align 4
  %42 = icmp eq i32 %40, %41
  br label %43

43:                                               ; preds = %39, %35, %31, %27, %23
  %44 = phi i1 [ true, %35 ], [ true, %31 ], [ true, %27 ], [ true, %23 ], [ %42, %39 ]
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  %49 = call i32 @libvlc_printerr(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %63

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50, %20
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @vlc_player_SetTeletextEnabled(i32* %52, i32 1)
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @vlc_player_SelectTeletextPage(i32* %54, i32 %55)
  br label %59

57:                                               ; preds = %17
  %58 = call i32 @libvlc_printerr(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %63

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59, %14
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @vlc_player_Unlock(i32* %61)
  br label %63

63:                                               ; preds = %60, %57, %48
  ret void
}

declare dso_local i32 @vlc_player_Lock(i32*) #1

declare dso_local i32 @vlc_player_SetTeletextEnabled(i32*, i32) #1

declare dso_local i32 @libvlc_printerr(i8*) #1

declare dso_local i32 @vlc_player_SelectTeletextPage(i32*, i32) #1

declare dso_local i32 @vlc_player_Unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
