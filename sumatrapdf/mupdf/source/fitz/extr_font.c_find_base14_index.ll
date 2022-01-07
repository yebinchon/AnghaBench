; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_font.c_find_base14_index.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_font.c_find_base14_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"Courier\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Courier-Oblique\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Courier-Bold\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Courier-BoldOblique\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Helvetica\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Helvetica-Oblique\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"Helvetica-Bold\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Helvetica-BoldOblique\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"Times-Roman\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Times-Italic\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"Times-Bold\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"Times-BoldItalic\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"Symbol\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"ZapfDingbats\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @find_base14_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_base14_index(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %74

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  store i32 1, i32* %2, align 4
  br label %74

13:                                               ; preds = %8
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  store i32 2, i32* %2, align 4
  br label %74

18:                                               ; preds = %13
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  store i32 3, i32* %2, align 4
  br label %74

23:                                               ; preds = %18
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  store i32 4, i32* %2, align 4
  br label %74

28:                                               ; preds = %23
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  store i32 5, i32* %2, align 4
  br label %74

33:                                               ; preds = %28
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  store i32 6, i32* %2, align 4
  br label %74

38:                                               ; preds = %33
  %39 = load i8*, i8** %3, align 8
  %40 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  store i32 7, i32* %2, align 4
  br label %74

43:                                               ; preds = %38
  %44 = load i8*, i8** %3, align 8
  %45 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  store i32 8, i32* %2, align 4
  br label %74

48:                                               ; preds = %43
  %49 = load i8*, i8** %3, align 8
  %50 = call i32 @strcmp(i8* %49, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  store i32 9, i32* %2, align 4
  br label %74

53:                                               ; preds = %48
  %54 = load i8*, i8** %3, align 8
  %55 = call i32 @strcmp(i8* %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  store i32 10, i32* %2, align 4
  br label %74

58:                                               ; preds = %53
  %59 = load i8*, i8** %3, align 8
  %60 = call i32 @strcmp(i8* %59, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  store i32 11, i32* %2, align 4
  br label %74

63:                                               ; preds = %58
  %64 = load i8*, i8** %3, align 8
  %65 = call i32 @strcmp(i8* %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  store i32 12, i32* %2, align 4
  br label %74

68:                                               ; preds = %63
  %69 = load i8*, i8** %3, align 8
  %70 = call i32 @strcmp(i8* %69, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  store i32 13, i32* %2, align 4
  br label %74

73:                                               ; preds = %68
  store i32 -1, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %72, %67, %62, %57, %52, %47, %42, %37, %32, %27, %22, %17, %12, %7
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
