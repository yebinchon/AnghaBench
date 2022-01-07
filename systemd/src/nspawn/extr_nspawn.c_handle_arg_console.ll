; ModuleID = '/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn.c_handle_arg_console.c'
source_filename = "/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn.c_handle_arg_console.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"interactive\0Aread-only\0Apassive\0Apipe\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"interactive\00", align 1
@CONSOLE_INTERACTIVE = common dso_local global i32 0, align 4
@arg_console_mode = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"read-only\00", align 1
@CONSOLE_READ_ONLY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"passive\00", align 1
@CONSOLE_PASSIVE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@CONSOLE_PIPE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"Unknown console mode: %s\00", align 1
@optarg = common dso_local global i32 0, align 4
@SETTING_CONSOLE_MODE = common dso_local global i32 0, align 4
@arg_settings_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @handle_arg_console to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_arg_console(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i64 @streq(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 @puts(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %45

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @streq(i8* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @CONSOLE_INTERACTIVE, align 4
  store i32 %14, i32* @arg_console_mode, align 4
  br label %41

15:                                               ; preds = %9
  %16 = load i8*, i8** %3, align 8
  %17 = call i64 @streq(i8* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @CONSOLE_READ_ONLY, align 4
  store i32 %20, i32* @arg_console_mode, align 4
  br label %40

21:                                               ; preds = %15
  %22 = load i8*, i8** %3, align 8
  %23 = call i64 @streq(i8* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @CONSOLE_PASSIVE, align 4
  store i32 %26, i32* @arg_console_mode, align 4
  br label %39

27:                                               ; preds = %21
  %28 = load i8*, i8** %3, align 8
  %29 = call i64 @streq(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @CONSOLE_PIPE, align 4
  store i32 %32, i32* @arg_console_mode, align 4
  br label %38

33:                                               ; preds = %27
  %34 = load i32, i32* @EINVAL, align 4
  %35 = call i32 @SYNTHETIC_ERRNO(i32 %34)
  %36 = load i32, i32* @optarg, align 4
  %37 = call i32 @log_error_errno(i32 %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %36)
  store i32 %37, i32* %2, align 4
  br label %45

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %25
  br label %40

40:                                               ; preds = %39, %19
  br label %41

41:                                               ; preds = %40, %13
  %42 = load i32, i32* @SETTING_CONSOLE_MODE, align 4
  %43 = load i32, i32* @arg_settings_mask, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* @arg_settings_mask, align 4
  store i32 1, i32* %2, align 4
  br label %45

45:                                               ; preds = %41, %33, %7
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @log_error_errno(i32, i8*, i32) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
