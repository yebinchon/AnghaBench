; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/extr_udevadm-settle.c_parse_argv.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/extr_udevadm-settle.c_parse_argv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i8, i32*, i32 }

@parse_argv.options = internal constant [8 x %struct.option] [%struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8 -128, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8 -128, i32* null, i32 69 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8 -127, i32* null, i32 86 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8 -127, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8 -128, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8 -128, i32* null, i32 101 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8 -127, i32* null, i32 113 }, %struct.option zeroinitializer], align 16
@.str = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"exit-if-exists\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"seq-start\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"seq-end\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"t:E:Vhs:e:q\00", align 1
@optarg = common dso_local global i32 0, align 4
@arg_timeout = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [39 x i8] c"Failed to parse timeout value '%s': %m\00", align 1
@arg_exists = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"Option -%c no longer supported.\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"Unknown option.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @parse_argv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_argv(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  br label %8

8:                                                ; preds = %41, %2
  %9 = load i32, i32* %4, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = call i32 @getopt_long(i32 %9, i8** %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), %struct.option* getelementptr inbounds ([8 x %struct.option], [8 x %struct.option]* @parse_argv.options, i64 0, i64 0), i32* null)
  store i32 %11, i32* %6, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %42

13:                                               ; preds = %8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %39 [
    i32 116, label %15
    i32 69, label %25
    i32 86, label %27
    i32 104, label %29
    i32 115, label %31
    i32 101, label %31
    i32 113, label %31
    i32 63, label %36
  ]

15:                                               ; preds = %13
  %16 = load i32, i32* @optarg, align 4
  %17 = call i32 @parse_sec(i32 %16, i32* @arg_timeout)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @optarg, align 4
  %23 = call i32 @log_error_errno(i32 %21, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i32 %22)
  store i32 %23, i32* %3, align 4
  br label %43

24:                                               ; preds = %15
  br label %41

25:                                               ; preds = %13
  %26 = load i32, i32* @optarg, align 4
  store i32 %26, i32* @arg_exists, align 4
  br label %41

27:                                               ; preds = %13
  %28 = call i32 (...) @print_version()
  store i32 %28, i32* %3, align 4
  br label %43

29:                                               ; preds = %13
  %30 = call i32 (...) @help()
  store i32 %30, i32* %3, align 4
  br label %43

31:                                               ; preds = %13, %13, %13
  %32 = load i32, i32* @EINVAL, align 4
  %33 = call i32 @SYNTHETIC_ERRNO(i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @log_info_errno(i32 %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %34)
  store i32 %35, i32* %3, align 4
  br label %43

36:                                               ; preds = %13
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %43

39:                                               ; preds = %13
  %40 = call i32 @assert_not_reached(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %25, %24
  br label %8

42:                                               ; preds = %8
  store i32 1, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %36, %31, %29, %27, %20
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #1

declare dso_local i32 @parse_sec(i32, i32*) #1

declare dso_local i32 @log_error_errno(i32, i8*, i32) #1

declare dso_local i32 @print_version(...) #1

declare dso_local i32 @help(...) #1

declare dso_local i32 @log_info_errno(i32, i8*, i32) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

declare dso_local i32 @assert_not_reached(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
