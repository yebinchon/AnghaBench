; ModuleID = '/home/carl/AnghaBench/redshift/src/extr_location-geoclue2.c_geoclue_client_signal_cb.c'
source_filename = "/home/carl/AnghaBench/redshift/src/extr_location-geoclue2.c_geoclue_client_signal_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i8*, i8* }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"LocationUpdated\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"&o\00", align 1
@G_DBUS_PROXY_FLAGS_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"org.freedesktop.GeoClue2\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"org.freedesktop.GeoClue2.Location\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Unable to obtain location: %s.\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Latitude\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"Longitude\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, %struct.TYPE_8__*)* @geoclue_client_signal_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @geoclue_client_signal_cb(i32* %0, i32* %1, i32* %2, i32* %3, %struct.TYPE_8__* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.TYPE_8__* %4, %struct.TYPE_8__** %10, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %11, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = call i64 @g_strcmp0(i32* %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  br label %67

22:                                               ; preds = %5
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @g_variant_get_child(i32* %23, i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32** %12)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %13, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @g_dbus_proxy_get_connection(i32* %25)
  %27 = load i32, i32* @G_DBUS_PROXY_FLAGS_NONE, align 4
  %28 = load i32*, i32** %12, align 8
  %29 = call i32* @g_dbus_proxy_new_sync(i32 %26, i32 %27, i32* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32* %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32* null, %struct.TYPE_9__** %13)
  store i32* %29, i32** %14, align 8
  %30 = load i32*, i32** %14, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %22
  %33 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @g_printerr(i32 %33, i32 %36)
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %39 = call i32 @g_error_free(%struct.TYPE_9__* %38)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %41 = call i32 @mark_error(%struct.TYPE_8__* %40)
  br label %67

42:                                               ; preds = %22
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  %45 = call i32 @g_mutex_lock(i32* %44)
  %46 = load i32*, i32** %14, align 8
  %47 = call i32* @g_dbus_proxy_get_cached_property(i32* %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store i32* %47, i32** %15, align 8
  %48 = load i32*, i32** %15, align 8
  %49 = call i8* @g_variant_get_double(i32* %48)
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 4
  store i8* %49, i8** %51, align 8
  %52 = load i32*, i32** %14, align 8
  %53 = call i32* @g_dbus_proxy_get_cached_property(i32* %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  store i32* %53, i32** %16, align 8
  %54 = load i32*, i32** %16, align 8
  %55 = call i8* @g_variant_get_double(i32* %54)
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 3
  store i8* %55, i8** %57, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  %62 = call i32 @g_mutex_unlock(i32* %61)
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @pipeutils_signal(i32 %65)
  br label %67

67:                                               ; preds = %42, %32, %21
  ret void
}

declare dso_local i64 @g_strcmp0(i32*, i8*) #1

declare dso_local i32 @g_variant_get_child(i32*, i32, i8*, i32**) #1

declare dso_local i32* @g_dbus_proxy_new_sync(i32, i32, i32*, i8*, i32*, i8*, i32*, %struct.TYPE_9__**) #1

declare dso_local i32 @g_dbus_proxy_get_connection(i32*) #1

declare dso_local i32 @g_printerr(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @g_error_free(%struct.TYPE_9__*) #1

declare dso_local i32 @mark_error(%struct.TYPE_8__*) #1

declare dso_local i32 @g_mutex_lock(i32*) #1

declare dso_local i32* @g_dbus_proxy_get_cached_property(i32*, i8*) #1

declare dso_local i8* @g_variant_get_double(i32*) #1

declare dso_local i32 @g_mutex_unlock(i32*) #1

declare dso_local i32 @pipeutils_signal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
