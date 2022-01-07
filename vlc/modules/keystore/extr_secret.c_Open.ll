; ModuleID = '/home/carl/AnghaBench/vlc/modules/keystore/extr_secret.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/keystore/extr_secret.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.secrets_watch_data = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32* }

@G_BUS_TYPE_SESSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"org.freedesktop.secrets\00", align 1
@G_BUS_NAME_WATCHER_FLAGS_NONE = common dso_local global i32 0, align 4
@dbus_appeared_cb = common dso_local global i32 0, align 4
@dbus_vanished_cb = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@SECRET_SERVICE_NONE = common dso_local global i32 0, align 4
@Store = common dso_local global i32 0, align 4
@Find = common dso_local global i32 0, align 4
@Remove = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.secrets_watch_data, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %34, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.secrets_watch_data, %struct.secrets_watch_data* %4, i32 0, i32 0
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds %struct.secrets_watch_data, %struct.secrets_watch_data* %4, i32 0, i32 1
  %16 = call i32 @vlc_sem_init(i32* %15, i32 0)
  %17 = load i32, i32* @G_BUS_TYPE_SESSION, align 4
  %18 = load i32, i32* @G_BUS_NAME_WATCHER_FLAGS_NONE, align 4
  %19 = load i32, i32* @dbus_appeared_cb, align 4
  %20 = load i32, i32* @dbus_vanished_cb, align 4
  %21 = call i32 @g_bus_watch_name(i32 %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19, i32 %20, %struct.secrets_watch_data* %4, i32* null)
  store i32 %21, i32* %5, align 4
  %22 = getelementptr inbounds %struct.secrets_watch_data, %struct.secrets_watch_data* %4, i32 0, i32 1
  %23 = call i32 @vlc_sem_wait_i11e(i32* %22)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @g_bus_unwatch_name(i32 %24)
  %26 = getelementptr inbounds %struct.secrets_watch_data, %struct.secrets_watch_data* %4, i32 0, i32 1
  %27 = call i32 @vlc_sem_destroy(i32* %26)
  %28 = getelementptr inbounds %struct.secrets_watch_data, %struct.secrets_watch_data* %4, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %13
  %32 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %32, i32* %2, align 4
  br label %61

33:                                               ; preds = %13
  br label %34

34:                                               ; preds = %33, %1
  %35 = call i32* (...) @cancellable_register()
  store i32* %35, i32** %6, align 8
  %36 = load i32, i32* @SECRET_SERVICE_NONE, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = call i32* @secret_service_get_sync(i32 %36, i32* %37, i32* null)
  store i32* %38, i32** %7, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @cancellable_unregister(i32* %39)
  %41 = load i32*, i32** %7, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %34
  %44 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %44, i32* %2, align 4
  br label %61

45:                                               ; preds = %34
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %47 = bitcast %struct.TYPE_4__* %46 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %47, %struct.TYPE_5__** %8, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 3
  store i32* %48, i32** %50, align 8
  %51 = load i32, i32* @Store, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @Find, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @Remove, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %45, %43, %31
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @vlc_sem_init(i32*, i32) #1

declare dso_local i32 @g_bus_watch_name(i32, i8*, i32, i32, i32, %struct.secrets_watch_data*, i32*) #1

declare dso_local i32 @vlc_sem_wait_i11e(i32*) #1

declare dso_local i32 @g_bus_unwatch_name(i32) #1

declare dso_local i32 @vlc_sem_destroy(i32*) #1

declare dso_local i32* @cancellable_register(...) #1

declare dso_local i32* @secret_service_get_sync(i32, i32*, i32*) #1

declare dso_local i32 @cancellable_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
