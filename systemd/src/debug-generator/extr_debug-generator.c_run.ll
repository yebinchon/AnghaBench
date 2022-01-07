; ModuleID = '/home/carl/AnghaBench/systemd/src/debug-generator/extr_debug-generator.c_run.c'
source_filename = "/home/carl/AnghaBench/systemd/src/debug-generator/extr_debug-generator.c_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arg_dest = common dso_local global i8* null, align 8
@parse_proc_cmdline_item = common dso_local global i32 0, align 4
@PROC_CMDLINE_RD_STRICT = common dso_local global i32 0, align 4
@PROC_CMDLINE_STRIP_RD_PREFIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Failed to parse kernel command line, ignoring: %m\00", align 1
@arg_debug_shell = common dso_local global i64 0, align 8
@arg_wants = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"debug-shell.service\00", align 1
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
  %10 = load i8*, i8** %6, align 8
  store i8* %10, i8** @arg_dest, align 8
  %11 = call i32 @assert_se(i8* %10)
  %12 = load i32, i32* @parse_proc_cmdline_item, align 4
  %13 = load i32, i32* @PROC_CMDLINE_RD_STRICT, align 4
  %14 = load i32, i32* @PROC_CMDLINE_STRIP_RD_PREFIX, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @proc_cmdline_parse(i32 %12, i32* null, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @log_warning_errno(i32 %20, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %3
  %23 = load i64, i64* @arg_debug_shell, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = call i32 @strv_extend(i32* @arg_wants, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = call i32 (...) @log_oom()
  store i32 %30, i32* %4, align 4
  br label %45

31:                                               ; preds = %25
  %32 = load i8*, i8** @arg_dest, align 8
  %33 = call i32 @install_debug_shell_dropin(i8* %32)
  br label %34

34:                                               ; preds = %31, %22
  %35 = call i32 (...) @generate_mask_symlinks()
  store i32 %35, i32* %8, align 4
  %36 = call i32 (...) @generate_wants_symlinks()
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %8, align 4
  br label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %9, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %43, %29
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @assert_se(i8*) #1

declare dso_local i32 @proc_cmdline_parse(i32, i32*, i32) #1

declare dso_local i32 @log_warning_errno(i32, i8*) #1

declare dso_local i32 @strv_extend(i32*, i8*) #1

declare dso_local i32 @log_oom(...) #1

declare dso_local i32 @install_debug_shell_dropin(i8*) #1

declare dso_local i32 @generate_mask_symlinks(...) #1

declare dso_local i32 @generate_wants_symlinks(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
