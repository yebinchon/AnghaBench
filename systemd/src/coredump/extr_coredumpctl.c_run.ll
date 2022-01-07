; ModuleID = '/home/carl/AnghaBench/systemd/src/coredump/extr_coredumpctl.c_run.c'
source_filename = "/home/carl/AnghaBench/systemd/src/coredump/extr_coredumpctl.c_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HIGH_RLIMIT_NOFILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [75 x i8] c"%s-- Notice: %d systemd-coredump@.service %s, output may be incomplete.%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"unit is running\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"units are running\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* @LC_ALL, align 4
  %9 = call i32 @setlocale(i32 %8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @log_show_color(i32 1)
  %11 = call i32 (...) @log_parse_environment()
  %12 = call i32 (...) @log_open()
  %13 = load i32, i32* @HIGH_RLIMIT_NOFILE, align 4
  %14 = call i32 @rlimit_nofile_bump(i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = call i32 @parse_argv(i32 %15, i8** %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %41

22:                                               ; preds = %2
  %23 = call i32 (...) @sigbus_install()
  %24 = call i32 (...) @check_units_active()
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i8**, i8*** %5, align 8
  %27 = call i32 @coredumpctl_main(i32 %25, i8** %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %22
  %31 = call i8* (...) @ansi_highlight_red()
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 1
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0)
  %37 = call i8* (...) @ansi_normal()
  %38 = call i32 @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i8* %31, i32 %32, i8* %36, i8* %37)
  br label %39

39:                                               ; preds = %30, %22
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %20
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @log_show_color(i32) #1

declare dso_local i32 @log_parse_environment(...) #1

declare dso_local i32 @log_open(...) #1

declare dso_local i32 @rlimit_nofile_bump(i32) #1

declare dso_local i32 @parse_argv(i32, i8**) #1

declare dso_local i32 @sigbus_install(...) #1

declare dso_local i32 @check_units_active(...) #1

declare dso_local i32 @coredumpctl_main(i32, i8**) #1

declare dso_local i32 @printf(i8*, i8*, i32, i8*, i8*) #1

declare dso_local i8* @ansi_highlight_red(...) #1

declare dso_local i8* @ansi_normal(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
