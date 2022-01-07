; ModuleID = '/home/carl/AnghaBench/redshift/src/extr_location-geoclue2.c_on_name_appeared.c'
source_filename = "/home/carl/AnghaBench/redshift/src/extr_location-geoclue2.c_on_name_appeared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@G_DBUS_PROXY_FLAGS_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"org.freedesktop.GeoClue2\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"/org/freedesktop/GeoClue2/Manager\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"org.freedesktop.GeoClue2.Manager\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Unable to obtain GeoClue Manager: %s.\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"GetClient\00", align 1
@G_DBUS_CALL_FLAGS_NONE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"Unable to obtain GeoClue client path: %s.\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"(&o)\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"org.freedesktop.GeoClue2.Client\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Unable to obtain GeoClue Client: %s.\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"org.freedesktop.DBus.Properties.Set\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"(ssv)\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"DesktopId\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"redshift\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"DistanceThreshold\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"Unable to set distance threshold: %s.\0A\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"g-signal\00", align 1
@geoclue_client_signal_cb = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [6 x i8] c"Start\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"Unable to start GeoClue client: %s.\0A\00", align 1
@DBUS_ACCESS_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*, i32*)* @on_name_appeared to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_name_appeared(i32* %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %17 = load i32*, i32** %8, align 8
  store i32* %17, i32** %9, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %10, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* @G_DBUS_PROXY_FLAGS_NONE, align 4
  %20 = call i32* @g_dbus_proxy_new_sync(i32* %18, i32 %19, i32* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32* null, %struct.TYPE_7__** %10)
  store i32* %20, i32** %11, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %4
  %24 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @g_printerr(i32 %24, i32 %27)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %30 = call i32 @g_error_free(%struct.TYPE_7__* %29)
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @mark_error(i32* %31)
  br label %156

33:                                               ; preds = %4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %10, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = load i32, i32* @G_DBUS_CALL_FLAGS_NONE, align 4
  %36 = call i32* @g_dbus_proxy_call_sync(i32* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32* null, i32 %35, i32 -1, i32* null, %struct.TYPE_7__** %10)
  store i32* %36, i32** %12, align 8
  %37 = load i32*, i32** %12, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %51

39:                                               ; preds = %33
  %40 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @g_printerr(i32 %40, i32 %43)
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %46 = call i32 @g_error_free(%struct.TYPE_7__* %45)
  %47 = load i32*, i32** %11, align 8
  %48 = call i32 @g_object_unref(i32* %47)
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @mark_error(i32* %49)
  br label %156

51:                                               ; preds = %33
  %52 = load i32*, i32** %12, align 8
  %53 = call i32 @g_variant_get(i32* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %13)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %10, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* @G_DBUS_PROXY_FLAGS_NONE, align 4
  %56 = load i8*, i8** %13, align 8
  %57 = call i32* @g_dbus_proxy_new_sync(i32* %54, i32 %55, i32* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %56, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32* null, %struct.TYPE_7__** %10)
  store i32* %57, i32** %14, align 8
  %58 = load i32*, i32** %14, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %74

60:                                               ; preds = %51
  %61 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @g_printerr(i32 %61, i32 %64)
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %67 = call i32 @g_error_free(%struct.TYPE_7__* %66)
  %68 = load i32*, i32** %12, align 8
  %69 = call i32 @g_variant_unref(i32* %68)
  %70 = load i32*, i32** %11, align 8
  %71 = call i32 @g_object_unref(i32* %70)
  %72 = load i32*, i32** %9, align 8
  %73 = call i32 @mark_error(i32* %72)
  br label %156

74:                                               ; preds = %51
  %75 = load i32*, i32** %12, align 8
  %76 = call i32 @g_variant_unref(i32* %75)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %10, align 8
  %77 = load i32*, i32** %14, align 8
  %78 = call i32* (i8*, ...) @g_variant_new(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  %79 = call i32* (i8*, ...) @g_variant_new(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32* %78)
  %80 = load i32, i32* @G_DBUS_CALL_FLAGS_NONE, align 4
  %81 = call i32* @g_dbus_proxy_call_sync(i32* %77, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i32* %79, i32 %80, i32 -1, i32* null, %struct.TYPE_7__** %10)
  store i32* %81, i32** %15, align 8
  %82 = load i32*, i32** %15, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %74
  br label %88

85:                                               ; preds = %74
  %86 = load i32*, i32** %15, align 8
  %87 = call i32 @g_variant_unref(i32* %86)
  br label %88

88:                                               ; preds = %85, %84
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %10, align 8
  %89 = load i32*, i32** %14, align 8
  %90 = call i32* (i8*, ...) @g_variant_new(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i32 50000)
  %91 = call i32* (i8*, ...) @g_variant_new(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32* %90)
  %92 = load i32, i32* @G_DBUS_CALL_FLAGS_NONE, align 4
  %93 = call i32* @g_dbus_proxy_call_sync(i32* %89, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i32* %91, i32 %92, i32 -1, i32* null, %struct.TYPE_7__** %10)
  store i32* %93, i32** %15, align 8
  %94 = load i32*, i32** %15, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %110

96:                                               ; preds = %88
  %97 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i64 0, i64 0))
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @g_printerr(i32 %97, i32 %100)
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %103 = call i32 @g_error_free(%struct.TYPE_7__* %102)
  %104 = load i32*, i32** %14, align 8
  %105 = call i32 @g_object_unref(i32* %104)
  %106 = load i32*, i32** %11, align 8
  %107 = call i32 @g_object_unref(i32* %106)
  %108 = load i32*, i32** %9, align 8
  %109 = call i32 @mark_error(i32* %108)
  br label %156

110:                                              ; preds = %88
  %111 = load i32*, i32** %15, align 8
  %112 = call i32 @g_variant_unref(i32* %111)
  %113 = load i32*, i32** %14, align 8
  %114 = load i32, i32* @geoclue_client_signal_cb, align 4
  %115 = call i32 @G_CALLBACK(i32 %114)
  %116 = load i32*, i32** %8, align 8
  %117 = call i32 @g_signal_connect(i32* %113, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i32 %115, i32* %116)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %10, align 8
  %118 = load i32*, i32** %14, align 8
  %119 = load i32, i32* @G_DBUS_CALL_FLAGS_NONE, align 4
  %120 = call i32* @g_dbus_proxy_call_sync(i32* %118, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i32* null, i32 %119, i32 -1, i32* null, %struct.TYPE_7__** %10)
  store i32* %120, i32** %15, align 8
  %121 = load i32*, i32** %15, align 8
  %122 = icmp eq i32* %121, null
  br i1 %122, label %123, label %153

123:                                              ; preds = %110
  %124 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i64 0, i64 0))
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @g_printerr(i32 %124, i32 %127)
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %130 = call i64 @g_dbus_error_is_remote_error(%struct.TYPE_7__* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %144

132:                                              ; preds = %123
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %134 = call i8* @g_dbus_error_get_remote_error(%struct.TYPE_7__* %133)
  store i8* %134, i8** %16, align 8
  %135 = load i8*, i8** %16, align 8
  %136 = load i32, i32* @DBUS_ACCESS_ERROR, align 4
  %137 = call i64 @g_strcmp0(i8* %135, i32 %136)
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %132
  %140 = call i32 (...) @print_denial_message()
  br label %141

141:                                              ; preds = %139, %132
  %142 = load i8*, i8** %16, align 8
  %143 = call i32 @g_free(i8* %142)
  br label %144

144:                                              ; preds = %141, %123
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %146 = call i32 @g_error_free(%struct.TYPE_7__* %145)
  %147 = load i32*, i32** %14, align 8
  %148 = call i32 @g_object_unref(i32* %147)
  %149 = load i32*, i32** %11, align 8
  %150 = call i32 @g_object_unref(i32* %149)
  %151 = load i32*, i32** %9, align 8
  %152 = call i32 @mark_error(i32* %151)
  br label %156

153:                                              ; preds = %110
  %154 = load i32*, i32** %15, align 8
  %155 = call i32 @g_variant_unref(i32* %154)
  br label %156

156:                                              ; preds = %153, %144, %96, %60, %39, %23
  ret void
}

declare dso_local i32* @g_dbus_proxy_new_sync(i32*, i32, i32*, i8*, i8*, i8*, i32*, %struct.TYPE_7__**) #1

declare dso_local i32 @g_printerr(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @g_error_free(%struct.TYPE_7__*) #1

declare dso_local i32 @mark_error(i32*) #1

declare dso_local i32* @g_dbus_proxy_call_sync(i32*, i8*, i32*, i32, i32, i32*, %struct.TYPE_7__**) #1

declare dso_local i32 @g_object_unref(i32*) #1

declare dso_local i32 @g_variant_get(i32*, i8*, i8**) #1

declare dso_local i32 @g_variant_unref(i32*) #1

declare dso_local i32* @g_variant_new(i8*, ...) #1

declare dso_local i32 @g_signal_connect(i32*, i8*, i32, i32*) #1

declare dso_local i32 @G_CALLBACK(i32) #1

declare dso_local i64 @g_dbus_error_is_remote_error(%struct.TYPE_7__*) #1

declare dso_local i8* @g_dbus_error_get_remote_error(%struct.TYPE_7__*) #1

declare dso_local i64 @g_strcmp0(i8*, i32) #1

declare dso_local i32 @print_denial_message(...) #1

declare dso_local i32 @g_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
