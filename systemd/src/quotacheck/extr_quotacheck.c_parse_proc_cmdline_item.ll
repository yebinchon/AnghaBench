; ModuleID = '/home/carl/AnghaBench/systemd/src/quotacheck/extr_quotacheck.c_parse_proc_cmdline_item.c'
source_filename = "/home/carl/AnghaBench/systemd/src/quotacheck/extr_quotacheck.c_parse_proc_cmdline_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"quotacheck.mode\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@arg_skip = common dso_local global i32 0, align 4
@arg_force = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"skip\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"Invalid quotacheck.mode= parameter '%s'. Ignoring.\00", align 1
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
  %9 = call i64 @streq(i8* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %38

11:                                               ; preds = %3
  %12 = load i8*, i8** %5, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i64 @proc_cmdline_value_missing(i8* %12, i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %39

17:                                               ; preds = %11
  %18 = load i8*, i8** %6, align 8
  %19 = call i64 @streq(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 0, i32* @arg_skip, align 4
  store i32 0, i32* @arg_force, align 4
  br label %37

22:                                               ; preds = %17
  %23 = load i8*, i8** %6, align 8
  %24 = call i64 @streq(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 1, i32* @arg_force, align 4
  br label %36

27:                                               ; preds = %22
  %28 = load i8*, i8** %6, align 8
  %29 = call i64 @streq(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 1, i32* @arg_skip, align 4
  br label %35

32:                                               ; preds = %27
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 (i8*, ...) @log_warning(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %32, %31
  br label %36

36:                                               ; preds = %35, %26
  br label %37

37:                                               ; preds = %36, %21
  br label %38

38:                                               ; preds = %37, %3
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %16
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i64 @proc_cmdline_value_missing(i8*, i8*) #1

declare dso_local i32 @log_warning(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
