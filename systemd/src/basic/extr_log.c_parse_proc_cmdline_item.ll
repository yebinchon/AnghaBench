; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_log.c_parse_proc_cmdline_item.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_log.c_parse_proc_cmdline_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"systemd.log_target\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Failed to parse log target '%s'. Ignoring.\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"systemd.log_level\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Failed to parse log level '%s'. Ignoring.\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"systemd.log_color\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"Failed to parse log color setting '%s'. Ignoring.\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"systemd.log_location\00", align 1
@.str.9 = private unnamed_addr constant [53 x i8] c"Failed to parse log location setting '%s'. Ignoring.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @parse_proc_cmdline_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_proc_cmdline_item(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i64 @streq(i8* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* @LOG_DEBUG, align 4
  %16 = call i32 @log_set_max_level(i32 %15)
  br label %91

17:                                               ; preds = %11, %3
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @proc_cmdline_key_streq(i8* %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %17
  %22 = load i8*, i8** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i64 @proc_cmdline_value_missing(i8* %22, i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %92

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8
  %29 = call i64 @log_set_target_from_string(i8* %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @log_warning(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %31, %27
  br label %90

35:                                               ; preds = %17
  %36 = load i8*, i8** %5, align 8
  %37 = call i64 @proc_cmdline_key_streq(i8* %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %35
  %40 = load i8*, i8** %5, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call i64 @proc_cmdline_value_missing(i8* %40, i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %92

45:                                               ; preds = %39
  %46 = load i8*, i8** %6, align 8
  %47 = call i64 @log_set_max_level_from_string(i8* %46)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @log_warning(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8* %50)
  br label %52

52:                                               ; preds = %49, %45
  br label %89

53:                                               ; preds = %35
  %54 = load i8*, i8** %5, align 8
  %55 = call i64 @proc_cmdline_key_streq(i8* %54, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %53
  %58 = load i8*, i8** %6, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %62

61:                                               ; preds = %57
  br label %62

62:                                               ; preds = %61, %60
  %63 = phi i8* [ %58, %60 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), %61 ]
  %64 = call i64 @log_show_color_from_string(i8* %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 @log_warning(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i8* %67)
  br label %69

69:                                               ; preds = %66, %62
  br label %88

70:                                               ; preds = %53
  %71 = load i8*, i8** %5, align 8
  %72 = call i64 @proc_cmdline_key_streq(i8* %71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %70
  %75 = load i8*, i8** %6, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  br label %79

78:                                               ; preds = %74
  br label %79

79:                                               ; preds = %78, %77
  %80 = phi i8* [ %75, %77 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), %78 ]
  %81 = call i64 @log_show_location_from_string(i8* %80)
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i8*, i8** %6, align 8
  %85 = call i32 @log_warning(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.9, i64 0, i64 0), i8* %84)
  br label %86

86:                                               ; preds = %83, %79
  br label %87

87:                                               ; preds = %86, %70
  br label %88

88:                                               ; preds = %87, %69
  br label %89

89:                                               ; preds = %88, %52
  br label %90

90:                                               ; preds = %89, %34
  br label %91

91:                                               ; preds = %90, %14
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %91, %44, %26
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @log_set_max_level(i32) #1

declare dso_local i64 @proc_cmdline_key_streq(i8*, i8*) #1

declare dso_local i64 @proc_cmdline_value_missing(i8*, i8*) #1

declare dso_local i64 @log_set_target_from_string(i8*) #1

declare dso_local i32 @log_warning(i8*, i8*) #1

declare dso_local i64 @log_set_max_level_from_string(i8*) #1

declare dso_local i64 @log_show_color_from_string(i8*) #1

declare dso_local i64 @log_show_location_from_string(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
