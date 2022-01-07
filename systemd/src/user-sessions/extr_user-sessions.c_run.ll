; ModuleID = '/home/carl/AnghaBench/systemd/src/user-sessions/extr_user-sessions.c_run.c'
source_filename = "/home/carl/AnghaBench/systemd/src/user-sessions/extr_user-sessions.c_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"This program requires one argument.\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"/run/nologin\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"/etc/nologin\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Unknown verb '%s'.\00", align 1
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
  %9 = icmp ne i32 %8, 2
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = call i32 @SYNTHETIC_ERRNO(i32 %11)
  %13 = call i32 (i32, i8*, ...) @log_error_errno(i32 %12, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %3, align 4
  br label %48

14:                                               ; preds = %2
  %15 = call i32 (...) @log_setup_service()
  %16 = call i32 @umask(i32 18)
  %17 = call i32 (...) @mac_selinux_init()
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i64 @streq(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %14
  %24 = call i32 @unlink_or_warn(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32 %24, i32* %6, align 4
  %25 = call i32 @unlink_or_warn(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %48

30:                                               ; preds = %23
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %48

32:                                               ; preds = %14
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @streq(i8* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = call i32 (...) @create_shutdown_run_nologin_or_warn()
  store i32 %39, i32* %3, align 4
  br label %48

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* @EINVAL, align 4
  %43 = call i32 @SYNTHETIC_ERRNO(i32 %42)
  %44 = load i8**, i8*** %5, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 1
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 (i32, i8*, ...) @log_error_errno(i32 %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %46)
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %41, %38, %30, %28, %10
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @log_error_errno(i32, i8*, ...) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

declare dso_local i32 @log_setup_service(...) #1

declare dso_local i32 @umask(i32) #1

declare dso_local i32 @mac_selinux_init(...) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @unlink_or_warn(i8*) #1

declare dso_local i32 @create_shutdown_run_nologin_or_warn(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
