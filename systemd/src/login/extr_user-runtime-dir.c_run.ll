; ModuleID = '/home/carl/AnghaBench/systemd/src/login/extr_user-runtime-dir.c_run.c'
source_filename = "/home/carl/AnghaBench/systemd/src/login/extr_user-runtime-dir.c_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"This program takes two arguments.\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"First argument must be either \22start\22 or \22stop\22.\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Could not initialize labelling: %m\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Unknown verb!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = call i32 (...) @log_parse_environment()
  %8 = call i32 (...) @log_open()
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 3
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = call i32 @SYNTHETIC_ERRNO(i32 %12)
  %14 = call i32 @log_error_errno(i32 %13, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %3, align 4
  br label %57

15:                                               ; preds = %2
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @STR_IN_SET(i8* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @EINVAL, align 4
  %23 = call i32 @SYNTHETIC_ERRNO(i32 %22)
  %24 = call i32 @log_error_errno(i32 %23, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  store i32 %24, i32* %3, align 4
  br label %57

25:                                               ; preds = %15
  %26 = call i32 (...) @mac_selinux_init()
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @log_error_errno(i32 %30, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  store i32 %31, i32* %3, align 4
  br label %57

32:                                               ; preds = %25
  %33 = call i32 @umask(i32 18)
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 1
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @streq(i8* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load i8**, i8*** %5, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 2
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @do_mount(i8* %42)
  store i32 %43, i32* %3, align 4
  br label %57

44:                                               ; preds = %32
  %45 = load i8**, i8*** %5, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @streq(i8* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load i8**, i8*** %5, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 2
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @do_umount(i8* %53)
  store i32 %54, i32* %3, align 4
  br label %57

55:                                               ; preds = %44
  %56 = call i32 @assert_not_reached(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %50, %39, %29, %21, %11
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @log_parse_environment(...) #1

declare dso_local i32 @log_open(...) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

declare dso_local i32 @STR_IN_SET(i8*, i8*, i8*) #1

declare dso_local i32 @mac_selinux_init(...) #1

declare dso_local i32 @umask(i32) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @do_mount(i8*) #1

declare dso_local i32 @do_umount(i8*) #1

declare dso_local i32 @assert_not_reached(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
