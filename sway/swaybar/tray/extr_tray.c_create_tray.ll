; ModuleID = '/home/carl/AnghaBench/sway/swaybar/tray/extr_tray.c_create_tray.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/tray/extr_tray.c_create_tray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaybar_tray = type { i32, i32, i32, i32, i32, i32*, i8*, i8*, i32, %struct.swaybar* }
%struct.swaybar = type { i32 }

@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Initializing tray\00", align 1
@SWAY_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to connect to user bus: %s\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"freedesktop\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"kde\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"org.freedesktop.DBus\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"/org/freedesktop/DBus\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"NameOwnerChanged\00", align 1
@handle_lost_watcher = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [48 x i8] c"Failed to subscribe to unregistering events: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.swaybar_tray* @create_tray(%struct.swaybar* %0) #0 {
  %2 = alloca %struct.swaybar_tray*, align 8
  %3 = alloca %struct.swaybar*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.swaybar_tray*, align 8
  store %struct.swaybar* %0, %struct.swaybar** %3, align 8
  %7 = load i32, i32* @SWAY_DEBUG, align 4
  %8 = call i32 (i32, i8*, ...) @sway_log(i32 %7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @sd_bus_open_user(i32** %4)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load i32, i32* @SWAY_ERROR, align 4
  %14 = load i32, i32* %5, align 4
  %15 = sub nsw i32 0, %14
  %16 = call i32 @strerror(i32 %15)
  %17 = call i32 (i32, i8*, ...) @sway_log(i32 %13, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  store %struct.swaybar_tray* null, %struct.swaybar_tray** %2, align 8
  br label %78

18:                                               ; preds = %1
  %19 = call %struct.swaybar_tray* @calloc(i32 1, i32 64)
  store %struct.swaybar_tray* %19, %struct.swaybar_tray** %6, align 8
  %20 = load %struct.swaybar_tray*, %struct.swaybar_tray** %6, align 8
  %21 = icmp ne %struct.swaybar_tray* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  store %struct.swaybar_tray* null, %struct.swaybar_tray** %2, align 8
  br label %78

23:                                               ; preds = %18
  %24 = load %struct.swaybar*, %struct.swaybar** %3, align 8
  %25 = load %struct.swaybar_tray*, %struct.swaybar_tray** %6, align 8
  %26 = getelementptr inbounds %struct.swaybar_tray, %struct.swaybar_tray* %25, i32 0, i32 9
  store %struct.swaybar* %24, %struct.swaybar** %26, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = load %struct.swaybar_tray*, %struct.swaybar_tray** %6, align 8
  %29 = getelementptr inbounds %struct.swaybar_tray, %struct.swaybar_tray* %28, i32 0, i32 5
  store i32* %27, i32** %29, align 8
  %30 = load %struct.swaybar_tray*, %struct.swaybar_tray** %6, align 8
  %31 = getelementptr inbounds %struct.swaybar_tray, %struct.swaybar_tray* %30, i32 0, i32 5
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @sd_bus_get_fd(i32* %32)
  %34 = load %struct.swaybar_tray*, %struct.swaybar_tray** %6, align 8
  %35 = getelementptr inbounds %struct.swaybar_tray, %struct.swaybar_tray* %34, i32 0, i32 8
  store i32 %33, i32* %35, align 8
  %36 = load %struct.swaybar_tray*, %struct.swaybar_tray** %6, align 8
  %37 = getelementptr inbounds %struct.swaybar_tray, %struct.swaybar_tray* %36, i32 0, i32 5
  %38 = load i32*, i32** %37, align 8
  %39 = call i8* @create_watcher(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %38)
  %40 = load %struct.swaybar_tray*, %struct.swaybar_tray** %6, align 8
  %41 = getelementptr inbounds %struct.swaybar_tray, %struct.swaybar_tray* %40, i32 0, i32 7
  store i8* %39, i8** %41, align 8
  %42 = load %struct.swaybar_tray*, %struct.swaybar_tray** %6, align 8
  %43 = getelementptr inbounds %struct.swaybar_tray, %struct.swaybar_tray* %42, i32 0, i32 5
  %44 = load i32*, i32** %43, align 8
  %45 = call i8* @create_watcher(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* %44)
  %46 = load %struct.swaybar_tray*, %struct.swaybar_tray** %6, align 8
  %47 = getelementptr inbounds %struct.swaybar_tray, %struct.swaybar_tray* %46, i32 0, i32 6
  store i8* %45, i8** %47, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* @handle_lost_watcher, align 4
  %50 = load %struct.swaybar_tray*, %struct.swaybar_tray** %6, align 8
  %51 = call i32 @sd_bus_match_signal(i32* %48, i32* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %49, %struct.swaybar_tray* %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %23
  %55 = load i32, i32* @SWAY_ERROR, align 4
  %56 = load i32, i32* %5, align 4
  %57 = sub nsw i32 0, %56
  %58 = call i32 @strerror(i32 %57)
  %59 = call i32 (i32, i8*, ...) @sway_log(i32 %55, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %54, %23
  %61 = call i32 (...) @create_list()
  %62 = load %struct.swaybar_tray*, %struct.swaybar_tray** %6, align 8
  %63 = getelementptr inbounds %struct.swaybar_tray, %struct.swaybar_tray* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 8
  %64 = load %struct.swaybar_tray*, %struct.swaybar_tray** %6, align 8
  %65 = getelementptr inbounds %struct.swaybar_tray, %struct.swaybar_tray* %64, i32 0, i32 3
  %66 = load %struct.swaybar_tray*, %struct.swaybar_tray** %6, align 8
  %67 = call i32 @init_host(i32* %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), %struct.swaybar_tray* %66)
  %68 = load %struct.swaybar_tray*, %struct.swaybar_tray** %6, align 8
  %69 = getelementptr inbounds %struct.swaybar_tray, %struct.swaybar_tray* %68, i32 0, i32 2
  %70 = load %struct.swaybar_tray*, %struct.swaybar_tray** %6, align 8
  %71 = call i32 @init_host(i32* %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), %struct.swaybar_tray* %70)
  %72 = load %struct.swaybar_tray*, %struct.swaybar_tray** %6, align 8
  %73 = getelementptr inbounds %struct.swaybar_tray, %struct.swaybar_tray* %72, i32 0, i32 1
  %74 = load %struct.swaybar_tray*, %struct.swaybar_tray** %6, align 8
  %75 = getelementptr inbounds %struct.swaybar_tray, %struct.swaybar_tray* %74, i32 0, i32 0
  %76 = call i32 @init_themes(i32* %73, i32* %75)
  %77 = load %struct.swaybar_tray*, %struct.swaybar_tray** %6, align 8
  store %struct.swaybar_tray* %77, %struct.swaybar_tray** %2, align 8
  br label %78

78:                                               ; preds = %60, %22, %12
  %79 = load %struct.swaybar_tray*, %struct.swaybar_tray** %2, align 8
  ret %struct.swaybar_tray* %79
}

declare dso_local i32 @sway_log(i32, i8*, ...) #1

declare dso_local i32 @sd_bus_open_user(i32**) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local %struct.swaybar_tray* @calloc(i32, i32) #1

declare dso_local i32 @sd_bus_get_fd(i32*) #1

declare dso_local i8* @create_watcher(i8*, i32*) #1

declare dso_local i32 @sd_bus_match_signal(i32*, i32*, i8*, i8*, i8*, i8*, i32, %struct.swaybar_tray*) #1

declare dso_local i32 @create_list(...) #1

declare dso_local i32 @init_host(i32*, i8*, %struct.swaybar_tray*) #1

declare dso_local i32 @init_themes(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
