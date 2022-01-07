; ModuleID = '/home/carl/AnghaBench/vlc/modules/keystore/extr_kwallet.c_vlc_dbus_watch_add_function.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/keystore/extr_kwallet.c_vlc_dbus_watch_add_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_dbus_watch_data = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i16, i32 }

@FALSE = common dso_local global i32 0, align 4
@POLLHUP = common dso_local global i16 0, align 2
@POLLERR = common dso_local global i16 0, align 2
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @vlc_dbus_watch_add_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlc_dbus_watch_add_function(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.vlc_dbus_watch_data*, align 8
  %7 = alloca i16, align 2
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call %struct.vlc_dbus_watch_data* @vlc_dbus_watch_get_data(i32* %8, i8* %9)
  store %struct.vlc_dbus_watch_data* %10, %struct.vlc_dbus_watch_data** %6, align 8
  %11 = load %struct.vlc_dbus_watch_data*, %struct.vlc_dbus_watch_data** %6, align 8
  %12 = icmp eq %struct.vlc_dbus_watch_data* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %3, align 4
  br label %42

15:                                               ; preds = %2
  %16 = load i16, i16* @POLLHUP, align 2
  %17 = sext i16 %16 to i32
  %18 = load i16, i16* @POLLERR, align 2
  %19 = sext i16 %18 to i32
  %20 = or i32 %17, %19
  %21 = trunc i32 %20 to i16
  store i16 %21, i16* %7, align 2
  %22 = load i32*, i32** %4, align 8
  %23 = call signext i16 @vlc_dbus_watch_get_poll_events(i32* %22)
  %24 = sext i16 %23 to i32
  %25 = load i16, i16* %7, align 2
  %26 = sext i16 %25 to i32
  %27 = or i32 %26, %24
  %28 = trunc i32 %27 to i16
  store i16 %28, i16* %7, align 2
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @dbus_watch_get_unix_fd(i32* %29)
  %31 = load %struct.vlc_dbus_watch_data*, %struct.vlc_dbus_watch_data** %6, align 8
  %32 = getelementptr inbounds %struct.vlc_dbus_watch_data, %struct.vlc_dbus_watch_data* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 4
  %34 = load i16, i16* %7, align 2
  %35 = load %struct.vlc_dbus_watch_data*, %struct.vlc_dbus_watch_data** %6, align 8
  %36 = getelementptr inbounds %struct.vlc_dbus_watch_data, %struct.vlc_dbus_watch_data* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i16 %34, i16* %37, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = load %struct.vlc_dbus_watch_data*, %struct.vlc_dbus_watch_data** %6, align 8
  %40 = getelementptr inbounds %struct.vlc_dbus_watch_data, %struct.vlc_dbus_watch_data* %39, i32 0, i32 0
  store i32* %38, i32** %40, align 8
  %41 = load i32, i32* @TRUE, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %15, %13
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.vlc_dbus_watch_data* @vlc_dbus_watch_get_data(i32*, i8*) #1

declare dso_local signext i16 @vlc_dbus_watch_get_poll_events(i32*) #1

declare dso_local i32 @dbus_watch_get_unix_fd(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
