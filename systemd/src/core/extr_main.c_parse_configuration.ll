; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_main.c_parse_configuration.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_main.c_parse_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Failed to parse config file, ignoring: %m\00", align 1
@arg_system = common dso_local global i64 0, align 8
@parse_proc_cmdline_item = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Failed to parse kernel command line, ignoring: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rlimit*, %struct.rlimit*)* @parse_configuration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_configuration(%struct.rlimit* %0, %struct.rlimit* %1) #0 {
  %3 = alloca %struct.rlimit*, align 8
  %4 = alloca %struct.rlimit*, align 8
  %5 = alloca i32, align 4
  store %struct.rlimit* %0, %struct.rlimit** %3, align 8
  store %struct.rlimit* %1, %struct.rlimit** %4, align 8
  %6 = load %struct.rlimit*, %struct.rlimit** %3, align 8
  %7 = call i32 @assert(%struct.rlimit* %6)
  %8 = load %struct.rlimit*, %struct.rlimit** %4, align 8
  %9 = call i32 @assert(%struct.rlimit* %8)
  %10 = call i32 (...) @reset_arguments()
  %11 = call i32 (...) @parse_config_file()
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @log_warning_errno(i32 %15, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %14, %2
  %18 = load i64, i64* @arg_system, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = load i32, i32* @parse_proc_cmdline_item, align 4
  %22 = call i32 @proc_cmdline_parse(i32 %21, i32* null, i32 0)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @log_warning_errno(i32 %26, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %20
  br label %29

29:                                               ; preds = %28, %17
  %30 = load %struct.rlimit*, %struct.rlimit** %3, align 8
  %31 = call i32 @fallback_rlimit_nofile(%struct.rlimit* %30)
  %32 = load %struct.rlimit*, %struct.rlimit** %4, align 8
  %33 = call i32 @fallback_rlimit_memlock(%struct.rlimit* %32)
  %34 = call i32 (...) @log_parse_environment()
  ret i32 0
}

declare dso_local i32 @assert(%struct.rlimit*) #1

declare dso_local i32 @reset_arguments(...) #1

declare dso_local i32 @parse_config_file(...) #1

declare dso_local i32 @log_warning_errno(i32, i8*) #1

declare dso_local i32 @proc_cmdline_parse(i32, i32*, i32) #1

declare dso_local i32 @fallback_rlimit_nofile(%struct.rlimit*) #1

declare dso_local i32 @fallback_rlimit_memlock(%struct.rlimit*) #1

declare dso_local i32 @log_parse_environment(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
