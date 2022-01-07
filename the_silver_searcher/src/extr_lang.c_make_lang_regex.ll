; ModuleID = '/home/carl/AnghaBench/the_silver_searcher/src/extr_lang.c_make_lang_regex.c'
source_filename = "/home/carl/AnghaBench/the_silver_searcher/src/extr_lang.c_make_lang_regex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"\\.(\00", align 1
@SINGLE_EXT_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @make_lang_regex(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 100, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i8* @ag_malloc(i32 %12)
  store i8* %13, i8** %6, align 8
  store i32 3, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @strcpy(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %10, align 8
  br label %16

16:                                               ; preds = %63, %2
  %17 = load i64, i64* %10, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %66

20:                                               ; preds = %16
  %21 = load i8*, i8** %3, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* @SINGLE_EXT_LEN, align 8
  %24 = mul i64 %22, %23
  %25 = getelementptr inbounds i8, i8* %21, i64 %24
  store i8* %25, i8** %9, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 @strlen(i8* %26)
  store i32 %27, i32* %11, align 4
  br label %28

28:                                               ; preds = %37, %20
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %11, align 4
  %31 = add nsw i32 %29, %30
  %32 = add nsw i32 %31, 3
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %32, %33
  %35 = load i32, i32* %5, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %28
  %38 = load i32, i32* %5, align 4
  %39 = mul nsw i32 %38, 2
  store i32 %39, i32* %5, align 4
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i8* @ag_realloc(i8* %40, i32 %41)
  store i8* %42, i8** %6, align 8
  br label %28

43:                                               ; preds = %28
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i8*, i8** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  store i8 124, i8* %51, align 1
  br label %53

52:                                               ; preds = %43
  store i32 1, i32* %8, align 4
  br label %53

53:                                               ; preds = %52, %46
  %54 = load i8*, i8** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i8*, i8** %9, align 8
  %59 = call i32 @strcpy(i8* %57, i8* %58)
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %53
  %64 = load i64, i64* %10, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %10, align 8
  br label %16

66:                                               ; preds = %16
  %67 = load i8*, i8** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i8, i8* %67, i64 %70
  store i8 41, i8* %71, align 1
  %72 = load i8*, i8** %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i8, i8* %72, i64 %75
  store i8 36, i8* %76, align 1
  %77 = load i8*, i8** %6, align 8
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i8, i8* %77, i64 %80
  store i8 0, i8* %81, align 1
  %82 = load i8*, i8** %6, align 8
  ret i8* %82
}

declare dso_local i8* @ag_malloc(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @ag_realloc(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
