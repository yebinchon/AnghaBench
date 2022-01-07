; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_exec-util.c_do_spawn.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_exec-util.c_do_spawn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"%s is empty (a mask).\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"(direxec)\00", align 1
@FORK_DEATHSIG = common dso_local global i32 0, align 4
@FORK_LOG = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Failed to execute %s: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i32, i32*)* @do_spawn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_spawn(i8* %0, i8** %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x i8*], align 16
  store i8* %0, i8** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i64 @null_or_empty_path(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @log_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %17)
  store i32 0, i32* %5, align 4
  br label %70

19:                                               ; preds = %4
  %20 = load i32, i32* @FORK_DEATHSIG, align 4
  %21 = load i32, i32* @FORK_LOG, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @safe_fork(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32* %10)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %5, align 4
  br label %70

28:                                               ; preds = %19
  %29 = load i32, i32* %11, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %67

31:                                               ; preds = %28
  %32 = load i32, i32* %8, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %31
  %35 = load i32, i32* @STDIN_FILENO, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @STDERR_FILENO, align 4
  %38 = call i32 @rearrange_stdio(i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* @EXIT_FAILURE, align 4
  %43 = call i32 @_exit(i32 %42) #3
  unreachable

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44, %31
  %46 = call i32 (...) @rlimit_nofile_safe()
  %47 = load i8**, i8*** %7, align 8
  %48 = icmp ne i8** %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %45
  %50 = load i8*, i8** %6, align 8
  %51 = getelementptr inbounds [2 x i8*], [2 x i8*]* %12, i64 0, i64 0
  store i8* %50, i8** %51, align 16
  %52 = getelementptr inbounds [2 x i8*], [2 x i8*]* %12, i64 0, i64 1
  store i8* null, i8** %52, align 8
  %53 = getelementptr inbounds [2 x i8*], [2 x i8*]* %12, i64 0, i64 0
  store i8** %53, i8*** %7, align 8
  br label %58

54:                                               ; preds = %45
  %55 = load i8*, i8** %6, align 8
  %56 = load i8**, i8*** %7, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 0
  store i8* %55, i8** %57, align 8
  br label %58

58:                                               ; preds = %54, %49
  %59 = load i8*, i8** %6, align 8
  %60 = load i8**, i8*** %7, align 8
  %61 = call i32 @execv(i8* %59, i8** %60)
  %62 = load i32, i32* @errno, align 4
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 @log_error_errno(i32 %62, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %63)
  %65 = load i32, i32* @EXIT_FAILURE, align 4
  %66 = call i32 @_exit(i32 %65) #3
  unreachable

67:                                               ; preds = %28
  %68 = load i32, i32* %10, align 4
  %69 = load i32*, i32** %9, align 8
  store i32 %68, i32* %69, align 4
  store i32 1, i32* %5, align 4
  br label %70

70:                                               ; preds = %67, %26, %16
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i64 @null_or_empty_path(i8*) #1

declare dso_local i32 @log_debug(i8*, i8*) #1

declare dso_local i32 @safe_fork(i8*, i32, i32*) #1

declare dso_local i32 @rearrange_stdio(i32, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @rlimit_nofile_safe(...) #1

declare dso_local i32 @execv(i8*, i8**) #1

declare dso_local i32 @log_error_errno(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
