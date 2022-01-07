; ModuleID = '/home/carl/AnghaBench/sway/swaybar/tray/extr_host.c_register_to_watcher.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/tray/extr_host.c_register_to_watcher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaybar_host = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@watcher_path = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"RegisterStatusNotifierHost\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@SWAY_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to send register call: %s\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"org.freedesktop.DBus.Properties\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"Get\00", align 1
@get_registered_snis_callback = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"ss\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"RegisteredStatusNotifierItems\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Failed to get registered SNIs: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.swaybar_host*)* @register_to_watcher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_to_watcher(%struct.swaybar_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.swaybar_host*, align 8
  %4 = alloca i32, align 4
  store %struct.swaybar_host* %0, %struct.swaybar_host** %3, align 8
  %5 = load %struct.swaybar_host*, %struct.swaybar_host** %3, align 8
  %6 = getelementptr inbounds %struct.swaybar_host, %struct.swaybar_host* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.swaybar_host*, %struct.swaybar_host** %3, align 8
  %11 = getelementptr inbounds %struct.swaybar_host, %struct.swaybar_host* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @watcher_path, align 4
  %14 = load %struct.swaybar_host*, %struct.swaybar_host** %3, align 8
  %15 = getelementptr inbounds %struct.swaybar_host, %struct.swaybar_host* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i8*
  %19 = load %struct.swaybar_host*, %struct.swaybar_host** %3, align 8
  %20 = getelementptr inbounds %struct.swaybar_host, %struct.swaybar_host* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (i32, i32*, i32, i32, i8*, i8*, i32, %struct.TYPE_2__*, i8*, i32, ...) @sd_bus_call_method_async(i32 %9, i32* null, i32 %12, i32 %13, i8* %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 0, %struct.TYPE_2__* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %1
  %26 = load i32, i32* @SWAY_ERROR, align 4
  %27 = load i32, i32* %4, align 4
  %28 = sub nsw i32 0, %27
  %29 = call i32 @strerror(i32 %28)
  %30 = call i32 @sway_log(i32 %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  store i32 0, i32* %2, align 4
  br label %61

31:                                               ; preds = %1
  %32 = load %struct.swaybar_host*, %struct.swaybar_host** %3, align 8
  %33 = getelementptr inbounds %struct.swaybar_host, %struct.swaybar_host* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.swaybar_host*, %struct.swaybar_host** %3, align 8
  %38 = getelementptr inbounds %struct.swaybar_host, %struct.swaybar_host* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @watcher_path, align 4
  %41 = load i32, i32* @get_registered_snis_callback, align 4
  %42 = load %struct.swaybar_host*, %struct.swaybar_host** %3, align 8
  %43 = getelementptr inbounds %struct.swaybar_host, %struct.swaybar_host* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load %struct.swaybar_host*, %struct.swaybar_host** %3, align 8
  %46 = getelementptr inbounds %struct.swaybar_host, %struct.swaybar_host* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (i32, i32*, i32, i32, i8*, i8*, i32, %struct.TYPE_2__*, i8*, i32, ...) @sd_bus_call_method_async(i32 %36, i32* null, i32 %39, i32 %40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %41, %struct.TYPE_2__* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %31
  %52 = load i32, i32* @SWAY_ERROR, align 4
  %53 = load i32, i32* %4, align 4
  %54 = sub nsw i32 0, %53
  %55 = call i32 @strerror(i32 %54)
  %56 = call i32 @sway_log(i32 %52, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %51, %31
  %58 = load i32, i32* %4, align 4
  %59 = icmp sge i32 %58, 0
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %57, %25
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @sd_bus_call_method_async(i32, i32*, i32, i32, i8*, i8*, i32, %struct.TYPE_2__*, i8*, i32, ...) #1

declare dso_local i32 @sway_log(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
