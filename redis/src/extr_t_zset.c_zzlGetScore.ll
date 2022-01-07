; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_zset.c_zzlGetScore.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_zset.c_zzlGetScore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @zzlGetScore(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca [128 x i8], align 16
  %7 = alloca double, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = icmp ne i8* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @serverAssert(i32 %10)
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 @ziplistGet(i8* %12, i8** %3, i32* %4, i64* %5)
  %14 = call i32 @serverAssert(i32 %13)
  %15 = load i8*, i8** %3, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %1
  %18 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %19 = load i8*, i8** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @memcpy(i8* %18, i8* %19, i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 %23
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %26 = call double @strtod(i8* %25, i32* null)
  store double %26, double* %7, align 8
  br label %30

27:                                               ; preds = %1
  %28 = load i64, i64* %5, align 8
  %29 = sitofp i64 %28 to double
  store double %29, double* %7, align 8
  br label %30

30:                                               ; preds = %27, %17
  %31 = load double, double* %7, align 8
  ret double %31
}

declare dso_local i32 @serverAssert(i32) #1

declare dso_local i32 @ziplistGet(i8*, i8**, i32*, i64*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local double @strtod(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
