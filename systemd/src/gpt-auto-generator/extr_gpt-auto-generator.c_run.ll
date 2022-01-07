; ModuleID = '/home/carl/AnghaBench/systemd/src/gpt-auto-generator/extr_gpt-auto-generator.c_run.c'
source_filename = "/home/carl/AnghaBench/systemd/src/gpt-auto-generator/extr_gpt-auto-generator.c_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arg_dest = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"In a container, exiting.\00", align 1
@parse_proc_cmdline_item = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Failed to parse kernel command line, ignoring: %m\00", align 1
@arg_enabled = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Disabled, exiting.\00", align 1
@arg_root_enabled = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  store i8* %10, i8** @arg_dest, align 8
  %11 = call i32 @assert_se(i8* %10)
  %12 = call i64 (...) @detect_container()
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = call i32 @log_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %46

16:                                               ; preds = %3
  %17 = load i32, i32* @parse_proc_cmdline_item, align 4
  %18 = call i32 @proc_cmdline_parse(i32 %17, i32* null, i32 0)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @log_warning_errno(i32 %22, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %16
  %25 = load i32, i32* @arg_enabled, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = call i32 @log_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %46

29:                                               ; preds = %24
  %30 = load i64, i64* @arg_root_enabled, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 (...) @add_root_mount()
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %32, %29
  %35 = call i32 (...) @in_initrd()
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %34
  %38 = call i32 (...) @add_mounts()
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %41, %37
  br label %44

44:                                               ; preds = %43, %34
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %44, %27, %14
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @assert_se(i8*) #1

declare dso_local i64 @detect_container(...) #1

declare dso_local i32 @log_debug(i8*) #1

declare dso_local i32 @proc_cmdline_parse(i32, i32*, i32) #1

declare dso_local i32 @log_warning_errno(i32, i8*) #1

declare dso_local i32 @add_root_mount(...) #1

declare dso_local i32 @in_initrd(...) #1

declare dso_local i32 @add_mounts(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
