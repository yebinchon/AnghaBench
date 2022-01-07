; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_compute_something_fast.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_compute_something_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @compute_something_fast() #0 {
  %1 = alloca [256 x i8], align 16
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 1000, i32* %5, align 4
  store i64 0, i64* %7, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %17, %0
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 256
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  %12 = load i32, i32* %6, align 4
  %13 = trunc i32 %12 to i8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 %15
  store i8 %13, i8* %16, align 1
  br label %17

17:                                               ; preds = %11
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %6, align 4
  br label %8

20:                                               ; preds = %8
  store i8 0, i8* %2, align 1
  store i8 0, i8* %3, align 1
  br label %21

21:                                               ; preds = %25, %20
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %5, align 4
  %24 = icmp ne i32 %22, 0
  br i1 %24, label %25, label %70

25:                                               ; preds = %21
  %26 = load i8, i8* %2, align 1
  %27 = add i8 %26, 1
  store i8 %27, i8* %2, align 1
  %28 = load i8, i8* %3, align 1
  %29 = zext i8 %28 to i32
  %30 = load i8, i8* %2, align 1
  %31 = zext i8 %30 to i64
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = add nsw i32 %29, %34
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %3, align 1
  %37 = load i8, i8* %2, align 1
  %38 = zext i8 %37 to i64
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 %38
  %40 = load i8, i8* %39, align 1
  store i8 %40, i8* %4, align 1
  %41 = load i8, i8* %3, align 1
  %42 = zext i8 %41 to i64
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = load i8, i8* %2, align 1
  %46 = zext i8 %45 to i64
  %47 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 %46
  store i8 %44, i8* %47, align 1
  %48 = load i8, i8* %4, align 1
  %49 = load i8, i8* %3, align 1
  %50 = zext i8 %49 to i64
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 %50
  store i8 %48, i8* %51, align 1
  %52 = load i8, i8* %2, align 1
  %53 = zext i8 %52 to i64
  %54 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = load i8, i8* %3, align 1
  %58 = zext i8 %57 to i64
  %59 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = add nsw i32 %56, %61
  %63 = and i32 %62, 255
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i64
  %68 = load i64, i64* %7, align 8
  %69 = add i64 %68, %67
  store i64 %69, i64* %7, align 8
  br label %21

70:                                               ; preds = %21
  %71 = load i64, i64* %7, align 8
  ret i64 %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
