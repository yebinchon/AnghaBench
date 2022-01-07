; ModuleID = '/home/carl/AnghaBench/vlc/modules/keystore/extr_kwallet.c_vlc_dbus_watch_toggled_function.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/keystore/extr_kwallet.c_vlc_dbus_watch_toggled_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_dbus_watch_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i16 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @vlc_dbus_watch_toggled_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlc_dbus_watch_toggled_function(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vlc_dbus_watch_data*, align 8
  %6 = alloca i16, align 2
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call %struct.vlc_dbus_watch_data* @vlc_dbus_watch_get_data(i32* %7, i8* %8)
  store %struct.vlc_dbus_watch_data* %9, %struct.vlc_dbus_watch_data** %5, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call signext i16 @vlc_dbus_watch_get_poll_events(i32* %10)
  store i16 %11, i16* %6, align 2
  %12 = load i32*, i32** %3, align 8
  %13 = call i64 @dbus_watch_get_enabled(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load i16, i16* %6, align 2
  %17 = sext i16 %16 to i32
  %18 = load %struct.vlc_dbus_watch_data*, %struct.vlc_dbus_watch_data** %5, align 8
  %19 = getelementptr inbounds %struct.vlc_dbus_watch_data, %struct.vlc_dbus_watch_data* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i16, i16* %20, align 2
  %22 = sext i16 %21 to i32
  %23 = or i32 %22, %17
  %24 = trunc i32 %23 to i16
  store i16 %24, i16* %20, align 2
  br label %36

25:                                               ; preds = %2
  %26 = load i16, i16* %6, align 2
  %27 = sext i16 %26 to i32
  %28 = xor i32 %27, -1
  %29 = load %struct.vlc_dbus_watch_data*, %struct.vlc_dbus_watch_data** %5, align 8
  %30 = getelementptr inbounds %struct.vlc_dbus_watch_data, %struct.vlc_dbus_watch_data* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i16, i16* %31, align 2
  %33 = sext i16 %32 to i32
  %34 = and i32 %33, %28
  %35 = trunc i32 %34 to i16
  store i16 %35, i16* %31, align 2
  br label %36

36:                                               ; preds = %25, %15
  ret void
}

declare dso_local %struct.vlc_dbus_watch_data* @vlc_dbus_watch_get_data(i32*, i8*) #1

declare dso_local signext i16 @vlc_dbus_watch_get_poll_events(i32*) #1

declare dso_local i64 @dbus_watch_get_enabled(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
