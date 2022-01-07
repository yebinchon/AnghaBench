; ModuleID = '/home/carl/AnghaBench/wcdb/repair/extr_sqliterk_util.c_sqliterkParseNumber.c'
source_filename = "/home/carl/AnghaBench/wcdb/repair/extr_sqliterk_util.c_sqliterkParseNumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITERK_MISUSE = common dso_local global i32 0, align 4
@SQLITERK_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqliterkParseNumber(i8* %0, i32 %1, double* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double*, align 8
  %8 = alloca [8 x i8], align 1
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store double* %2, double** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load double*, double** %7, align 8
  %15 = icmp ne double* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13, %3
  %17 = load i32, i32* @SQLITERK_MISUSE, align 4
  store i32 %17, i32* %4, align 4
  br label %44

18:                                               ; preds = %13
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  store i8* %22, i8** %9, align 8
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %36, %18
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 8
  br i1 %25, label %26, label %39

26:                                               ; preds = %23
  %27 = load i8*, i8** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sub nsw i32 7, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %27, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 %34
  store i8 %32, i8* %35, align 1
  br label %36

36:                                               ; preds = %26
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %10, align 4
  br label %23

39:                                               ; preds = %23
  %40 = load double*, double** %7, align 8
  %41 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %42 = call i32 @memcpy(double* %40, i8* %41, i32 8)
  %43 = load i32, i32* @SQLITERK_OK, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %39, %16
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @memcpy(double*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
