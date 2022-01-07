; ModuleID = '/home/carl/AnghaBench/systemd/src/partition/extr_makefs.c_makefs.c'
source_filename = "/home/carl/AnghaBench/systemd/src/partition/extr_makefs.c_makefs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"swap\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"/sbin/mkswap\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"/sbin/mkfs.\00", align 1
@X_OK = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"%s is not executable: %m\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"(mkfs)\00", align 1
@FORK_RESET_SIGNALS = common dso_local global i32 0, align 4
@FORK_DEATHSIG = common dso_local global i32 0, align 4
@FORK_RLIMIT_NOFILE_SAFE = common dso_local global i32 0, align 4
@FORK_LOG = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@WAIT_LOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @makefs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @makefs(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [3 x i8*], align 16
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @streq(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %17

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = call i8* @strjoina(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %15)
  store i8* %16, i8** %6, align 8
  br label %17

17:                                               ; preds = %14, %13
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* @X_OK, align 4
  %20 = call i64 @access(i8* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, i32* @errno, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @log_error_errno(i32 %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %24)
  store i32 %25, i32* %3, align 4
  br label %59

26:                                               ; preds = %17
  %27 = load i32, i32* @FORK_RESET_SIGNALS, align 4
  %28 = load i32, i32* @FORK_DEATHSIG, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @FORK_RLIMIT_NOFILE_SAFE, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @FORK_LOG, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @safe_fork(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %33, i32* %7)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %3, align 4
  br label %59

39:                                               ; preds = %26
  %40 = load i32, i32* %8, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %39
  %43 = getelementptr inbounds [3 x i8*], [3 x i8*]* %9, i64 0, i64 0
  %44 = load i8*, i8** %6, align 8
  store i8* %44, i8** %43, align 8
  %45 = getelementptr inbounds i8*, i8** %43, i64 1
  %46 = load i8*, i8** %5, align 8
  store i8* %46, i8** %45, align 8
  %47 = getelementptr inbounds i8*, i8** %45, i64 1
  store i8* null, i8** %47, align 8
  %48 = getelementptr inbounds [3 x i8*], [3 x i8*]* %9, i64 0, i64 0
  %49 = load i8*, i8** %48, align 16
  %50 = getelementptr inbounds [3 x i8*], [3 x i8*]* %9, i64 0, i64 0
  %51 = call i32 @execv(i8* %49, i8** %50)
  %52 = load i32, i32* @EXIT_FAILURE, align 4
  %53 = call i32 @_exit(i32 %52) #3
  unreachable

54:                                               ; preds = %39
  %55 = load i8*, i8** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @WAIT_LOG, align 4
  %58 = call i32 @wait_for_terminate_and_check(i8* %55, i32 %56, i32 %57)
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %54, %37, %22
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i8* @strjoina(i8*, i8*) #1

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i32 @log_error_errno(i32, i8*, i8*) #1

declare dso_local i32 @safe_fork(i8*, i32, i32*) #1

declare dso_local i32 @execv(i8*, i8**) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @wait_for_terminate_and_check(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
