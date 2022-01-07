; ModuleID = '/home/carl/AnghaBench/the_silver_searcher/src/extr_util.c_fgetln.c'
source_filename = "/home/carl/AnghaBench/the_silver_searcher/src/extr_util.c_fgetln.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOF = common dso_local global i32 0, align 4
@BUFSIZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fgetln(i32* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i64* %1, i64** %5, align 8
  store i8* null, i8** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @flockfile(i32* %12)
  br label %14

14:                                               ; preds = %59, %2
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @getc_unlocked(i32* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @EOF, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %60

19:                                               ; preds = %14
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %48

26:                                               ; preds = %22, %19
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @BUFSIZ, align 4
  %29 = add nsw i32 %27, %28
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %10, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i64, i64* %10, align 8
  %33 = call i8* @realloc(i8* %31, i64 %32)
  store i8* %33, i8** %11, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %44, label %35

35:                                               ; preds = %26
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @funlockfile(i32* %36)
  %38 = load i8*, i8** %6, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @free(i8* %41)
  br label %43

43:                                               ; preds = %40, %35
  store i8* null, i8** %3, align 8
  br label %67

44:                                               ; preds = %26
  %45 = load i8*, i8** %11, align 8
  store i8* %45, i8** %6, align 8
  %46 = load i64, i64* %10, align 8
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %44, %22
  %49 = load i32, i32* %7, align 4
  %50 = trunc i32 %49 to i8
  %51 = load i8*, i8** %6, align 8
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i8, i8* %51, i64 %54
  store i8 %50, i8* %55, align 1
  %56 = load i32, i32* %7, align 4
  %57 = icmp eq i32 %56, 10
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  br label %60

59:                                               ; preds = %48
  br label %14

60:                                               ; preds = %58, %14
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @funlockfile(i32* %61)
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64*, i64** %5, align 8
  store i64 %64, i64* %65, align 8
  %66 = load i8*, i8** %6, align 8
  store i8* %66, i8** %3, align 8
  br label %67

67:                                               ; preds = %60, %43
  %68 = load i8*, i8** %3, align 8
  ret i8* %68
}

declare dso_local i32 @flockfile(i32*) #1

declare dso_local i32 @getc_unlocked(i32*) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @funlockfile(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
