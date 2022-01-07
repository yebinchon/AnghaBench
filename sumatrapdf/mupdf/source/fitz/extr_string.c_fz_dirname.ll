; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_string.c_fz_dirname.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_string.c_fz_dirname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_dirname(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load i8*, i8** %5, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %10, %3
  %16 = load i8*, i8** %4, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @fz_strlcpy(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 %17)
  br label %87

19:                                               ; preds = %10
  %20 = load i8*, i8** %4, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @fz_strlcpy(i8* %20, i8* %21, i64 %22)
  %24 = load i8*, i8** %4, align 8
  %25 = call i64 @strlen(i8* %24)
  store i64 %25, i64* %7, align 8
  br label %26

26:                                               ; preds = %41, %19
  %27 = load i8*, i8** %4, align 8
  %28 = load i64, i64* %7, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 47
  br i1 %32, label %33, label %44

33:                                               ; preds = %26
  %34 = load i64, i64* %7, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = load i8*, i8** %4, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @fz_strlcpy(i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 %38)
  br label %87

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %7, align 8
  %43 = add i64 %42, -1
  store i64 %43, i64* %7, align 8
  br label %26

44:                                               ; preds = %26
  br label %45

45:                                               ; preds = %60, %44
  %46 = load i8*, i8** %4, align 8
  %47 = load i64, i64* %7, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 47
  br i1 %51, label %52, label %63

52:                                               ; preds = %45
  %53 = load i64, i64* %7, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = load i8*, i8** %4, align 8
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @fz_strlcpy(i8* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 %57)
  br label %87

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %7, align 8
  %62 = add i64 %61, -1
  store i64 %62, i64* %7, align 8
  br label %45

63:                                               ; preds = %45
  br label %64

64:                                               ; preds = %79, %63
  %65 = load i8*, i8** %4, align 8
  %66 = load i64, i64* %7, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 47
  br i1 %70, label %71, label %82

71:                                               ; preds = %64
  %72 = load i64, i64* %7, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %71
  %75 = load i8*, i8** %4, align 8
  %76 = load i64, i64* %6, align 8
  %77 = call i32 @fz_strlcpy(i8* %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 %76)
  br label %87

78:                                               ; preds = %71
  br label %79

79:                                               ; preds = %78
  %80 = load i64, i64* %7, align 8
  %81 = add i64 %80, -1
  store i64 %81, i64* %7, align 8
  br label %64

82:                                               ; preds = %64
  %83 = load i8*, i8** %4, align 8
  %84 = load i64, i64* %7, align 8
  %85 = add i64 %84, 1
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  store i8 0, i8* %86, align 1
  br label %87

87:                                               ; preds = %82, %74, %55, %36, %15
  ret void
}

declare dso_local i32 @fz_strlcpy(i8*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
