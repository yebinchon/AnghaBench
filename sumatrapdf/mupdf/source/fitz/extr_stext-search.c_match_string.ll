; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_stext-search.c_match_string.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_stext-search.c_match_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @match_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @match_string(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  store i8* %8, i8** %7, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @chartocanon(i32* %5, i8* %9)
  %11 = load i8*, i8** %3, align 8
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds i8, i8* %11, i64 %12
  store i8* %13, i8** %3, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @chartocanon(i32* %6, i8* %14)
  %16 = load i8*, i8** %4, align 8
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  store i8* %18, i8** %4, align 8
  br label %19

19:                                               ; preds = %64, %2
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %65

23:                                               ; preds = %19
  %24 = load i8*, i8** %3, align 8
  store i8* %24, i8** %7, align 8
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 32
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  br label %28

28:                                               ; preds = %34, %27
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @chartocanon(i32* %5, i8* %29)
  %31 = load i8*, i8** %3, align 8
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  store i8* %33, i8** %3, align 8
  br label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 32
  br i1 %36, label %28, label %37

37:                                               ; preds = %34
  br label %44

38:                                               ; preds = %23
  %39 = load i8*, i8** %3, align 8
  %40 = call i32 @chartocanon(i32* %5, i8* %39)
  %41 = load i8*, i8** %3, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8* %43, i8** %3, align 8
  br label %44

44:                                               ; preds = %38, %37
  %45 = load i32, i32* %6, align 4
  %46 = icmp eq i32 %45, 32
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  br label %48

48:                                               ; preds = %54, %47
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 @chartocanon(i32* %6, i8* %49)
  %51 = load i8*, i8** %4, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  store i8* %53, i8** %4, align 8
  br label %54

54:                                               ; preds = %48
  %55 = load i32, i32* %6, align 4
  %56 = icmp eq i32 %55, 32
  br i1 %56, label %48, label %57

57:                                               ; preds = %54
  br label %64

58:                                               ; preds = %44
  %59 = load i8*, i8** %4, align 8
  %60 = call i32 @chartocanon(i32* %6, i8* %59)
  %61 = load i8*, i8** %4, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8* %63, i8** %4, align 8
  br label %64

64:                                               ; preds = %58, %57
  br label %19

65:                                               ; preds = %19
  %66 = load i32, i32* %6, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i8*, i8** %7, align 8
  br label %71

70:                                               ; preds = %65
  br label %71

71:                                               ; preds = %70, %68
  %72 = phi i8* [ %69, %68 ], [ null, %70 ]
  ret i8* %72
}

declare dso_local i32 @chartocanon(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
