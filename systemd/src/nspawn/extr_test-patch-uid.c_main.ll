; ModuleID = '/home/carl/AnghaBench/systemd/src/nspawn/extr_test-patch-uid.c_main.c'
source_filename = "/home/carl/AnghaBench/systemd/src/nspawn/extr_test-patch-uid.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Expected PATH SHIFT RANGE parameters.\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to parse UID shift %s.\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to parse UID range %s.\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed to patch directory tree: %m\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Changed: %s\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* @LOG_DEBUG, align 4
  %10 = call i32 @test_setup_logging(i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 4
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = call i32 @log_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %15, i32* %3, align 4
  br label %62

16:                                               ; preds = %2
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 2
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @parse_uid(i8* %19, i32* %6)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %16
  %24 = load i32, i32* %8, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 2
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 (i32, i8*, ...) @log_error_errno(i32 %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  %29 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %29, i32* %3, align 4
  br label %62

30:                                               ; preds = %16
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 3
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @parse_gid(i8* %33, i32* %7)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load i32, i32* %8, align 4
  %39 = load i8**, i8*** %5, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 3
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 (i32, i8*, ...) @log_error_errno(i32 %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  %43 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %43, i32* %3, align 4
  br label %62

44:                                               ; preds = %30
  %45 = load i8**, i8*** %5, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 1
  %47 = load i8*, i8** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @path_patch_uid(i8* %47, i32 %48, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %44
  %54 = load i32, i32* %8, align 4
  %55 = call i32 (i32, i8*, ...) @log_error_errno(i32 %54, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %56 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %56, i32* %3, align 4
  br label %62

57:                                               ; preds = %44
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @yes_no(i32 %58)
  %60 = call i32 @log_info(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %57, %53, %37, %23, %13
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @test_setup_logging(i32) #1

declare dso_local i32 @log_error(i8*) #1

declare dso_local i32 @parse_uid(i8*, i32*) #1

declare dso_local i32 @log_error_errno(i32, i8*, ...) #1

declare dso_local i32 @parse_gid(i8*, i32*) #1

declare dso_local i32 @path_patch_uid(i8*, i32, i32) #1

declare dso_local i32 @log_info(i8*, i32) #1

declare dso_local i32 @yes_no(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
