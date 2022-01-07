; ModuleID = '/home/carl/AnghaBench/systemd/src/systemctl/extr_systemctl.c_help_states.c'
source_filename = "/home/carl/AnghaBench/systemd/src/systemctl/extr_systemctl.c_help_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arg_no_legend = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Available unit load states:\00", align 1
@unit_load_state = common dso_local global i32 0, align 4
@UnitLoadState = common dso_local global i32 0, align 4
@_UNIT_LOAD_STATE_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"\0AAvailable unit active states:\00", align 1
@unit_active_state = common dso_local global i32 0, align 4
@UnitActiveState = common dso_local global i32 0, align 4
@_UNIT_ACTIVE_STATE_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"\0AAvailable unit file states:\00", align 1
@unit_file_state = common dso_local global i32 0, align 4
@UnitFileState = common dso_local global i32 0, align 4
@_UNIT_FILE_STATE_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"\0AAvailable automount unit substates:\00", align 1
@automount_state = common dso_local global i32 0, align 4
@AutomountState = common dso_local global i32 0, align 4
@_AUTOMOUNT_STATE_MAX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"\0AAvailable device unit substates:\00", align 1
@device_state = common dso_local global i32 0, align 4
@DeviceState = common dso_local global i32 0, align 4
@_DEVICE_STATE_MAX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"\0AAvailable mount unit substates:\00", align 1
@mount_state = common dso_local global i32 0, align 4
@MountState = common dso_local global i32 0, align 4
@_MOUNT_STATE_MAX = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"\0AAvailable path unit substates:\00", align 1
@path_state = common dso_local global i32 0, align 4
@PathState = common dso_local global i32 0, align 4
@_PATH_STATE_MAX = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"\0AAvailable scope unit substates:\00", align 1
@scope_state = common dso_local global i32 0, align 4
@ScopeState = common dso_local global i32 0, align 4
@_SCOPE_STATE_MAX = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [35 x i8] c"\0AAvailable service unit substates:\00", align 1
@service_state = common dso_local global i32 0, align 4
@ServiceState = common dso_local global i32 0, align 4
@_SERVICE_STATE_MAX = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"\0AAvailable slice unit substates:\00", align 1
@slice_state = common dso_local global i32 0, align 4
@SliceState = common dso_local global i32 0, align 4
@_SLICE_STATE_MAX = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [34 x i8] c"\0AAvailable socket unit substates:\00", align 1
@socket_state = common dso_local global i32 0, align 4
@SocketState = common dso_local global i32 0, align 4
@_SOCKET_STATE_MAX = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [32 x i8] c"\0AAvailable swap unit substates:\00", align 1
@swap_state = common dso_local global i32 0, align 4
@SwapState = common dso_local global i32 0, align 4
@_SWAP_STATE_MAX = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [34 x i8] c"\0AAvailable target unit substates:\00", align 1
@target_state = common dso_local global i32 0, align 4
@TargetState = common dso_local global i32 0, align 4
@_TARGET_STATE_MAX = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [33 x i8] c"\0AAvailable timer unit substates:\00", align 1
@timer_state = common dso_local global i32 0, align 4
@TimerState = common dso_local global i32 0, align 4
@_TIMER_STATE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @help_states to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @help_states() #0 {
  %1 = load i32, i32* @arg_no_legend, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = call i32 @puts(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %5

5:                                                ; preds = %3, %0
  %6 = load i32, i32* @unit_load_state, align 4
  %7 = load i32, i32* @UnitLoadState, align 4
  %8 = load i32, i32* @_UNIT_LOAD_STATE_MAX, align 4
  %9 = call i32 @DUMP_STRING_TABLE(i32 %6, i32 %7, i32 %8)
  %10 = load i32, i32* @arg_no_legend, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %5
  %13 = call i32 @puts(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %5
  %15 = load i32, i32* @unit_active_state, align 4
  %16 = load i32, i32* @UnitActiveState, align 4
  %17 = load i32, i32* @_UNIT_ACTIVE_STATE_MAX, align 4
  %18 = call i32 @DUMP_STRING_TABLE(i32 %15, i32 %16, i32 %17)
  %19 = load i32, i32* @arg_no_legend, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  %22 = call i32 @puts(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %14
  %24 = load i32, i32* @unit_file_state, align 4
  %25 = load i32, i32* @UnitFileState, align 4
  %26 = load i32, i32* @_UNIT_FILE_STATE_MAX, align 4
  %27 = call i32 @DUMP_STRING_TABLE(i32 %24, i32 %25, i32 %26)
  %28 = load i32, i32* @arg_no_legend, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %23
  %31 = call i32 @puts(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %23
  %33 = load i32, i32* @automount_state, align 4
  %34 = load i32, i32* @AutomountState, align 4
  %35 = load i32, i32* @_AUTOMOUNT_STATE_MAX, align 4
  %36 = call i32 @DUMP_STRING_TABLE(i32 %33, i32 %34, i32 %35)
  %37 = load i32, i32* @arg_no_legend, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %32
  %40 = call i32 @puts(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %32
  %42 = load i32, i32* @device_state, align 4
  %43 = load i32, i32* @DeviceState, align 4
  %44 = load i32, i32* @_DEVICE_STATE_MAX, align 4
  %45 = call i32 @DUMP_STRING_TABLE(i32 %42, i32 %43, i32 %44)
  %46 = load i32, i32* @arg_no_legend, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %41
  %49 = call i32 @puts(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %41
  %51 = load i32, i32* @mount_state, align 4
  %52 = load i32, i32* @MountState, align 4
  %53 = load i32, i32* @_MOUNT_STATE_MAX, align 4
  %54 = call i32 @DUMP_STRING_TABLE(i32 %51, i32 %52, i32 %53)
  %55 = load i32, i32* @arg_no_legend, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %50
  %58 = call i32 @puts(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %50
  %60 = load i32, i32* @path_state, align 4
  %61 = load i32, i32* @PathState, align 4
  %62 = load i32, i32* @_PATH_STATE_MAX, align 4
  %63 = call i32 @DUMP_STRING_TABLE(i32 %60, i32 %61, i32 %62)
  %64 = load i32, i32* @arg_no_legend, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %59
  %67 = call i32 @puts(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %59
  %69 = load i32, i32* @scope_state, align 4
  %70 = load i32, i32* @ScopeState, align 4
  %71 = load i32, i32* @_SCOPE_STATE_MAX, align 4
  %72 = call i32 @DUMP_STRING_TABLE(i32 %69, i32 %70, i32 %71)
  %73 = load i32, i32* @arg_no_legend, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %68
  %76 = call i32 @puts(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %68
  %78 = load i32, i32* @service_state, align 4
  %79 = load i32, i32* @ServiceState, align 4
  %80 = load i32, i32* @_SERVICE_STATE_MAX, align 4
  %81 = call i32 @DUMP_STRING_TABLE(i32 %78, i32 %79, i32 %80)
  %82 = load i32, i32* @arg_no_legend, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %77
  %85 = call i32 @puts(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %77
  %87 = load i32, i32* @slice_state, align 4
  %88 = load i32, i32* @SliceState, align 4
  %89 = load i32, i32* @_SLICE_STATE_MAX, align 4
  %90 = call i32 @DUMP_STRING_TABLE(i32 %87, i32 %88, i32 %89)
  %91 = load i32, i32* @arg_no_legend, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %86
  %94 = call i32 @puts(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %86
  %96 = load i32, i32* @socket_state, align 4
  %97 = load i32, i32* @SocketState, align 4
  %98 = load i32, i32* @_SOCKET_STATE_MAX, align 4
  %99 = call i32 @DUMP_STRING_TABLE(i32 %96, i32 %97, i32 %98)
  %100 = load i32, i32* @arg_no_legend, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %95
  %103 = call i32 @puts(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %95
  %105 = load i32, i32* @swap_state, align 4
  %106 = load i32, i32* @SwapState, align 4
  %107 = load i32, i32* @_SWAP_STATE_MAX, align 4
  %108 = call i32 @DUMP_STRING_TABLE(i32 %105, i32 %106, i32 %107)
  %109 = load i32, i32* @arg_no_legend, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %104
  %112 = call i32 @puts(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0))
  br label %113

113:                                              ; preds = %111, %104
  %114 = load i32, i32* @target_state, align 4
  %115 = load i32, i32* @TargetState, align 4
  %116 = load i32, i32* @_TARGET_STATE_MAX, align 4
  %117 = call i32 @DUMP_STRING_TABLE(i32 %114, i32 %115, i32 %116)
  %118 = load i32, i32* @arg_no_legend, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %113
  %121 = call i32 @puts(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0))
  br label %122

122:                                              ; preds = %120, %113
  %123 = load i32, i32* @timer_state, align 4
  %124 = load i32, i32* @TimerState, align 4
  %125 = load i32, i32* @_TIMER_STATE_MAX, align 4
  %126 = call i32 @DUMP_STRING_TABLE(i32 %123, i32 %124, i32 %125)
  ret void
}

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @DUMP_STRING_TABLE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
