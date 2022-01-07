; ModuleID = '/home/carl/AnghaBench/tini/src/extr_tini.c_print_usage.c'
source_filename = "/home/carl/AnghaBench/tini/src/extr_tini.c_print_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"%s (%s)\0A\00", align 1
@TINI_VERSION_STRING = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"Usage: %s [OPTIONS] PROGRAM -- [ARGS] | --version\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [71 x i8] c"Execute a program under the supervision of a valid init process (%s)\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Command line options:\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"  --version: Show version and exit.\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"  -h: Show this help message and exit.\0A\00", align 1
@.str.6 = private unnamed_addr constant [66 x i8] c"  -p SIGNAL: Trigger SIGNAL when parent dies, e.g. \22-p SIGKILL\22.\0A\00", align 1
@.str.7 = private unnamed_addr constant [59 x i8] c"  -v: Generate more verbose output. Repeat up to 3 times.\0A\00", align 1
@.str.8 = private unnamed_addr constant [58 x i8] c"  -w: Print a warning when processes are getting reaped.\0A\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"  -g: Send signals to the child's process group.\0A\00", align 1
@.str.10 = private unnamed_addr constant [55 x i8] c"  -e EXIT_CODE: Remap EXIT_CODE (from 0 to 255) to 0.\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"  -l: Show license and exit.\0A\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"Environment variables:\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"  %s: Set the verbosity level (default: %d).\0A\00", align 1
@VERBOSITY_ENV_VAR = common dso_local global i8* null, align 8
@DEFAULT_VERBOSITY = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [50 x i8] c"  %s: Send signals to the child's process group.\0A\00", align 1
@KILL_PROCESS_GROUP_GROUP_ENV_VAR = common dso_local global i8* null, align 8
@SUBREAPER_ENV_VAR = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_usage(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i8* @basename(i8* %6)
  %8 = load i8*, i8** @TINI_VERSION_STRING, align 8
  %9 = call i32 (i32*, i8*, ...) @fprintf(i32* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %7, i8* %8)
  %10 = load i32*, i32** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i8* @basename(i8* %11)
  %13 = call i32 (i32*, i8*, ...) @fprintf(i32* %10, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i8* %12)
  %14 = load i32*, i32** %4, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i8* @basename(i8* %15)
  %17 = call i32 (i32*, i8*, ...) @fprintf(i32* %14, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i8* %16)
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 (i32*, i8*, ...) @fprintf(i32* %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 (i32*, i8*, ...) @fprintf(i32* %20, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 (i32*, i8*, ...) @fprintf(i32* %22, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 (i32*, i8*, ...) @fprintf(i32* %24, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.6, i64 0, i64 0))
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 (i32*, i8*, ...) @fprintf(i32* %26, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0))
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 (i32*, i8*, ...) @fprintf(i32* %28, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i64 0, i64 0))
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 (i32*, i8*, ...) @fprintf(i32* %30, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0))
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 (i32*, i8*, ...) @fprintf(i32* %32, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.10, i64 0, i64 0))
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 (i32*, i8*, ...) @fprintf(i32* %34, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0))
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 (i32*, i8*, ...) @fprintf(i32* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 (i32*, i8*, ...) @fprintf(i32* %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0))
  %40 = load i32*, i32** %4, align 8
  %41 = load i8*, i8** @VERBOSITY_ENV_VAR, align 8
  %42 = load i32, i32* @DEFAULT_VERBOSITY, align 4
  %43 = call i32 (i32*, i8*, ...) @fprintf(i32* %40, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.14, i64 0, i64 0), i8* %41, i32 %42)
  %44 = load i32*, i32** %4, align 8
  %45 = load i8*, i8** @KILL_PROCESS_GROUP_GROUP_ENV_VAR, align 8
  %46 = call i32 (i32*, i8*, ...) @fprintf(i32* %44, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.15, i64 0, i64 0), i8* %45)
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 (i32*, i8*, ...) @fprintf(i32* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @basename(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
