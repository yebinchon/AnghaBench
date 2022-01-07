; ModuleID = '/home/carl/AnghaBench/stb/tests/extr_test_siphash.c_main.c'
source_filename = "/home/carl/AnghaBench/stb/tests/extr_test_siphash.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"  { \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"0x%02x, \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" },\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [64 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %19, %2
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 64
  br i1 %12, label %13, label %22

13:                                               ; preds = %10
  %14 = load i32, i32* %7, align 4
  %15 = trunc i32 %14 to i8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 %17
  store i8 %15, i8* %18, align 1
  br label %19

19:                                               ; preds = %13
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %7, align 4
  br label %10

22:                                               ; preds = %10
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %49, %22
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 64
  br i1 %25, label %26, label %52

26:                                               ; preds = %23
  %27 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @stbds_hash_bytes(i8* %27, i32 %28, i32 0)
  store i64 %29, i64* %9, align 8
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %44, %26
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 8
  br i1 %33, label %34, label %47

34:                                               ; preds = %31
  %35 = load i64, i64* %9, align 8
  %36 = load i32, i32* %8, align 4
  %37 = mul nsw i32 %36, 8
  %38 = zext i32 %37 to i64
  %39 = lshr i64 %35, %38
  %40 = and i64 %39, 255
  %41 = trunc i64 %40 to i8
  %42 = zext i8 %41 to i32
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %34
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %31

47:                                               ; preds = %31
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %23

52:                                               ; preds = %23
  ret i32 0
}

declare dso_local i64 @stbds_hash_bytes(i8*, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
