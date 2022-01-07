; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_zset.c_zzlInsert.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_zset.c_zzlInsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @zzlInsert(i8* %0, i64 %1, double %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca double, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca double, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store double %2, double* %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i8* @ziplistIndex(i8* %10, i32 0)
  store i8* %11, i8** %7, align 8
  br label %12

12:                                               ; preds = %54, %3
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %58

15:                                               ; preds = %12
  %16 = load i8*, i8** %4, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i8* @ziplistNext(i8* %16, i8* %17)
  store i8* %18, i8** %8, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @serverAssert(i32 %21)
  %23 = load i8*, i8** %8, align 8
  %24 = call double @zzlGetScore(i8* %23)
  store double %24, double* %9, align 8
  %25 = load double, double* %9, align 8
  %26 = load double, double* %6, align 8
  %27 = fcmp ogt double %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %15
  %29 = load i8*, i8** %4, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load double, double* %6, align 8
  %33 = call i8* @zzlInsertAt(i8* %29, i8* %30, i64 %31, double %32)
  store i8* %33, i8** %4, align 8
  br label %58

34:                                               ; preds = %15
  %35 = load double, double* %9, align 8
  %36 = load double, double* %6, align 8
  %37 = fcmp oeq double %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %34
  %39 = load i8*, i8** %7, align 8
  %40 = load i64, i64* %5, align 8
  %41 = inttoptr i64 %40 to i8*
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @sdslen(i64 %42)
  %44 = call i64 @zzlCompareElements(i8* %39, i8* %41, i32 %43)
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %38
  %47 = load i8*, i8** %4, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = load i64, i64* %5, align 8
  %50 = load double, double* %6, align 8
  %51 = call i8* @zzlInsertAt(i8* %47, i8* %48, i64 %49, double %50)
  store i8* %51, i8** %4, align 8
  br label %58

52:                                               ; preds = %38
  br label %53

53:                                               ; preds = %52, %34
  br label %54

54:                                               ; preds = %53
  %55 = load i8*, i8** %4, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = call i8* @ziplistNext(i8* %55, i8* %56)
  store i8* %57, i8** %7, align 8
  br label %12

58:                                               ; preds = %46, %28, %12
  %59 = load i8*, i8** %7, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i8*, i8** %4, align 8
  %63 = load i64, i64* %5, align 8
  %64 = load double, double* %6, align 8
  %65 = call i8* @zzlInsertAt(i8* %62, i8* null, i64 %63, double %64)
  store i8* %65, i8** %4, align 8
  br label %66

66:                                               ; preds = %61, %58
  %67 = load i8*, i8** %4, align 8
  ret i8* %67
}

declare dso_local i8* @ziplistIndex(i8*, i32) #1

declare dso_local i8* @ziplistNext(i8*, i8*) #1

declare dso_local i32 @serverAssert(i32) #1

declare dso_local double @zzlGetScore(i8*) #1

declare dso_local i8* @zzlInsertAt(i8*, i8*, i64, double) #1

declare dso_local i64 @zzlCompareElements(i8*, i8*, i32) #1

declare dso_local i32 @sdslen(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
