; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_main.c_initialize_runtime.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_main.c_initialize_runtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i32 }

@arg_action = common dso_local global i64 0, align 8
@ACTION_RUN = common dso_local global i64 0, align 8
@arg_system = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Failed to mount cgroup hierarchies\00", align 1
@arg_machine_id = common dso_local global i32 0, align 4
@arg_watchdog_device = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"Failed to set watchdog device to %s, ignoring: %m\00", align 1
@arg_runtime_watchdog = common dso_local global i32 0, align 4
@arg_timer_slack_nsec = common dso_local global i64 0, align 8
@NSEC_INFINITY = common dso_local global i64 0, align 8
@PR_SET_TIMERSLACK = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Failed to adjust timer slack, ignoring: %m\00", align 1
@arg_capability_bounding_set = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [59 x i8] c"Failed to drop capability bounding set of usermode helpers\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"Failed to drop capability bounding set of usermode helpers: %m\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Failed to drop capability bounding set\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"Failed to drop capability bounding set: %m\00", align 1
@arg_no_new_privs = common dso_local global i64 0, align 8
@PR_SET_NO_NEW_PRIVS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"Failed to disable new privileges\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Failed to disable new privileges: %m\00", align 1
@arg_syscall_archs = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [36 x i8] c"Failed to set syscall architectures\00", align 1
@PR_SET_CHILD_SUBREAPER = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [34 x i8] c"Failed to make us a subreaper: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.rlimit*, %struct.rlimit*, i8**)* @initialize_runtime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initialize_runtime(i32 %0, %struct.rlimit* %1, %struct.rlimit* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rlimit*, align 8
  %8 = alloca %struct.rlimit*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.rlimit* %1, %struct.rlimit** %7, align 8
  store %struct.rlimit* %2, %struct.rlimit** %8, align 8
  store i8** %3, i8*** %9, align 8
  %11 = load i8**, i8*** %9, align 8
  %12 = call i32 @assert(i8** %11)
  %13 = load i64, i64* @arg_action, align 8
  %14 = load i64, i64* @ACTION_RUN, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %148

17:                                               ; preds = %4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @update_cpu_affinity(i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @update_numa_policy(i32 %20)
  %22 = load i64, i64* @arg_system, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %65

24:                                               ; preds = %17
  %25 = call i32 (...) @install_crash_handler()
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %45, label %28

28:                                               ; preds = %24
  %29 = call i32 (...) @mount_cgroup_controllers()
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i8**, i8*** %9, align 8
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8** %33, align 8
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %5, align 4
  br label %148

35:                                               ; preds = %28
  %36 = call i32 (...) @status_welcome()
  %37 = call i32 (...) @hostname_setup()
  %38 = load i32, i32* @arg_machine_id, align 4
  %39 = call i32 @machine_id_setup(i32* null, i32 %38, i32* null)
  %40 = call i32 (...) @loopback_setup()
  %41 = call i32 (...) @bump_unix_max_dgram_qlen()
  %42 = call i32 (...) @bump_file_max_and_nr_open()
  %43 = call i32 (...) @test_usr()
  %44 = call i32 (...) @write_container_id()
  br label %45

45:                                               ; preds = %35, %24
  %46 = load i64, i64* @arg_watchdog_device, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %45
  %49 = load i64, i64* @arg_watchdog_device, align 8
  %50 = call i32 @watchdog_set_device(i64 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i32, i32* %10, align 4
  %55 = load i64, i64* @arg_watchdog_device, align 8
  %56 = call i32 (i32, i8*, ...) @log_warning_errno(i32 %54, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i64 %55)
  br label %57

57:                                               ; preds = %53, %48
  br label %58

58:                                               ; preds = %57, %45
  %59 = load i32, i32* @arg_runtime_watchdog, align 4
  %60 = call i64 @timestamp_is_set(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = call i32 @watchdog_set_timeout(i32* @arg_runtime_watchdog)
  br label %64

64:                                               ; preds = %62, %58
  br label %65

65:                                               ; preds = %64, %17
  %66 = load i64, i64* @arg_timer_slack_nsec, align 8
  %67 = load i64, i64* @NSEC_INFINITY, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %65
  %70 = load i32, i32* @PR_SET_TIMERSLACK, align 4
  %71 = load i64, i64* @arg_timer_slack_nsec, align 8
  %72 = trunc i64 %71 to i32
  %73 = call i64 (i32, i32, ...) @prctl(i32 %70, i32 %72)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load i32, i32* @errno, align 4
  %77 = call i32 (i32, i8*, ...) @log_warning_errno(i32 %76, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %78

78:                                               ; preds = %75, %69
  br label %79

79:                                               ; preds = %78, %65
  %80 = load i64, i64* @arg_system, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %105

82:                                               ; preds = %79
  %83 = load i32, i32* @arg_capability_bounding_set, align 4
  %84 = call i32 @cap_test_all(i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %105, label %86

86:                                               ; preds = %82
  %87 = load i32, i32* @arg_capability_bounding_set, align 4
  %88 = call i32 @capability_bounding_set_drop_usermode(i32 %87)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load i8**, i8*** %9, align 8
  store i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i8** %92, align 8
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @log_emergency_errno(i32 %93, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0))
  store i32 %94, i32* %5, align 4
  br label %148

95:                                               ; preds = %86
  %96 = load i32, i32* @arg_capability_bounding_set, align 4
  %97 = call i32 @capability_bounding_set_drop(i32 %96, i32 1)
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %10, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load i8**, i8*** %9, align 8
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i8** %101, align 8
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @log_emergency_errno(i32 %102, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  store i32 %103, i32* %5, align 4
  br label %148

104:                                              ; preds = %95
  br label %105

105:                                              ; preds = %104, %82, %79
  %106 = load i64, i64* @arg_system, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %105
  %109 = load i64, i64* @arg_no_new_privs, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %108
  %112 = load i32, i32* @PR_SET_NO_NEW_PRIVS, align 4
  %113 = call i64 (i32, i32, ...) @prctl(i32 %112, i32 1, i32 0, i32 0, i32 0)
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = load i8**, i8*** %9, align 8
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i8** %116, align 8
  %117 = load i32, i32* @errno, align 4
  %118 = call i32 @log_emergency_errno(i32 %117, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  store i32 %118, i32* %5, align 4
  br label %148

119:                                              ; preds = %111
  br label %120

120:                                              ; preds = %119, %108, %105
  %121 = load i64, i64* @arg_syscall_archs, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %120
  %124 = load i64, i64* @arg_syscall_archs, align 8
  %125 = call i32 @enforce_syscall_archs(i64 %124)
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %10, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load i8**, i8*** %9, align 8
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i8** %129, align 8
  %130 = load i32, i32* %10, align 4
  store i32 %130, i32* %5, align 4
  br label %148

131:                                              ; preds = %123
  br label %132

132:                                              ; preds = %131, %120
  %133 = load i64, i64* @arg_system, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %143, label %135

135:                                              ; preds = %132
  %136 = load i32, i32* @PR_SET_CHILD_SUBREAPER, align 4
  %137 = call i64 (i32, i32, ...) @prctl(i32 %136, i32 1)
  %138 = icmp slt i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = load i32, i32* @errno, align 4
  %141 = call i32 (i32, i8*, ...) @log_warning_errno(i32 %140, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  br label %142

142:                                              ; preds = %139, %135
  br label %143

143:                                              ; preds = %142, %132
  %144 = load %struct.rlimit*, %struct.rlimit** %7, align 8
  %145 = call i32 @bump_rlimit_nofile(%struct.rlimit* %144)
  %146 = load %struct.rlimit*, %struct.rlimit** %8, align 8
  %147 = call i32 @bump_rlimit_memlock(%struct.rlimit* %146)
  store i32 0, i32* %5, align 4
  br label %148

148:                                              ; preds = %143, %128, %115, %100, %91, %32, %16
  %149 = load i32, i32* %5, align 4
  ret i32 %149
}

declare dso_local i32 @assert(i8**) #1

declare dso_local i32 @update_cpu_affinity(i32) #1

declare dso_local i32 @update_numa_policy(i32) #1

declare dso_local i32 @install_crash_handler(...) #1

declare dso_local i32 @mount_cgroup_controllers(...) #1

declare dso_local i32 @status_welcome(...) #1

declare dso_local i32 @hostname_setup(...) #1

declare dso_local i32 @machine_id_setup(i32*, i32, i32*) #1

declare dso_local i32 @loopback_setup(...) #1

declare dso_local i32 @bump_unix_max_dgram_qlen(...) #1

declare dso_local i32 @bump_file_max_and_nr_open(...) #1

declare dso_local i32 @test_usr(...) #1

declare dso_local i32 @write_container_id(...) #1

declare dso_local i32 @watchdog_set_device(i64) #1

declare dso_local i32 @log_warning_errno(i32, i8*, ...) #1

declare dso_local i64 @timestamp_is_set(i32) #1

declare dso_local i32 @watchdog_set_timeout(i32*) #1

declare dso_local i64 @prctl(i32, i32, ...) #1

declare dso_local i32 @cap_test_all(i32) #1

declare dso_local i32 @capability_bounding_set_drop_usermode(i32) #1

declare dso_local i32 @log_emergency_errno(i32, i8*) #1

declare dso_local i32 @capability_bounding_set_drop(i32, i32) #1

declare dso_local i32 @enforce_syscall_archs(i64) #1

declare dso_local i32 @bump_rlimit_nofile(%struct.rlimit*) #1

declare dso_local i32 @bump_rlimit_memlock(%struct.rlimit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
