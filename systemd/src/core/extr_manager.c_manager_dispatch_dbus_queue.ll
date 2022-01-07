; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_manager.c_manager_dispatch_dbus_queue.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_manager.c_manager_dispatch_dbus_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64, %struct.TYPE_14__*, %struct.TYPE_12__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_12__ = type { %struct.TYPE_13__* }

@MANAGER_BUS_BUSY_THRESHOLD = common dso_local global i64 0, align 8
@MANAGER_BUS_MESSAGE_BUDGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @manager_dispatch_dbus_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @manager_dispatch_dbus_queue(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %9 = call i32 @assert(%struct.TYPE_13__* %8)
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %11 = call i64 @MANAGER_IS_RELOADING(%struct.TYPE_13__* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %1
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %13, %1
  store i32 -1, i32* %5, align 4
  br label %43

24:                                               ; preds = %18
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %28 = icmp ne %struct.TYPE_12__* %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %24
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %33 = icmp ne %struct.TYPE_14__* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %119

35:                                               ; preds = %29, %24
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %37 = call i64 @manager_bus_n_queued_write(%struct.TYPE_13__* %36)
  %38 = load i64, i64* @MANAGER_BUS_BUSY_THRESHOLD, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %119

41:                                               ; preds = %35
  %42 = load i32, i32* @MANAGER_BUS_MESSAGE_BUDGET, align 4
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %41, %23
  br label %44

44:                                               ; preds = %68, %43
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  store %struct.TYPE_12__* %50, %struct.TYPE_12__** %6, align 8
  %51 = icmp ne %struct.TYPE_12__* %50, null
  br label %52

52:                                               ; preds = %47, %44
  %53 = phi i1 [ false, %44 ], [ %51, %47 ]
  br i1 %53, label %54, label %69

54:                                               ; preds = %52
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %56, align 8
  %58 = call i32 @assert(%struct.TYPE_13__* %57)
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %60 = call i32 @bus_unit_send_change_signal(%struct.TYPE_12__* %59)
  %61 = load i32, i32* %4, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, -1
  br i1 %64, label %65, label %68

65:                                               ; preds = %54
  %66 = load i32, i32* %5, align 4
  %67 = add i32 %66, -1
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %65, %54
  br label %44

69:                                               ; preds = %52
  br label %70

70:                                               ; preds = %94, %69
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %75, align 8
  store %struct.TYPE_14__* %76, %struct.TYPE_14__** %7, align 8
  %77 = icmp ne %struct.TYPE_14__* %76, null
  br label %78

78:                                               ; preds = %73, %70
  %79 = phi i1 [ false, %70 ], [ %77, %73 ]
  br i1 %79, label %80, label %95

80:                                               ; preds = %78
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %82, align 8
  %84 = call i32 @assert(%struct.TYPE_13__* %83)
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %86 = call i32 @bus_job_send_change_signal(%struct.TYPE_14__* %85)
  %87 = load i32, i32* %4, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, -1
  br i1 %90, label %91, label %94

91:                                               ; preds = %80
  %92 = load i32, i32* %5, align 4
  %93 = add i32 %92, -1
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %91, %80
  br label %70

95:                                               ; preds = %78
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %95
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  store i32 0, i32* %102, align 8
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %104 = call i32 @bus_manager_send_reloading(%struct.TYPE_13__* %103, i32 0)
  %105 = load i32, i32* %4, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %100, %95
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %114 = call i32 @bus_send_pending_reload_message(%struct.TYPE_13__* %113)
  %115 = load i32, i32* %4, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %112, %107
  %118 = load i32, i32* %4, align 4
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %117, %40, %34
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @assert(%struct.TYPE_13__*) #1

declare dso_local i64 @MANAGER_IS_RELOADING(%struct.TYPE_13__*) #1

declare dso_local i64 @manager_bus_n_queued_write(%struct.TYPE_13__*) #1

declare dso_local i32 @bus_unit_send_change_signal(%struct.TYPE_12__*) #1

declare dso_local i32 @bus_job_send_change_signal(%struct.TYPE_14__*) #1

declare dso_local i32 @bus_manager_send_reloading(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @bus_send_pending_reload_message(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
