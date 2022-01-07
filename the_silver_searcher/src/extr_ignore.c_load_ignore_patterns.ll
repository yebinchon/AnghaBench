; ModuleID = '/home/carl/AnghaBench/the_silver_searcher/src/extr_ignore.c_load_ignore_patterns.c'
source_filename = "/home/carl/AnghaBench/the_silver_searcher/src/extr_ignore.c_load_ignore_patterns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Skipping ignore file %s: not readable\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Loading ignore file %s.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @load_ignore_patterns(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32* null, i32** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32* @fopen(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %10, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @log_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %14)
  br label %63

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @log_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %17)
  store i8* null, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i64 0, i64* %8, align 8
  br label %19

19:                                               ; preds = %54, %38, %16
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @getline(i8** %6, i64* %8, i32* %20)
  store i32 %21, i32* %7, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %58

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %23
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 10
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 35
  br i1 %37, label %38, label %39

38:                                               ; preds = %32, %26, %23
  br label %19

39:                                               ; preds = %32
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %40, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 10
  br i1 %47, label %48, label %54

48:                                               ; preds = %39
  %49 = load i8*, i8** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %49, i64 %52
  store i8 0, i8* %53, align 1
  br label %54

54:                                               ; preds = %48, %39
  %55 = load i32*, i32** %3, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @add_ignore_pattern(i32* %55, i8* %56)
  br label %19

58:                                               ; preds = %19
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @free(i8* %59)
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @fclose(i32* %61)
  br label %63

63:                                               ; preds = %58, %13
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @log_debug(i8*, i8*) #1

declare dso_local i32 @getline(i8**, i64*, i32*) #1

declare dso_local i32 @add_ignore_pattern(i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
