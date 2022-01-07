; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/extr_udev-event.c_udev_event_execute_rules.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/extr_udev-event.c_udev_event_execute_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32* }

@.str = private unnamed_addr constant [28 x i8] c"Failed to get subsystem: %m\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to get ACTION: %m\00", align 1
@DEVICE_ACTION_REMOVE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to clone sd_device object: %m\00", align 1
@DEVICE_ACTION_MOVE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed to apply udev rules: %m\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Failed to set initialization timestamp: %m\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"Failed to update tags under /run/udev/tag/: %m\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"Failed to update database under /run/udev/data/: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udev_event_execute_rules(%struct.TYPE_13__* %0, i32 %1, i32* %2, %struct.TYPE_13__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %9, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %15 = call i32 @assert(%struct.TYPE_13__* %14)
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %17 = call i32 @assert(%struct.TYPE_13__* %16)
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %12, align 8
  %21 = load i32*, i32** %12, align 8
  %22 = call i32 @sd_device_get_subsystem(i32* %21, i8** %10)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %4
  %26 = load i32*, i32** %12, align 8
  %27 = load i32, i32* %13, align 4
  %28 = call i32 @log_device_error_errno(i32* %26, i32 %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 %28, i32* %5, align 4
  br label %153

29:                                               ; preds = %4
  %30 = load i32*, i32** %12, align 8
  %31 = call i32 @device_get_action(i32* %30, i64* %11)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32*, i32** %12, align 8
  %36 = load i32, i32* %13, align 4
  %37 = call i32 @log_device_error_errno(i32* %35, i32 %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 %37, i32* %5, align 4
  br label %153

38:                                               ; preds = %29
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* @DEVICE_ACTION_REMOVE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32*, i32** %8, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %47 = call i32 @event_execute_rules_on_remove(%struct.TYPE_13__* %43, i32 %44, i32* %45, %struct.TYPE_13__* %46)
  store i32 0, i32* %5, align 4
  br label %153

48:                                               ; preds = %38
  %49 = load i32*, i32** %12, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = call i32 @device_clone_with_db(i32* %49, i64* %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = load i32*, i32** %12, align 8
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @log_device_debug_errno(i32* %56, i32 %57, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  store i32 %58, i32* %5, align 4
  br label %153

59:                                               ; preds = %48
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %59
  %65 = load i32*, i32** %12, align 8
  %66 = call i64 @sd_device_get_devnum(i32* %65, i32* null)
  %67 = icmp sge i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @udev_watch_end(i64 %71)
  br label %73

73:                                               ; preds = %68, %64, %59
  %74 = load i64, i64* %11, align 8
  %75 = load i64, i64* @DEVICE_ACTION_MOVE, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %73
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %79 = call i32 @udev_event_on_move(%struct.TYPE_13__* %78)
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* %13, align 4
  store i32 %83, i32* %5, align 4
  br label %153

84:                                               ; preds = %77
  br label %85

85:                                               ; preds = %84, %73
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %88 = load i32, i32* %7, align 4
  %89 = load i32*, i32** %8, align 8
  %90 = call i32 @udev_rules_apply_to_event(%struct.TYPE_13__* %86, %struct.TYPE_13__* %87, i32 %88, i32* %89)
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %13, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %85
  %94 = load i32*, i32** %12, align 8
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @log_device_debug_errno(i32* %94, i32 %95, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  store i32 %96, i32* %5, align 4
  br label %153

97:                                               ; preds = %85
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %99 = call i32 @rename_netif(%struct.TYPE_13__* %98)
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %13, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = load i32, i32* %13, align 4
  store i32 %103, i32* %5, align 4
  br label %153

104:                                              ; preds = %97
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %106 = call i32 @update_devnode(%struct.TYPE_13__* %105)
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %13, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = load i32, i32* %13, align 4
  store i32 %110, i32* %5, align 4
  br label %153

111:                                              ; preds = %104
  %112 = load i32*, i32** %12, align 8
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @device_ensure_usec_initialized(i32* %112, i64 %115)
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %13, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %111
  %120 = load i32*, i32** %12, align 8
  %121 = load i32, i32* %13, align 4
  %122 = call i32 @log_device_debug_errno(i32* %120, i32 %121, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  store i32 %122, i32* %5, align 4
  br label %153

123:                                              ; preds = %111
  %124 = load i32*, i32** %12, align 8
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @device_tag_index(i32* %124, i64 %127, i32 1)
  store i32 %128, i32* %13, align 4
  %129 = load i32, i32* %13, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %123
  %132 = load i32*, i32** %12, align 8
  %133 = load i32, i32* %13, align 4
  %134 = call i32 @log_device_debug_errno(i32* %132, i32 %133, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  store i32 %134, i32* %5, align 4
  br label %153

135:                                              ; preds = %123
  %136 = load i32*, i32** %12, align 8
  %137 = call i32 @device_update_db(i32* %136)
  store i32 %137, i32* %13, align 4
  %138 = load i32, i32* %13, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %135
  %141 = load i32*, i32** %12, align 8
  %142 = load i32, i32* %13, align 4
  %143 = call i32 @log_device_debug_errno(i32* %141, i32 %142, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0))
  store i32 %143, i32* %5, align 4
  br label %153

144:                                              ; preds = %135
  %145 = load i32*, i32** %12, align 8
  %146 = call i32 @device_set_is_initialized(i32* %145)
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = call i64 @sd_device_unref(i64 %149)
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 0
  store i64 %150, i64* %152, align 8
  store i32 0, i32* %5, align 4
  br label %153

153:                                              ; preds = %144, %140, %131, %119, %109, %102, %93, %82, %55, %42, %34, %25
  %154 = load i32, i32* %5, align 4
  ret i32 %154
}

declare dso_local i32 @assert(%struct.TYPE_13__*) #1

declare dso_local i32 @sd_device_get_subsystem(i32*, i8**) #1

declare dso_local i32 @log_device_error_errno(i32*, i32, i8*) #1

declare dso_local i32 @device_get_action(i32*, i64*) #1

declare dso_local i32 @event_execute_rules_on_remove(%struct.TYPE_13__*, i32, i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @device_clone_with_db(i32*, i64*) #1

declare dso_local i32 @log_device_debug_errno(i32*, i32, i8*) #1

declare dso_local i64 @sd_device_get_devnum(i32*, i32*) #1

declare dso_local i32 @udev_watch_end(i64) #1

declare dso_local i32 @udev_event_on_move(%struct.TYPE_13__*) #1

declare dso_local i32 @udev_rules_apply_to_event(%struct.TYPE_13__*, %struct.TYPE_13__*, i32, i32*) #1

declare dso_local i32 @rename_netif(%struct.TYPE_13__*) #1

declare dso_local i32 @update_devnode(%struct.TYPE_13__*) #1

declare dso_local i32 @device_ensure_usec_initialized(i32*, i64) #1

declare dso_local i32 @device_tag_index(i32*, i64, i32) #1

declare dso_local i32 @device_update_db(i32*) #1

declare dso_local i32 @device_set_is_initialized(i32*) #1

declare dso_local i64 @sd_device_unref(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
