; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/log2lines/extr_util.c_set_LogFile.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/log2lines/extr_util.c_set_LogFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@opt_logFile = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@opt_mod = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@opt_buffered = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Disabling log buffering on %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Enabling log buffering on %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Could not open logfile %s (%s)\0A\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_LogFile(i32** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32**, align 8
  store i32** %0, i32*** %3, align 8
  %4 = load i64*, i64** @opt_logFile, align 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %54

7:                                                ; preds = %1
  %8 = load i32**, i32*** %3, align 8
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = load i32**, i32*** %3, align 8
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @fclose(i32* %13)
  br label %15

15:                                               ; preds = %11, %7
  %16 = load i32**, i32*** %3, align 8
  store i32* null, i32** %16, align 8
  %17 = load i64*, i64** @opt_logFile, align 8
  %18 = call i64 @strcmp(i64* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %55

21:                                               ; preds = %15
  %22 = load i64*, i64** @opt_logFile, align 8
  %23 = load i8*, i8** @opt_mod, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i8*, i8** @opt_mod, align 8
  br label %28

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i8* [ %26, %25 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %27 ]
  %30 = call i32* @fopen(i64* %22, i8* %29)
  %31 = load i32**, i32*** %3, align 8
  store i32* %30, i32** %31, align 8
  %32 = load i32**, i32*** %3, align 8
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %48

35:                                               ; preds = %28
  %36 = load i32, i32* @opt_buffered, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = load i64*, i64** @opt_logFile, align 8
  %40 = call i32 (i32, i8*, i64*, ...) @l2l_dbg(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64* %39)
  %41 = load i32**, i32*** %3, align 8
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @setbuf(i32* %42, i32* null)
  br label %47

44:                                               ; preds = %35
  %45 = load i64*, i64** @opt_logFile, align 8
  %46 = call i32 (i32, i8*, i64*, ...) @l2l_dbg(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64* %45)
  br label %47

47:                                               ; preds = %44, %38
  br label %53

48:                                               ; preds = %28
  %49 = load i64*, i64** @opt_logFile, align 8
  %50 = load i32, i32* @errno, align 4
  %51 = call i32 @strerror(i32 %50)
  %52 = call i32 (i32, i8*, i64*, ...) @l2l_dbg(i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i64* %49, i32 %51)
  store i32 2, i32* %2, align 4
  br label %55

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53, %1
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %48, %20
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @strcmp(i64*, i8*) #1

declare dso_local i32* @fopen(i64*, i8*) #1

declare dso_local i32 @l2l_dbg(i32, i8*, i64*, ...) #1

declare dso_local i32 @setbuf(i32*, i32*) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
