; ModuleID = '/home/carl/AnghaBench/zstd/tests/extr_fullbench.c_usage_advanced.c'
source_filename = "/home/carl/AnghaBench/zstd/tests/extr_fullbench.c_usage_advanced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"\0AAdvanced options :\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c" -b#    : test only function # \0A\00", align 1
@.str.2 = private unnamed_addr constant [72 x i8] c" -l#    : benchmark functions at that compression level (default : %i)\0A\00", align 1
@DEFAULT_CLEVEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [63 x i8] c"--zstd= : custom parameter selection. Format same as zstdcli \0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c" -P#    : sample compressibility (default : %.1f%%)\0A\00", align 1
@COMPRESSIBILITY_DEFAULT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c" -B#    : sample size (default : %u)\0A\00", align 1
@kSampleSizeDefault = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [47 x i8] c" -i#    : iteration loops [1-9](default : %i)\0A\00", align 1
@NBLOOPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @usage_advanced to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usage_advanced(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 @usage(i8* %3)
  %5 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %7 = load i32, i32* @DEFAULT_CLEVEL, align 4
  %8 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i32 %7)
  %9 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0))
  %10 = load i32, i32* @COMPRESSIBILITY_DEFAULT, align 4
  %11 = mul nsw i32 %10, 100
  %12 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %11)
  %13 = load i64, i64* @kSampleSizeDefault, align 8
  %14 = trunc i64 %13 to i32
  %15 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @NBLOOPS, align 4
  %17 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i32 %16)
  ret i32 0
}

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @DISPLAY(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
