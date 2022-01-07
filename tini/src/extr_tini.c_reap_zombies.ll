; ModuleID = '/home/carl/AnghaBench/tini/src/extr_tini.c_reap_zombies.c'
source_filename = "/home/carl/AnghaBench/tini/src/extr_tini.c_reap_zombies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WNOHANG = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ECHILD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"No child to wait\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Error while waiting for pids: '%s'\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"No child to reap\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Reaped child with pid: '%i'\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"Main child exited normally (with status '%i')\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"Main child exited with signal (with signal '%s')\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Main child exited for unknown reason\00", align 1
@STATUS_MAX = common dso_local global i64 0, align 8
@STATUS_MIN = common dso_local global i64 0, align 8
@expect_status = common dso_local global i32 0, align 4
@warn_on_reap = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"Reaped zombie process with pid=%i\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reap_zombies(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  br label %8

8:                                                ; preds = %2, %87
  %9 = load i32, i32* @WNOHANG, align 4
  %10 = call i32 @waitpid(i32 -1, i32* %7, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %24 [
    i32 -1, label %12
    i32 0, label %22
  ]

12:                                               ; preds = %8
  %13 = load i32, i32* @errno, align 4
  %14 = load i32, i32* @ECHILD, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = call i32 @PRINT_TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %88

18:                                               ; preds = %12
  %19 = load i32, i32* @errno, align 4
  %20 = call i32 @strerror(i32 %19)
  %21 = call i32 (i8*, ...) @PRINT_FATAL(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  store i32 1, i32* %3, align 4
  br label %90

22:                                               ; preds = %8
  %23 = call i32 @PRINT_TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %88

24:                                               ; preds = %8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @PRINT_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %80

30:                                               ; preds = %24
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @WIFEXITED(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @WEXITSTATUS(i32 %35)
  %37 = call i32 @PRINT_INFO(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @WEXITSTATUS(i32 %38)
  %40 = load i32*, i32** %5, align 8
  store i32 %39, i32* %40, align 4
  br label %57

41:                                               ; preds = %30
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @WIFSIGNALED(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @WTERMSIG(i32 %46)
  %48 = call i32 @strsignal(i32 %47)
  %49 = call i32 @PRINT_INFO(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @WTERMSIG(i32 %50)
  %52 = add nsw i32 128, %51
  %53 = load i32*, i32** %5, align 8
  store i32 %52, i32* %53, align 4
  br label %56

54:                                               ; preds = %41
  %55 = call i32 (i8*, ...) @PRINT_FATAL(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %90

56:                                               ; preds = %45
  br label %57

57:                                               ; preds = %56, %34
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* @STATUS_MAX, align 8
  %62 = load i64, i64* @STATUS_MIN, align 8
  %63 = sub nsw i64 %61, %62
  %64 = add nsw i64 %63, 1
  %65 = srem i64 %60, %64
  %66 = trunc i64 %65 to i32
  %67 = load i32*, i32** %5, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* @expect_status, align 4
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @INT32_BITFIELD_CHECK_BOUNDS(i32 %68, i32 %70)
  %72 = load i32, i32* @expect_status, align 4
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @INT32_BITFIELD_TEST(i32 %72, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %57
  %78 = load i32*, i32** %5, align 8
  store i32 0, i32* %78, align 4
  br label %79

79:                                               ; preds = %77, %57
  br label %87

80:                                               ; preds = %24
  %81 = load i32, i32* @warn_on_reap, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @PRINT_WARNING(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %83, %80
  br label %87

87:                                               ; preds = %86, %79
  br label %8

88:                                               ; preds = %22, %16
  br label %89

89:                                               ; preds = %88
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %54, %18
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @PRINT_TRACE(i8*) #1

declare dso_local i32 @PRINT_FATAL(i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @PRINT_DEBUG(i8*, i32) #1

declare dso_local i32 @WIFEXITED(i32) #1

declare dso_local i32 @PRINT_INFO(i8*, i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

declare dso_local i32 @WIFSIGNALED(i32) #1

declare dso_local i32 @strsignal(i32) #1

declare dso_local i32 @WTERMSIG(i32) #1

declare dso_local i32 @INT32_BITFIELD_CHECK_BOUNDS(i32, i32) #1

declare dso_local i32 @INT32_BITFIELD_TEST(i32, i32) #1

declare dso_local i32 @PRINT_WARNING(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
