; ModuleID = '/home/carl/AnghaBench/systemd/src/systemctl/extr_systemctl.c_run.c'
source_filename = "/home/carl/AnghaBench/systemd/src/systemctl/extr_systemctl.c_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HIGH_RLIMIT_NOFILE = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@original_stdout_is_tty = common dso_local global i32 0, align 4
@arg_action = common dso_local global i32 0, align 4
@arg_quiet = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Running in chroot, ignoring request.\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Unknown action\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %6 = load i32, i32* @LC_ALL, align 4
  %7 = call i32 @setlocale(i32 %6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 (...) @log_parse_environment()
  %9 = call i32 (...) @log_open()
  %10 = load i32, i32* @HIGH_RLIMIT_NOFILE, align 4
  %11 = call i32 @rlimit_nofile_bump(i32 %10)
  %12 = call i32 (...) @sigbus_install()
  %13 = load i32, i32* @STDOUT_FILENO, align 4
  %14 = call i32 @isatty(i32 %13)
  store i32 %14, i32* @original_stdout_is_tty, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i8**, i8*** %4, align 8
  %17 = call i32 @parse_argv(i32 %15, i8** %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %53

21:                                               ; preds = %2
  %22 = load i32, i32* @arg_action, align 4
  %23 = icmp ne i32 %22, 129
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = call i64 (...) @running_in_chroot()
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i32, i32* @arg_quiet, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = call i32 @log_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %27
  store i32 0, i32* %5, align 4
  br label %53

33:                                               ; preds = %24, %21
  %34 = load i32, i32* @arg_action, align 4
  switch i32 %34, label %50 [
    i32 129, label %35
    i32 145, label %39
    i32 141, label %39
    i32 140, label %39
    i32 142, label %39
    i32 135, label %41
    i32 134, label %41
    i32 133, label %41
    i32 132, label %41
    i32 137, label %41
    i32 138, label %43
    i32 139, label %43
    i32 149, label %45
    i32 136, label %47
    i32 146, label %49
    i32 131, label %49
    i32 144, label %49
    i32 143, label %49
    i32 130, label %49
    i32 147, label %49
    i32 148, label %49
    i32 128, label %49
  ]

35:                                               ; preds = %33
  %36 = load i32, i32* %3, align 4
  %37 = load i8**, i8*** %4, align 8
  %38 = call i32 @systemctl_main(i32 %36, i8** %37)
  store i32 %38, i32* %5, align 4
  br label %52

39:                                               ; preds = %33, %33, %33, %33
  %40 = call i32 (...) @halt_main()
  store i32 %40, i32* %5, align 4
  br label %52

41:                                               ; preds = %33, %33, %33, %33, %33
  %42 = call i32 (...) @start_with_fallback()
  store i32 %42, i32* %5, align 4
  br label %52

43:                                               ; preds = %33, %33
  %44 = call i32 (...) @reload_with_fallback()
  store i32 %44, i32* %5, align 4
  br label %52

45:                                               ; preds = %33
  %46 = call i32 (...) @logind_cancel_shutdown()
  store i32 %46, i32* %5, align 4
  br label %52

47:                                               ; preds = %33
  %48 = call i32 (...) @runlevel_main()
  store i32 %48, i32* %5, align 4
  br label %52

49:                                               ; preds = %33, %33, %33, %33, %33, %33, %33, %33
  br label %50

50:                                               ; preds = %33, %49
  %51 = call i32 @assert_not_reached(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %47, %45, %43, %41, %39, %35
  br label %53

53:                                               ; preds = %52, %32, %20
  %54 = call i32 (...) @release_busses()
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @log_parse_environment(...) #1

declare dso_local i32 @log_open(...) #1

declare dso_local i32 @rlimit_nofile_bump(i32) #1

declare dso_local i32 @sigbus_install(...) #1

declare dso_local i32 @isatty(i32) #1

declare dso_local i32 @parse_argv(i32, i8**) #1

declare dso_local i64 @running_in_chroot(...) #1

declare dso_local i32 @log_info(i8*) #1

declare dso_local i32 @systemctl_main(i32, i8**) #1

declare dso_local i32 @halt_main(...) #1

declare dso_local i32 @start_with_fallback(...) #1

declare dso_local i32 @reload_with_fallback(...) #1

declare dso_local i32 @logind_cancel_shutdown(...) #1

declare dso_local i32 @runlevel_main(...) #1

declare dso_local i32 @assert_not_reached(i8*) #1

declare dso_local i32 @release_busses(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
