; ModuleID = '/home/carl/AnghaBench/systemd/src/analyze/extr_analyze.c_parsing_hint.c'
source_filename = "/home/carl/AnghaBench/systemd/src/analyze/extr_analyze.c_parsing_hint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [102 x i8] c"Hint: this expression is a valid calendar specification. Use 'systemd-analyze calendar \22%s\22' instead?\00", align 1
@.str.1 = private unnamed_addr constant [90 x i8] c"Hint: this expression is a valid timestamp. Use 'systemd-analyze timestamp \22%s\22' instead?\00", align 1
@USEC_PER_SEC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [88 x i8] c"Hint: this expression is a valid timespan. Use 'systemd-analyze timespan \22%s\22' instead?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32)* @parsing_hint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parsing_hint(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %4
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @calendar_spec_from_string(i8* %12, i32* null)
  %14 = icmp sge i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @log_notice(i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str, i64 0, i64 0), i8* %16)
  br label %18

18:                                               ; preds = %15, %11, %4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i8*, i8** %5, align 8
  %23 = call i64 @parse_timestamp(i8* %22, i32* null)
  %24 = icmp sge i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @log_notice(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  br label %28

28:                                               ; preds = %25, %21, %18
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* @USEC_PER_SEC, align 4
  %34 = call i64 @parse_time(i8* %32, i32* null, i32 %33)
  %35 = icmp sge i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @log_notice(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  br label %39

39:                                               ; preds = %36, %31, %28
  ret void
}

declare dso_local i64 @calendar_spec_from_string(i8*, i32*) #1

declare dso_local i32 @log_notice(i8*, i8*) #1

declare dso_local i64 @parse_timestamp(i8*, i32*) #1

declare dso_local i64 @parse_time(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
