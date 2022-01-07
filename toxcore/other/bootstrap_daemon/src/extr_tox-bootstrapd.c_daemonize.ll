; ModuleID = '/home/carl/AnghaBench/toxcore/other/bootstrap_daemon/src/extr_tox-bootstrapd.c_daemonize.c'
source_filename = "/home/carl/AnghaBench/toxcore/other/bootstrap_daemon/src/extr_tox-bootstrapd.c_daemonize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@LOG_LEVEL_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [72 x i8] c"Another instance of the daemon is already running, PID file %s exists.\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"a+\00", align 1
@LOG_LEVEL_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"Couldn't open the PID file for writing: %s. Exiting.\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@LOG_LEVEL_INFO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"Forked successfully: PID: %d.\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Forking failed. Exiting.\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"SID creation failure. Exiting.\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"Couldn't change working directory to '/'. Exiting.\0A\00", align 1
@LOG_BACKEND_STDOUT = common dso_local global i64 0, align 8
@STDOUT_FILENO = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @daemonize(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32* @fopen(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %8, i32** %5, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load i32, i32* @LOG_LEVEL_WARNING, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 (i32, i8*, ...) @write_log(i32 %11, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i8* %12)
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @fclose(i32* %14)
  br label %16

16:                                               ; preds = %10, %2
  %17 = load i8*, i8** %4, align 8
  %18 = call i32* @fopen(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %18, i32** %5, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i32, i32* @LOG_LEVEL_ERROR, align 4
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 (i32, i8*, ...) @write_log(i32 %22, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i8* %23)
  %25 = call i32 @exit(i32 1) #3
  unreachable

26:                                               ; preds = %16
  %27 = call i32 (...) @fork()
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %26
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @fprintf(i32* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %32)
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @fclose(i32* %34)
  %36 = load i32, i32* @LOG_LEVEL_INFO, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 (i32, i8*, ...) @write_log(i32 %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %37)
  %39 = call i32 @exit(i32 0) #3
  unreachable

40:                                               ; preds = %26
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @fclose(i32* %41)
  br label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32, i32* @LOG_LEVEL_ERROR, align 4
  %48 = call i32 (i32, i8*, ...) @write_log(i32 %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %49 = call i32 @exit(i32 1) #3
  unreachable

50:                                               ; preds = %43
  %51 = call i64 (...) @setsid()
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i32, i32* @LOG_LEVEL_ERROR, align 4
  %55 = call i32 (i32, i8*, ...) @write_log(i32 %54, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %56 = call i32 @exit(i32 1) #3
  unreachable

57:                                               ; preds = %50
  %58 = call i64 @chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i32, i32* @LOG_LEVEL_ERROR, align 4
  %62 = call i32 (i32, i8*, ...) @write_log(i32 %61, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i64 0, i64 0))
  %63 = call i32 @exit(i32 1) #3
  unreachable

64:                                               ; preds = %57
  %65 = load i64, i64* %3, align 8
  %66 = load i64, i64* @LOG_BACKEND_STDOUT, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %64
  %69 = load i32, i32* @STDOUT_FILENO, align 4
  %70 = call i32 @close(i32 %69)
  %71 = load i32, i32* @STDIN_FILENO, align 4
  %72 = call i32 @close(i32 %71)
  %73 = load i32, i32* @STDERR_FILENO, align 4
  %74 = call i32 @close(i32 %73)
  br label %75

75:                                               ; preds = %68, %64
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @write_log(i32, i8*, ...) #1

declare dso_local i32 @fclose(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fork(...) #1

declare dso_local i32 @fprintf(i32*, i8*, i32) #1

declare dso_local i64 @setsid(...) #1

declare dso_local i64 @chdir(i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
