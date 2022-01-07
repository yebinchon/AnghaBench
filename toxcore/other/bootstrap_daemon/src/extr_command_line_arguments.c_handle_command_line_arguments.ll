; ModuleID = '/home/carl/AnghaBench/toxcore/other/bootstrap_daemon/src/extr_command_line_arguments.c_handle_command_line_arguments.c'
source_filename = "/home/carl/AnghaBench/toxcore/other/bootstrap_daemon/src/extr_command_line_arguments.c_handle_command_line_arguments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i8, i32, i32 }

@LOG_LEVEL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Error: No arguments provided.\0A\0A\00", align 1
@opterr = common dso_local global i64 0, align 8
@handle_command_line_arguments.long_options = internal global [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8 -128, i32 0, i32 99 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8 -127, i32 0, i32 102 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8 -127, i32 0, i32 104 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8 -128, i32 0, i32 108 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8 -127, i32 0, i32 118 }, %struct.option zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"foreground\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"log-backend\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c":\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c"syslog\00", align 1
@LOG_BACKEND_SYSLOG = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@LOG_BACKEND_STDOUT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [67 x i8] c"Error: Invalid BACKEND value for --log-backend option passed: %s\0A\0A\00", align 1
@LOG_LEVEL_INFO = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [14 x i8] c"Version: %lu\0A\00", align 1
@DAEMON_VERSION_NUMBER = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [32 x i8] c"Error: Unrecognized option %s\0A\0A\00", align 1
@optind = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [44 x i8] c"Error: No argument provided for option %s\0A\0A\00", align 1
@.str.13 = private unnamed_addr constant [55 x i8] c"Error: The required --config option wasn't specified\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handle_command_line_arguments(i32 %0, i8** %1, i8** %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %21

16:                                               ; preds = %5
  %17 = load i32, i32* @LOG_LEVEL_ERROR, align 4
  %18 = call i32 (i32, i8*, ...) @write_log(i32 %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 (...) @print_help()
  %20 = call i32 @exit(i32 1) #3
  unreachable

21:                                               ; preds = %5
  store i64 0, i64* @opterr, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %22 = load i32*, i32** %10, align 8
  store i32 0, i32* %22, align 4
  br label %23

23:                                               ; preds = %87, %21
  %24 = load i32, i32* %6, align 4
  %25 = load i8**, i8*** %7, align 8
  %26 = call i32 @getopt_long(i32 %24, i8** %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @handle_command_line_arguments.long_options, i64 0, i64 0), i32* null)
  store i32 %26, i32* %13, align 4
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %88

28:                                               ; preds = %23
  %29 = load i32, i32* %13, align 4
  switch i32 %29, label %87 [
    i32 99, label %30
    i32 102, label %33
    i32 104, label %35
    i32 108, label %38
    i32 118, label %60
    i32 63, label %65
    i32 58, label %76
  ]

30:                                               ; preds = %28
  %31 = load i8*, i8** @optarg, align 8
  %32 = load i8**, i8*** %8, align 8
  store i8* %31, i8** %32, align 8
  store i32 1, i32* %11, align 4
  br label %87

33:                                               ; preds = %28
  %34 = load i32*, i32** %10, align 8
  store i32 1, i32* %34, align 4
  br label %87

35:                                               ; preds = %28
  %36 = call i32 (...) @print_help()
  %37 = call i32 @exit(i32 0) #3
  unreachable

38:                                               ; preds = %28
  %39 = load i8*, i8** @optarg, align 8
  %40 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @LOG_BACKEND_SYSLOG, align 4
  %44 = load i32*, i32** %9, align 8
  store i32 %43, i32* %44, align 4
  store i32 1, i32* %12, align 4
  br label %59

45:                                               ; preds = %38
  %46 = load i8*, i8** @optarg, align 8
  %47 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* @LOG_BACKEND_STDOUT, align 4
  %51 = load i32*, i32** %9, align 8
  store i32 %50, i32* %51, align 4
  store i32 1, i32* %12, align 4
  br label %58

52:                                               ; preds = %45
  %53 = load i32, i32* @LOG_LEVEL_ERROR, align 4
  %54 = load i8*, i8** @optarg, align 8
  %55 = call i32 (i32, i8*, ...) @write_log(i32 %53, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.9, i64 0, i64 0), i8* %54)
  %56 = call i32 (...) @print_help()
  %57 = call i32 @exit(i32 1) #3
  unreachable

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %58, %42
  br label %87

60:                                               ; preds = %28
  %61 = load i32, i32* @LOG_LEVEL_INFO, align 4
  %62 = load i32, i32* @DAEMON_VERSION_NUMBER, align 4
  %63 = call i32 (i32, i8*, ...) @write_log(i32 %61, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %62)
  %64 = call i32 @exit(i32 0) #3
  unreachable

65:                                               ; preds = %28
  %66 = load i32, i32* @LOG_LEVEL_ERROR, align 4
  %67 = load i8**, i8*** %7, align 8
  %68 = load i32, i32* @optind, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %67, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 (i32, i8*, ...) @write_log(i32 %66, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i8* %72)
  %74 = call i32 (...) @print_help()
  %75 = call i32 @exit(i32 1) #3
  unreachable

76:                                               ; preds = %28
  %77 = load i32, i32* @LOG_LEVEL_ERROR, align 4
  %78 = load i8**, i8*** %7, align 8
  %79 = load i32, i32* @optind, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %78, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 (i32, i8*, ...) @write_log(i32 %77, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0), i8* %83)
  %85 = call i32 (...) @print_help()
  %86 = call i32 @exit(i32 1) #3
  unreachable

87:                                               ; preds = %28, %59, %33, %30
  br label %23

88:                                               ; preds = %23
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* @LOG_BACKEND_SYSLOG, align 4
  %93 = load i32*, i32** %9, align 8
  store i32 %92, i32* %93, align 4
  br label %94

94:                                               ; preds = %91, %88
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* @LOG_LEVEL_ERROR, align 4
  %99 = call i32 (i32, i8*, ...) @write_log(i32 %98, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.13, i64 0, i64 0))
  %100 = call i32 (...) @print_help()
  %101 = call i32 @exit(i32 1) #3
  unreachable

102:                                              ; preds = %94
  ret void
}

declare dso_local i32 @write_log(i32, i8*, ...) #1

declare dso_local i32 @print_help(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
