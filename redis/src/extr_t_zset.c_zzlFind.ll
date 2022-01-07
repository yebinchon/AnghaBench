; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_zset.c_zzlFind.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_zset.c_zzlFind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @zzlFind(i8* %0, i64 %1, double* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca double*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store double* %2, double** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i8* @ziplistIndex(i8* %10, i32 0)
  store i8* %11, i8** %8, align 8
  br label %12

12:                                               ; preds = %39, %3
  %13 = load i8*, i8** %8, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %43

15:                                               ; preds = %12
  %16 = load i8*, i8** %5, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i8* @ziplistNext(i8* %16, i8* %17)
  store i8* %18, i8** %9, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = icmp ne i8* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @serverAssert(i32 %21)
  %23 = load i8*, i8** %8, align 8
  %24 = load i64, i64* %6, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @sdslen(i64 %26)
  %28 = call i64 @ziplistCompare(i8* %23, i8* %25, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %15
  %31 = load double*, double** %7, align 8
  %32 = icmp ne double* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i8*, i8** %9, align 8
  %35 = call double @zzlGetScore(i8* %34)
  %36 = load double*, double** %7, align 8
  store double %35, double* %36, align 8
  br label %37

37:                                               ; preds = %33, %30
  %38 = load i8*, i8** %8, align 8
  store i8* %38, i8** %4, align 8
  br label %44

39:                                               ; preds = %15
  %40 = load i8*, i8** %5, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = call i8* @ziplistNext(i8* %40, i8* %41)
  store i8* %42, i8** %8, align 8
  br label %12

43:                                               ; preds = %12
  store i8* null, i8** %4, align 8
  br label %44

44:                                               ; preds = %43, %37
  %45 = load i8*, i8** %4, align 8
  ret i8* %45
}

declare dso_local i8* @ziplistIndex(i8*, i32) #1

declare dso_local i8* @ziplistNext(i8*, i8*) #1

declare dso_local i32 @serverAssert(i32) #1

declare dso_local i64 @ziplistCompare(i8*, i8*, i32) #1

declare dso_local i32 @sdslen(i64) #1

declare dso_local double @zzlGetScore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
