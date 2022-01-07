; ModuleID = '/home/carl/AnghaBench/systemd/src/firstboot/extr_firstboot.c_run.c'
source_filename = "/home/carl/AnghaBench/systemd/src/firstboot/extr_firstboot.c_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"systemd.firstboot\00", align 1
@.str.1 = private unnamed_addr constant [78 x i8] c"Failed to parse systemd.firstboot= kernel command line argument, ignoring: %m\00", align 1
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
  %8 = load i32, i32* %4, align 4
  %9 = load i8**, i8*** %5, align 8
  %10 = call i32 @parse_argv(i32 %8, i8** %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp sle i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %3, align 4
  br label %68

15:                                               ; preds = %2
  %16 = call i32 (...) @log_setup_service()
  %17 = call i32 @umask(i32 18)
  %18 = call i32 @proc_cmdline_get_bool(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %6)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @log_error_errno(i32 %22, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0))
  store i32 %23, i32* %3, align 4
  br label %68

24:                                               ; preds = %15
  %25 = load i32, i32* %7, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %68

31:                                               ; preds = %27, %24
  %32 = call i32 (...) @process_locale()
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %68

37:                                               ; preds = %31
  %38 = call i32 (...) @process_keymap()
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %68

43:                                               ; preds = %37
  %44 = call i32 (...) @process_timezone()
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %68

49:                                               ; preds = %43
  %50 = call i32 (...) @process_hostname()
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %3, align 4
  br label %68

55:                                               ; preds = %49
  %56 = call i32 (...) @process_machine_id()
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %3, align 4
  br label %68

61:                                               ; preds = %55
  %62 = call i32 (...) @process_root_password()
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %3, align 4
  br label %68

67:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %65, %59, %53, %47, %41, %35, %30, %21, %13
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @parse_argv(i32, i8**) #1

declare dso_local i32 @log_setup_service(...) #1

declare dso_local i32 @umask(i32) #1

declare dso_local i32 @proc_cmdline_get_bool(i8*, i32*) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i32 @process_locale(...) #1

declare dso_local i32 @process_keymap(...) #1

declare dso_local i32 @process_timezone(...) #1

declare dso_local i32 @process_hostname(...) #1

declare dso_local i32 @process_machine_id(...) #1

declare dso_local i32 @process_root_password(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
