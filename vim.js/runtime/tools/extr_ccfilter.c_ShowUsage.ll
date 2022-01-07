; ModuleID = '/home/carl/AnghaBench/vim.js/runtime/tools/extr_ccfilter.c_ShowUsage.c'
source_filename = "/home/carl/AnghaBench/vim.js/runtime/tools/extr_ccfilter.c_ShowUsage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@USAGE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"Current default <COMPILER>: %s\0A\00", align 1
@COMPILER_Names = common dso_local global i8*** null, align 8
@COMPILER_DEFAULT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"Acceptable parameters for <COMPILER> are:\0A\00", align 1
@COMPILER_QTY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"     %-15.15s     %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ShowUsage(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @stderr, align 4
  %5 = load i8*, i8** @USAGE, align 8
  %6 = call i32 (i32, i8*, ...) @fprintf(i32 %4, i8* %5)
  %7 = load i32, i32* @stderr, align 4
  %8 = load i8***, i8**** @COMPILER_Names, align 8
  %9 = load i64, i64* @COMPILER_DEFAULT, align 8
  %10 = getelementptr inbounds i8**, i8*** %8, i64 %9
  %11 = load i8**, i8*** %10, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 (i32, i8*, ...) @fprintf(i32 %7, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = load i32, i32* @stderr, align 4
  %16 = call i32 (i32, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %17

17:                                               ; preds = %38, %1
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @COMPILER_QTY, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %41

21:                                               ; preds = %17
  %22 = load i32, i32* @stderr, align 4
  %23 = load i8***, i8**** @COMPILER_Names, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8**, i8*** %23, i64 %25
  %27 = load i8**, i8*** %26, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i8***, i8**** @COMPILER_Names, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8**, i8*** %30, i64 %32
  %34 = load i8**, i8*** %33, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 1
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 (i32, i8*, ...) @fprintf(i32 %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %29, i8* %36)
  br label %38

38:                                               ; preds = %21
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %17

41:                                               ; preds = %17
  %42 = load i32, i32* @stderr, align 4
  %43 = load i8*, i8** %2, align 8
  %44 = call i32 (i32, i8*, ...) @fprintf(i32 %42, i8* %43)
  ret i32 0
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
