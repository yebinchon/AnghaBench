; ModuleID = '/home/carl/AnghaBench/the_silver_searcher/src/extr_search.c_search_stream.c'
source_filename = "/home/carl/AnghaBench/the_silver_searcher/src/extr_search.c_search_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@opts = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @search_stream(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8* null, i8** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %11 = call i32 (...) @print_init_context()
  store i64 1, i64* %9, align 8
  br label %12

12:                                               ; preds = %57, %2
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @getline(i8** %5, i64* %8, i32* %13)
  store i32 %14, i32* %7, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %60

16:                                               ; preds = %12
  %17 = load i64, i64* %9, align 8
  store i64 %17, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 0), align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @search_buf(i8* %18, i32 %19, i8* %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %16
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %27, %24
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, %29
  store i32 %31, i32* %6, align 4
  br label %40

32:                                               ; preds = %16
  %33 = load i32, i32* %6, align 4
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32, i32* %10, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 -1, i32* %6, align 4
  br label %39

39:                                               ; preds = %38, %35, %32
  br label %40

40:                                               ; preds = %39, %28
  %41 = load i8*, i8** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 10
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %49, %40
  %53 = load i8*, i8** %4, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @print_trailing_context(i8* %53, i8* %54, i32 %55)
  br label %57

57:                                               ; preds = %52
  %58 = load i64, i64* %9, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %9, align 8
  br label %12

60:                                               ; preds = %12
  %61 = load i8*, i8** %5, align 8
  %62 = call i32 @free(i8* %61)
  %63 = call i32 (...) @print_cleanup_context()
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local i32 @print_init_context(...) #1

declare dso_local i32 @getline(i8**, i64*, i32*) #1

declare dso_local i32 @search_buf(i8*, i32, i8*) #1

declare dso_local i32 @print_trailing_context(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @print_cleanup_context(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
