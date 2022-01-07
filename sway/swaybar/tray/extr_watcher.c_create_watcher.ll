; ModuleID = '/home/carl/AnghaBench/sway/swaybar/tray/extr_watcher.c_create_watcher.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/tray/extr_watcher.c_create_watcher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaybar_watcher = type { i32*, i64, i8*, i8*, i32* }

@.str = private unnamed_addr constant [29 x i8] c"org.%s.StatusNotifierWatcher\00", align 1
@obj_path = common dso_local global i32 0, align 4
@watcher_vtable = common dso_local global i32 0, align 4
@SWAY_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to add object vtable: %s\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"org.freedesktop.DBus\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"/org/freedesktop/DBus\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"NameOwnerChanged\00", align 1
@handle_lost_service = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"Failed to subscribe to unregistering events: %s\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Failed to acquire service name: %s\00", align 1
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"Registered %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.swaybar_watcher* @create_watcher(i8* %0, i32* %1) #0 {
  %3 = alloca %struct.swaybar_watcher*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.swaybar_watcher*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = call %struct.swaybar_watcher* @calloc(i32 1, i32 40)
  store %struct.swaybar_watcher* %11, %struct.swaybar_watcher** %6, align 8
  %12 = load %struct.swaybar_watcher*, %struct.swaybar_watcher** %6, align 8
  %13 = icmp ne %struct.swaybar_watcher* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store %struct.swaybar_watcher* null, %struct.swaybar_watcher** %3, align 8
  br label %102

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @snprintf(i32* null, i64 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i32* @malloc(i64 %20)
  %22 = load %struct.swaybar_watcher*, %struct.swaybar_watcher** %6, align 8
  %23 = getelementptr inbounds %struct.swaybar_watcher, %struct.swaybar_watcher* %22, i32 0, i32 0
  store i32* %21, i32** %23, align 8
  %24 = load %struct.swaybar_watcher*, %struct.swaybar_watcher** %6, align 8
  %25 = getelementptr inbounds %struct.swaybar_watcher, %struct.swaybar_watcher* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @snprintf(i32* %26, i64 %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %28)
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* @obj_path, align 4
  %32 = load %struct.swaybar_watcher*, %struct.swaybar_watcher** %6, align 8
  %33 = getelementptr inbounds %struct.swaybar_watcher, %struct.swaybar_watcher* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* @watcher_vtable, align 4
  %36 = load %struct.swaybar_watcher*, %struct.swaybar_watcher** %6, align 8
  %37 = call i32 @sd_bus_add_object_vtable(i32* %30, i32** %9, i32 %31, i32* %34, i32 %35, %struct.swaybar_watcher* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %15
  %41 = load i32, i32* @SWAY_ERROR, align 4
  %42 = load i32, i32* %10, align 4
  %43 = sub nsw i32 0, %42
  %44 = call i32* @strerror(i32 %43)
  %45 = call i32 @sway_log(i32 %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32* %44)
  br label %95

46:                                               ; preds = %15
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* @handle_lost_service, align 4
  %49 = load %struct.swaybar_watcher*, %struct.swaybar_watcher** %6, align 8
  %50 = call i32 @sd_bus_match_signal(i32* %47, i32** %8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %48, %struct.swaybar_watcher* %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %46
  %54 = load i32, i32* @SWAY_ERROR, align 4
  %55 = load i32, i32* %10, align 4
  %56 = sub nsw i32 0, %55
  %57 = call i32* @strerror(i32 %56)
  %58 = call i32 @sway_log(i32 %54, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32* %57)
  br label %95

59:                                               ; preds = %46
  %60 = load i32*, i32** %5, align 8
  %61 = load %struct.swaybar_watcher*, %struct.swaybar_watcher** %6, align 8
  %62 = getelementptr inbounds %struct.swaybar_watcher, %struct.swaybar_watcher* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @sd_bus_request_name(i32* %60, i32* %63, i32 0)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %59
  %68 = load i32, i32* @SWAY_ERROR, align 4
  %69 = load i32, i32* %10, align 4
  %70 = sub nsw i32 0, %69
  %71 = call i32* @strerror(i32 %70)
  %72 = call i32 @sway_log(i32 %68, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32* %71)
  br label %95

73:                                               ; preds = %59
  %74 = load i32*, i32** %8, align 8
  %75 = call i32 @sd_bus_slot_set_floating(i32* %74, i32 0)
  %76 = load i32*, i32** %9, align 8
  %77 = call i32 @sd_bus_slot_set_floating(i32* %76, i32 0)
  %78 = load i32*, i32** %5, align 8
  %79 = load %struct.swaybar_watcher*, %struct.swaybar_watcher** %6, align 8
  %80 = getelementptr inbounds %struct.swaybar_watcher, %struct.swaybar_watcher* %79, i32 0, i32 4
  store i32* %78, i32** %80, align 8
  %81 = call i8* (...) @create_list()
  %82 = load %struct.swaybar_watcher*, %struct.swaybar_watcher** %6, align 8
  %83 = getelementptr inbounds %struct.swaybar_watcher, %struct.swaybar_watcher* %82, i32 0, i32 3
  store i8* %81, i8** %83, align 8
  %84 = call i8* (...) @create_list()
  %85 = load %struct.swaybar_watcher*, %struct.swaybar_watcher** %6, align 8
  %86 = getelementptr inbounds %struct.swaybar_watcher, %struct.swaybar_watcher* %85, i32 0, i32 2
  store i8* %84, i8** %86, align 8
  %87 = load %struct.swaybar_watcher*, %struct.swaybar_watcher** %6, align 8
  %88 = getelementptr inbounds %struct.swaybar_watcher, %struct.swaybar_watcher* %87, i32 0, i32 1
  store i64 0, i64* %88, align 8
  %89 = load i32, i32* @SWAY_DEBUG, align 4
  %90 = load %struct.swaybar_watcher*, %struct.swaybar_watcher** %6, align 8
  %91 = getelementptr inbounds %struct.swaybar_watcher, %struct.swaybar_watcher* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @sway_log(i32 %89, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32* %92)
  %94 = load %struct.swaybar_watcher*, %struct.swaybar_watcher** %6, align 8
  store %struct.swaybar_watcher* %94, %struct.swaybar_watcher** %3, align 8
  br label %102

95:                                               ; preds = %67, %53, %40
  %96 = load i32*, i32** %8, align 8
  %97 = call i32 @sd_bus_slot_unref(i32* %96)
  %98 = load i32*, i32** %9, align 8
  %99 = call i32 @sd_bus_slot_unref(i32* %98)
  %100 = load %struct.swaybar_watcher*, %struct.swaybar_watcher** %6, align 8
  %101 = call i32 @destroy_watcher(%struct.swaybar_watcher* %100)
  store %struct.swaybar_watcher* null, %struct.swaybar_watcher** %3, align 8
  br label %102

102:                                              ; preds = %95, %73, %14
  %103 = load %struct.swaybar_watcher*, %struct.swaybar_watcher** %3, align 8
  ret %struct.swaybar_watcher* %103
}

declare dso_local %struct.swaybar_watcher* @calloc(i32, i32) #1

declare dso_local i32 @snprintf(i32*, i64, i8*, i8*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @sd_bus_add_object_vtable(i32*, i32**, i32, i32*, i32, %struct.swaybar_watcher*) #1

declare dso_local i32 @sway_log(i32, i8*, i32*) #1

declare dso_local i32* @strerror(i32) #1

declare dso_local i32 @sd_bus_match_signal(i32*, i32**, i8*, i8*, i8*, i8*, i32, %struct.swaybar_watcher*) #1

declare dso_local i32 @sd_bus_request_name(i32*, i32*, i32) #1

declare dso_local i32 @sd_bus_slot_set_floating(i32*, i32) #1

declare dso_local i8* @create_list(...) #1

declare dso_local i32 @sd_bus_slot_unref(i32*) #1

declare dso_local i32 @destroy_watcher(%struct.swaybar_watcher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
