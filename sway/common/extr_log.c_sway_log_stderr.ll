; ModuleID = '/home/carl/AnghaBench/sway/common/extr_log.c_sway_log_stderr.c'
source_filename = "/home/carl/AnghaBench/sway/common/extr_log.c_sway_log_stderr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@log_importance = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%F %T - \00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@SWAY_LOG_IMPORTANCE_LAST = common dso_local global i32 0, align 4
@colored = common dso_local global i64 0, align 8
@STDERR_FILENO = common dso_local global i32 0, align 4
@verbosity_colors = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32)* @sway_log_stderr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sway_log_stderr(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tm, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tm*, align 8
  %10 = alloca [26 x i8], align 16
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @log_importance, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %66

16:                                               ; preds = %3
  %17 = call i32 @time(i32* null)
  store i32 %17, i32* %8, align 4
  %18 = call %struct.tm* @localtime_r(i32* %8, %struct.tm* %7)
  store %struct.tm* %18, %struct.tm** %9, align 8
  %19 = getelementptr inbounds [26 x i8], [26 x i8]* %10, i64 0, i64 0
  %20 = load %struct.tm*, %struct.tm** %9, align 8
  %21 = call i32 @strftime(i8* %19, i32 26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.tm* %20)
  %22 = load i32, i32* @stderr, align 4
  %23 = getelementptr inbounds [26 x i8], [26 x i8]* %10, i64 0, i64 0
  %24 = call i32 (i32, i8*, ...) @fprintf(i32 %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @SWAY_LOG_IMPORTANCE_LAST, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %16
  %29 = load i32, i32* %4, align 4
  br label %33

30:                                               ; preds = %16
  %31 = load i32, i32* @SWAY_LOG_IMPORTANCE_LAST, align 4
  %32 = sub nsw i32 %31, 1
  br label %33

33:                                               ; preds = %30, %28
  %34 = phi i32 [ %29, %28 ], [ %32, %30 ]
  store i32 %34, i32* %11, align 4
  %35 = load i64, i64* @colored, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = load i32, i32* @STDERR_FILENO, align 4
  %39 = call i64 @isatty(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = load i32, i32* @stderr, align 4
  %43 = load i8**, i8*** @verbosity_colors, align 8
  %44 = load i32, i32* %11, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %41, %37, %33
  %50 = load i32, i32* @stderr, align 4
  %51 = load i8*, i8** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @vfprintf(i32 %50, i8* %51, i32 %52)
  %54 = load i64, i64* @colored, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %49
  %57 = load i32, i32* @STDERR_FILENO, align 4
  %58 = call i64 @isatty(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i32, i32* @stderr, align 4
  %62 = call i32 (i32, i8*, ...) @fprintf(i32 %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %56, %49
  %64 = load i32, i32* @stderr, align 4
  %65 = call i32 (i32, i8*, ...) @fprintf(i32 %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %15
  ret void
}

declare dso_local i32 @time(i32*) #1

declare dso_local %struct.tm* @localtime_r(i32*, %struct.tm*) #1

declare dso_local i32 @strftime(i8*, i32, i8*, %struct.tm*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @isatty(i32) #1

declare dso_local i32 @vfprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
