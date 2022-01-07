; ModuleID = '/home/carl/AnghaBench/redis/src/extr_util.c_stringmatchlen_fuzz_test.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_util.c_stringmatchlen_fuzz_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stringmatchlen_fuzz_test() #0 {
  %1 = alloca [32 x i8], align 16
  %2 = alloca [32 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 10000000, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %51, %0
  %10 = load i32, i32* %3, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %3, align 4
  %12 = icmp ne i32 %10, 0
  br i1 %12, label %13, label %61

13:                                               ; preds = %9
  %14 = call i32 (...) @rand()
  %15 = sext i32 %14 to i64
  %16 = urem i64 %15, 32
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %5, align 4
  %18 = call i32 (...) @rand()
  %19 = sext i32 %18 to i64
  %20 = urem i64 %19, 32
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %33, %13
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = call i32 (...) @rand()
  %28 = srem i32 %27, 128
  %29 = trunc i32 %28 to i8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 %31
  store i8 %29, i8* %32, align 1
  br label %33

33:                                               ; preds = %26
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %22

36:                                               ; preds = %22
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %48, %36
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = call i32 (...) @rand()
  %43 = srem i32 %42, 128
  %44 = trunc i32 %43 to i8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 %46
  store i8 %44, i8* %47, align 1
  br label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %37

51:                                               ; preds = %37
  %52 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %53 = load i32, i32* %6, align 4
  %54 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 0
  %55 = load i32, i32* %5, align 4
  %56 = call i64 @stringmatchlen(i8* %52, i32 %53, i8* %54, i32 %55, i32 0)
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %4, align 4
  br label %9

61:                                               ; preds = %9
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @rand(...) #1

declare dso_local i64 @stringmatchlen(i8*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
