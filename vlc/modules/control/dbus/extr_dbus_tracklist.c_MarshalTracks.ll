; ModuleID = '/home/carl/AnghaBench/vlc/modules/control/dbus/extr_dbus_tracklist.c_MarshalTracks.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/control/dbus/extr_dbus_tracklist.c_MarshalTracks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@DBUS_TYPE_ARRAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"o\00", align 1
@MPRIS_TRACKID_FORMAT = common dso_local global i32 0, align 4
@DBUS_TYPE_OBJECT_PATH = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*)* @MarshalTracks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MarshalTracks(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* null, i8** %7, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* @DBUS_TYPE_ARRAY, align 4
  %18 = call i32 @dbus_message_iter_open_container(i32* %16, i32 %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %6)
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @vlc_playlist_Lock(i32* %19)
  %21 = load i32*, i32** %8, align 8
  %22 = call i64 @vlc_playlist_Count(i32* %21)
  store i64 %22, i64* %9, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @vlc_playlist_Unlock(i32* %23)
  store i64 0, i64* %10, align 8
  br label %25

25:                                               ; preds = %45, %2
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* %9, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %25
  %30 = load i32, i32* @MPRIS_TRACKID_FORMAT, align 4
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @asprintf(i8** %7, i32 %30, i64 %31)
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @DBUS_TYPE_OBJECT_PATH, align 4
  %36 = call i32 @dbus_message_iter_append_basic(i32* %6, i32 %35, i8** %7)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34, %29
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @dbus_message_iter_abandon_container(i32* %39, i32* %6)
  %41 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %41, i32* %3, align 4
  br label %56

42:                                               ; preds = %34
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @free(i8* %43)
  br label %45

45:                                               ; preds = %42
  %46 = load i64, i64* %10, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %10, align 8
  br label %25

48:                                               ; preds = %25
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @dbus_message_iter_close_container(i32* %49, i32* %6)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %53, i32* %3, align 4
  br label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %52, %38
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @dbus_message_iter_open_container(i32*, i32, i8*, i32*) #1

declare dso_local i32 @vlc_playlist_Lock(i32*) #1

declare dso_local i64 @vlc_playlist_Count(i32*) #1

declare dso_local i32 @vlc_playlist_Unlock(i32*) #1

declare dso_local i32 @asprintf(i8**, i32, i64) #1

declare dso_local i32 @dbus_message_iter_append_basic(i32*, i32, i8**) #1

declare dso_local i32 @dbus_message_iter_abandon_container(i32*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @dbus_message_iter_close_container(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
