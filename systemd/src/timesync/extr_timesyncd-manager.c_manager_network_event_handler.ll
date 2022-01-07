; ModuleID = '/home/carl/AnghaBench/systemd/src/timesync/extr_timesyncd-manager.c_manager_network_event_handler.c'
source_filename = "/home/carl/AnghaBench/systemd/src/timesync/extr_timesyncd-manager.c_manager_network_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 }

@.str = private unnamed_addr constant [47 x i8] c"No network connectivity, watching for changes.\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"Network configuration changed, trying to establish connection.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i8*)* @manager_network_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @manager_network_event_handler(i32* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %10, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %18 = call i32 @assert(%struct.TYPE_8__* %17)
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @sd_network_monitor_flush(i32 %21)
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %24 = call i32 @manager_network_read_link_servers(%struct.TYPE_8__* %23)
  store i32 %24, i32* %11, align 4
  %25 = call i32 (...) @network_is_online()
  store i32 %25, i32* %13, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %27 = call i32 @manager_is_connected(%struct.TYPE_8__* %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = call i32 @log_info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %36 = call i32 @manager_disconnect(%struct.TYPE_8__* %35)
  br label %65

37:                                               ; preds = %30, %4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %64

43:                                               ; preds = %40, %37
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %43
  %47 = call i32 @log_info(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %54 = call i32 @manager_begin(%struct.TYPE_8__* %53)
  store i32 %54, i32* %14, align 4
  br label %58

55:                                               ; preds = %46
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %57 = call i32 @manager_connect(%struct.TYPE_8__* %56)
  store i32 %57, i32* %14, align 4
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i32, i32* %14, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32, i32* %14, align 4
  store i32 %62, i32* %5, align 4
  br label %66

63:                                               ; preds = %58
  br label %64

64:                                               ; preds = %63, %43, %40
  br label %65

65:                                               ; preds = %64, %33
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %65, %61
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @assert(%struct.TYPE_8__*) #1

declare dso_local i32 @sd_network_monitor_flush(i32) #1

declare dso_local i32 @manager_network_read_link_servers(%struct.TYPE_8__*) #1

declare dso_local i32 @network_is_online(...) #1

declare dso_local i32 @manager_is_connected(%struct.TYPE_8__*) #1

declare dso_local i32 @log_info(i8*) #1

declare dso_local i32 @manager_disconnect(%struct.TYPE_8__*) #1

declare dso_local i32 @manager_begin(%struct.TYPE_8__*) #1

declare dso_local i32 @manager_connect(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
