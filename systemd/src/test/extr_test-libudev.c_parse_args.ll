; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-libudev.c_parse_args.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-libudev.c_parse_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i8, i32*, i32 }

@parse_args.options = internal constant [7 x %struct.option] [%struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8 -128, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8 -128, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8 -127, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8 -127, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8 -127, i32* null, i32 86 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8 -127, i32* null, i32 109 }, %struct.option zeroinitializer], align 16
@.str = private unnamed_addr constant [8 x i8] c"syspath\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"subsystem\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"monitor\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"p:s:dhVm\00", align 1
@optarg = common dso_local global i8* null, align 8
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [40 x i8] c"--debug --syspath= --subsystem= --help\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@GIT_VERSION = common dso_local global i8* null, align 8
@arg_monitor = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"Unhandled option code.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8**, i8**)* @parse_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_args(i32 %0, i8** %1, i8** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  br label %11

11:                                               ; preds = %38, %4
  %12 = load i32, i32* %6, align 4
  %13 = load i8**, i8*** %7, align 8
  %14 = call i32 @getopt_long(i32 %12, i8** %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), %struct.option* getelementptr inbounds ([7 x %struct.option], [7 x %struct.option]* @parse_args.options, i64 0, i64 0), i32* null)
  store i32 %14, i32* %10, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %11
  %17 = load i32, i32* %10, align 4
  switch i32 %17, label %36 [
    i32 112, label %18
    i32 115, label %21
    i32 100, label %24
    i32 104, label %27
    i32 86, label %29
    i32 109, label %32
    i32 63, label %33
  ]

18:                                               ; preds = %16
  %19 = load i8*, i8** @optarg, align 8
  %20 = load i8**, i8*** %8, align 8
  store i8* %19, i8** %20, align 8
  br label %38

21:                                               ; preds = %16
  %22 = load i8*, i8** @optarg, align 8
  %23 = load i8**, i8*** %9, align 8
  store i8* %22, i8** %23, align 8
  br label %38

24:                                               ; preds = %16
  %25 = load i32, i32* @LOG_DEBUG, align 4
  %26 = call i32 @log_set_max_level(i32 %25)
  br label %38

27:                                               ; preds = %16
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %40

29:                                               ; preds = %16
  %30 = load i8*, i8** @GIT_VERSION, align 8
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %30)
  store i32 0, i32* %5, align 4
  br label %40

32:                                               ; preds = %16
  store i32 1, i32* @arg_monitor, align 4
  br label %38

33:                                               ; preds = %16
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %40

36:                                               ; preds = %16
  %37 = call i32 @assert_not_reached(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %32, %24, %21, %18
  br label %11

39:                                               ; preds = %11
  store i32 1, i32* %5, align 4
  br label %40

40:                                               ; preds = %39, %33, %29, %27
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #1

declare dso_local i32 @log_set_max_level(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @assert_not_reached(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
