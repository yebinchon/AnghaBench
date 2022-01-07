; ModuleID = '/home/carl/AnghaBench/vlc/modules/keystore/extr_kwallet.c_vlc_dbus_watch_get_data.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/keystore/extr_kwallet.c_vlc_dbus_watch_get_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_dbus_watch_data = type { i32* }

@MAX_WATCHES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vlc_dbus_watch_data* (i32*, %struct.vlc_dbus_watch_data*)* @vlc_dbus_watch_get_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vlc_dbus_watch_data* @vlc_dbus_watch_get_data(i32* %0, %struct.vlc_dbus_watch_data* %1) #0 {
  %3 = alloca %struct.vlc_dbus_watch_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.vlc_dbus_watch_data*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.vlc_dbus_watch_data* %1, %struct.vlc_dbus_watch_data** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %34, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @MAX_WATCHES, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %37

11:                                               ; preds = %7
  %12 = load %struct.vlc_dbus_watch_data*, %struct.vlc_dbus_watch_data** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.vlc_dbus_watch_data, %struct.vlc_dbus_watch_data* %12, i64 %14
  %16 = getelementptr inbounds %struct.vlc_dbus_watch_data, %struct.vlc_dbus_watch_data* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %11
  %20 = load %struct.vlc_dbus_watch_data*, %struct.vlc_dbus_watch_data** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.vlc_dbus_watch_data, %struct.vlc_dbus_watch_data* %20, i64 %22
  %24 = getelementptr inbounds %struct.vlc_dbus_watch_data, %struct.vlc_dbus_watch_data* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = icmp eq i32* %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %19, %11
  %29 = load %struct.vlc_dbus_watch_data*, %struct.vlc_dbus_watch_data** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.vlc_dbus_watch_data, %struct.vlc_dbus_watch_data* %29, i64 %31
  store %struct.vlc_dbus_watch_data* %32, %struct.vlc_dbus_watch_data** %3, align 8
  br label %38

33:                                               ; preds = %19
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %6, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %7

37:                                               ; preds = %7
  store %struct.vlc_dbus_watch_data* null, %struct.vlc_dbus_watch_data** %3, align 8
  br label %38

38:                                               ; preds = %37, %28
  %39 = load %struct.vlc_dbus_watch_data*, %struct.vlc_dbus_watch_data** %3, align 8
  ret %struct.vlc_dbus_watch_data* %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
