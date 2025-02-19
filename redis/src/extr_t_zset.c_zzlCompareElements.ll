; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_zset.c_zzlCompareElements.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_zset.c_zzlCompareElements.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zzlCompareElements(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca [32 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @ziplistGet(i8* %14, i8** %8, i32* %9, i64* %10)
  %16 = call i32 @serverAssert(i32 %15)
  %17 = load i8*, i8** %8, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %21 = load i64, i64* %10, align 8
  %22 = call i32 @ll2string(i8* %20, i32 32, i64 %21)
  store i32 %22, i32* %9, align 4
  %23 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  store i8* %23, i8** %8, align 8
  br label %24

24:                                               ; preds = %19, %3
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* %9, align 4
  br label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %7, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  store i32 %33, i32* %12, align 4
  %34 = load i8*, i8** %8, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @memcmp(i8* %34, i8* %35, i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %7, align 4
  %43 = sub i32 %41, %42
  store i32 %43, i32* %4, align 4
  br label %46

44:                                               ; preds = %32
  %45 = load i32, i32* %13, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %44, %40
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @serverAssert(i32) #1

declare dso_local i32 @ziplistGet(i8*, i8**, i32*, i64*) #1

declare dso_local i32 @ll2string(i8*, i32, i64) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
