; ModuleID = '/home/carl/AnghaBench/systemd/src/coredump/extr_coredump.c_process_kernel.c'
source_filename = "/home/carl/AnghaBench/systemd/src/coredump/extr_coredump.c_process_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }
%struct.iovec_wrapper = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"Processing coredump received from the kernel...\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"MESSAGE_ID=\00", align 1
@SD_MESSAGE_COREDUMP_STR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"PRIORITY=\00", align 1
@LOG_CRIT = common dso_local global i32 0, align 4
@LOG_TARGET_JOURNAL_OR_KMSG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [72 x i8] c"Due to PID 1 having crashed coredump collection will now be turned off.\00", align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @process_kernel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_kernel(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca %struct.iovec_wrapper*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = bitcast %struct.TYPE_5__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 16, i1 false)
  %10 = call i32 @log_debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %11 = call %struct.iovec_wrapper* (...) @iovw_new()
  store %struct.iovec_wrapper* %11, %struct.iovec_wrapper** %7, align 8
  %12 = load %struct.iovec_wrapper*, %struct.iovec_wrapper** %7, align 8
  %13 = icmp ne %struct.iovec_wrapper* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = call i32 (...) @log_oom()
  store i32 %15, i32* %3, align 4
  br label %75

16:                                               ; preds = %2
  %17 = load %struct.iovec_wrapper*, %struct.iovec_wrapper** %7, align 8
  %18 = load i32, i32* @SD_MESSAGE_COREDUMP_STR, align 4
  %19 = call i32 @iovw_put_string_field(%struct.iovec_wrapper* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load %struct.iovec_wrapper*, %struct.iovec_wrapper** %7, align 8
  %21 = load i32, i32* @LOG_CRIT, align 4
  %22 = call i32 @STRINGIFY(i32 %21)
  %23 = call i32 @iovw_put_string_field(%struct.iovec_wrapper* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  %24 = load %struct.iovec_wrapper*, %struct.iovec_wrapper** %7, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sub nsw i32 %25, 1
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  %29 = call i32 @gather_pid_metadata_from_argv(%struct.iovec_wrapper* %24, %struct.TYPE_5__* %6, i32 %26, i8** %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %16
  br label %71

33:                                               ; preds = %16
  %34 = load %struct.iovec_wrapper*, %struct.iovec_wrapper** %7, align 8
  %35 = call i32 @gather_pid_metadata(%struct.iovec_wrapper* %34, %struct.TYPE_5__* %6)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %71

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @LOG_TARGET_JOURNAL_OR_KMSG, align 4
  %45 = call i32 @log_set_target(i32 %44)
  %46 = call i32 (...) @log_open()
  br label %47

47:                                               ; preds = %43, %39
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = call i32 @log_notice(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.3, i64 0, i64 0))
  %53 = call i32 (...) @disable_coredumps()
  br label %54

54:                                               ; preds = %51, %47
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58, %54
  %63 = load %struct.iovec_wrapper*, %struct.iovec_wrapper** %7, align 8
  %64 = load i32, i32* @STDIN_FILENO, align 4
  %65 = call i32 @submit_coredump(%struct.TYPE_5__* %6, %struct.iovec_wrapper* %63, i32 %64)
  store i32 %65, i32* %8, align 4
  br label %70

66:                                               ; preds = %58
  %67 = load %struct.iovec_wrapper*, %struct.iovec_wrapper** %7, align 8
  %68 = load i32, i32* @STDIN_FILENO, align 4
  %69 = call i32 @send_iovec(%struct.iovec_wrapper* %67, i32 %68)
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %66, %62
  br label %71

71:                                               ; preds = %70, %38, %32
  %72 = load %struct.iovec_wrapper*, %struct.iovec_wrapper** %7, align 8
  %73 = call %struct.iovec_wrapper* @iovw_free_free(%struct.iovec_wrapper* %72)
  store %struct.iovec_wrapper* %73, %struct.iovec_wrapper** %7, align 8
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %71, %14
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @log_debug(i8*) #2

declare dso_local %struct.iovec_wrapper* @iovw_new(...) #2

declare dso_local i32 @log_oom(...) #2

declare dso_local i32 @iovw_put_string_field(%struct.iovec_wrapper*, i8*, i32) #2

declare dso_local i32 @STRINGIFY(i32) #2

declare dso_local i32 @gather_pid_metadata_from_argv(%struct.iovec_wrapper*, %struct.TYPE_5__*, i32, i8**) #2

declare dso_local i32 @gather_pid_metadata(%struct.iovec_wrapper*, %struct.TYPE_5__*) #2

declare dso_local i32 @log_set_target(i32) #2

declare dso_local i32 @log_open(...) #2

declare dso_local i32 @log_notice(i8*) #2

declare dso_local i32 @disable_coredumps(...) #2

declare dso_local i32 @submit_coredump(%struct.TYPE_5__*, %struct.iovec_wrapper*, i32) #2

declare dso_local i32 @send_iovec(%struct.iovec_wrapper*, i32) #2

declare dso_local %struct.iovec_wrapper* @iovw_free_free(%struct.iovec_wrapper*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
