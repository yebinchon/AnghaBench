; ModuleID = '/home/carl/AnghaBench/systemd/src/coredump/extr_coredump.c_run.c'
source_filename = "/home/carl/AnghaBench/systemd/src/coredump/extr_coredump.c_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOG_TARGET_KMSG = common dso_local global i32 0, align 4
@PR_SET_DUMPABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Selected storage '%s'.\00", align 1
@arg_storage = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Selected compression %s.\00", align 1
@arg_compress = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"Failed to determine the number of file descriptors: %m\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"--backtrace\00", align 1
@SD_LISTEN_FDS_START = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"Received unexpected number of file descriptors.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* @LOG_TARGET_KMSG, align 4
  %8 = call i32 @log_set_target(i32 %7)
  %9 = call i32 (...) @log_open()
  %10 = load i32, i32* @PR_SET_DUMPABLE, align 4
  %11 = call i32 @prctl(i32 %10, i32 0)
  %12 = call i32 (...) @parse_config()
  %13 = load i32, i32* @arg_storage, align 4
  %14 = call i32 @coredump_storage_to_string(i32 %13)
  %15 = call i32 @log_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @arg_compress, align 4
  %17 = call i32 @yes_no(i32 %16)
  %18 = call i32 @log_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = call i32 @sd_listen_fds(i32 0)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @log_error_errno(i32 %23, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  store i32 %24, i32* %3, align 4
  br label %53

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %25
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @streq_ptr(i8* %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i32, i32* %4, align 4
  %36 = load i8**, i8*** %5, align 8
  %37 = call i32 @process_backtrace(i32 %35, i8** %36)
  store i32 %37, i32* %3, align 4
  br label %53

38:                                               ; preds = %28
  %39 = load i32, i32* %4, align 4
  %40 = load i8**, i8*** %5, align 8
  %41 = call i32 @process_kernel(i32 %39, i8** %40)
  store i32 %41, i32* %3, align 4
  br label %53

42:                                               ; preds = %25
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* @SD_LISTEN_FDS_START, align 4
  %47 = call i32 @process_socket(i32 %46)
  store i32 %47, i32* %3, align 4
  br label %53

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* @EINVAL, align 4
  %51 = call i32 @SYNTHETIC_ERRNO(i32 %50)
  %52 = call i32 @log_error_errno(i32 %51, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %49, %45, %38, %34, %22
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @log_set_target(i32) #1

declare dso_local i32 @log_open(...) #1

declare dso_local i32 @prctl(i32, i32) #1

declare dso_local i32 @parse_config(...) #1

declare dso_local i32 @log_debug(i8*, i32) #1

declare dso_local i32 @coredump_storage_to_string(i32) #1

declare dso_local i32 @yes_no(i32) #1

declare dso_local i32 @sd_listen_fds(i32) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i64 @streq_ptr(i8*, i8*) #1

declare dso_local i32 @process_backtrace(i32, i8**) #1

declare dso_local i32 @process_kernel(i32, i8**) #1

declare dso_local i32 @process_socket(i32) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
