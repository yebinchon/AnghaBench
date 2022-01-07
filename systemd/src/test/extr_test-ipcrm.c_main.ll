; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-ipcrm.c_main.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-ipcrm.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NOBODY_USER_NAME = common dso_local global i8* null, align 8
@LOG_INFO = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Failed to resolve user\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to resolve \22%s\22: %m\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i8**, i8*** %5, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 1
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %16

14:                                               ; preds = %2
  %15 = load i8*, i8** @NOBODY_USER_NAME, align 8
  br label %16

16:                                               ; preds = %14, %13
  %17 = phi i8* [ %11, %13 ], [ %15, %14 ]
  store i8* %17, i8** %8, align 8
  %18 = load i32, i32* @LOG_INFO, align 4
  %19 = call i32 @test_setup_logging(i32 %18)
  %20 = call i32 @get_user_creds(i8** %8, i32* %6, i32* null, i32* null, i32* null, i32 0)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @ESRCH, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = call i32 @log_tests_skipped(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 %26, i32* %3, align 4
  br label %46

27:                                               ; preds = %16
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i32, i32* %7, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @log_error_errno(i32 %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  %34 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %34, i32* %3, align 4
  br label %46

35:                                               ; preds = %27
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @clean_ipc_by_uid(i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @EXIT_FAILURE, align 4
  br label %44

42:                                               ; preds = %35
  %43 = load i32, i32* @EXIT_SUCCESS, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %30, %25
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @test_setup_logging(i32) #1

declare dso_local i32 @get_user_creds(i8**, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @log_tests_skipped(i8*) #1

declare dso_local i32 @log_error_errno(i32, i8*, i8*) #1

declare dso_local i32 @clean_ipc_by_uid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
