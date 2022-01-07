; ModuleID = '/home/carl/AnghaBench/toxcore/other/bootstrap_daemon/src/extr_command_line_arguments.c_print_help.c'
source_filename = "/home/carl/AnghaBench/toxcore/other/bootstrap_daemon/src/extr_command_line_arguments.c_print_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOG_LEVEL_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [941 x i8] c"Usage: tox-bootstrapd [OPTION]... --config=FILE_PATH\0A\0AOptions:\0A  --config=FILE_PATH     Specify path to the config file.\0A                         This is a required option.\0A                         Set FILE_PATH to a path to an empty file in order to\0A                         use default settings.\0A  --foreground           Run the daemon in foreground. The daemon won't fork\0A                         (detach from the terminal) and won't use the PID file.\0A  --help                 Print this help message.\0A  --log-backend=BACKEND  Specify which logging backend to use.\0A                         Valid BACKEND values (case sensetive):\0A                           syslog Writes log messages to syslog.\0A                                  Default option when no --log-backend is\0A                                  specified.\0A                           stdout Writes log messages to stdout/stderr.\0A  --version              Print version information.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_help() #0 {
  %1 = load i32, i32* @LOG_LEVEL_INFO, align 4
  %2 = call i32 @write_log(i32 %1, i8* getelementptr inbounds ([941 x i8], [941 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @write_log(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
