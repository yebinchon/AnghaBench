; ModuleID = '/home/carl/AnghaBench/sway/common/extr_pango.c_escape_markup_text.c'
source_filename = "/home/carl/AnghaBench/sway/common/extr_pango.c_escape_markup_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"&amp;\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"&lt;\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"&gt;\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"&apos;\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"&quot;\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @escape_markup_text(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i64 0, i64* %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  store i8 0, i8* %10, align 1
  br label %11

11:                                               ; preds = %8, %2
  br label %12

12:                                               ; preds = %63, %11
  %13 = load i8*, i8** %3, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %17, label %66

17:                                               ; preds = %12
  %18 = load i8*, i8** %3, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  switch i32 %21, label %47 [
    i32 38, label %22
    i32 60, label %27
    i32 62, label %32
    i32 39, label %37
    i32 34, label %42
  ]

22:                                               ; preds = %17
  %23 = load i64, i64* %5, align 8
  %24 = add i64 %23, 5
  store i64 %24, i64* %5, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @lenient_strcat(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %63

27:                                               ; preds = %17
  %28 = load i64, i64* %5, align 8
  %29 = add i64 %28, 4
  store i64 %29, i64* %5, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @lenient_strcat(i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %63

32:                                               ; preds = %17
  %33 = load i64, i64* %5, align 8
  %34 = add i64 %33, 4
  store i64 %34, i64* %5, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @lenient_strcat(i8* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %63

37:                                               ; preds = %17
  %38 = load i64, i64* %5, align 8
  %39 = add i64 %38, 6
  store i64 %39, i64* %5, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @lenient_strcat(i8* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %63

42:                                               ; preds = %17
  %43 = load i64, i64* %5, align 8
  %44 = add i64 %43, 6
  store i64 %44, i64* %5, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @lenient_strcat(i8* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %63

47:                                               ; preds = %17
  %48 = load i8*, i8** %4, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %60

50:                                               ; preds = %47
  %51 = load i8*, i8** %3, align 8
  %52 = load i8, i8* %51, align 1
  %53 = load i8*, i8** %4, align 8
  %54 = load i64, i64* %5, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8 %52, i8* %55, align 1
  %56 = load i8*, i8** %4, align 8
  %57 = load i64, i64* %5, align 8
  %58 = add i64 %57, 1
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  store i8 0, i8* %59, align 1
  br label %60

60:                                               ; preds = %50, %47
  %61 = load i64, i64* %5, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %5, align 8
  br label %63

63:                                               ; preds = %60, %42, %37, %32, %27, %22
  %64 = load i8*, i8** %3, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %3, align 8
  br label %12

66:                                               ; preds = %12
  %67 = load i64, i64* %5, align 8
  ret i64 %67
}

declare dso_local i32 @lenient_strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
