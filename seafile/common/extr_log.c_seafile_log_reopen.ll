; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_log.c_seafile_log_reopen.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_log.c_seafile_log_reopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@logfile = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"a+\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Failed to open file %s\0A\00", align 1
@logfp = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"Failed to close file %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seafile_log_reopen() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = load i32, i32* @logfile, align 4
  %5 = call i64 @strcmp(i32 %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %25

8:                                                ; preds = %0
  %9 = load i32, i32* @logfile, align 4
  %10 = call i32* @g_fopen(i32 %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %10, i32** %2, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load i32, i32* @logfile, align 4
  %14 = call i32 @seaf_message(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %13)
  store i32 -1, i32* %1, align 4
  br label %25

15:                                               ; preds = %8
  %16 = load i32*, i32** @logfp, align 8
  store i32* %16, i32** %3, align 8
  %17 = load i32*, i32** %2, align 8
  store i32* %17, i32** @logfp, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = call i64 @fclose(i32* %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* @logfile, align 4
  %23 = call i32 @seaf_message(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %22)
  store i32 -1, i32* %1, align 4
  br label %25

24:                                               ; preds = %15
  store i32 0, i32* %1, align 4
  br label %25

25:                                               ; preds = %24, %21, %12, %7
  %26 = load i32, i32* %1, align 4
  ret i32 %26
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32* @g_fopen(i32, i8*) #1

declare dso_local i32 @seaf_message(i8*, i32) #1

declare dso_local i64 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
