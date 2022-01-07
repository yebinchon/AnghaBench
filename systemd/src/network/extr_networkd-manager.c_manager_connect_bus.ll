; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-manager.c_manager_connect_bus.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-manager.c_manager_connect_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 }

@.str = private unnamed_addr constant [16 x i8] c"bus-api-network\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to connect to bus: %m\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"/org/freedesktop/network1\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"org.freedesktop.network1.Manager\00", align 1
@manager_vtable = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"Failed to add manager object vtable: %m\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"/org/freedesktop/network1/link\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"org.freedesktop.network1.Link\00", align 1
@link_vtable = common dso_local global i32 0, align 4
@link_object_find = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"Failed to add link object vtable: %m\00", align 1
@link_node_enumerator = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"Failed to add link enumerator: %m\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"/org/freedesktop/network1/network\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"org.freedesktop.network1.Network\00", align 1
@network_vtable = common dso_local global i32 0, align 4
@network_object_find = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [40 x i8] c"Failed to add network object vtable: %m\00", align 1
@network_node_enumerator = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [37 x i8] c"Failed to add network enumerator: %m\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"org.freedesktop.network1\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Failed to request name: %m\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"Failed to attach bus to event loop: %m\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"org.freedesktop.DBus.Local\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"Connected\00", align 1
@on_connected = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [48 x i8] c"Failed to request match on Connected signal: %m\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"org.freedesktop.login1\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"/org/freedesktop/login1\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"org.freedesktop.login1.Manager\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"PrepareForSleep\00", align 1
@match_prepare_for_sleep = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [58 x i8] c"Failed to request match for PrepareForSleep, ignoring: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @manager_connect_bus(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %6 = call i32 @assert(%struct.TYPE_8__* %5)
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %131

12:                                               ; preds = %1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = call i32 @bus_open_system_watch_bind_with_description(i64* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @log_error_errno(i32 %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 %20, i32* %2, align 4
  br label %131

21:                                               ; preds = %12
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* @manager_vtable, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = call i32 @sd_bus_add_object_vtable(i64 %24, i32* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %25, %struct.TYPE_8__* %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @log_error_errno(i32 %31, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  store i32 %32, i32* %2, align 4
  br label %131

33:                                               ; preds = %21
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* @link_vtable, align 4
  %38 = load i32, i32* @link_object_find, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %40 = call i32 @sd_bus_add_fallback_vtable(i64 %36, i32* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %37, i32 %38, %struct.TYPE_8__* %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %33
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @log_error_errno(i32 %44, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  store i32 %45, i32* %2, align 4
  br label %131

46:                                               ; preds = %33
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* @link_node_enumerator, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %52 = call i32 @sd_bus_add_node_enumerator(i64 %49, i32* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %50, %struct.TYPE_8__* %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @log_error_errno(i32 %56, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  store i32 %57, i32* %2, align 4
  br label %131

58:                                               ; preds = %46
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* @network_vtable, align 4
  %63 = load i32, i32* @network_object_find, align 4
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %65 = call i32 @sd_bus_add_fallback_vtable(i64 %61, i32* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 %62, i32 %63, %struct.TYPE_8__* %64)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %58
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @log_error_errno(i32 %69, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0))
  store i32 %70, i32* %2, align 4
  br label %131

71:                                               ; preds = %58
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* @network_node_enumerator, align 4
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %77 = call i32 @sd_bus_add_node_enumerator(i64 %74, i32* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i32 %75, %struct.TYPE_8__* %76)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %71
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @log_error_errno(i32 %81, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0))
  store i32 %82, i32* %2, align 4
  br label %131

83:                                               ; preds = %71
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @sd_bus_request_name_async(i64 %86, i32* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i32 0, i32* null, i32* null)
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @log_error_errno(i32 %91, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0))
  store i32 %92, i32* %2, align 4
  br label %131

93:                                               ; preds = %83
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @sd_bus_attach_event(i64 %96, i32 %99, i32 0)
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %4, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %93
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @log_error_errno(i32 %104, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0))
  store i32 %105, i32* %2, align 4
  br label %131

106:                                              ; preds = %93
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* @on_connected, align 4
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %112 = call i32 @sd_bus_match_signal_async(i64 %109, i32* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i32 %110, i32* null, %struct.TYPE_8__* %111)
  store i32 %112, i32* %4, align 4
  %113 = load i32, i32* %4, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %106
  %116 = load i32, i32* %4, align 4
  %117 = call i32 @log_error_errno(i32 %116, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.18, i64 0, i64 0))
  store i32 %117, i32* %2, align 4
  br label %131

118:                                              ; preds = %106
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i32, i32* @match_prepare_for_sleep, align 4
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %124 = call i32 @sd_bus_match_signal_async(i64 %121, i32* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i32 %122, i32* null, %struct.TYPE_8__* %123)
  store i32 %124, i32* %4, align 4
  %125 = load i32, i32* %4, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %118
  %128 = load i32, i32* %4, align 4
  %129 = call i32 @log_warning_errno(i32 %128, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.23, i64 0, i64 0))
  br label %130

130:                                              ; preds = %127, %118
  store i32 0, i32* %2, align 4
  br label %131

131:                                              ; preds = %130, %115, %103, %90, %80, %68, %55, %43, %30, %18, %11
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local i32 @assert(%struct.TYPE_8__*) #1

declare dso_local i32 @bus_open_system_watch_bind_with_description(i64*, i8*) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i32 @sd_bus_add_object_vtable(i64, i32*, i8*, i8*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @sd_bus_add_fallback_vtable(i64, i32*, i8*, i8*, i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @sd_bus_add_node_enumerator(i64, i32*, i8*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @sd_bus_request_name_async(i64, i32*, i8*, i32, i32*, i32*) #1

declare dso_local i32 @sd_bus_attach_event(i64, i32, i32) #1

declare dso_local i32 @sd_bus_match_signal_async(i64, i32*, i8*, i8*, i8*, i8*, i32, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @log_warning_errno(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
