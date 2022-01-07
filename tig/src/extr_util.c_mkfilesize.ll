; ModuleID = '/home/carl/AnghaBench/tig/src/extr_util.c_mkfilesize.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_util.c_mkfilesize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mkfilesize.buf = internal global [65 x i8] zeroinitializer, align 16
@mkfilesize.relsize = internal constant [6 x i8] c"BKMGTP", align 1
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FILE_SIZE_UNITS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%.0f%c\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%.1f%c\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mkfilesize(i64 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %65

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @FILE_SIZE_UNITS, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %59

16:                                               ; preds = %12
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  %17 = load i64, i64* %4, align 8
  %18 = uitofp i64 %17 to double
  store double %18, double* %7, align 8
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %55, %16
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @mkfilesize.relsize, i64 0, i64 0))
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %58

23:                                               ; preds = %19
  %24 = load double, double* %7, align 8
  %25 = fcmp ogt double %24, 1.024000e+03
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %27, 1
  %29 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @mkfilesize.relsize, i64 0, i64 0))
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load double, double* %7, align 8
  %33 = fdiv double %32, 1.024000e+03
  store double %33, double* %7, align 8
  br label %55

34:                                               ; preds = %26, %23
  %35 = load double, double* %7, align 8
  %36 = fmul double %35, 1.000000e+01
  %37 = fptoui double %36 to i64
  store i64 %37, i64* %4, align 8
  %38 = load i64, i64* %4, align 8
  %39 = urem i64 %38, 10
  %40 = icmp ugt i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %42

42:                                               ; preds = %41, %34
  %43 = load i8*, i8** %6, align 8
  %44 = load double, double* %7, align 8
  %45 = fptoui double %44 to i64
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [6 x i8], [6 x i8]* @mkfilesize.relsize, i64 0, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = call i64 (i8*, i8*, i64, ...) @string_format(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @mkfilesize.buf, i64 0, i64 0), i8* %43, i64 %45, i32 %50)
  %52 = icmp ne i64 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @mkfilesize.buf, i64 0, i64 0), i8* null
  store i8* %54, i8** %3, align 8
  br label %65

55:                                               ; preds = %31
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %19

58:                                               ; preds = %19
  br label %59

59:                                               ; preds = %58, %12
  %60 = load i64, i64* %4, align 8
  %61 = call i64 (i8*, i8*, i64, ...) @string_format(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @mkfilesize.buf, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64 %60)
  %62 = icmp ne i64 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @mkfilesize.buf, i64 0, i64 0), i8* null
  store i8* %64, i8** %3, align 8
  br label %65

65:                                               ; preds = %59, %42, %11
  %66 = load i8*, i8** %3, align 8
  ret i8* %66
}

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i64 @string_format(i8*, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
