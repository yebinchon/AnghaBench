; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_text.c_fz_string_from_text_language.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_text.c_fz_string_from_text_language.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FZ_LANG_zh_Hant = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"zh-Hant\00", align 1
@FZ_LANG_zh_Hans = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"zh-Hans\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fz_string_from_text_language(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i8* null, i8** %3, align 8
  br label %76

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @FZ_LANG_zh_Hant, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @fz_strlcpy(i8* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 8)
  br label %74

17:                                               ; preds = %10
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @FZ_LANG_zh_Hans, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @fz_strlcpy(i8* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 8)
  br label %73

24:                                               ; preds = %17
  %25 = load i32, i32* %5, align 4
  %26 = srem i32 %25, 27
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sdiv i32 %27, 27
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %36

32:                                               ; preds = %24
  %33 = load i32, i32* %6, align 4
  %34 = sub nsw i32 %33, 1
  %35 = add nsw i32 %34, 97
  br label %36

36:                                               ; preds = %32, %31
  %37 = phi i32 [ 0, %31 ], [ %35, %32 ]
  %38 = trunc i32 %37 to i8
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  store i8 %38, i8* %40, align 1
  %41 = load i32, i32* %5, align 4
  %42 = srem i32 %41, 27
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %5, align 4
  %44 = sdiv i32 %43, 27
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  br label %52

48:                                               ; preds = %36
  %49 = load i32, i32* %6, align 4
  %50 = sub nsw i32 %49, 1
  %51 = add nsw i32 %50, 97
  br label %52

52:                                               ; preds = %48, %47
  %53 = phi i32 [ 0, %47 ], [ %51, %48 ]
  %54 = trunc i32 %53 to i8
  %55 = load i8*, i8** %4, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  store i8 %54, i8* %56, align 1
  %57 = load i32, i32* %5, align 4
  %58 = srem i32 %57, 27
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  br label %66

62:                                               ; preds = %52
  %63 = load i32, i32* %6, align 4
  %64 = sub nsw i32 %63, 1
  %65 = add nsw i32 %64, 97
  br label %66

66:                                               ; preds = %62, %61
  %67 = phi i32 [ 0, %61 ], [ %65, %62 ]
  %68 = trunc i32 %67 to i8
  %69 = load i8*, i8** %4, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 2
  store i8 %68, i8* %70, align 1
  %71 = load i8*, i8** %4, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 3
  store i8 0, i8* %72, align 1
  br label %73

73:                                               ; preds = %66, %21
  br label %74

74:                                               ; preds = %73, %14
  %75 = load i8*, i8** %4, align 8
  store i8* %75, i8** %3, align 8
  br label %76

76:                                               ; preds = %74, %9
  %77 = load i8*, i8** %3, align 8
  ret i8* %77
}

declare dso_local i32 @fz_strlcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
