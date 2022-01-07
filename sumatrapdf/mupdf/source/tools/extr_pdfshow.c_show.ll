; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_pdfshow.c_show.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_pdfshow.c_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"trailer\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"xref\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"pages\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"grep\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"outline\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"js\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"form\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = call i32 (...) @showtrailer()
  br label %53

8:                                                ; preds = %1
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = call i32 (...) @showxref()
  br label %52

14:                                               ; preds = %8
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = call i32 (...) @showpages()
  br label %51

20:                                               ; preds = %14
  %21 = load i8*, i8** %2, align 8
  %22 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = call i32 (...) @showgrep()
  br label %50

26:                                               ; preds = %20
  %27 = load i8*, i8** %2, align 8
  %28 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = call i32 (...) @showoutline()
  br label %49

32:                                               ; preds = %26
  %33 = load i8*, i8** %2, align 8
  %34 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = call i32 (...) @showjs()
  br label %48

38:                                               ; preds = %32
  %39 = load i8*, i8** %2, align 8
  %40 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = call i32 (...) @showform()
  br label %47

44:                                               ; preds = %38
  %45 = load i8*, i8** %2, align 8
  %46 = call i32 @showpathroot(i8* %45)
  br label %47

47:                                               ; preds = %44, %42
  br label %48

48:                                               ; preds = %47, %36
  br label %49

49:                                               ; preds = %48, %30
  br label %50

50:                                               ; preds = %49, %24
  br label %51

51:                                               ; preds = %50, %18
  br label %52

52:                                               ; preds = %51, %12
  br label %53

53:                                               ; preds = %52, %6
  ret void
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @showtrailer(...) #1

declare dso_local i32 @showxref(...) #1

declare dso_local i32 @showpages(...) #1

declare dso_local i32 @showgrep(...) #1

declare dso_local i32 @showoutline(...) #1

declare dso_local i32 @showjs(...) #1

declare dso_local i32 @showform(...) #1

declare dso_local i32 @showpathroot(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
