; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/extr_udevadm-hwdb.c_parse_argv.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/extr_udevadm-hwdb.c_parse_argv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i8, i32*, i32 }

@parse_argv.options = internal constant [8 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8 -127, i32* null, i32 117 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8 -127, i32* null, i32 256 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8 -127, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8 -128, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8 -128, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8 -127, i32* null, i32 86 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8 -127, i32* null, i32 104 }, %struct.option zeroinitializer], align 16
@.str = private unnamed_addr constant [7 x i8] c"update\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"usr\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"ust:r:Vh\00", align 1
@arg_update = common dso_local global i32 0, align 4
@UDEVLIBEXECDIR = common dso_local global i32 0, align 4
@arg_hwdb_bin_dir = common dso_local global i32 0, align 4
@arg_strict = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@arg_test = common dso_local global i8* null, align 8
@arg_root = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"Unknown option\00", align 1
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

7:                                                ; preds = %31, %2
  %8 = load i32, i32* %4, align 4
  %9 = load i8**, i8*** %5, align 8
  %10 = call i32 @getopt_long(i32 %8, i8** %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), %struct.option* getelementptr inbounds ([8 x %struct.option], [8 x %struct.option]* @parse_argv.options, i64 0, i64 0), i32* null)
  store i32 %10, i32* %6, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %32

12:                                               ; preds = %7
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %29 [
    i32 117, label %14
    i32 256, label %15
    i32 115, label %17
    i32 116, label %18
    i32 114, label %20
    i32 86, label %22
    i32 104, label %24
    i32 63, label %26
  ]

14:                                               ; preds = %12
  store i32 1, i32* @arg_update, align 4
  br label %31

15:                                               ; preds = %12
  %16 = load i32, i32* @UDEVLIBEXECDIR, align 4
  store i32 %16, i32* @arg_hwdb_bin_dir, align 4
  br label %31

17:                                               ; preds = %12
  store i32 1, i32* @arg_strict, align 4
  br label %31

18:                                               ; preds = %12
  %19 = load i8*, i8** @optarg, align 8
  store i8* %19, i8** @arg_test, align 8
  br label %31

20:                                               ; preds = %12
  %21 = load i8*, i8** @optarg, align 8
  store i8* %21, i8** @arg_root, align 8
  br label %31

22:                                               ; preds = %12
  %23 = call i32 (...) @print_version()
  store i32 %23, i32* %3, align 4
  br label %33

24:                                               ; preds = %12
  %25 = call i32 (...) @help()
  store i32 %25, i32* %3, align 4
  br label %33

26:                                               ; preds = %12
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %33

29:                                               ; preds = %12
  %30 = call i32 @assert_not_reached(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %20, %18, %17, %15, %14
  br label %7

32:                                               ; preds = %7
  store i32 1, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %26, %24, %22
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #1

declare dso_local i32 @print_version(...) #1

declare dso_local i32 @help(...) #1

declare dso_local i32 @assert_not_reached(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
