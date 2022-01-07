; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/extr_udevd.c_parse_proc_cmdline_item.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/extr_udevd.c_parse_proc_cmdline_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"udev.log_priority\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"udev.event_timeout\00", align 1
@arg_event_timeout_usec = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"udev.children_max\00", align 1
@arg_children_max = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"udev.exec_delay\00", align 1
@arg_exec_delay_usec = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"udev.\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"Unknown udev kernel command line option \22%s\22, ignoring\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Failed to parse \22%s=%s\22, ignoring: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @parse_proc_cmdline_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_proc_cmdline_item(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @assert(i8* %9)
  %11 = load i8*, i8** %6, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %92

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = call i64 @proc_cmdline_key_streq(i8* %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %14
  %19 = load i8*, i8** %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i64 @proc_cmdline_value_missing(i8* %19, i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %92

24:                                               ; preds = %18
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @log_level_from_string(i8* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @log_set_max_level(i32 %30)
  br label %32

32:                                               ; preds = %29, %24
  br label %83

33:                                               ; preds = %14
  %34 = load i8*, i8** %5, align 8
  %35 = call i64 @proc_cmdline_key_streq(i8* %34, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = load i8*, i8** %5, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i64 @proc_cmdline_value_missing(i8* %38, i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %92

43:                                               ; preds = %37
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @parse_sec(i8* %44, i32* @arg_event_timeout_usec)
  store i32 %45, i32* %8, align 4
  br label %82

46:                                               ; preds = %33
  %47 = load i8*, i8** %5, align 8
  %48 = call i64 @proc_cmdline_key_streq(i8* %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %46
  %51 = load i8*, i8** %5, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = call i64 @proc_cmdline_value_missing(i8* %51, i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %92

56:                                               ; preds = %50
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @safe_atou(i8* %57, i32* @arg_children_max)
  store i32 %58, i32* %8, align 4
  br label %81

59:                                               ; preds = %46
  %60 = load i8*, i8** %5, align 8
  %61 = call i64 @proc_cmdline_key_streq(i8* %60, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %59
  %64 = load i8*, i8** %5, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = call i64 @proc_cmdline_value_missing(i8* %64, i8* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  store i32 0, i32* %4, align 4
  br label %92

69:                                               ; preds = %63
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 @parse_sec(i8* %70, i32* @arg_exec_delay_usec)
  store i32 %71, i32* %8, align 4
  br label %80

72:                                               ; preds = %59
  %73 = load i8*, i8** %5, align 8
  %74 = call i64 @startswith(i8* %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i8*, i8** %5, align 8
  %78 = call i32 @log_warning(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i8* %77)
  br label %79

79:                                               ; preds = %76, %72
  br label %80

80:                                               ; preds = %79, %69
  br label %81

81:                                               ; preds = %80, %56
  br label %82

82:                                               ; preds = %81, %43
  br label %83

83:                                               ; preds = %82, %32
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load i32, i32* %8, align 4
  %88 = load i8*, i8** %5, align 8
  %89 = load i8*, i8** %6, align 8
  %90 = call i32 @log_warning_errno(i32 %87, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i8* %88, i8* %89)
  br label %91

91:                                               ; preds = %86, %83
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %91, %68, %55, %42, %23, %13
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @proc_cmdline_key_streq(i8*, i8*) #1

declare dso_local i64 @proc_cmdline_value_missing(i8*, i8*) #1

declare dso_local i32 @log_level_from_string(i8*) #1

declare dso_local i32 @log_set_max_level(i32) #1

declare dso_local i32 @parse_sec(i8*, i32*) #1

declare dso_local i32 @safe_atou(i8*, i32*) #1

declare dso_local i64 @startswith(i8*, i8*) #1

declare dso_local i32 @log_warning(i8*, i8*) #1

declare dso_local i32 @log_warning_errno(i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
