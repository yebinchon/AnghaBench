; ModuleID = '/home/carl/AnghaBench/vlc/modules/keystore/extr_kwallet.c_vlc_dbus_watch_get_poll_events.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/keystore/extr_kwallet.c_vlc_dbus_watch_get_poll_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DBUS_WATCH_READABLE = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i16 0, align 2
@DBUS_WATCH_WRITABLE = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (i32*)* @vlc_dbus_watch_get_poll_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @vlc_dbus_watch_get_poll_events(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @dbus_watch_get_flags(i32* %5)
  store i32 %6, i32* %3, align 4
  store i16 0, i16* %4, align 2
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @DBUS_WATCH_READABLE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load i16, i16* @POLLIN, align 2
  %13 = sext i16 %12 to i32
  %14 = load i16, i16* %4, align 2
  %15 = sext i16 %14 to i32
  %16 = or i32 %15, %13
  %17 = trunc i32 %16 to i16
  store i16 %17, i16* %4, align 2
  br label %18

18:                                               ; preds = %11, %1
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @DBUS_WATCH_WRITABLE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load i16, i16* @POLLOUT, align 2
  %25 = sext i16 %24 to i32
  %26 = load i16, i16* %4, align 2
  %27 = sext i16 %26 to i32
  %28 = or i32 %27, %25
  %29 = trunc i32 %28 to i16
  store i16 %29, i16* %4, align 2
  br label %30

30:                                               ; preds = %23, %18
  %31 = load i16, i16* %4, align 2
  ret i16 %31
}

declare dso_local i32 @dbus_watch_get_flags(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
