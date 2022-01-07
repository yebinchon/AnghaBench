; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_zset.c_zzlDeleteRangeByScore.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_zset.c_zzlDeleteRangeByScore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @zzlDeleteRangeByScore(i8* %0, i32* %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca double, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 0, i64* %11, align 8
  %12 = load i64*, i64** %7, align 8
  %13 = icmp ne i64* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i64*, i64** %7, align 8
  store i64 0, i64* %15, align 8
  br label %16

16:                                               ; preds = %14, %3
  %17 = load i8*, i8** %5, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i8* @zzlFirstInRange(i8* %17, i32* %18)
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i8*, i8** %5, align 8
  store i8* %23, i8** %4, align 8
  br label %54

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %45, %24
  %26 = load i8*, i8** %5, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = call i8* @ziplistNext(i8* %26, i8* %27)
  store i8* %28, i8** %9, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %46

30:                                               ; preds = %25
  %31 = load i8*, i8** %9, align 8
  %32 = call double @zzlGetScore(i8* %31)
  store double %32, double* %10, align 8
  %33 = load double, double* %10, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call i64 @zslValueLteMax(double %33, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load i8*, i8** %5, align 8
  %39 = call i8* @ziplistDelete(i8* %38, i8** %8)
  store i8* %39, i8** %5, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = call i8* @ziplistDelete(i8* %40, i8** %8)
  store i8* %41, i8** %5, align 8
  %42 = load i64, i64* %11, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %11, align 8
  br label %45

44:                                               ; preds = %30
  br label %46

45:                                               ; preds = %37
  br label %25

46:                                               ; preds = %44, %25
  %47 = load i64*, i64** %7, align 8
  %48 = icmp ne i64* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i64, i64* %11, align 8
  %51 = load i64*, i64** %7, align 8
  store i64 %50, i64* %51, align 8
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i8*, i8** %5, align 8
  store i8* %53, i8** %4, align 8
  br label %54

54:                                               ; preds = %52, %22
  %55 = load i8*, i8** %4, align 8
  ret i8* %55
}

declare dso_local i8* @zzlFirstInRange(i8*, i32*) #1

declare dso_local i8* @ziplistNext(i8*, i8*) #1

declare dso_local double @zzlGetScore(i8*) #1

declare dso_local i64 @zslValueLteMax(double, i32*) #1

declare dso_local i8* @ziplistDelete(i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
