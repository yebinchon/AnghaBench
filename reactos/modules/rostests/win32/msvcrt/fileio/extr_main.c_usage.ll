; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/win32/msvcrt/fileio/extr_main.c_usage.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/win32/msvcrt/fileio/extr_main.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [62 x i8] c"USAGE: %s test_id [unicode]|[ansi] [clean]|[status][verbose]\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"\09Where test_id is one of:\0A\00", align 1
@.str.2 = private unnamed_addr constant [72 x i8] c"\090 - (default) regression mode, run tests 1-4 displaying failures only\0A\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"\091 - Write DOS style eol data to file in text mode (text.dos)\0A\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"\092 - Write NIX style eol data to file in binary mode (binary.dos)\0A\00", align 1
@.str.5 = private unnamed_addr constant [63 x i8] c"\093 - Write DOS style eol data to file in text mode (text.nix)\0A\00", align 1
@.str.6 = private unnamed_addr constant [67 x i8] c"\094 - Write NIX style eol data to file in binary mode (binary.nix)\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"\095 - Echo console line input\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"\096 - Dump console line input in hex format\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"\097 - The source code is your friend\0A\00", align 1
@.str.10 = private unnamed_addr constant [72 x i8] c"\09[unicode] - perform tests using UNICODE versions of library functions\0A\00", align 1
@.str.11 = private unnamed_addr constant [66 x i8] c"\09[ansi] - perform tests using ANSI versions of library functions\0A\00", align 1
@.str.12 = private unnamed_addr constant [68 x i8] c"\09    If neither unicode or ansi is specified build default is used\0A\00", align 1
@.str.13 = private unnamed_addr constant [51 x i8] c"\09[clean] - delete all temporary test output files\0A\00", align 1
@.str.14 = private unnamed_addr constant [55 x i8] c"\09[status] - enable extra status display while running\0A\00", align 1
@.str.15 = private unnamed_addr constant [49 x i8] c"\09[verbose] - enable verbose output when running\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usage(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i8* %3)
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0))
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.6, i64 0, i64 0))
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0))
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0))
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.10, i64 0, i64 0))
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.11, i64 0, i64 0))
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.12, i64 0, i64 0))
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.14, i64 0, i64 0))
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.15, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
