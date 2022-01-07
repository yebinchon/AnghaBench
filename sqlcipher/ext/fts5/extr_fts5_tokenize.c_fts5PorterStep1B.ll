; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_tokenize.c_fts5PorterStep1B.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_tokenize.c_fts5PorterStep1B.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"eed\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ee\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ed\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ing\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @fts5PorterStep1B to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5PorterStep1B(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = load i32, i32* %6, align 4
  %11 = sub nsw i32 %10, 2
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, i8* %9, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  switch i32 %15, label %92 [
    i32 101, label %16
    i32 110, label %69
  ]

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = icmp sgt i32 %17, 3
  br i1 %18, label %19, label %45

19:                                               ; preds = %16
  %20 = load i8*, i8** %3, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sub nsw i32 %21, 3
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %20, i64 %23
  %25 = call i32 @memcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %24, i32 3)
  %26 = icmp eq i32 0, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %19
  %28 = load i8*, i8** %3, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sub nsw i32 %29, 3
  %31 = call i32 @fts5Porter_MGt0(i8* %28, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %27
  %34 = load i8*, i8** %3, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sub nsw i32 %35, 3
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  %39 = call i32 @memcpy(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %40 = load i32, i32* %6, align 4
  %41 = sub nsw i32 %40, 3
  %42 = add nsw i32 %41, 2
  %43 = load i32*, i32** %4, align 8
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %33, %27
  br label %68

45:                                               ; preds = %19, %16
  %46 = load i32, i32* %6, align 4
  %47 = icmp sgt i32 %46, 2
  br i1 %47, label %48, label %67

48:                                               ; preds = %45
  %49 = load i8*, i8** %3, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sub nsw i32 %50, 2
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %49, i64 %52
  %54 = call i32 @memcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %53, i32 2)
  %55 = icmp eq i32 0, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %48
  %57 = load i8*, i8** %3, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sub nsw i32 %58, 2
  %60 = call i32 @fts5Porter_Vowel(i8* %57, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load i32, i32* %6, align 4
  %64 = sub nsw i32 %63, 2
  %65 = load i32*, i32** %4, align 8
  store i32 %64, i32* %65, align 4
  store i32 1, i32* %5, align 4
  br label %66

66:                                               ; preds = %62, %56
  br label %67

67:                                               ; preds = %66, %48, %45
  br label %68

68:                                               ; preds = %67, %44
  br label %92

69:                                               ; preds = %2
  %70 = load i32, i32* %6, align 4
  %71 = icmp sgt i32 %70, 3
  br i1 %71, label %72, label %91

72:                                               ; preds = %69
  %73 = load i8*, i8** %3, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sub nsw i32 %74, 3
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %73, i64 %76
  %78 = call i32 @memcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %77, i32 3)
  %79 = icmp eq i32 0, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %72
  %81 = load i8*, i8** %3, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sub nsw i32 %82, 3
  %84 = call i32 @fts5Porter_Vowel(i8* %81, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load i32, i32* %6, align 4
  %88 = sub nsw i32 %87, 3
  %89 = load i32*, i32** %4, align 8
  store i32 %88, i32* %89, align 4
  store i32 1, i32* %5, align 4
  br label %90

90:                                               ; preds = %86, %80
  br label %91

91:                                               ; preds = %90, %72, %69
  br label %92

92:                                               ; preds = %2, %91, %68
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @fts5Porter_MGt0(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @fts5Porter_Vowel(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
