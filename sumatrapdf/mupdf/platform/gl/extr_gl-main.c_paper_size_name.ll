; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-main.c_paper_size_name.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-main.c_paper_size_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"A0\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"A1\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"A2\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"A3\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"A4\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"A5\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"A6\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Letter\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"Legal\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Ledger\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"Tabloid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32)* @paper_size_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @paper_size_name(i32 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 %6, 2384
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 3370
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %83

12:                                               ; preds = %8, %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 1684
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 2384
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %83

19:                                               ; preds = %15, %12
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 1191
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 1684
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %83

26:                                               ; preds = %22, %19
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %27, 842
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 1191
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %83

33:                                               ; preds = %29, %26
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %34, 595
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %37, 842
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %83

40:                                               ; preds = %36, %33
  %41 = load i32, i32* %4, align 4
  %42 = icmp eq i32 %41, 420
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 %44, 595
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %83

47:                                               ; preds = %43, %40
  %48 = load i32, i32* %4, align 4
  %49 = icmp eq i32 %48, 297
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, i32* %5, align 4
  %52 = icmp eq i32 %51, 420
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %83

54:                                               ; preds = %50, %47
  %55 = load i32, i32* %4, align 4
  %56 = icmp eq i32 %55, 612
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32, i32* %5, align 4
  %59 = icmp eq i32 %58, 792
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %83

61:                                               ; preds = %57, %54
  %62 = load i32, i32* %4, align 4
  %63 = icmp eq i32 %62, 612
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i32, i32* %5, align 4
  %66 = icmp eq i32 %65, 1008
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %83

68:                                               ; preds = %64, %61
  %69 = load i32, i32* %4, align 4
  %70 = icmp eq i32 %69, 792
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i32, i32* %5, align 4
  %73 = icmp eq i32 %72, 1224
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8** %3, align 8
  br label %83

75:                                               ; preds = %71, %68
  %76 = load i32, i32* %4, align 4
  %77 = icmp eq i32 %76, 1224
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i32, i32* %5, align 4
  %80 = icmp eq i32 %79, 792
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8** %3, align 8
  br label %83

82:                                               ; preds = %78, %75
  store i8* null, i8** %3, align 8
  br label %83

83:                                               ; preds = %82, %81, %74, %67, %60, %53, %46, %39, %32, %25, %18, %11
  %84 = load i8*, i8** %3, align 8
  ret i8* %84
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
