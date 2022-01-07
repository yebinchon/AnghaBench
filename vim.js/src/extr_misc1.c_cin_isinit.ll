; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_misc1.c_cin_isinit.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_misc1.c_cin_isinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cin_isinit.skip = internal global [4 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [7 x i8] c"static\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"public\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"protected\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"private\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"typedef\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"enum\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @cin_isinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cin_isinit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32* (...) @ml_get_curline()
  %6 = call i32* @cin_skipcomment(i32* %5)
  store i32* %6, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i64 @cin_starts_with(i32* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %0
  %11 = load i32*, i32** %2, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 7
  %13 = call i32* @cin_skipcomment(i32* %12)
  store i32* %13, i32** %2, align 8
  br label %14

14:                                               ; preds = %10, %0
  br label %15

15:                                               ; preds = %47, %14
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %40, %15
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %19, label %43

19:                                               ; preds = %16
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4 x i8*], [4 x i8*]* @cin_isinit.skip, i64 0, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @strlen(i8* %23)
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %4, align 4
  %26 = load i32*, i32** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [4 x i8*], [4 x i8*]* @cin_isinit.skip, i64 0, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @cin_starts_with(i32* %26, i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %19
  %34 = load i32*, i32** %2, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = call i32* @cin_skipcomment(i32* %37)
  store i32* %38, i32** %2, align 8
  store i32 0, i32* %4, align 4
  br label %43

39:                                               ; preds = %19
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %16

43:                                               ; preds = %33, %16
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %48

47:                                               ; preds = %43
  br label %15

48:                                               ; preds = %46
  %49 = load i32*, i32** %2, align 8
  %50 = call i64 @cin_starts_with(i32* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @TRUE, align 4
  store i32 %53, i32* %1, align 4
  br label %62

54:                                               ; preds = %48
  %55 = load i32*, i32** %2, align 8
  %56 = call i64 @cin_ends_in(i32* %55, i32* bitcast ([2 x i8]* @.str.6 to i32*), i32* bitcast ([2 x i8]* @.str.7 to i32*))
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* @TRUE, align 4
  store i32 %59, i32* %1, align 4
  br label %62

60:                                               ; preds = %54
  %61 = load i32, i32* @FALSE, align 4
  store i32 %61, i32* %1, align 4
  br label %62

62:                                               ; preds = %60, %58, %52
  %63 = load i32, i32* %1, align 4
  ret i32 %63
}

declare dso_local i32* @cin_skipcomment(i32*) #1

declare dso_local i32* @ml_get_curline(...) #1

declare dso_local i64 @cin_starts_with(i32*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @cin_ends_in(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
