; ModuleID = '/home/carl/AnghaBench/redis/src/extr_util.c_ld2string.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_util.c_ld2string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"-inf\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%.17Lg\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%La\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%.17Lf\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ld2string(i8* %0, i64 %1, x86_fp80 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca x86_fp80, align 16
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store x86_fp80 %2, x86_fp80* %8, align 16
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %10, align 8
  %12 = load x86_fp80, x86_fp80* %8, align 16
  %13 = call i64 @isinf(x86_fp80 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %4
  %16 = load i64, i64* %7, align 8
  %17 = icmp ult i64 %16, 5
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %100

19:                                               ; preds = %15
  %20 = load x86_fp80, x86_fp80* %8, align 16
  %21 = fcmp ogt x86_fp80 %20, 0xK00000000000000000000
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @memcpy(i8* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  store i64 3, i64* %10, align 8
  br label %28

25:                                               ; preds = %19
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @memcpy(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  store i64 4, i64* %10, align 8
  br label %28

28:                                               ; preds = %25, %22
  br label %94

29:                                               ; preds = %4
  %30 = load i32, i32* %9, align 4
  switch i32 %30, label %92 [
    i32 130, label %31
    i32 129, label %42
    i32 128, label %53
  ]

31:                                               ; preds = %29
  %32 = load i8*, i8** %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load x86_fp80, x86_fp80* %8, align 16
  %35 = call i64 @snprintf(i8* %32, i64 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), x86_fp80 %34)
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %10, align 8
  %37 = add i64 %36, 1
  %38 = load i64, i64* %7, align 8
  %39 = icmp ugt i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %100

41:                                               ; preds = %31
  br label %93

42:                                               ; preds = %29
  %43 = load i8*, i8** %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load x86_fp80, x86_fp80* %8, align 16
  %46 = call i64 @snprintf(i8* %43, i64 %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), x86_fp80 %45)
  store i64 %46, i64* %10, align 8
  %47 = load i64, i64* %10, align 8
  %48 = add i64 %47, 1
  %49 = load i64, i64* %7, align 8
  %50 = icmp ugt i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %100

52:                                               ; preds = %42
  br label %93

53:                                               ; preds = %29
  %54 = load i8*, i8** %6, align 8
  %55 = load i64, i64* %7, align 8
  %56 = load x86_fp80, x86_fp80* %8, align 16
  %57 = call i64 @snprintf(i8* %54, i64 %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), x86_fp80 %56)
  store i64 %57, i64* %10, align 8
  %58 = load i64, i64* %10, align 8
  %59 = add i64 %58, 1
  %60 = load i64, i64* %7, align 8
  %61 = icmp ugt i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  store i32 0, i32* %5, align 4
  br label %100

63:                                               ; preds = %53
  %64 = load i8*, i8** %6, align 8
  %65 = call i32* @strchr(i8* %64, i8 signext 46)
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %91

67:                                               ; preds = %63
  %68 = load i8*, i8** %6, align 8
  %69 = load i64, i64* %10, align 8
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  %71 = getelementptr inbounds i8, i8* %70, i64 -1
  store i8* %71, i8** %11, align 8
  br label %72

72:                                               ; preds = %77, %67
  %73 = load i8*, i8** %11, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 48
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load i8*, i8** %11, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 -1
  store i8* %79, i8** %11, align 8
  %80 = load i64, i64* %10, align 8
  %81 = add i64 %80, -1
  store i64 %81, i64* %10, align 8
  br label %72

82:                                               ; preds = %72
  %83 = load i8*, i8** %11, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 46
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i64, i64* %10, align 8
  %89 = add i64 %88, -1
  store i64 %89, i64* %10, align 8
  br label %90

90:                                               ; preds = %87, %82
  br label %91

91:                                               ; preds = %90, %63
  br label %93

92:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %100

93:                                               ; preds = %91, %52, %41
  br label %94

94:                                               ; preds = %93, %28
  %95 = load i8*, i8** %6, align 8
  %96 = load i64, i64* %10, align 8
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  store i8 0, i8* %97, align 1
  %98 = load i64, i64* %10, align 8
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %94, %92, %62, %51, %40, %18
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i64 @isinf(x86_fp80) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @snprintf(i8*, i64, i8*, x86_fp80) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
