; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/scsi_id/extr_scsi_id.c_set_options.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/scsi_id/extr_scsi_id.c_set_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@optind = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"d:f:gp:uvVxhbs:\00", align 1
@options = common dso_local global i32 0, align 4
@all_good = common dso_local global i32 0, align 4
@dev_specified = common dso_local global i32 0, align 4
@MAX_PATH_LEN = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@config_file = common dso_local global i8* null, align 8
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"0x80\00", align 1
@PAGE_80 = common dso_local global i32 0, align 4
@default_page_code = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"0x83\00", align 1
@PAGE_83 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"pre-spc3-83\00", align 1
@PAGE_83_PRE_SPC3 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"Unknown page code '%s'\00", align 1
@sg_version = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"Unknown SG version '%s'\00", align 1
@reformat_serial = common dso_local global i32 0, align 4
@LOG_TARGET_CONSOLE = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@GIT_VERSION = common dso_local global i8* null, align 8
@export = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"Unknown option\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*)* @set_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_options(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 1, i32* @optind, align 4
  br label %9

9:                                                ; preds = %89, %3
  %10 = load i32, i32* %5, align 4
  %11 = load i8**, i8*** %6, align 8
  %12 = load i32, i32* @options, align 4
  %13 = call i32 @getopt_long(i32 %10, i8** %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %12, i32* null)
  store i32 %13, i32* %8, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %90

15:                                               ; preds = %9
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %87 [
    i32 98, label %17
    i32 100, label %18
    i32 102, label %23
    i32 103, label %28
    i32 104, label %29
    i32 112, label %33
    i32 115, label %59
    i32 117, label %73
    i32 118, label %74
    i32 86, label %80
    i32 120, label %85
    i32 63, label %86
  ]

17:                                               ; preds = %15
  store i32 0, i32* @all_good, align 4
  br label %89

18:                                               ; preds = %15
  store i32 1, i32* @dev_specified, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* @MAX_PATH_LEN, align 4
  %21 = load i8*, i8** @optarg, align 8
  %22 = call i32 @strscpy(i8* %19, i32 %20, i8* %21)
  br label %89

23:                                               ; preds = %15
  %24 = load i8*, i8** @config_file, align 8
  %25 = load i32, i32* @MAX_PATH_LEN, align 4
  %26 = load i8*, i8** @optarg, align 8
  %27 = call i32 @strscpy(i8* %24, i32 %25, i8* %26)
  br label %89

28:                                               ; preds = %15
  store i32 1, i32* @all_good, align 4
  br label %89

29:                                               ; preds = %15
  %30 = call i32 (...) @help()
  %31 = load i32, i32* @EXIT_SUCCESS, align 4
  %32 = call i32 @exit(i32 %31) #3
  unreachable

33:                                               ; preds = %15
  %34 = load i8*, i8** @optarg, align 8
  %35 = call i32 @streq(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @PAGE_80, align 4
  store i32 %38, i32* @default_page_code, align 4
  br label %58

39:                                               ; preds = %33
  %40 = load i8*, i8** @optarg, align 8
  %41 = call i32 @streq(i8* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @PAGE_83, align 4
  store i32 %44, i32* @default_page_code, align 4
  br label %57

45:                                               ; preds = %39
  %46 = load i8*, i8** @optarg, align 8
  %47 = call i32 @streq(i8* %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* @PAGE_83_PRE_SPC3, align 4
  store i32 %50, i32* @default_page_code, align 4
  br label %56

51:                                               ; preds = %45
  %52 = load i32, i32* @EINVAL, align 4
  %53 = call i32 @SYNTHETIC_ERRNO(i32 %52)
  %54 = load i8*, i8** @optarg, align 8
  %55 = call i32 @log_error_errno(i32 %53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %54)
  store i32 %55, i32* %4, align 4
  br label %107

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %56, %43
  br label %58

58:                                               ; preds = %57, %37
  br label %89

59:                                               ; preds = %15
  %60 = load i8*, i8** @optarg, align 8
  %61 = call i32 @atoi(i8* %60)
  store i32 %61, i32* @sg_version, align 4
  %62 = load i32, i32* @sg_version, align 4
  %63 = icmp slt i32 %62, 3
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* @sg_version, align 4
  %66 = icmp sgt i32 %65, 4
  br i1 %66, label %67, label %72

67:                                               ; preds = %64, %59
  %68 = load i32, i32* @EINVAL, align 4
  %69 = call i32 @SYNTHETIC_ERRNO(i32 %68)
  %70 = load i8*, i8** @optarg, align 8
  %71 = call i32 @log_error_errno(i32 %69, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* %70)
  store i32 %71, i32* %4, align 4
  br label %107

72:                                               ; preds = %64
  br label %89

73:                                               ; preds = %15
  store i32 1, i32* @reformat_serial, align 4
  br label %89

74:                                               ; preds = %15
  %75 = load i32, i32* @LOG_TARGET_CONSOLE, align 4
  %76 = call i32 @log_set_target(i32 %75)
  %77 = load i32, i32* @LOG_DEBUG, align 4
  %78 = call i32 @log_set_max_level(i32 %77)
  %79 = call i32 (...) @log_open()
  br label %89

80:                                               ; preds = %15
  %81 = load i8*, i8** @GIT_VERSION, align 8
  %82 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %81)
  %83 = load i32, i32* @EXIT_SUCCESS, align 4
  %84 = call i32 @exit(i32 %83) #3
  unreachable

85:                                               ; preds = %15
  store i32 1, i32* @export, align 4
  br label %89

86:                                               ; preds = %15
  store i32 -1, i32* %4, align 4
  br label %107

87:                                               ; preds = %15
  %88 = call i32 @assert_not_reached(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %85, %74, %73, %72, %58, %28, %23, %18, %17
  br label %9

90:                                               ; preds = %9
  %91 = load i32, i32* @optind, align 4
  %92 = load i32, i32* %5, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %106

94:                                               ; preds = %90
  %95 = load i32, i32* @dev_specified, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %106, label %97

97:                                               ; preds = %94
  store i32 1, i32* @dev_specified, align 4
  %98 = load i8*, i8** %7, align 8
  %99 = load i32, i32* @MAX_PATH_LEN, align 4
  %100 = load i8**, i8*** %6, align 8
  %101 = load i32, i32* @optind, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %100, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @strscpy(i8* %98, i32 %99, i8* %104)
  br label %106

106:                                              ; preds = %97, %94, %90
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %106, %86, %67, %51
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #1

declare dso_local i32 @strscpy(i8*, i32, i8*) #1

declare dso_local i32 @help(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @streq(i8*, i8*) #1

declare dso_local i32 @log_error_errno(i32, i8*, i8*) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @log_set_target(i32) #1

declare dso_local i32 @log_set_max_level(i32) #1

declare dso_local i32 @log_open(...) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @assert_not_reached(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
