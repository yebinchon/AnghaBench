; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_zset.c_zzlFirstInRange.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_zset.c_zzlFirstInRange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @zzlFirstInRange(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca double, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i8* @ziplistIndex(i8* %9, i32 0)
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @zzlIsInRange(i8* %11, i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %47

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %42, %16
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %46

20:                                               ; preds = %17
  %21 = load i8*, i8** %4, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i8* @ziplistNext(i8* %21, i8* %22)
  store i8* %23, i8** %7, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = icmp ne i8* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @serverAssert(i32 %26)
  %28 = load i8*, i8** %7, align 8
  %29 = call double @zzlGetScore(i8* %28)
  store double %29, double* %8, align 8
  %30 = load double, double* %8, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i64 @zslValueGteMin(double %30, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %20
  %35 = load double, double* %8, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = call i64 @zslValueLteMax(double %35, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i8*, i8** %6, align 8
  store i8* %40, i8** %3, align 8
  br label %47

41:                                               ; preds = %34
  store i8* null, i8** %3, align 8
  br label %47

42:                                               ; preds = %20
  %43 = load i8*, i8** %4, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = call i8* @ziplistNext(i8* %43, i8* %44)
  store i8* %45, i8** %6, align 8
  br label %17

46:                                               ; preds = %17
  store i8* null, i8** %3, align 8
  br label %47

47:                                               ; preds = %46, %41, %39, %15
  %48 = load i8*, i8** %3, align 8
  ret i8* %48
}

declare dso_local i8* @ziplistIndex(i8*, i32) #1

declare dso_local i32 @zzlIsInRange(i8*, i32*) #1

declare dso_local i8* @ziplistNext(i8*, i8*) #1

declare dso_local i32 @serverAssert(i32) #1

declare dso_local double @zzlGetScore(i8*) #1

declare dso_local i64 @zslValueGteMin(double, i32*) #1

declare dso_local i64 @zslValueLteMax(double, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
