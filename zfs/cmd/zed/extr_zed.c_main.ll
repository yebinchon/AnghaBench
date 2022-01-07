; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/extr_zed.c_main.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/extr_zed.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zed_conf = type { i32, i32, i64, i64 }

@LOG_NOTICE = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Must be run as root\00", align 1
@STDERR_FILENO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to change to root directory\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@LOG_DAEMON = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"ZFS Event Daemon %s-%s (PID %d)\00", align 1
@ZFS_META_VERSION = common dso_local global i32 0, align 4
@ZFS_META_RELEASE = common dso_local global i32 0, align 4
@_got_exit = common dso_local global i32 0, align 4
@_got_hup = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"Exiting\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.zed_conf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i8**, i8*** %5, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @zed_log_init(i8* %11)
  %13 = load i32, i32* @LOG_NOTICE, align 4
  %14 = call i32 @zed_log_stderr_open(i32 %13)
  %15 = call %struct.zed_conf* (...) @zed_conf_create()
  store %struct.zed_conf* %15, %struct.zed_conf** %6, align 8
  %16 = load %struct.zed_conf*, %struct.zed_conf** %6, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = call i32 @zed_conf_parse_opts(%struct.zed_conf* %16, i32 %17, i8** %18)
  %20 = load %struct.zed_conf*, %struct.zed_conf** %6, align 8
  %21 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @LOG_INFO, align 4
  %26 = call i32 @zed_log_stderr_open(i32 %25)
  br label %27

27:                                               ; preds = %24, %2
  %28 = call i64 (...) @geteuid()
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = call i32 @zed_log_die(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %27
  %33 = load %struct.zed_conf*, %struct.zed_conf** %6, align 8
  %34 = call i32 @zed_conf_parse_file(%struct.zed_conf* %33)
  %35 = load i64, i64* @STDERR_FILENO, align 8
  %36 = add nsw i64 %35, 1
  %37 = call i32 @zed_file_close_from(i64 %36)
  %38 = call i32 @umask(i32 0)
  %39 = call i64 @chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = call i32 @zed_log_die(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %32
  %44 = load %struct.zed_conf*, %struct.zed_conf** %6, align 8
  %45 = call i64 @zed_conf_scan_dir(%struct.zed_conf* %44)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* @EXIT_FAILURE, align 4
  %49 = call i32 @exit(i32 %48) #3
  unreachable

50:                                               ; preds = %43
  %51 = load %struct.zed_conf*, %struct.zed_conf** %6, align 8
  %52 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %50
  %56 = call i32 (...) @_start_daemonize()
  %57 = load i32, i32* @LOG_DAEMON, align 4
  %58 = call i32 @zed_log_syslog_open(i32 %57)
  br label %59

59:                                               ; preds = %55, %50
  %60 = call i32 (...) @_setup_sig_handlers()
  %61 = load %struct.zed_conf*, %struct.zed_conf** %6, align 8
  %62 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = call i32 (...) @_lock_memory()
  br label %67

67:                                               ; preds = %65, %59
  %68 = load %struct.zed_conf*, %struct.zed_conf** %6, align 8
  %69 = call i64 @zed_conf_write_pid(%struct.zed_conf* %68)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %67
  %72 = load %struct.zed_conf*, %struct.zed_conf** %6, align 8
  %73 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %71
  %77 = load i32, i32* @EXIT_FAILURE, align 4
  %78 = call i32 @exit(i32 %77) #3
  unreachable

79:                                               ; preds = %71, %67
  %80 = load %struct.zed_conf*, %struct.zed_conf** %6, align 8
  %81 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %79
  %85 = call i32 (...) @_finish_daemonize()
  br label %86

86:                                               ; preds = %84, %79
  %87 = load i32, i32* @LOG_NOTICE, align 4
  %88 = load i32, i32* @ZFS_META_VERSION, align 4
  %89 = load i32, i32* @ZFS_META_RELEASE, align 4
  %90 = call i64 (...) @getpid()
  %91 = trunc i64 %90 to i32
  %92 = call i32 (i32, i8*, ...) @zed_log_msg(i32 %87, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %88, i32 %89, i32 %91)
  %93 = load %struct.zed_conf*, %struct.zed_conf** %6, align 8
  %94 = call i64 @zed_conf_open_state(%struct.zed_conf* %93)
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %86
  %97 = load i32, i32* @EXIT_FAILURE, align 4
  %98 = call i32 @exit(i32 %97) #3
  unreachable

99:                                               ; preds = %86
  %100 = load %struct.zed_conf*, %struct.zed_conf** %6, align 8
  %101 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %102 = call i64 @zed_conf_read_state(%struct.zed_conf* %100, i32* %7, i32* %101)
  %103 = icmp slt i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load i32, i32* @EXIT_FAILURE, align 4
  %106 = call i32 @exit(i32 %105) #3
  unreachable

107:                                              ; preds = %99
  %108 = load %struct.zed_conf*, %struct.zed_conf** %6, align 8
  %109 = call i32 @zed_event_init(%struct.zed_conf* %108)
  %110 = load %struct.zed_conf*, %struct.zed_conf** %6, align 8
  %111 = load i32, i32* %7, align 4
  %112 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %113 = call i32 @zed_event_seek(%struct.zed_conf* %110, i32 %111, i32* %112)
  br label %114

114:                                              ; preds = %124, %107
  %115 = load i32, i32* @_got_exit, align 4
  %116 = icmp ne i32 %115, 0
  %117 = xor i1 %116, true
  br i1 %117, label %118, label %127

118:                                              ; preds = %114
  %119 = load i64, i64* @_got_hup, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  store i64 0, i64* @_got_hup, align 8
  %122 = load %struct.zed_conf*, %struct.zed_conf** %6, align 8
  %123 = call i64 @zed_conf_scan_dir(%struct.zed_conf* %122)
  br label %124

124:                                              ; preds = %121, %118
  %125 = load %struct.zed_conf*, %struct.zed_conf** %6, align 8
  %126 = call i32 @zed_event_service(%struct.zed_conf* %125)
  br label %114

127:                                              ; preds = %114
  %128 = load i32, i32* @LOG_NOTICE, align 4
  %129 = call i32 (i32, i8*, ...) @zed_log_msg(i32 %128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %130 = load %struct.zed_conf*, %struct.zed_conf** %6, align 8
  %131 = call i32 @zed_event_fini(%struct.zed_conf* %130)
  %132 = load %struct.zed_conf*, %struct.zed_conf** %6, align 8
  %133 = call i32 @zed_conf_destroy(%struct.zed_conf* %132)
  %134 = call i32 (...) @zed_log_fini()
  %135 = load i32, i32* @EXIT_SUCCESS, align 4
  %136 = call i32 @exit(i32 %135) #3
  unreachable
}

declare dso_local i32 @zed_log_init(i8*) #1

declare dso_local i32 @zed_log_stderr_open(i32) #1

declare dso_local %struct.zed_conf* @zed_conf_create(...) #1

declare dso_local i32 @zed_conf_parse_opts(%struct.zed_conf*, i32, i8**) #1

declare dso_local i64 @geteuid(...) #1

declare dso_local i32 @zed_log_die(i8*) #1

declare dso_local i32 @zed_conf_parse_file(%struct.zed_conf*) #1

declare dso_local i32 @zed_file_close_from(i64) #1

declare dso_local i32 @umask(i32) #1

declare dso_local i64 @chdir(i8*) #1

declare dso_local i64 @zed_conf_scan_dir(%struct.zed_conf*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @_start_daemonize(...) #1

declare dso_local i32 @zed_log_syslog_open(i32) #1

declare dso_local i32 @_setup_sig_handlers(...) #1

declare dso_local i32 @_lock_memory(...) #1

declare dso_local i64 @zed_conf_write_pid(%struct.zed_conf*) #1

declare dso_local i32 @_finish_daemonize(...) #1

declare dso_local i32 @zed_log_msg(i32, i8*, ...) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i64 @zed_conf_open_state(%struct.zed_conf*) #1

declare dso_local i64 @zed_conf_read_state(%struct.zed_conf*, i32*, i32*) #1

declare dso_local i32 @zed_event_init(%struct.zed_conf*) #1

declare dso_local i32 @zed_event_seek(%struct.zed_conf*, i32, i32*) #1

declare dso_local i32 @zed_event_service(%struct.zed_conf*) #1

declare dso_local i32 @zed_event_fini(%struct.zed_conf*) #1

declare dso_local i32 @zed_conf_destroy(%struct.zed_conf*) #1

declare dso_local i32 @zed_log_fini(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
