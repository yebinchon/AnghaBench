; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_log.c_log_parse_environment_realm.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_log.c_log_parse_environment_realm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@parse_proc_cmdline_item = common dso_local global i32 0, align 4
@PROC_CMDLINE_STRIP_RD_PREFIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"SYSTEMD_LOG_TARGET\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Failed to parse log target '%s'. Ignoring.\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SYSTEMD_LOG_LEVEL\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Failed to parse log level '%s'. Ignoring.\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"SYSTEMD_LOG_COLOR\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Failed to parse log color '%s'. Ignoring.\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"SYSTEMD_LOG_LOCATION\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"Failed to parse log location '%s'. Ignoring.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @log_parse_environment_realm(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i32 (...) @getpid_cached()
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = call i64 @get_ctty_devnr(i32 0, i32* null)
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %6, %1
  %10 = load i32, i32* @parse_proc_cmdline_item, align 4
  %11 = load i32, i32* @PROC_CMDLINE_STRIP_RD_PREFIX, align 4
  %12 = call i32 @proc_cmdline_parse(i32 %10, i32* null, i32 %11)
  br label %13

13:                                               ; preds = %9, %6
  %14 = call i8* @getenv(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %3, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = load i8*, i8** %3, align 8
  %19 = call i64 @log_set_target_from_string(i8* %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @log_warning(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  br label %24

24:                                               ; preds = %21, %17, %13
  %25 = call i8* @getenv(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i8* %25, i8** %3, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load i32, i32* %2, align 4
  %30 = load i8*, i8** %3, align 8
  %31 = call i64 @log_set_max_level_from_string_realm(i32 %29, i8* %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @log_warning(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %33, %28, %24
  %37 = call i8* @getenv(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  store i8* %37, i8** %3, align 8
  %38 = load i8*, i8** %3, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load i8*, i8** %3, align 8
  %42 = call i64 @log_show_color_from_string(i8* %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i8*, i8** %3, align 8
  %46 = call i32 @log_warning(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i8* %45)
  br label %47

47:                                               ; preds = %44, %40, %36
  %48 = call i8* @getenv(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  store i8* %48, i8** %3, align 8
  %49 = load i8*, i8** %3, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = load i8*, i8** %3, align 8
  %53 = call i64 @log_show_location_from_string(i8* %52)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i8*, i8** %3, align 8
  %57 = call i32 @log_warning(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i8* %56)
  br label %58

58:                                               ; preds = %55, %51, %47
  ret void
}

declare dso_local i32 @getpid_cached(...) #1

declare dso_local i64 @get_ctty_devnr(i32, i32*) #1

declare dso_local i32 @proc_cmdline_parse(i32, i32*, i32) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @log_set_target_from_string(i8*) #1

declare dso_local i32 @log_warning(i8*, i8*) #1

declare dso_local i64 @log_set_max_level_from_string_realm(i32, i8*) #1

declare dso_local i64 @log_show_color_from_string(i8*) #1

declare dso_local i64 @log_show_location_from_string(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
