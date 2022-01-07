; ModuleID = '/home/carl/AnghaBench/zstd/programs/extr_zstdcli.c_usage.c'
source_filename = "/home/carl/AnghaBench/zstd/programs/extr_zstdcli.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"Usage : \0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"      %s [args] [FILE(s)] [-o file] \0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"FILE    : a filename \0A\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"          with no FILE, or when FILE is - , read standard input\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Arguments : \0A\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c" -#     : # compression level (1-%d, default: %d) \0A\00", align 1
@ZSTDCLI_CLEVEL_MAX = common dso_local global i32 0, align 4
@ZSTDCLI_CLEVEL_DEFAULT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c" -d     : decompression \0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c" -D file: use `file` as Dictionary \0A\00", align 1
@.str.9 = private unnamed_addr constant [61 x i8] c" -o file: result stored into `file` (only if 1 input file) \0A\00", align 1
@.str.10 = private unnamed_addr constant [70 x i8] c" -f     : overwrite output without prompting and (de)compress links \0A\00", align 1
@.str.11 = private unnamed_addr constant [66 x i8] c"--rm    : remove source file(s) after successful de/compression \0A\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c" -k     : preserve source file(s) (default) \0A\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c" -h/-H  : display help/long help and exit \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usage(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %4)
  %6 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0))
  %9 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %10 = load i32, i32* @ZSTDCLI_CLEVEL_MAX, align 4
  %11 = load i32, i32* @ZSTDCLI_CLEVEL_DEFAULT, align 4
  %12 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 %10, i32 %11)
  %13 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %14 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  %15 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.9, i64 0, i64 0))
  %16 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.10, i64 0, i64 0))
  %17 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.11, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i64 0, i64 0))
  %19 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @DISPLAY(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
