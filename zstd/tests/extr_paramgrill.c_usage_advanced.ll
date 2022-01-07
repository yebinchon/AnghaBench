; ModuleID = '/home/carl/AnghaBench/zstd/tests/extr_paramgrill.c_usage_advanced.c'
source_filename = "/home/carl/AnghaBench/zstd/tests/extr_paramgrill.c_usage_advanced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"\0AAdvanced options :\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c" -T#          : set level 1 speed objective \0A\00", align 1
@.str.2 = private unnamed_addr constant [75 x i8] c" -B#          : cut input into blocks of size # (default : single block) \0A\00", align 1
@.str.3 = private unnamed_addr constant [69 x i8] c" --optimize=  : same as -O with more verbose syntax (see README.md)\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c" -S           : Single run \0A\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c" --zstd       : Single run, parameter selection same as zstdcli \0A\00", align 1
@.str.6 = private unnamed_addr constant [70 x i8] c" -P#          : generated sample compressibility (default : %.1f%%) \0A\00", align 1
@COMPRESSIBILITY_DEFAULT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [91 x i8] c" -t#          : Caps runtime of operation in seconds (default : %u seconds (%.1f hours)) \0A\00", align 1
@g_timeLimit_s = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [44 x i8] c" -v           : Prints Benchmarking output\0A\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c" -D           : Next argument dictionary file\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c" -s           : Seperate Files\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @usage_advanced to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usage_advanced() #0 {
  %1 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %3 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0))
  %4 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0))
  %5 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0))
  %7 = load i32, i32* @COMPRESSIBILITY_DEFAULT, align 4
  %8 = mul nsw i32 %7, 100
  %9 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.6, i64 0, i64 0), i32 %8)
  %10 = load i64, i64* @g_timeLimit_s, align 8
  %11 = trunc i64 %10 to i32
  %12 = load i64, i64* @g_timeLimit_s, align 8
  %13 = sitofp i64 %12 to double
  %14 = fdiv double %13, 3.600000e+03
  %15 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.7, i64 0, i64 0), i32 %11, double %14)
  %16 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0))
  %17 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @DISPLAY(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
