; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/extr_udevadm-test-builtin.c_parse_argv.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/extr_udevadm-test-builtin.c_parse_argv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i8, i32*, i32 }

@parse_argv.options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8 -128, i32* null, i32 86 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8 -128, i32* null, i32 104 }, %struct.option zeroinitializer], align 16
@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"Vh\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"Unknown option\00", align 1
@optind = common dso_local global i32 0, align 4
@arg_command = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"Command missing.\00", align 1
@arg_syspath = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [17 x i8] c"syspath missing.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @parse_argv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_argv(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  br label %7

7:                                                ; preds = %23, %2
  %8 = load i32, i32* %4, align 4
  %9 = load i8**, i8*** %5, align 8
  %10 = call i32 @getopt_long(i32 %8, i8** %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @parse_argv.options, i64 0, i64 0), i32* null)
  store i32 %10, i32* %6, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %7
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %21 [
    i32 86, label %14
    i32 104, label %16
    i32 63, label %18
  ]

14:                                               ; preds = %12
  %15 = call i32 (...) @print_version()
  store i32 %15, i32* %3, align 4
  br label %51

16:                                               ; preds = %12
  %17 = call i32 (...) @help()
  store i32 %17, i32* %3, align 4
  br label %51

18:                                               ; preds = %12
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %51

21:                                               ; preds = %12
  %22 = call i32 @assert_not_reached(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21
  br label %7

24:                                               ; preds = %7
  %25 = load i8**, i8*** %5, align 8
  %26 = load i32, i32* @optind, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @optind, align 4
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds i8*, i8** %25, i64 %28
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** @arg_command, align 8
  %31 = load i8*, i8** @arg_command, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %24
  %34 = load i32, i32* @EINVAL, align 4
  %35 = call i32 @SYNTHETIC_ERRNO(i32 %34)
  %36 = call i32 @log_error_errno(i32 %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  store i32 %36, i32* %3, align 4
  br label %51

37:                                               ; preds = %24
  %38 = load i8**, i8*** %5, align 8
  %39 = load i32, i32* @optind, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* @optind, align 4
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i8*, i8** %38, i64 %41
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** @arg_syspath, align 8
  %44 = load i8*, i8** @arg_syspath, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %37
  %47 = load i32, i32* @EINVAL, align 4
  %48 = call i32 @SYNTHETIC_ERRNO(i32 %47)
  %49 = call i32 @log_error_errno(i32 %48, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  store i32 %49, i32* %3, align 4
  br label %51

50:                                               ; preds = %37
  store i32 1, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %46, %33, %18, %16, %14
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #1

declare dso_local i32 @print_version(...) #1

declare dso_local i32 @help(...) #1

declare dso_local i32 @assert_not_reached(i8*) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
