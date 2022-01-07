; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_option.c_term_bg_default.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_option.c_term_bg_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@T_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"linux\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"screen.linux\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"cygwin\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"putty\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"COLORFGBG\00", align 1
@NUL = common dso_local global i8 0, align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"dark\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"light\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @term_bg_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @term_bg_default() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = load i32, i32* @T_NAME, align 4
  %4 = call i64 @STRCMP(i32 %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %51, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* @T_NAME, align 4
  %8 = call i64 @STRCMP(i32 %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %51, label %10

10:                                               ; preds = %6
  %11 = load i32, i32* @T_NAME, align 4
  %12 = call i64 @STRCMP(i32 %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %51, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* @T_NAME, align 4
  %16 = call i64 @STRCMP(i32 %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %51, label %18

18:                                               ; preds = %14
  %19 = call i8* @mch_getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i8* %19, i8** %2, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %52

21:                                               ; preds = %18
  %22 = load i8*, i8** %2, align 8
  %23 = call i8* @vim_strrchr(i8* %22, i8 signext 59)
  store i8* %23, i8** %2, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %52

25:                                               ; preds = %21
  %26 = load i8*, i8** %2, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp sge i32 %29, 48
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load i8*, i8** %2, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp sle i32 %35, 54
  br i1 %36, label %43, label %37

37:                                               ; preds = %31, %25
  %38 = load i8*, i8** %2, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 56
  br i1 %42, label %43, label %52

43:                                               ; preds = %37, %31
  %44 = load i8*, i8** %2, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 2
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = load i8, i8* @NUL, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %43, %14, %10, %6, %0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %1, align 8
  br label %53

52:                                               ; preds = %43, %37, %21, %18
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %1, align 8
  br label %53

53:                                               ; preds = %52, %51
  %54 = load i8*, i8** %1, align 8
  ret i8* %54
}

declare dso_local i64 @STRCMP(i32, i8*) #1

declare dso_local i8* @mch_getenv(i8*) #1

declare dso_local i8* @vim_strrchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
