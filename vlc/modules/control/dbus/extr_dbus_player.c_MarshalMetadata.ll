; ModuleID = '/home/carl/AnghaBench/vlc/modules/control/dbus/extr_dbus_player.c_MarshalMetadata.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/control/dbus/extr_dbus_player.c_MarshalMetadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@DBUS_TYPE_ARRAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"{sv}\00", align 1
@VLC_ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*)* @MarshalMetadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MarshalMetadata(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @vlc_playlist_Lock(i32* %16)
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @vlc_playlist_GetCurrentIndex(i32* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %30

22:                                               ; preds = %2
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32* @vlc_playlist_Get(i32* %23, i32 %24)
  store i32* %25, i32** %8, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @GetInputMeta(i32* %26, i32* %27, i32* %28)
  store i32 %29, i32* %5, align 4
  br label %42

30:                                               ; preds = %2
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* @DBUS_TYPE_ARRAY, align 4
  %33 = call i32 @dbus_message_iter_open_container(i32* %31, i32 %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %9)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @dbus_message_iter_close_container(i32* %36, i32* %9)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35, %30
  %40 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %39, %35
  br label %42

42:                                               ; preds = %41, %22
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @vlc_playlist_Unlock(i32* %43)
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @vlc_playlist_Lock(i32*) #1

declare dso_local i32 @vlc_playlist_GetCurrentIndex(i32*) #1

declare dso_local i32* @vlc_playlist_Get(i32*, i32) #1

declare dso_local i32 @GetInputMeta(i32*, i32*, i32*) #1

declare dso_local i32 @dbus_message_iter_open_container(i32*, i32, i8*, i32*) #1

declare dso_local i32 @dbus_message_iter_close_container(i32*, i32*) #1

declare dso_local i32 @vlc_playlist_Unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
